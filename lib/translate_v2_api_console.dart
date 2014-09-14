library translate_v2_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_translate_v2_api/src/console_client.dart';

import "package:google_translate_v2_api/translate_v2_api_client.dart";

/** Lets you translate text from one language to another */
@deprecated
class Translate extends Client with ConsoleClient {

  final oauth2.OAuth2Console auth;

  Translate([oauth2.OAuth2Console this.auth]);
}
