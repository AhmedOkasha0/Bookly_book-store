import 'IndustryIdentifiers.dart';
import 'ReadingModes.dart';

class VolumeInfo {
  VolumeInfo({
      String? title, 
      String? subtitle, 
      List<String>? authors, 
      String? publishedDate, 
      List<IndustryIdentifiers>? industryIdentifiers, 
      ReadingModes? readingModes, 
      num? pageCount, 
      String? printType, 
      String? maturityRating, 
      bool? allowAnonLogging, 
      String? contentVersion, 
      String? language, 
      String? previewLink, 
      String? infoLink, 
      String? canonicalVolumeLink,}){
    _title = title;
    _subtitle = subtitle;
    _authors = authors;
    _publishedDate = publishedDate;
    _industryIdentifiers = industryIdentifiers;
    _readingModes = readingModes;
    _pageCount = pageCount;
    _printType = printType;
    _maturityRating = maturityRating;
    _allowAnonLogging = allowAnonLogging;
    _contentVersion = contentVersion;
    _language = language;
    _previewLink = previewLink;
    _infoLink = infoLink;
    _canonicalVolumeLink = canonicalVolumeLink;
}

  VolumeInfo.fromJson(dynamic json) {
    _title = json['title'];
    _subtitle = json['subtitle'];
    _authors = json['authors'] != null ? json['authors'].cast<String>() : [];
    _publishedDate = json['publishedDate'];
    if (json['industryIdentifiers'] != null) {
      _industryIdentifiers = [];
      json['industryIdentifiers'].forEach((v) {
        _industryIdentifiers?.add(IndustryIdentifiers.fromJson(v));
      });
    }
    _readingModes = json['readingModes'] != null ? ReadingModes.fromJson(json['readingModes']) : null;
    _pageCount = json['pageCount'];
    _printType = json['printType'];
    _maturityRating = json['maturityRating'];
    _allowAnonLogging = json['allowAnonLogging'];
    _contentVersion = json['contentVersion'];
    _language = json['language'];
    _previewLink = json['previewLink'];
    _infoLink = json['infoLink'];
    _canonicalVolumeLink = json['canonicalVolumeLink'];
  }
  String? _title;
  String? _subtitle;
  List<String>? _authors;
  String? _publishedDate;
  List<IndustryIdentifiers>? _industryIdentifiers;
  ReadingModes? _readingModes;
  num? _pageCount;
  String? _printType;
  String? _maturityRating;
  bool? _allowAnonLogging;
  String? _contentVersion;
  String? _language;
  String? _previewLink;
  String? _infoLink;
  String? _canonicalVolumeLink;
VolumeInfo copyWith({  String? title,
  String? subtitle,
  List<String>? authors,
  String? publishedDate,
  List<IndustryIdentifiers>? industryIdentifiers,
  ReadingModes? readingModes,
  num? pageCount,
  String? printType,
  String? maturityRating,
  bool? allowAnonLogging,
  String? contentVersion,
  String? language,
  String? previewLink,
  String? infoLink,
  String? canonicalVolumeLink,
}) => VolumeInfo(  title: title ?? _title,
  subtitle: subtitle ?? _subtitle,
  authors: authors ?? _authors,
  publishedDate: publishedDate ?? _publishedDate,
  industryIdentifiers: industryIdentifiers ?? _industryIdentifiers,
  readingModes: readingModes ?? _readingModes,
  pageCount: pageCount ?? _pageCount,
  printType: printType ?? _printType,
  maturityRating: maturityRating ?? _maturityRating,
  allowAnonLogging: allowAnonLogging ?? _allowAnonLogging,
  contentVersion: contentVersion ?? _contentVersion,
  language: language ?? _language,
  previewLink: previewLink ?? _previewLink,
  infoLink: infoLink ?? _infoLink,
  canonicalVolumeLink: canonicalVolumeLink ?? _canonicalVolumeLink,
);
  String? get title => _title;
  String? get subtitle => _subtitle;
  List<String>? get authors => _authors;
  String? get publishedDate => _publishedDate;
  List<IndustryIdentifiers>? get industryIdentifiers => _industryIdentifiers;
  ReadingModes? get readingModes => _readingModes;
  num? get pageCount => _pageCount;
  String? get printType => _printType;
  String? get maturityRating => _maturityRating;
  bool? get allowAnonLogging => _allowAnonLogging;
  String? get contentVersion => _contentVersion;
  String? get language => _language;
  String? get previewLink => _previewLink;
  String? get infoLink => _infoLink;
  String? get canonicalVolumeLink => _canonicalVolumeLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['subtitle'] = _subtitle;
    map['authors'] = _authors;
    map['publishedDate'] = _publishedDate;
    if (_industryIdentifiers != null) {
      map['industryIdentifiers'] = _industryIdentifiers?.map((v) => v.toJson()).toList();
    }
    if (_readingModes != null) {
      map['readingModes'] = _readingModes?.toJson();
    }
    map['pageCount'] = _pageCount;
    map['printType'] = _printType;
    map['maturityRating'] = _maturityRating;
    map['allowAnonLogging'] = _allowAnonLogging;
    map['contentVersion'] = _contentVersion;
    map['language'] = _language;
    map['previewLink'] = _previewLink;
    map['infoLink'] = _infoLink;
    map['canonicalVolumeLink'] = _canonicalVolumeLink;
    return map;
  }

}