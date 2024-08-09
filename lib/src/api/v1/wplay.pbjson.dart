//
//  Generated code. Do not modify.
//  source: wplay.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use tvTypeDescriptor instead')
const TvType$json = {
  '1': 'TvType',
  '2': [
    {'1': 'NONE', '2': 0},
    {'1': 'MOVIE', '2': 1},
    {'1': 'SERIE', '2': 2},
  ],
};

/// Descriptor for `TvType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List tvTypeDescriptor = $convert.base64Decode(
    'CgZUdlR5cGUSCAoETk9ORRAAEgkKBU1PVklFEAESCQoFU0VSSUUQAg==');

@$core.Deprecated('Use orderByDescriptor instead')
const OrderBy$json = {
  '1': 'OrderBy',
  '2': [
    {'1': 'MOST_NONE', '2': 0},
    {'1': 'MOST_RECENT', '2': 1},
    {'1': 'MOST_VALUED', '2': 2},
    {'1': 'MOST_POPULAR', '2': 3},
    {'1': 'MOST_RELEVANT', '2': 4},
  ],
};

/// Descriptor for `OrderBy`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List orderByDescriptor = $convert.base64Decode(
    'CgdPcmRlckJ5Eg0KCU1PU1RfTk9ORRAAEg8KC01PU1RfUkVDRU5UEAESDwoLTU9TVF9WQUxVRU'
    'QQAhIQCgxNT1NUX1BPUFVMQVIQAxIRCg1NT1NUX1JFTEVWQU5UEAQ=');

@$core.Deprecated('Use genreDescriptor instead')
const Genre$json = {
  '1': 'Genre',
  '2': [
    {'1': 'ref', '3': 1, '4': 1, '5': 9, '10': 'ref'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'display', '3': 3, '4': 1, '5': 9, '10': 'display'},
    {'1': 'forMovie', '3': 4, '4': 1, '5': 8, '10': 'forMovie'},
    {'1': 'forSerie', '3': 5, '4': 1, '5': 8, '10': 'forSerie'},
  ],
};

/// Descriptor for `Genre`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genreDescriptor = $convert.base64Decode(
    'CgVHZW5yZRIQCgNyZWYYASABKAlSA3JlZhISCgRuYW1lGAIgASgJUgRuYW1lEhgKB2Rpc3BsYX'
    'kYAyABKAlSB2Rpc3BsYXkSGgoIZm9yTW92aWUYBCABKAhSCGZvck1vdmllEhoKCGZvclNlcmll'
    'GAUgASgIUghmb3JTZXJpZQ==');

@$core.Deprecated('Use peopleDescriptor instead')
const People$json = {
  '1': 'People',
  '2': [
    {'1': 'ref', '3': 1, '4': 1, '5': 9, '10': 'ref'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'profilePath1', '3': 3, '4': 1, '5': 9, '10': 'profilePath1'},
    {'1': 'profilePath2', '3': 4, '4': 1, '5': 9, '10': 'profilePath2'},
  ],
};

/// Descriptor for `People`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List peopleDescriptor = $convert.base64Decode(
    'CgZQZW9wbGUSEAoDcmVmGAEgASgJUgNyZWYSEgoEbmFtZRgCIAEoCVIEbmFtZRIiCgxwcm9maW'
    'xlUGF0aDEYAyABKAlSDHByb2ZpbGVQYXRoMRIiCgxwcm9maWxlUGF0aDIYBCABKAlSDHByb2Zp'
    'bGVQYXRoMg==');

