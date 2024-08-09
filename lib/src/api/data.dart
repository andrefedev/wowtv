import 'package:equatable/equatable.dart';
//
// optional TvType type = 1;
// optional string genre = 2;
// optional OrderBy orderBy = 3;
// optional uint32 pageLimit = 4;
// optional uint32 pageOffset = 5;

import 'v1/wplay.pb.dart';

// class TvFilterData extends Equatable {
//   final TvType? type;
//   final String? genre;
//   final OrderBy? orderBy;
//   final int? pageLimit;
//   final int? pageOffset;
//
//   const TvFilterData({
//     this.type,
//     this.genre,
//     this.orderBy,
//     this.pageLimit = 20,
//     this.pageOffset = 0,
//   });
//
//   copyWith({
//     TvType? type,
//     String? genre,
//     OrderBy? orderBy,
//     int? pageLimit,
//     int? pageOffset,
//   }) {
//     return TvFilterData(
//         type: type ?? this.type,
//         genre: genre ?? this.genre,
//         orderBy: orderBy ?? this.orderBy,
//         pageLimit: pageLimit ?? this.pageLimit,
//         pageOffset: pageOffset ?? this.pageOffset);
//   }
//
//   @override
//   List<Object?> get props => [type, genre, orderBy, pageLimit, pageOffset];
// }