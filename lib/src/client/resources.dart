part of translate_v2_api;

class DetectionsResource_ {

  final Client _client;

  DetectionsResource_(Client client) :
      _client = client;

  /**
   * Detect the language of text.
   *
   * [q] - The text to detect
   *   Repeated values: allowed
   *
   * [optParams] - Additional query parameters
   */
  async.Future<DetectionsListResponse> list(core.List<core.String> q, {core.Map optParams}) {
    var url = "v2/detect";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new DetectionsListResponse.fromJson(data));
  }
}

class LanguagesResource_ {

  final Client _client;

  LanguagesResource_(Client client) :
      _client = client;

  /**
   * List the source/target languages supported by the API
   *
   * [target] - the language and collation in which the localized results should be returned
   *
   * [optParams] - Additional query parameters
   */
  async.Future<LanguagesListResponse> list({core.String target, core.Map optParams}) {
    var url = "v2/languages";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (target != null) queryParams["target"] = target;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new LanguagesListResponse.fromJson(data));
  }
}

class TranslationsResource_ {

  final Client _client;

  TranslationsResource_(Client client) :
      _client = client;

  /**
   * Returns text translations from one language to another.
   *
   * [q] - The text to translate
   *   Repeated values: allowed
   *
   * [target] - The target language into which the text should be translated
   *
   * [cid] - The customization id for translate
   *   Repeated values: allowed
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
  async.Future<TranslationsListResponse> list(core.List<core.String> q, core.String target, {core.List<core.String> cid, core.String format, core.String source, core.Map optParams}) {
    var url = "v2";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new TranslationsListResponse.fromJson(data));
  }
}

