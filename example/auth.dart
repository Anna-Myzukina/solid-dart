import 'dart:html';
import 'package:solid/solid.dart' as solid;

void main() {

  solid.Auth.trackSession((session) {
    querySelector('#login').style.display = session != null ? 'none' : 'block';
    querySelector('#logout').style.display = session == null ? 'none' : 'block';
    querySelector('#user').innerHtml = session.webId;
  });

  querySelector('#loginButton').onClick.listen((MouseEvent event) {
    print('button click');
    solid.Auth.popupLogin(solid.LoginOptions(popupUri:'popup.html'));
  });

  querySelector('#logoutButton').onClick.listen((MouseEvent event) {
    solid.Auth.logout();
  });

}
