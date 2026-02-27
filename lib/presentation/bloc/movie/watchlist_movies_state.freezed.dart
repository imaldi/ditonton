// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watchlist_movies_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WatchlistMoviesState {

 RequestState get state; List<Movie> get watchlistMovies; String get message;
/// Create a copy of WatchlistMoviesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WatchlistMoviesStateCopyWith<WatchlistMoviesState> get copyWith => _$WatchlistMoviesStateCopyWithImpl<WatchlistMoviesState>(this as WatchlistMoviesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchlistMoviesState&&(identical(other.state, state) || other.state == state)&&const DeepCollectionEquality().equals(other.watchlistMovies, watchlistMovies)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,state,const DeepCollectionEquality().hash(watchlistMovies),message);

@override
String toString() {
  return 'WatchlistMoviesState(state: $state, watchlistMovies: $watchlistMovies, message: $message)';
}


}

/// @nodoc
abstract mixin class $WatchlistMoviesStateCopyWith<$Res>  {
  factory $WatchlistMoviesStateCopyWith(WatchlistMoviesState value, $Res Function(WatchlistMoviesState) _then) = _$WatchlistMoviesStateCopyWithImpl;
@useResult
$Res call({
 RequestState state, List<Movie> watchlistMovies, String message
});




}
/// @nodoc
class _$WatchlistMoviesStateCopyWithImpl<$Res>
    implements $WatchlistMoviesStateCopyWith<$Res> {
  _$WatchlistMoviesStateCopyWithImpl(this._self, this._then);

  final WatchlistMoviesState _self;
  final $Res Function(WatchlistMoviesState) _then;

/// Create a copy of WatchlistMoviesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? state = null,Object? watchlistMovies = null,Object? message = null,}) {
  return _then(_self.copyWith(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as RequestState,watchlistMovies: null == watchlistMovies ? _self.watchlistMovies : watchlistMovies // ignore: cast_nullable_to_non_nullable
as List<Movie>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WatchlistMoviesState].
extension WatchlistMoviesStatePatterns on WatchlistMoviesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WatchlistMoviesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WatchlistMoviesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WatchlistMoviesState value)  $default,){
final _that = this;
switch (_that) {
case _WatchlistMoviesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WatchlistMoviesState value)?  $default,){
final _that = this;
switch (_that) {
case _WatchlistMoviesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RequestState state,  List<Movie> watchlistMovies,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WatchlistMoviesState() when $default != null:
return $default(_that.state,_that.watchlistMovies,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RequestState state,  List<Movie> watchlistMovies,  String message)  $default,) {final _that = this;
switch (_that) {
case _WatchlistMoviesState():
return $default(_that.state,_that.watchlistMovies,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RequestState state,  List<Movie> watchlistMovies,  String message)?  $default,) {final _that = this;
switch (_that) {
case _WatchlistMoviesState() when $default != null:
return $default(_that.state,_that.watchlistMovies,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _WatchlistMoviesState implements WatchlistMoviesState {
  const _WatchlistMoviesState({this.state = RequestState.Empty, final  List<Movie> watchlistMovies = const [], this.message = ''}): _watchlistMovies = watchlistMovies;
  

@override@JsonKey() final  RequestState state;
 final  List<Movie> _watchlistMovies;
@override@JsonKey() List<Movie> get watchlistMovies {
  if (_watchlistMovies is EqualUnmodifiableListView) return _watchlistMovies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_watchlistMovies);
}

@override@JsonKey() final  String message;

/// Create a copy of WatchlistMoviesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WatchlistMoviesStateCopyWith<_WatchlistMoviesState> get copyWith => __$WatchlistMoviesStateCopyWithImpl<_WatchlistMoviesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WatchlistMoviesState&&(identical(other.state, state) || other.state == state)&&const DeepCollectionEquality().equals(other._watchlistMovies, _watchlistMovies)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,state,const DeepCollectionEquality().hash(_watchlistMovies),message);

@override
String toString() {
  return 'WatchlistMoviesState(state: $state, watchlistMovies: $watchlistMovies, message: $message)';
}


}

/// @nodoc
abstract mixin class _$WatchlistMoviesStateCopyWith<$Res> implements $WatchlistMoviesStateCopyWith<$Res> {
  factory _$WatchlistMoviesStateCopyWith(_WatchlistMoviesState value, $Res Function(_WatchlistMoviesState) _then) = __$WatchlistMoviesStateCopyWithImpl;
@override @useResult
$Res call({
 RequestState state, List<Movie> watchlistMovies, String message
});




}
/// @nodoc
class __$WatchlistMoviesStateCopyWithImpl<$Res>
    implements _$WatchlistMoviesStateCopyWith<$Res> {
  __$WatchlistMoviesStateCopyWithImpl(this._self, this._then);

  final _WatchlistMoviesState _self;
  final $Res Function(_WatchlistMoviesState) _then;

/// Create a copy of WatchlistMoviesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? state = null,Object? watchlistMovies = null,Object? message = null,}) {
  return _then(_WatchlistMoviesState(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as RequestState,watchlistMovies: null == watchlistMovies ? _self._watchlistMovies : watchlistMovies // ignore: cast_nullable_to_non_nullable
as List<Movie>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
