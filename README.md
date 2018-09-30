# Solid

Solid allows use of Tim Berners-Lee's new platform for a decentralized web, [Solid](https://solid.inrupt.com/), from within dart.

Currently only includes solid.auth.

## Installation

Install Solid from pub:

```yaml
dependencies:
    solid: ^0.1.2
```

Include solid-auth-client.bundle.js in your HTML **before** your dart file.
```html
<script src="solid-auth-client.bundle.js"></script>
<script src="main.dart.js"></script>
```
You can find solid-auth-client.bundle.js [here](https://solid.github.io/solid-auth-client/dist/solid-auth-client.bundle.js).

In your dart code, import
```dart
import 'package:solid/solid.dart' as solid;
```

Follow the [Official Solid Documentation!](https://solid.inrupt.com/docs/app-on-your-lunch-break)

## Differences from JavaScript

Currently, logging in from JavaScript is written as
```js
solid.auth.popupLogin({popupUri:'popup.html'});
```

Whereas in Dart, you write
```dart
solid.Auth.popupLogin(solid.LoginOptions(popupUri:'popup.html'));
```