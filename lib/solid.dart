@JS('solid')
library solid;

import 'package:js/js.dart';

@JS('auth')
/// Wrapper for solid.auth
class Auth {
  external static fetch(info, Object options);
  /// Login a User
  external static login(String idp, LoginOptions options);
  /// Open a Popup for Login
  external static popupLogin(LoginOptions options);
  /// Get the current user
  external static currentSession([storage]);
  /// Run [callback] when the user signs in or out
  external static trackSession(Function callback);
  /// Logout the current user
  external static logout([storage]);
}

@JS()
@anonymous
/// Options for the login methods on the Auth class.
class LoginOptions {
  external String get callbackUri;
  external set callbackUri(String v);

  external String get popupUri;
  external set popupUri(String v);

  external factory LoginOptions({String callbackUri, String popupUri});
}