@$core.Deprecated('Use tvFilmDescriptor instead')
const TvFilm$json = {
  '1': 'TvFilm',
  '2': [
    {'1': 'ref', '3': 1, '4': 1, '5': 9, '10': 'ref'},
    {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.wowtv.TvType', '10': 'type'},
    {'1': 'tmdb', '3': 3, '4': 1, '5': 13, '10': 'tmdb'},
    {'1': 'name1', '3': 4, '4': 1, '5': 9, '10': 'name1'},
    {'1': 'name2', '3': 5, '4': 1, '5': 9, '10': 'name2'},
    {'1': 'genres', '3': 6, '4': 3, '5': 9, '10': 'genres'},
    {'1': 'tagline', '3': 7, '4': 1, '5': 9, '10': 'tagline'},
    {'1': 'runtime', '3': 8, '4': 1, '5': 5, '10': 'runtime'},
    {'1': 'voteavg', '3': 9, '4': 1, '5': 1, '10': 'voteavg'},
    {'1': 'popular', '3': 10, '4': 1, '5': 5, '10': 'popular'},
    {'1': 'overview', '3': 11, '4': 1, '5': 9, '10': 'overview'},
    {'1': 'releaseDate', '3': 12, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'releaseDate'},
    {'1': 'createdDate', '3': 13, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdDate'},
    {'1': 'posterPath1', '3': 14, '4': 1, '5': 9, '10': 'posterPath1'},
    {'1': 'posterPath2', '3': 15, '4': 1, '5': 9, '10': 'posterPath2'},
    {'1': 'backdpPath1', '3': 16, '4': 1, '5': 9, '10': 'backdpPath1'},
    {'1': 'backdpPath2', '3': 17, '4': 1, '5': 9, '10': 'backdpPath2'},
    {'1': 'casts', '3': 18, '4': 3, '5': 11, '6': '.wowtv.TvFilmCast', '10': 'casts'},
    {'1': 'crews', '3': 19, '4': 3, '5': 11, '6': '.wowtv.TvFilmCrew', '10': 'crews'},
    {'1': 'images', '3': 20, '4': 3, '5': 11, '6': '.wowtv.TvFilmImage', '10': 'images'},
    {'1': 'videos', '3': 21, '4': 3, '5': 11, '6': '.wowtv.TvFilmVideo', '10': 'videos'},
  ],
};

/// Descriptor for `TvFilm`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tvFilmDescriptor = $convert.base64Decode(
    'CgZUdkZpbG0SEAoDcmVmGAEgASgJUgNyZWYSIQoEdHlwZRgCIAEoDjINLndvd3R2LlR2VHlwZV'
    'IEdHlwZRISCgR0bWRiGAMgASgNUgR0bWRiEhQKBW5hbWUxGAQgASgJUgVuYW1lMRIUCgVuYW1l'
    'MhgFIAEoCVIFbmFtZTISFgoGZ2VucmVzGAYgAygJUgZnZW5yZXMSGAoHdGFnbGluZRgHIAEoCV'
    'IHdGFnbGluZRIYCgdydW50aW1lGAggASgFUgdydW50aW1lEhgKB3ZvdGVhdmcYCSABKAFSB3Zv'
    'dGVhdmcSGAoHcG9wdWxhchgKIAEoBVIHcG9wdWxhchIaCghvdmVydmlldxgLIAEoCVIIb3Zlcn'
    'ZpZXcSPAoLcmVsZWFzZURhdGUYDCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgty'
    'ZWxlYXNlRGF0ZRI8CgtjcmVhdGVkRGF0ZRgNIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3'
    'RhbXBSC2NyZWF0ZWREYXRlEiAKC3Bvc3RlclBhdGgxGA4gASgJUgtwb3N0ZXJQYXRoMRIgCgtw'
    'b3N0ZXJQYXRoMhgPIAEoCVILcG9zdGVyUGF0aDISIAoLYmFja2RwUGF0aDEYECABKAlSC2JhY2'
    'tkcFBhdGgxEiAKC2JhY2tkcFBhdGgyGBEgASgJUgtiYWNrZHBQYXRoMhInCgVjYXN0cxgSIAMo'
    'CzIRLndvd3R2LlR2RmlsbUNhc3RSBWNhc3RzEicKBWNyZXdzGBMgAygLMhEud293dHYuVHZGaW'
    'xtQ3Jld1IFY3Jld3MSKgoGaW1hZ2VzGBQgAygLMhIud293dHYuVHZGaWxtSW1hZ2VSBmltYWdl'
    'cxIqCgZ2aWRlb3MYFSADKAsyEi53b3d0di5UdkZpbG1WaWRlb1IGdmlkZW9z');

@$core.Deprecated('Use tvFilmCrewDescriptor instead')
const TvFilmCrew$json = {
  '1': 'TvFilmCrew',
  '2': [
    {'1': 'ref', '3': 1, '4': 1, '5': 9, '10': 'ref'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'profilePath1', '3': 3, '4': 1, '5': 9, '10': 'profilePath1'},
    {'1': 'profilePath2', '3': 4, '4': 1, '5': 9, '10': 'profilePath2'},
  ],
};

/// Descriptor for `TvFilmCrew`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tvFilmCrewDescriptor = $convert.base64Decode(
    'CgpUdkZpbG1DcmV3EhAKA3JlZhgBIAEoCVIDcmVmEhIKBG5hbWUYAiABKAlSBG5hbWUSIgoMcH'
    'JvZmlsZVBhdGgxGAMgASgJUgxwcm9maWxlUGF0aDESIgoMcHJvZmlsZVBhdGgyGAQgASgJUgxw'
    'cm9maWxlUGF0aDI=');

