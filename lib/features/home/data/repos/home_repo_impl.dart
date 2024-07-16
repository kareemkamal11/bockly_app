// ignore_for_file: unused_catch_clause

import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/apis_severce.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApisSeverce apiSeverce;

  HomeRepoImpl(this.apiSeverce);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiSeverce.get(
          endpoint: 'volumes?q=programming&maxResults=30&Sorting=newset');
      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } on Exception catch (e) {
          books.add(BookModel.fromJson(item));
        }
      }

      return right(books);
    } on Exception catch (e) {
      print('Error is ${e.toString()}');
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiSeverce.get(
          endpoint: 'volumes?q=programming&maxResults=30&filter=free-ebooks');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      print(e);
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
