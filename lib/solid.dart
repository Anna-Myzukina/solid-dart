@JS('solid')
library solid;

import 'package:js/js.dart';

@JS('auth')
class Auth {
  external static fetch(info, Object options);
  external static login(String idp, LoginOptions options);
  external static popupLogin(LoginOptions options);
  external static currentSession([storage]);
  external static trackSession(Function callback);
  external static logout([storage]);
}

@JS()
@anonymous
class LoginOptions {
  external String get callbackUri;
  external set callbackUri(String v);

  external String get popupUri;
  external set popupUri(String v);

  external factory LoginOptions({String callbackUri, String popupUri});
}