@$core.Deprecated('Use tvFilmCastDescriptor instead')
const TvFilmCast$json = {
  '1': 'TvFilmCast',
  '2': [
    {'1': 'ref', '3': 1, '4': 1, '5': 9, '10': 'ref'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'display', '3': 3, '4': 1, '5': 5, '10': 'display'},
    {'1': 'character', '3': 4, '4': 1, '5': 9, '10': 'character'},
    {'1': 'profilePath1', '3': 5, '4': 1, '5': 9, '10': 'profilePath1'},
    {'1': 'profilePath2', '3': 6, '4': 1, '5': 9, '10': 'profilePath2'},
  ],
};

/// Descriptor for `TvFilmCast`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tvFilmCastDescriptor = $convert.base64Decode(
    'CgpUdkZpbG1DYXN0EhAKA3JlZhgBIAEoCVIDcmVmEhIKBG5hbWUYAiABKAlSBG5hbWUSGAoHZG'
    'lzcGxheRgDIAEoBVIHZGlzcGxheRIcCgljaGFyYWN0ZXIYBCABKAlSCWNoYXJhY3RlchIiCgxw'
    'cm9maWxlUGF0aDEYBSABKAlSDHByb2ZpbGVQYXRoMRIiCgxwcm9maWxlUGF0aDIYBiABKAlSDH'
    'Byb2ZpbGVQYXRoMg==');

@$core.Deprecated('Use tvFilmGenreDescriptor instead')
const TvFilmGenre$json = {
  '1': 'TvFilmGenre',
  '2': [
    {'1': 'ref', '3': 1, '4': 1, '5': 9, '10': 'ref'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'display', '3': 3, '4': 1, '5': 5, '10': 'display'},
  ],
};

/// Descriptor for `TvFilmGenre`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tvFilmGenreDescriptor = $convert.base64Decode(
    'CgtUdkZpbG1HZW5yZRIQCgNyZWYYASABKAlSA3JlZhISCgRuYW1lGAIgASgJUgRuYW1lEhgKB2'
    'Rpc3BsYXkYAyABKAVSB2Rpc3BsYXk=');

@$core.Deprecated('Use tvFilmImageDescriptor instead')
const TvFilmImage$json = {
  '1': 'TvFilmImage',
  '2': [
    {'1': 'ref', '3': 1, '4': 1, '5': 9, '10': 'ref'},
    {'1': 'width', '3': 2, '4': 1, '5': 5, '10': 'width'},
    {'1': 'height', '3': 3, '4': 1, '5': 5, '10': 'height'},
    {'1': 'filePath1', '3': 4, '4': 1, '5': 9, '10': 'filePath1'},
    {'1': 'filePath2', '3': 5, '4': 1, '5': 9, '10': 'filePath2'},
    {'1': 'filePath3', '3': 6, '4': 1, '5': 9, '10': 'filePath3'},
  ],
};

/// Descriptor for `TvFilmImage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tvFilmImageDescriptor = $convert.base64Decode(
    'CgtUdkZpbG1JbWFnZRIQCgNyZWYYASABKAlSA3JlZhIUCgV3aWR0aBgCIAEoBVIFd2lkdGgSFg'
    'oGaGVpZ2h0GAMgASgFUgZoZWlnaHQSHAoJZmlsZVBhdGgxGAQgASgJUglmaWxlUGF0aDESHAoJ'
    'ZmlsZVBhdGgyGAUgASgJUglmaWxlUGF0aDISHAoJZmlsZVBhdGgzGAYgASgJUglmaWxlUGF0aD'
    'M=');

