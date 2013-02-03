part of translate_v2_api_client;

class DetectionsResource extends Resource {

  DetectionsResource(Client client) : super(client) {
  }

  /**
   * Detect the language of text.
   *
   * [q] - The text to detect
   *
   * [optParams] - Additional query parameters
   */
  Future<DetectionsListResponse> list(String q, {Map optParams}) {
    var completer = new Completer();
    var url = "v2/detect";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (q == null) paramErrors.add("q is required");
    if (q != null) queryParams["q"] = q;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new DetectionsListResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class LanguagesResource extends Resource {

  LanguagesResource(Client client) : super(client) {
  }

  /**
   * List the source/target languages supported by the API
   *
   * [target] - the language and collation in which the localized results should be returned
   *
   * [optParams] - Additional query parameters
   */
  Future<LanguagesListResponse> list({String target, Map optParams}) {
    var completer = new Completer();
    var url = "v2/languages";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (target != null) queryParams["target"] = target;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new LanguagesListResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class TranslationsResource extends Resource {

  TranslationsResource(Client client) : super(client) {
  }

  /**
   * Returns text translations from one language to another.
   *
   * [q] - The text to translate
   *
   * [target] - The target language into which the text should be translated
   *
   * [cid] - The customization id for translate
   *
   * [format] - The format of the text
   *   Allowed values:
   *     html - Specifies the input is in HTML
   *     text - Specifies the input is in plain textual format
   *
   * [source] - The source language of the text
   *
   * [optParams] - Additional query parameters
   */
  Future<TranslationsListResponse> list(String q, String target, {String cid, String format, String source, Map optParams}) {
    var completer = new Completer();
    var url = "v2";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (cid != null) queryParams["cid"] = cid;
    if (format != null && !["html", "text"].contains(format)) {
      paramErrors.add("Allowed values for format: html, text");
    }
    if (format != null) queryParams["format"] = format;
    if (q == null) paramErrors.add("q is required");
    if (q != null) queryParams["q"] = q;
    if (source != null) queryParams["source"] = source;
    if (target == null) paramErrors.add("target is required");
    if (target != null) queryParams["target"] = target;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new TranslationsListResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

