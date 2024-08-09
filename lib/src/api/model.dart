import 'v1/auth.pb.dart';
import 'v1/wplay.pb.dart';

extension UserModel on User {
  String get nick => ref.split("-").last;
}

extension TvFilmModel on TvFilm {
  String get posterPath => posterPath2;

  String get backdropPath => backdpPath2.isEmpty ? posterPath : backdpPath2;

  String? get formatRuntime {
    if (runtime >= 60) {
      int hours = runtime ~/ 60; // Calcular horas
      int remainingMinutes = runtime % 60; // Calcular minutos restantes
      return '$hours h $remainingMinutes min';
    } else {
      return '$runtime min';
    }
  }
}

extension TvTypeModel on TvType {
  String? get label {
    switch (this) {
      case TvType.SERIE:
        return "Serie";
      case TvType.MOVIE:
        return "Película";
      default:
        return null;
    }
  }
}