@$core.Deprecated('Use tvFilmVideoDescriptor instead')
const TvFilmVideo$json = {
  '1': 'TvFilmVideo',
  '2': [
    {'1': 'ref', '3': 1, '4': 1, '5': 9, '10': 'ref'},
    {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    {'1': 'size', '3': 3, '4': 1, '5': 5, '10': 'size'},
    {'1': 'youtube', '3': 4, '4': 1, '5': 9, '10': 'youtube'},
    {'1': 'publishedAt', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'publishedAt'},
  ],
};

/// Descriptor for `TvFilmVideo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tvFilmVideoDescriptor = $convert.base64Decode(
    'CgtUdkZpbG1WaWRlbxIQCgNyZWYYASABKAlSA3JlZhISCgR0eXBlGAIgASgJUgR0eXBlEhIKBH'
    'NpemUYAyABKAVSBHNpemUSGAoHeW91dHViZRgEIAEoCVIHeW91dHViZRI8CgtwdWJsaXNoZWRB'
    'dBgFIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSC3B1Ymxpc2hlZEF0');

@$core.Deprecated('Use tvFilmFilterDescriptor instead')
const TvFilmFilter$json = {
  '1': 'TvFilmFilter',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.wowtv.TvType', '9': 0, '10': 'type', '17': true},
    {'1': 'genre', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'genre', '17': true},
    {'1': 'orderBy', '3': 3, '4': 1, '5': 14, '6': '.wowtv.OrderBy', '9': 2, '10': 'orderBy', '17': true},
    {'1': 'pageLimit', '3': 4, '4': 1, '5': 13, '9': 3, '10': 'pageLimit', '17': true},
    {'1': 'pageOffset', '3': 5, '4': 1, '5': 13, '9': 4, '10': 'pageOffset', '17': true},
  ],
  '8': [
    {'1': '_type'},
    {'1': '_genre'},
    {'1': '_orderBy'},
    {'1': '_pageLimit'},
    {'1': '_pageOffset'},
  ],
};

/// Descriptor for `TvFilmFilter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tvFilmFilterDescriptor = $convert.base64Decode(
    'CgxUdkZpbG1GaWx0ZXISJgoEdHlwZRgBIAEoDjINLndvd3R2LlR2VHlwZUgAUgR0eXBliAEBEh'
    'kKBWdlbnJlGAIgASgJSAFSBWdlbnJliAEBEi0KB29yZGVyQnkYAyABKA4yDi53b3d0di5PcmRl'
    'ckJ5SAJSB29yZGVyQnmIAQESIQoJcGFnZUxpbWl0GAQgASgNSANSCXBhZ2VMaW1pdIgBARIjCg'
    'pwYWdlT2Zmc2V0GAUgASgNSARSCnBhZ2VPZmZzZXSIAQFCBwoFX3R5cGVCCAoGX2dlbnJlQgoK'
    'CF9vcmRlckJ5QgwKCl9wYWdlTGltaXRCDQoLX3BhZ2VPZmZzZXQ=');

@$core.Deprecated('Use tvFilmDetailReqDescriptor instead')
const TvFilmDetailReq$json = {
  '1': 'TvFilmDetailReq',
  '2': [
    {'1': 'ref', '3': 1, '4': 1, '5': 9, '10': 'ref'},
  ],
};

/// Descriptor for `TvFilmDetailReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tvFilmDetailReqDescriptor = $convert.base64Decode(
    'Cg9UdkZpbG1EZXRhaWxSZXESEAoDcmVmGAEgASgJUgNyZWY=');

@$core.Deprecated('Use tvFilmDetailResDescriptor instead')
const TvFilmDetailRes$json = {
  '1': 'TvFilmDetailRes',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.wowtv.TvFilm', '10': 'result'},
  ],
};

/// Descriptor for `TvFilmDetailRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tvFilmDetailResDescriptor = $convert.base64Decode(
    'Cg9UdkZpbG1EZXRhaWxSZXMSJQoGcmVzdWx0GAEgASgLMg0ud293dHYuVHZGaWxtUgZyZXN1bH'
    'Q=');

