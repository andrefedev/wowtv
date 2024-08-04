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
  static const TvType None = TvType._(0, _omitEnumNames ? '' : 'None');
  static const TvType Movie = TvType._(1, _omitEnumNames ? '' : 'Movie');
  static const TvType Serie = TvType._(2, _omitEnumNames ? '' : 'Serie');

  static const $core.List<TvType> values = <TvType> [
    None,
    Movie,
    Serie,
  ];

  static final $core.Map<$core.int, TvType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TvType? valueOf($core.int value) => _byValue[value];

  const TvType._($core.int v, $core.String n) : super(v, n);
}

class OrderBy extends $pb.ProtobufEnum {
  static const OrderBy Unknown = OrderBy._(0, _omitEnumNames ? '' : 'Unknown');
  static const OrderBy MostRecent = OrderBy._(1, _omitEnumNames ? '' : 'MostRecent');
  static const OrderBy MostValued = OrderBy._(2, _omitEnumNames ? '' : 'MostValued');
  static const OrderBy MostPopular = OrderBy._(3, _omitEnumNames ? '' : 'MostPopular');
  static const OrderBy MostRelevant = OrderBy._(4, _omitEnumNames ? '' : 'MostRelevant');

  static const $core.List<OrderBy> values = <OrderBy> [
    Unknown,
    MostRecent,
    MostValued,
    MostPopular,
    MostRelevant,
  ];

  static final $core.Map<$core.int, OrderBy> _byValue = $pb.ProtobufEnum.initByValue(values);
  static OrderBy? valueOf($core.int value) => _byValue[value];

  const OrderBy._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
