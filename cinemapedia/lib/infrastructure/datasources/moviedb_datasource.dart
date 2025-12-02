import 'package:cinemapedia/config/constants/environment.dart';
import 'package:cinemapedia/domain/datasources/movies_datadource.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:dio/dio.dart';

class MoviedbDatasource extends MoviesDatadource {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key': Environment.theMovieDbKey,
        'language': 'es-ES',
      },
    ),
  );

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    final Response = await dio.get('/movie/now_playing');
    final List<Movie> movies = [];

    return [];
  }
}
