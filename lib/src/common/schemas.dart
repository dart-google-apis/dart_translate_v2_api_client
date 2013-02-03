part of translate_v2_api_client;

class DetectionsListResponse {

  /** A detections contains detection results of several text */
  List<DetectionsResource> detections;

  /** Create new DetectionsListResponse from JSON data */
  DetectionsListResponse.fromJson(Map json) {
    if (json.containsKey("detections")) {
      detections = [];
      json["detections"].forEach((item) {
        detections.add(new DetectionsResource.fromJson(item));
      });
    }
  }

  /** Create JSON Object for DetectionsListResponse */
  Map toJson() {
    var output = new Map();

    if (detections != null) {
      output["detections"] = new List();
      detections.forEach((item) {
        output["detections"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of DetectionsListResponse */
  String toString() => JSON.stringify(this.toJson());

}

/** An array of languages which we detect for the given text The most likely language list first. */
class DetectionsResource {

  /** Create new DetectionsResource from JSON data */
  DetectionsResource.fromJson(Map json) {
  }

  /** Create JSON Object for DetectionsResource */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of DetectionsResource */
  String toString() => JSON.stringify(this.toJson());

}

class LanguagesListResponse {

  /** List of source/target languages supported by the translation API. If target parameter is unspecified, the list is sorted by the ASCII code point order of the language code. If target parameter is specified, the list is sorted by the collation order of the language name in the target language. */
  List<LanguagesResource> languages;

  /** Create new LanguagesListResponse from JSON data */
  LanguagesListResponse.fromJson(Map json) {
    if (json.containsKey("languages")) {
      languages = [];
      json["languages"].forEach((item) {
        languages.add(new LanguagesResource.fromJson(item));
      });
    }
  }

  /** Create JSON Object for LanguagesListResponse */
  Map toJson() {
    var output = new Map();

    if (languages != null) {
      output["languages"] = new List();
      languages.forEach((item) {
        output["languages"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of LanguagesListResponse */
  String toString() => JSON.stringify(this.toJson());

}

class LanguagesResource {

  /** The language code. */
  String language;

  /** The localized name of the language if target parameter is given. */
  String name;

  /** Create new LanguagesResource from JSON data */
  LanguagesResource.fromJson(Map json) {
    if (json.containsKey("language")) {
      language = json["language"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for LanguagesResource */
  Map toJson() {
    var output = new Map();

    if (language != null) {
      output["language"] = language;
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of LanguagesResource */
  String toString() => JSON.stringify(this.toJson());

}

class TranslationsListResponse {

  /** Translations contains list of translation results of given text */
  List<TranslationsResource> translations;

  /** Create new TranslationsListResponse from JSON data */
  TranslationsListResponse.fromJson(Map json) {
    if (json.containsKey("translations")) {
      translations = [];
      json["translations"].forEach((item) {
        translations.add(new TranslationsResource.fromJson(item));
      });
    }
  }

  /** Create JSON Object for TranslationsListResponse */
  Map toJson() {
    var output = new Map();

    if (translations != null) {
      output["translations"] = new List();
      translations.forEach((item) {
        output["translations"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of TranslationsListResponse */
  String toString() => JSON.stringify(this.toJson());

}

class TranslationsResource {

  /** Detected source language if source parameter is unspecified. */
  String detectedSourceLanguage;

  /** The translation. */
  String translatedText;

  /** Create new TranslationsResource from JSON data */
  TranslationsResource.fromJson(Map json) {
    if (json.containsKey("detectedSourceLanguage")) {
      detectedSourceLanguage = json["detectedSourceLanguage"];
    }
    if (json.containsKey("translatedText")) {
      translatedText = json["translatedText"];
    }
  }

  /** Create JSON Object for TranslationsResource */
  Map toJson() {
    var output = new Map();

    if (detectedSourceLanguage != null) {
      output["detectedSourceLanguage"] = detectedSourceLanguage;
    }
    if (translatedText != null) {
      output["translatedText"] = translatedText;
    }

    return output;
  }

  /** Return String representation of TranslationsResource */
  String toString() => JSON.stringify(this.toJson());

}

