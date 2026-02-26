// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_movies_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PopularMoviesState {

 RequestState get state; List<Movie> get movies; String get message;
/// Create a copy of PopularMoviesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PopularMoviesStateCopyWith<PopularMoviesState> get copyWith => _$PopularMoviesStateCopyWithImpl<PopularMoviesState>(this as PopularMoviesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PopularMoviesState&&(identical(other.state, state) || other.state == state)&&const DeepCollectionEquality().equals(other.movies, movies)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,state,const DeepCollectionEquality().hash(movies),message);

@override
String toString() {
  return 'PopularMoviesState(state: $state, movies: $movies, message: $message)';
}


}

/// @nodoc
abstract mixin class $PopularMoviesStateCopyWith<$Res>  {
  factory $PopularMoviesStateCopyWith(PopularMoviesState value, $Res Function(PopularMoviesState) _then) = _$PopularMoviesStateCopyWithImpl;
@useResult
$Res call({
 RequestState state, List<Movie> movies, String message
});




}
/// @nodoc
class _$PopularMoviesStateCopyWithImpl<$Res>
    implements $PopularMoviesStateCopyWith<$Res> {
  _$PopularMoviesStateCopyWithImpl(this._self, this._then);

  final PopularMoviesState _self;
  final $Res Function(PopularMoviesState) _then;

/// Create a copy of PopularMoviesState
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


/// Adds pattern-matching-related methods to [PopularMoviesState].
extension PopularMoviesStatePatterns on PopularMoviesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PopularMoviesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PopularMoviesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PopularMoviesState value)  $default,){
final _that = this;
switch (_that) {
case _PopularMoviesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PopularMoviesState value)?  $default,){
final _that = this;
switch (_that) {
case _PopularMoviesState() when $default != null:
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
case _PopularMoviesState() when $default != null:
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
case _PopularMoviesState():
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
case _PopularMoviesState() when $default != null:
return $default(_that.state,_that.movies,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _PopularMoviesState implements PopularMoviesState {
  const _PopularMoviesState({this.state = RequestState.Empty, final  List<Movie> movies = const [], this.message = ''}): _movies = movies;
  

@override@JsonKey() final  RequestState state;
 final  List<Movie> _movies;
@override@JsonKey() List<Movie> get movies {
  if (_movies is EqualUnmodifiableListView) return _movies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_movies);
}

@override@JsonKey() final  String message;

/// Create a copy of PopularMoviesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PopularMoviesStateCopyWith<_PopularMoviesState> get copyWith => __$PopularMoviesStateCopyWithImpl<_PopularMoviesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PopularMoviesState&&(identical(other.state, state) || other.state == state)&&const DeepCollectionEquality().equals(other._movies, _movies)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,state,const DeepCollectionEquality().hash(_movies),message);

@override
String toString() {
  return 'PopularMoviesState(state: $state, movies: $movies, message: $message)';
}


}

/// @nodoc
abstract mixin class _$PopularMoviesStateCopyWith<$Res> implements $PopularMoviesStateCopyWith<$Res> {
  factory _$PopularMoviesStateCopyWith(_PopularMoviesState value, $Res Function(_PopularMoviesState) _then) = __$PopularMoviesStateCopyWithImpl;
@override @useResult
$Res call({
 RequestState state, List<Movie> movies, String message
});




}
/// @nodoc
class __$PopularMoviesStateCopyWithImpl<$Res>
    implements _$PopularMoviesStateCopyWith<$Res> {
  __$PopularMoviesStateCopyWithImpl(this._self, this._then);

  final _PopularMoviesState _self;
  final $Res Function(_PopularMoviesState) _then;

/// Create a copy of PopularMoviesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? state = null,Object? movies = null,Object? message = null,}) {
  return _then(_PopularMoviesState(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as RequestState,movies: null == movies ? _self._movies : movies // ignore: cast_nullable_to_non_nullable
as List<Movie>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