@$core.Deprecated('Use tvFilmListAllReqDescriptor instead')
const TvFilmListAllReq$json = {
  '1': 'TvFilmListAllReq',
  '2': [
    {'1': 'filter', '3': 1, '4': 1, '5': 11, '6': '.wowtv.TvFilmFilter', '10': 'filter'},
  ],
};

/// Descriptor for `TvFilmListAllReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tvFilmListAllReqDescriptor = $convert.base64Decode(
    'ChBUdkZpbG1MaXN0QWxsUmVxEisKBmZpbHRlchgBIAEoCzITLndvd3R2LlR2RmlsbUZpbHRlcl'
    'IGZmlsdGVy');

@$core.Deprecated('Use tvFilmListAllResDescriptor instead')
const TvFilmListAllRes$json = {
  '1': 'TvFilmListAllRes',
  '2': [
    {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.wowtv.TvFilm', '10': 'results'},
  ],
};

/// Descriptor for `TvFilmListAllRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tvFilmListAllResDescriptor = $convert.base64Decode(
    'ChBUdkZpbG1MaXN0QWxsUmVzEicKB3Jlc3VsdHMYASADKAsyDS53b3d0di5UdkZpbG1SB3Jlc3'
    'VsdHM=');

@$core.Deprecated('Use tvFilmMainRandomReqDescriptor instead')
const TvFilmMainRandomReq$json = {
  '1': 'TvFilmMainRandomReq',
};

/// Descriptor for `TvFilmMainRandomReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tvFilmMainRandomReqDescriptor = $convert.base64Decode(
    'ChNUdkZpbG1NYWluUmFuZG9tUmVx');

@$core.Deprecated('Use tvFilmMainRandomResDescriptor instead')
const TvFilmMainRandomRes$json = {
  '1': 'TvFilmMainRandomRes',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.wowtv.TvFilm', '10': 'result'},
  ],
};

/// Descriptor for `TvFilmMainRandomRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tvFilmMainRandomResDescriptor = $convert.base64Decode(
    'ChNUdkZpbG1NYWluUmFuZG9tUmVzEiUKBnJlc3VsdBgBIAEoCzINLndvd3R2LlR2RmlsbVIGcm'
    'VzdWx0');

@$core.Deprecated('Use tvFilmPopularOfDayListAllReqDescriptor instead')
const TvFilmPopularOfDayListAllReq$json = {
  '1': 'TvFilmPopularOfDayListAllReq',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.wowtv.TvType', '10': 'type'},
  ],
};

/// Descriptor for `TvFilmPopularOfDayListAllReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tvFilmPopularOfDayListAllReqDescriptor = $convert.base64Decode(
    'ChxUdkZpbG1Qb3B1bGFyT2ZEYXlMaXN0QWxsUmVxEiEKBHR5cGUYASABKA4yDS53b3d0di5Udl'
    'R5cGVSBHR5cGU=');

@$core.Deprecated('Use tvFilmPopularOfDayListAllResDescriptor instead')
const TvFilmPopularOfDayListAllRes$json = {
  '1': 'TvFilmPopularOfDayListAllRes',
  '2': [
    {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.wowtv.TvFilm', '10': 'results'},
  ],
};

/// Descriptor for `TvFilmPopularOfDayListAllRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tvFilmPopularOfDayListAllResDescriptor = $convert.base64Decode(
    'ChxUdkZpbG1Qb3B1bGFyT2ZEYXlMaXN0QWxsUmVzEicKB3Jlc3VsdHMYASADKAsyDS53b3d0di'
    '5UdkZpbG1SB3Jlc3VsdHM=');

@$core.Deprecated('Use tvFilmCastListAllReqDescriptor instead')
const TvFilmCastListAllReq$json = {
  '1': 'TvFilmCastListAllReq',
  '2': [
    {'1': 'film', '3': 1, '4': 1, '5': 9, '10': 'film'},
  ],
};

/// Descriptor for `TvFilmCastListAllReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tvFilmCastListAllReqDescriptor = $convert.base64Decode(
    'ChRUdkZpbG1DYXN0TGlzdEFsbFJlcRISCgRmaWxtGAEgASgJUgRmaWxt');

