// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MovieDetailState {

 RequestState get movieState; MovieDetail? get movie; RequestState get recommendationState; List<Movie> get recommendations; String get message; bool get isAddedToWatchlist; String get watchlistMessage;
/// Create a copy of MovieDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieDetailStateCopyWith<MovieDetailState> get copyWith => _$MovieDetailStateCopyWithImpl<MovieDetailState>(this as MovieDetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieDetailState&&(identical(other.movieState, movieState) || other.movieState == movieState)&&(identical(other.movie, movie) || other.movie == movie)&&(identical(other.recommendationState, recommendationState) || other.recommendationState == recommendationState)&&const DeepCollectionEquality().equals(other.recommendations, recommendations)&&(identical(other.message, message) || other.message == message)&&(identical(other.isAddedToWatchlist, isAddedToWatchlist) || other.isAddedToWatchlist == isAddedToWatchlist)&&(identical(other.watchlistMessage, watchlistMessage) || other.watchlistMessage == watchlistMessage));
}


@override
int get hashCode => Object.hash(runtimeType,movieState,movie,recommendationState,const DeepCollectionEquality().hash(recommendations),message,isAddedToWatchlist,watchlistMessage);

@override
String toString() {
  return 'MovieDetailState(movieState: $movieState, movie: $movie, recommendationState: $recommendationState, recommendations: $recommendations, message: $message, isAddedToWatchlist: $isAddedToWatchlist, watchlistMessage: $watchlistMessage)';
}


}

/// @nodoc
abstract mixin class $MovieDetailStateCopyWith<$Res>  {
  factory $MovieDetailStateCopyWith(MovieDetailState value, $Res Function(MovieDetailState) _then) = _$MovieDetailStateCopyWithImpl;
@useResult
$Res call({
 RequestState movieState, MovieDetail? movie, RequestState recommendationState, List<Movie> recommendations, String message, bool isAddedToWatchlist, String watchlistMessage
});




}
/// @nodoc
class _$MovieDetailStateCopyWithImpl<$Res>
    implements $MovieDetailStateCopyWith<$Res> {
  _$MovieDetailStateCopyWithImpl(this._self, this._then);

  final MovieDetailState _self;
  final $Res Function(MovieDetailState) _then;

/// Create a copy of MovieDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? movieState = null,Object? movie = freezed,Object? recommendationState = null,Object? recommendations = null,Object? message = null,Object? isAddedToWatchlist = null,Object? watchlistMessage = null,}) {
  return _then(_self.copyWith(
movieState: null == movieState ? _self.movieState : movieState // ignore: cast_nullable_to_non_nullable
as RequestState,movie: freezed == movie ? _self.movie : movie // ignore: cast_nullable_to_non_nullable
as MovieDetail?,recommendationState: null == recommendationState ? _self.recommendationState : recommendationState // ignore: cast_nullable_to_non_nullable
as RequestState,recommendations: null == recommendations ? _self.recommendations : recommendations // ignore: cast_nullable_to_non_nullable
as List<Movie>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,isAddedToWatchlist: null == isAddedToWatchlist ? _self.isAddedToWatchlist : isAddedToWatchlist // ignore: cast_nullable_to_non_nullable
as bool,watchlistMessage: null == watchlistMessage ? _self.watchlistMessage : watchlistMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieDetailState].
extension MovieDetailStatePatterns on MovieDetailState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieDetailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieDetailState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieDetailState value)  $default,){
final _that = this;
switch (_that) {
case _MovieDetailState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieDetailState value)?  $default,){
final _that = this;
switch (_that) {
case _MovieDetailState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RequestState movieState,  MovieDetail? movie,  RequestState recommendationState,  List<Movie> recommendations,  String message,  bool isAddedToWatchlist,  String watchlistMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieDetailState() when $default != null:
return $default(_that.movieState,_that.movie,_that.recommendationState,_that.recommendations,_that.message,_that.isAddedToWatchlist,_that.watchlistMessage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RequestState movieState,  MovieDetail? movie,  RequestState recommendationState,  List<Movie> recommendations,  String message,  bool isAddedToWatchlist,  String watchlistMessage)  $default,) {final _that = this;
switch (_that) {
case _MovieDetailState():
return $default(_that.movieState,_that.movie,_that.recommendationState,_that.recommendations,_that.message,_that.isAddedToWatchlist,_that.watchlistMessage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RequestState movieState,  MovieDetail? movie,  RequestState recommendationState,  List<Movie> recommendations,  String message,  bool isAddedToWatchlist,  String watchlistMessage)?  $default,) {final _that = this;
switch (_that) {
case _MovieDetailState() when $default != null:
return $default(_that.movieState,_that.movie,_that.recommendationState,_that.recommendations,_that.message,_that.isAddedToWatchlist,_that.watchlistMessage);case _:
  return null;

}
}

}

/// @nodoc


class _MovieDetailState implements MovieDetailState {
  const _MovieDetailState({this.movieState = RequestState.Empty, this.movie, this.recommendationState = RequestState.Empty, final  List<Movie> recommendations = const [], this.message = '', this.isAddedToWatchlist = false, this.watchlistMessage = ''}): _recommendations = recommendations;
  

@override@JsonKey() final  RequestState movieState;
@override final  MovieDetail? movie;
@override@JsonKey() final  RequestState recommendationState;
 final  List<Movie> _recommendations;
@override@JsonKey() List<Movie> get recommendations {
  if (_recommendations is EqualUnmodifiableListView) return _recommendations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recommendations);
}

@override@JsonKey() final  String message;
@override@JsonKey() final  bool isAddedToWatchlist;
@override@JsonKey() final  String watchlistMessage;

/// Create a copy of MovieDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieDetailStateCopyWith<_MovieDetailState> get copyWith => __$MovieDetailStateCopyWithImpl<_MovieDetailState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieDetailState&&(identical(other.movieState, movieState) || other.movieState == movieState)&&(identical(other.movie, movie) || other.movie == movie)&&(identical(other.recommendationState, recommendationState) || other.recommendationState == recommendationState)&&const DeepCollectionEquality().equals(other._recommendations, _recommendations)&&(identical(other.message, message) || other.message == message)&&(identical(other.isAddedToWatchlist, isAddedToWatchlist) || other.isAddedToWatchlist == isAddedToWatchlist)&&(identical(other.watchlistMessage, watchlistMessage) || other.watchlistMessage == watchlistMessage));
}


