@JS('\$rdf')
library rdflib;

import 'package:js/js.dart';

external graph();
external sym(profile);

external Function Namespace(namespace);

@JS('NamedNode')
class NamedNode {
  external dir();
  external site();
  external doc();
  external toString();
  external get uri;
  external set uri(uri);
  external static fromValue(value);
}

@JS('Fetcher')
class Fetcher {
  external load(person);
  external Fetcher(store);
}