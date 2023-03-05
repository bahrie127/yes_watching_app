// Mocks generated by Mockito 5.3.2 from annotations
// in yes_watching_app/test/features/movies/data/repositories/movie_repository_impl_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:yes_watching_app/features/movies/data/datasources/movie_remote_datasource.dart'
    as _i3;
import 'package:yes_watching_app/features/movies/data/models/movie_response_model.dart'
    as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeMovieResponseModel_0 extends _i1.SmartFake
    implements _i2.MovieResponseModel {
  _FakeMovieResponseModel_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [MovieRemoteDatasource].
///
/// See the documentation for Mockito's code generation for more information.
class MockMovieRemoteDatasource extends _i1.Mock
    implements _i3.MovieRemoteDatasource {
  MockMovieRemoteDatasource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.MovieResponseModel> getPopularMovie() => (super.noSuchMethod(
        Invocation.method(
          #getPopularMovie,
          [],
        ),
        returnValue:
            _i4.Future<_i2.MovieResponseModel>.value(_FakeMovieResponseModel_0(
          this,
          Invocation.method(
            #getPopularMovie,
            [],
          ),
        )),
      ) as _i4.Future<_i2.MovieResponseModel>);
}