@override
int get hashCode => Object.hash(runtimeType,movieState,movie,recommendationState,const DeepCollectionEquality().hash(_recommendations),message,isAddedToWatchlist,watchlistMessage);

@override
String toString() {
  return 'MovieDetailState(movieState: $movieState, movie: $movie, recommendationState: $recommendationState, recommendations: $recommendations, message: $message, isAddedToWatchlist: $isAddedToWatchlist, watchlistMessage: $watchlistMessage)';
}


}

/// @nodoc
abstract mixin class _$MovieDetailStateCopyWith<$Res> implements $MovieDetailStateCopyWith<$Res> {
  factory _$MovieDetailStateCopyWith(_MovieDetailState value, $Res Function(_MovieDetailState) _then) = __$MovieDetailStateCopyWithImpl;
@override @useResult
$Res call({
 RequestState movieState, MovieDetail? movie, RequestState recommendationState, List<Movie> recommendations, String message, bool isAddedToWatchlist, String watchlistMessage
});




}
/// @nodoc
class __$MovieDetailStateCopyWithImpl<$Res>
    implements _$MovieDetailStateCopyWith<$Res> {
  __$MovieDetailStateCopyWithImpl(this._self, this._then);

  final _MovieDetailState _self;
  final $Res Function(_MovieDetailState) _then;

/// Create a copy of MovieDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? movieState = null,Object? movie = freezed,Object? recommendationState = null,Object? recommendations = null,Object? message = null,Object? isAddedToWatchlist = null,Object? watchlistMessage = null,}) {
  return _then(_MovieDetailState(
movieState: null == movieState ? _self.movieState : movieState // ignore: cast_nullable_to_non_nullable
as RequestState,movie: freezed == movie ? _self.movie : movie // ignore: cast_nullable_to_non_nullable
as MovieDetail?,recommendationState: null == recommendationState ? _self.recommendationState : recommendationState // ignore: cast_nullable_to_non_nullable
as RequestState,recommendations: null == recommendations ? _self._recommendations : recommendations // ignore: cast_nullable_to_non_nullable
as List<Movie>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,isAddedToWatchlist: null == isAddedToWatchlist ? _self.isAddedToWatchlist : isAddedToWatchlist // ignore: cast_nullable_to_non_nullable
as bool,watchlistMessage: null == watchlistMessage ? _self.watchlistMessage : watchlistMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
