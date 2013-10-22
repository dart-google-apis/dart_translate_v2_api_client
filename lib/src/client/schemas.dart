part of translate_v2_api;

class DetectionsListResponse {

  /** A detections contains detection results of several text */
  core.List<DetectionsResource> detections;

  /** Create new DetectionsListResponse from JSON data */
  DetectionsListResponse.fromJson(core.Map json) {
    if (json.containsKey("detections")) {
      detections = json["detections"].map((detectionsItem) => new DetectionsResource.fromJson(detectionsItem)).toList();
    }
  }

  /** Create JSON Object for DetectionsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (detections != null) {
      output["detections"] = detections.map((detectionsItem) => detectionsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of DetectionsListResponse */
  core.String toString() => JSON.encode(this.toJson());

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
  core.String toString() => JSON.encode(this.toJson());

}

class LanguagesListResponse {

  /** List of source/target languages supported by the translation API. If target parameter is unspecified, the list is sorted by the ASCII code point order of the language code. If target parameter is specified, the list is sorted by the collation order of the language name in the target language. */
  core.List<LanguagesResource> languages;

  /** Create new LanguagesListResponse from JSON data */
  LanguagesListResponse.fromJson(core.Map json) {
    if (json.containsKey("languages")) {
      languages = json["languages"].map((languagesItem) => new LanguagesResource.fromJson(languagesItem)).toList();
    }
  }

  /** Create JSON Object for LanguagesListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (languages != null) {
      output["languages"] = languages.map((languagesItem) => languagesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of LanguagesListResponse */
  core.String toString() => JSON.encode(this.toJson());

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
  core.String toString() => JSON.encode(this.toJson());

}

class TranslationsListResponse {

  /** Translations contains list of translation results of given text */
  core.List<TranslationsResource> translations;

  /** Create new TranslationsListResponse from JSON data */
  TranslationsListResponse.fromJson(core.Map json) {
    if (json.containsKey("translations")) {
      translations = json["translations"].map((translationsItem) => new TranslationsResource.fromJson(translationsItem)).toList();
    }
  }

  /** Create JSON Object for TranslationsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (translations != null) {
      output["translations"] = translations.map((translationsItem) => translationsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of TranslationsListResponse */
  core.String toString() => JSON.encode(this.toJson());

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
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