@$core.Deprecated('Use tvFilmCastListAllResDescriptor instead')
const TvFilmCastListAllRes$json = {
  '1': 'TvFilmCastListAllRes',
  '2': [
    {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.wowtv.TvFilmCast', '10': 'results'},
  ],
};

/// Descriptor for `TvFilmCastListAllRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tvFilmCastListAllResDescriptor = $convert.base64Decode(
    'ChRUdkZpbG1DYXN0TGlzdEFsbFJlcxIrCgdyZXN1bHRzGAEgAygLMhEud293dHYuVHZGaWxtQ2'
    'FzdFIHcmVzdWx0cw==');

@$core.Deprecated('Use tvFilmCrewListAllReqDescriptor instead')
const TvFilmCrewListAllReq$json = {
  '1': 'TvFilmCrewListAllReq',
  '2': [
    {'1': 'film', '3': 1, '4': 1, '5': 9, '10': 'film'},
  ],
};

/// Descriptor for `TvFilmCrewListAllReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tvFilmCrewListAllReqDescriptor = $convert.base64Decode(
    'ChRUdkZpbG1DcmV3TGlzdEFsbFJlcRISCgRmaWxtGAEgASgJUgRmaWxt');

@$core.Deprecated('Use tvFilmCrewListAllResDescriptor instead')
const TvFilmCrewListAllRes$json = {
  '1': 'TvFilmCrewListAllRes',
  '2': [
    {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.wowtv.TvFilmCrew', '10': 'results'},
  ],
};

/// Descriptor for `TvFilmCrewListAllRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tvFilmCrewListAllResDescriptor = $convert.base64Decode(
    'ChRUdkZpbG1DcmV3TGlzdEFsbFJlcxIrCgdyZXN1bHRzGAEgAygLMhEud293dHYuVHZGaWxtQ3'
    'Jld1IHcmVzdWx0cw==');

@$core.Deprecated('Use tvFilmImageListAllReqDescriptor instead')
const TvFilmImageListAllReq$json = {
  '1': 'TvFilmImageListAllReq',
  '2': [
    {'1': 'film', '3': 1, '4': 1, '5': 9, '10': 'film'},
  ],
};

/// Descriptor for `TvFilmImageListAllReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tvFilmImageListAllReqDescriptor = $convert.base64Decode(
    'ChVUdkZpbG1JbWFnZUxpc3RBbGxSZXESEgoEZmlsbRgBIAEoCVIEZmlsbQ==');

@$core.Deprecated('Use tvFilmImageListAllResDescriptor instead')
const TvFilmImageListAllRes$json = {
  '1': 'TvFilmImageListAllRes',
  '2': [
    {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.wowtv.TvFilmImage', '10': 'results'},
  ],
};

/// Descriptor for `TvFilmImageListAllRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tvFilmImageListAllResDescriptor = $convert.base64Decode(
    'ChVUdkZpbG1JbWFnZUxpc3RBbGxSZXMSLAoHcmVzdWx0cxgBIAMoCzISLndvd3R2LlR2RmlsbU'
    'ltYWdlUgdyZXN1bHRz');

@$core.Deprecated('Use tvFilmMediaListAllReqDescriptor instead')
const TvFilmMediaListAllReq$json = {
  '1': 'TvFilmMediaListAllReq',
  '2': [
    {'1': 'film', '3': 1, '4': 1, '5': 9, '10': 'film'},
  ],
};

/// Descriptor for `TvFilmMediaListAllReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tvFilmMediaListAllReqDescriptor = $convert.base64Decode(
    'ChVUdkZpbG1NZWRpYUxpc3RBbGxSZXESEgoEZmlsbRgBIAEoCVIEZmlsbQ==');

@$core.Deprecated('Use tvFilmMediaListAllResDescriptor instead')
const TvFilmMediaListAllRes$json = {
  '1': 'TvFilmMediaListAllRes',
  '2': [
    {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.wowtv.TvFilmVideo', '10': 'results'},
  ],
};

/// Descriptor for `TvFilmMediaListAllRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tvFilmMediaListAllResDescriptor = $convert.base64Decode(
    'ChVUdkZpbG1NZWRpYUxpc3RBbGxSZXMSLAoHcmVzdWx0cxgBIAMoCzISLndvd3R2LlR2RmlsbV'
    'ZpZGVvUgdyZXN1bHRz');

