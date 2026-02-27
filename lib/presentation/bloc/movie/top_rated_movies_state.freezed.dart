// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_rated_movies_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TopRatedMoviesState {

 RequestState get state; List<Movie> get movies; String get message;
/// Create a copy of TopRatedMoviesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopRatedMoviesStateCopyWith<TopRatedMoviesState> get copyWith => _$TopRatedMoviesStateCopyWithImpl<TopRatedMoviesState>(this as TopRatedMoviesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopRatedMoviesState&&(identical(other.state, state) || other.state == state)&&const DeepCollectionEquality().equals(other.movies, movies)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,state,const DeepCollectionEquality().hash(movies),message);

@override
String toString() {
  return 'TopRatedMoviesState(state: $state, movies: $movies, message: $message)';
}


}

/// @nodoc
abstract mixin class $TopRatedMoviesStateCopyWith<$Res>  {
  factory $TopRatedMoviesStateCopyWith(TopRatedMoviesState value, $Res Function(TopRatedMoviesState) _then) = _$TopRatedMoviesStateCopyWithImpl;
@useResult
$Res call({
 RequestState state, List<Movie> movies, String message
});




}
/// @nodoc
class _$TopRatedMoviesStateCopyWithImpl<$Res>
    implements $TopRatedMoviesStateCopyWith<$Res> {
  _$TopRatedMoviesStateCopyWithImpl(this._self, this._then);

  final TopRatedMoviesState _self;
  final $Res Function(TopRatedMoviesState) _then;

/// Create a copy of TopRatedMoviesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? state = null,Object? movies = null,Object? message = null,}) {
  return _then(_self.copyWith(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as RequestState,movies: null == movies ? _self.movies : movies // ignore: cast_nullable_to_non_nullable
as List<Movie>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TopRatedMoviesState].
extension TopRatedMoviesStatePatterns on TopRatedMoviesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopRatedMoviesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopRatedMoviesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopRatedMoviesState value)  $default,){
final _that = this;
switch (_that) {
case _TopRatedMoviesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopRatedMoviesState value)?  $default,){
final _that = this;
switch (_that) {
case _TopRatedMoviesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RequestState state,  List<Movie> movies,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopRatedMoviesState() when $default != null:
return $default(_that.state,_that.movies,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RequestState state,  List<Movie> movies,  String message)  $default,) {final _that = this;
switch (_that) {
case _TopRatedMoviesState():
return $default(_that.state,_that.movies,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RequestState state,  List<Movie> movies,  String message)?  $default,) {final _that = this;
switch (_that) {
case _TopRatedMoviesState() when $default != null:
return $default(_that.state,_that.movies,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _TopRatedMoviesState implements TopRatedMoviesState {
  const _TopRatedMoviesState({this.state = RequestState.Empty, final  List<Movie> movies = const [], this.message = ''}): _movies = movies;
  

@override@JsonKey() final  RequestState state;
 final  List<Movie> _movies;
@override@JsonKey() List<Movie> get movies {
  if (_movies is EqualUnmodifiableListView) return _movies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_movies);
}

@override@JsonKey() final  String message;

/// Create a copy of TopRatedMoviesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopRatedMoviesStateCopyWith<_TopRatedMoviesState> get copyWith => __$TopRatedMoviesStateCopyWithImpl<_TopRatedMoviesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopRatedMoviesState&&(identical(other.state, state) || other.state == state)&&const DeepCollectionEquality().equals(other._movies, _movies)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,state,const DeepCollectionEquality().hash(_movies),message);

@override
String toString() {
  return 'TopRatedMoviesState(state: $state, movies: $movies, message: $message)';
}


}

/// @nodoc
abstract mixin class _$TopRatedMoviesStateCopyWith<$Res> implements $TopRatedMoviesStateCopyWith<$Res> {
  factory _$TopRatedMoviesStateCopyWith(_TopRatedMoviesState value, $Res Function(_TopRatedMoviesState) _then) = __$TopRatedMoviesStateCopyWithImpl;
@override @useResult
$Res call({
 RequestState state, List<Movie> movies, String message
});




}
/// @nodoc
class __$TopRatedMoviesStateCopyWithImpl<$Res>
    implements _$TopRatedMoviesStateCopyWith<$Res> {
  __$TopRatedMoviesStateCopyWithImpl(this._self, this._then);

  final _TopRatedMoviesState _self;
  final $Res Function(_TopRatedMoviesState) _then;

/// Create a copy of TopRatedMoviesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? state = null,Object? movies = null,Object? message = null,}) {
  return _then(_TopRatedMoviesState(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as RequestState,movies: null == movies ? _self._movies : movies // ignore: cast_nullable_to_non_nullable
as List<Movie>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
