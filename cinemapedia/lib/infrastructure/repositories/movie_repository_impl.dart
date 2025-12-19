import 'package:cinemapedia/domain/datasources/movies_datadource.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/domain/repositories/movies_repository.dart';

class MovieRepositoryImpl extends MoviesRepository {
  final MoviesDatadource datadource;
  MovieRepositoryImpl(this.datadource);

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) {
    return datadource.getNowPlaying(page: page);
  }

  @override
  Future<List<Movie>> getPopular({int page = 1}) {
    return datadource.getPopular(page: page);
  }
  
  @override
  Future<List<Movie>> getTopRated({int page = 1}) {
    return datadource.getTopRated(page: page);
  }
  
  @override
  Future<List<Movie>> getUpcoming({int page = 1}) {
    return datadource.getUpcoming(page: page);
  }
}
