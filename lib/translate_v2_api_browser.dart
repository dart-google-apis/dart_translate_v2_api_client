library translate_v2_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_translate_v2_api/src/cloud_api_browser.dart';
import "package:google_translate_v2_api/translate_v2_api_client.dart";

/** Lets you translate text from one language to another */
class Translate extends Client with BrowserClient {

  final oauth.OAuth2 auth;

  Translate([oauth.OAuth2 this.auth]);
}
