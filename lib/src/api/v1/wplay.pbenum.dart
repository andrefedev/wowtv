//
//  Generated code. Do not modify.
//  source: wplay.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class TvType extends $pb.ProtobufEnum {
  static const TvType NONE = TvType._(0, _omitEnumNames ? '' : 'NONE');
  static const TvType MOVIE = TvType._(1, _omitEnumNames ? '' : 'MOVIE');
  static const TvType SERIE = TvType._(2, _omitEnumNames ? '' : 'SERIE');

  static const $core.List<TvType> values = <TvType> [
    NONE,
    MOVIE,
    SERIE,
  ];

  static final $core.Map<$core.int, TvType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TvType? valueOf($core.int value) => _byValue[value];

  const TvType._($core.int v, $core.String n) : super(v, n);
}

class OrderBy extends $pb.ProtobufEnum {
  static const OrderBy MOST_NONE = OrderBy._(0, _omitEnumNames ? '' : 'MOST_NONE');
  static const OrderBy MOST_RECENT = OrderBy._(1, _omitEnumNames ? '' : 'MOST_RECENT');
  static const OrderBy MOST_VALUED = OrderBy._(2, _omitEnumNames ? '' : 'MOST_VALUED');
  static const OrderBy MOST_POPULAR = OrderBy._(3, _omitEnumNames ? '' : 'MOST_POPULAR');
  static const OrderBy MOST_RELEVANT = OrderBy._(4, _omitEnumNames ? '' : 'MOST_RELEVANT');

  static const $core.List<OrderBy> values = <OrderBy> [
    MOST_NONE,
    MOST_RECENT,
    MOST_VALUED,
    MOST_POPULAR,
    MOST_RELEVANT,
  ];

  static final $core.Map<$core.int, OrderBy> _byValue = $pb.ProtobufEnum.initByValue(values);
  static OrderBy? valueOf($core.int value) => _byValue[value];

  const OrderBy._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
