import 'package:flutter/foundation.dart';
import 'package:equatable/equatable.dart';

@immutable
class AppInfo extends Equatable {
  final String imurl;
  final String vidurl;
  final String version;
  final bool showReview;

  const AppInfo({
    required this.imurl,
    required this.vidurl,
    required this.version,
    this.showReview = false,
  });

  copyWith({
    String? imurl,
    String? vidurl,
    String? version,
    bool? showReview,
  }) {
    return AppInfo(
      imurl: imurl ?? this.imurl,
      vidurl: vidurl ?? this.vidurl,
      version: version ?? this.version,
      showReview: showReview ?? this.showReview,
    );
  }

  @override
  List<Object?> get props => [imurl, vidurl, version, showReview];
}