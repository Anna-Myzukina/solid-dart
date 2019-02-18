import 'dart:html';
import 'package:solid/solid.dart' as solid;
import 'package:solid/rdflib.dart' as $rdf;

void main() {

  solid.Auth.trackSession((session) {
    querySelector('#login').style.display = session != null ? 'none' : 'block';
    querySelector('#logout').style.display = session == null ? 'none' : 'block';
    querySelector('#user').innerHtml = session.webId;
    if (session != null) {
      InputElement user = querySelector('#user');
      user.value = session.webId;
    }
  });

  querySelector('#loginButton').onClick.listen((MouseEvent event) {
    print('button click');
    solid.Auth.popupLogin(solid.LoginOptions(popupUri:'popup.html'));
  });

  querySelector('#logoutButton').onClick.listen((MouseEvent event) {
    solid.Auth.logout();
  });

  final FOAF = $rdf.Namespace('http://xmlns.com/foaf/0.1/');
  querySelector('#view').onClick.listen((MouseEvent event) async {
    final store = $rdf.graph();
    final fetcher = $rdf.Fetcher(store);

    SpanElement user = querySelector('#user');
    final person = user.text;

    await promiseToFuture(fetcher.load(person));
    String fullName = store.any($rdf.sym(person), FOAF('name')).value;
    querySelector('#fullName').text = fullName;
  });

}