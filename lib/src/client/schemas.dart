part of translate_v2_api_client;

class DetectionsListResponse {

  /** A detections contains detection results of several text */
  core.List<DetectionsResource> detections;

  /** Create new DetectionsListResponse from JSON data */
  DetectionsListResponse.fromJson(core.Map json) {
    if (json.containsKey("detections")) {
      detections = [];
      json["detections"].forEach((item) {
        detections.add(new DetectionsResource.fromJson(item));
      });
    }
  }

  /** Create JSON Object for DetectionsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (detections != null) {
      output["detections"] = new core.List();
      detections.forEach((item) {
        output["detections"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of DetectionsListResponse */
  core.String toString() => JSON.stringify(this.toJson());

}

/** An array of languages which we detect for the given text The most likely language list first. */
class DetectionsResource {

  /** Create new DetectionsResource from JSON data */
  DetectionsResource.fromJson(core.Map json) {
  }

  /** Create JSON Object for DetectionsResource */
  core.Map toJson() {
    var output = new core.Map();


    return output;
  }

  /** Return String representation of DetectionsResource */
  core.String toString() => JSON.stringify(this.toJson());

}

class LanguagesListResponse {

  /** List of source/target languages supported by the translation API. If target parameter is unspecified, the list is sorted by the ASCII code point order of the language code. If target parameter is specified, the list is sorted by the collation order of the language name in the target language. */
  core.List<LanguagesResource> languages;

  /** Create new LanguagesListResponse from JSON data */
  LanguagesListResponse.fromJson(core.Map json) {
    if (json.containsKey("languages")) {
      languages = [];
      json["languages"].forEach((item) {
        languages.add(new LanguagesResource.fromJson(item));
      });
    }
  }

  /** Create JSON Object for LanguagesListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (languages != null) {
      output["languages"] = new core.List();
      languages.forEach((item) {
        output["languages"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of LanguagesListResponse */
  core.String toString() => JSON.stringify(this.toJson());

}

class LanguagesResource {

  /** The language code. */
  core.String language;

  /** The localized name of the language if target parameter is given. */
  core.String name;

  /** Create new LanguagesResource from JSON data */
  LanguagesResource.fromJson(core.Map json) {
    if (json.containsKey("language")) {
      language = json["language"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for LanguagesResource */
  core.Map toJson() {
    var output = new core.Map();

    if (language != null) {
      output["language"] = language;
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of LanguagesResource */
  core.String toString() => JSON.stringify(this.toJson());

}

class TranslationsListResponse {

  /** Translations contains list of translation results of given text */
  core.List<TranslationsResource> translations;

  /** Create new TranslationsListResponse from JSON data */
  TranslationsListResponse.fromJson(core.Map json) {
    if (json.containsKey("translations")) {
      translations = [];
      json["translations"].forEach((item) {
        translations.add(new TranslationsResource.fromJson(item));
      });
    }
  }

  /** Create JSON Object for TranslationsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (translations != null) {
      output["translations"] = new core.List();
      translations.forEach((item) {
        output["translations"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of TranslationsListResponse */
  core.String toString() => JSON.stringify(this.toJson());

}

class TranslationsResource {

  /** Detected source language if source parameter is unspecified. */
  core.String detectedSourceLanguage;

  /** The translation. */
  core.String translatedText;

  /** Create new TranslationsResource from JSON data */
  TranslationsResource.fromJson(core.Map json) {
    if (json.containsKey("detectedSourceLanguage")) {
      detectedSourceLanguage = json["detectedSourceLanguage"];
    }
    if (json.containsKey("translatedText")) {
      translatedText = json["translatedText"];
    }
  }

  /** Create JSON Object for TranslationsResource */
  core.Map toJson() {
    var output = new core.Map();

    if (detectedSourceLanguage != null) {
      output["detectedSourceLanguage"] = detectedSourceLanguage;
    }
    if (translatedText != null) {
      output["translatedText"] = translatedText;
    }

    return output;
  }

  /** Return String representation of TranslationsResource */
  core.String toString() => JSON.stringify(this.toJson());

}

