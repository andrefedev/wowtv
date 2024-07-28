import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'model.e.dart';

part 'model.g.dart';

@JsonSerializable()
class User extends Equatable {
  final String ref;
  final String idToken;
  final bool isAdmin;
  final bool isPrime;
  final bool isActive;
  final DateTime lastLogin;
  final DateTime joinedDate;

  const User(
      {required this.ref,
      required this.idToken,
      required this.isAdmin,
      required this.isPrime,
      required this.isActive,
      required this.lastLogin,
      required this.joinedDate});

  Map<String, dynamic> toJson() => _$UserToJson(this);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  List<Object?> get props => [ref, idToken, isAdmin, isPrime, isActive, lastLogin, joinedDate];
}

@JsonSerializable()
class TvFilm extends Equatable {
  final String ref;
  final String name1;
  final String name2;
  final int budget;
  final int revenue;
  final String tagline;
  final int runtime;
  final double voteavg;
  final int votesize;
  final String overview;
  final String posterPath2;
  final String backdpPath2;
  final DateTime releaseDate;
  final DateTime updatedDate;

  const TvFilm({
    required this.ref,
    required this.name1,
    required this.name2,
    required this.budget,
    required this.revenue,
    required this.tagline,
    required this.runtime,
    required this.voteavg,
    required this.votesize,
    required this.overview,
    required this.posterPath2,
    required this.backdpPath2,
    required this.releaseDate,
    required this.updatedDate,
  });

  Map<String, dynamic> toJson() => _$TvFilmToJson(this);

  factory TvFilm.fromJson(Map<String, dynamic> json) => _$TvFilmFromJson(json);

  @override
  List<Object?> get props => [
        ref,
        name1,
        name2,
        budget,
        revenue,
        tagline,
        runtime,
        voteavg,
        votesize,
        overview,
        posterPath2,
        backdpPath2,
        releaseDate,
        updatedDate,
      ];
}
