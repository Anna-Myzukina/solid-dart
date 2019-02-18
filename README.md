# Solid

Solid allows use of Tim Berners-Lee's new platform for a decentralized web, [Solid](https://solid.inrupt.com/), from within dart.

This package includes the solid library, and some of rdflib.

## Installation

Install Solid from pub:

```yaml
dependencies:
    solid: ^0.2.3
```

Include solid-auth-client.bundle.js in your HTML **before** your dart file.
```html
<script src="solid-auth-client.bundle.js"></script>
<script src="main.dart.js"></script>
```
You can find solid-auth-client.bundle.js [here](https://solid.github.io/solid-auth-client/dist/solid-auth-client.bundle.js).

if you're also using RDFLib, make sure to include [rdflib.min.js](https://linkeddata.github.io/rdflib.js/dist/rdflib.min.js).

In your dart code, import
```dart
import 'package:solid/solid.dart' as solid;
```
To use RDFLib, import
```dart
import 'package:solid/rdflib.dart' as $rdf;
```
*Warning:* In the future, rdflib may be moved to its own package.

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

### RDFLib Differences

Due issues with JavaScript Promise Interop, when using Fetcher.load, it must be wrapped in promiseToFuture (dart:html).

For example, in JavaScript, you write:
```js
await fetcher.load(person);
```
In dart, you write:
```dart
await promiseToFuture(fetcher.load(person));
```