// Mocks generated by Mockito 5.4.4 from annotations
// in ditonton/test/presentation/provider/tv_series_detail_notifier_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:dartz/dartz.dart' as _i3;
import 'package:ditonton/common/failure.dart' as _i6;
import 'package:ditonton/domain/entities/tv_series.dart' as _i9;
import 'package:ditonton/domain/entities/tv_series_detail.dart' as _i7;
import 'package:ditonton/domain/repositories/tv_series_repository.dart' as _i2;
import 'package:ditonton/domain/usecases/tv_series/get_tv_series_detail.dart'
    as _i4;
import 'package:ditonton/domain/usecases/tv_series/get_tv_series_recommendations.dart'
    as _i8;
import 'package:ditonton/domain/usecases/tv_series/get_watchlist_tv_series_status.dart'
    as _i10;
import 'package:ditonton/domain/usecases/tv_series/remove_watchlist_tv_series.dart'
    as _i12;
import 'package:ditonton/domain/usecases/tv_series/save_watchlist_tv_series.dart'
    as _i11;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeTvSeriesRepository_0 extends _i1.SmartFake
    implements _i2.TvSeriesRepository {
  _FakeTvSeriesRepository_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEither_1<L, R> extends _i1.SmartFake implements _i3.Either<L, R> {
  _FakeEither_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [GetTvSeriesDetail].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetTvSeriesDetail extends _i1.Mock implements _i4.GetTvSeriesDetail {
  MockGetTvSeriesDetail() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.TvSeriesRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeTvSeriesRepository_0(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i2.TvSeriesRepository);

  @override
  _i5.Future<_i3.Either<_i6.Failure, _i7.TvSeriesDetail>> execute(int? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [id],
        ),
        returnValue:
            _i5.Future<_i3.Either<_i6.Failure, _i7.TvSeriesDetail>>.value(
                _FakeEither_1<_i6.Failure, _i7.TvSeriesDetail>(
          this,
          Invocation.method(
            #execute,
            [id],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.Failure, _i7.TvSeriesDetail>>);
}

/// A class which mocks [GetTvSeriesRecommendations].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetTvSeriesRecommendations extends _i1.Mock
    implements _i8.GetTvSeriesRecommendations {
  MockGetTvSeriesRecommendations() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.TvSeriesRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeTvSeriesRepository_0(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i2.TvSeriesRepository);

  @override
  _i5.Future<_i3.Either<_i6.Failure, List<_i9.TvSeries>>> execute(dynamic id) =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [id],
        ),
        returnValue:
            _i5.Future<_i3.Either<_i6.Failure, List<_i9.TvSeries>>>.value(
                _FakeEither_1<_i6.Failure, List<_i9.TvSeries>>(
          this,
          Invocation.method(
            #execute,
            [id],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.Failure, List<_i9.TvSeries>>>);
}

/// A class which mocks [GetWatchlistTvSeriesStatus].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetWatchlistTvSeriesStatus extends _i1.Mock
    implements _i10.GetWatchlistTvSeriesStatus {
  MockGetWatchlistTvSeriesStatus() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.TvSeriesRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeTvSeriesRepository_0(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i2.TvSeriesRepository);

  @override
  _i5.Future<bool> execute(int? id) => (super.noSuchMethod(
        Invocation.method(
          #execute,
          [id],
        ),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);
}

/// A class which mocks [SaveWatchlistTvSeries].
///
/// See the documentation for Mockito's code generation for more information.
class MockSaveWatchlistTvSeries extends _i1.Mock
    implements _i11.SaveWatchlistTvSeries {
  MockSaveWatchlistTvSeries() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.TvSeriesRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeTvSeriesRepository_0(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i2.TvSeriesRepository);

  @override
  _i5.Future<_i3.Either<_i6.Failure, String>> execute(
          _i7.TvSeriesDetail? tvSeries) =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [tvSeries],
        ),
        returnValue: _i5.Future<_i3.Either<_i6.Failure, String>>.value(
            _FakeEither_1<_i6.Failure, String>(
          this,
          Invocation.method(
            #execute,
            [tvSeries],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.Failure, String>>);
}

/// A class which mocks [RemoveWatchlistTvSeries].
///
/// See the documentation for Mockito's code generation for more information.
class MockRemoveWatchlistTvSeries extends _i1.Mock
    implements _i12.RemoveWatchlistTvSeries {
  MockRemoveWatchlistTvSeries() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.TvSeriesRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeTvSeriesRepository_0(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i2.TvSeriesRepository);

  @override
  _i5.Future<_i3.Either<_i6.Failure, String>> execute(
          _i7.TvSeriesDetail? tvSeries) =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [tvSeries],
        ),
        returnValue: _i5.Future<_i3.Either<_i6.Failure, String>>.value(
            _FakeEither_1<_i6.Failure, String>(
          this,
          Invocation.method(
            #execute,
            [tvSeries],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.Failure, String>>);
}
