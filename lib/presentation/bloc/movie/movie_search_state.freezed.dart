// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MovieSearchState {

 RequestState get state; List<Movie> get searchResult; String get message;
/// Create a copy of MovieSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieSearchStateCopyWith<MovieSearchState> get copyWith => _$MovieSearchStateCopyWithImpl<MovieSearchState>(this as MovieSearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieSearchState&&(identical(other.state, state) || other.state == state)&&const DeepCollectionEquality().equals(other.searchResult, searchResult)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,state,const DeepCollectionEquality().hash(searchResult),message);

@override
String toString() {
  return 'MovieSearchState(state: $state, searchResult: $searchResult, message: $message)';
}


}

/// @nodoc
abstract mixin class $MovieSearchStateCopyWith<$Res>  {
  factory $MovieSearchStateCopyWith(MovieSearchState value, $Res Function(MovieSearchState) _then) = _$MovieSearchStateCopyWithImpl;
@useResult
$Res call({
 RequestState state, List<Movie> searchResult, String message
});




}
/// @nodoc
class _$MovieSearchStateCopyWithImpl<$Res>
    implements $MovieSearchStateCopyWith<$Res> {
  _$MovieSearchStateCopyWithImpl(this._self, this._then);

  final MovieSearchState _self;
  final $Res Function(MovieSearchState) _then;

/// Create a copy of MovieSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? state = null,Object? searchResult = null,Object? message = null,}) {
  return _then(_self.copyWith(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as RequestState,searchResult: null == searchResult ? _self.searchResult : searchResult // ignore: cast_nullable_to_non_nullable
as List<Movie>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieSearchState].
extension MovieSearchStatePatterns on MovieSearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieSearchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieSearchState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieSearchState value)  $default,){
final _that = this;
switch (_that) {
case _MovieSearchState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieSearchState value)?  $default,){
final _that = this;
switch (_that) {
case _MovieSearchState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RequestState state,  List<Movie> searchResult,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieSearchState() when $default != null:
return $default(_that.state,_that.searchResult,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RequestState state,  List<Movie> searchResult,  String message)  $default,) {final _that = this;
switch (_that) {
case _MovieSearchState():
return $default(_that.state,_that.searchResult,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RequestState state,  List<Movie> searchResult,  String message)?  $default,) {final _that = this;
switch (_that) {
case _MovieSearchState() when $default != null:
return $default(_that.state,_that.searchResult,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _MovieSearchState implements MovieSearchState {
  const _MovieSearchState({this.state = RequestState.Empty, final  List<Movie> searchResult = const [], this.message = ''}): _searchResult = searchResult;
  

@override@JsonKey() final  RequestState state;
 final  List<Movie> _searchResult;
@override@JsonKey() List<Movie> get searchResult {
  if (_searchResult is EqualUnmodifiableListView) return _searchResult;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_searchResult);
}

@override@JsonKey() final  String message;

/// Create a copy of MovieSearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieSearchStateCopyWith<_MovieSearchState> get copyWith => __$MovieSearchStateCopyWithImpl<_MovieSearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieSearchState&&(identical(other.state, state) || other.state == state)&&const DeepCollectionEquality().equals(other._searchResult, _searchResult)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,state,const DeepCollectionEquality().hash(_searchResult),message);

@override
String toString() {
  return 'MovieSearchState(state: $state, searchResult: $searchResult, message: $message)';
}


}

/// @nodoc
abstract mixin class _$MovieSearchStateCopyWith<$Res> implements $MovieSearchStateCopyWith<$Res> {
  factory _$MovieSearchStateCopyWith(_MovieSearchState value, $Res Function(_MovieSearchState) _then) = __$MovieSearchStateCopyWithImpl;
@override @useResult
$Res call({
 RequestState state, List<Movie> searchResult, String message
});




}
/// @nodoc
class __$MovieSearchStateCopyWithImpl<$Res>
    implements _$MovieSearchStateCopyWith<$Res> {
  __$MovieSearchStateCopyWithImpl(this._self, this._then);

  final _MovieSearchState _self;
  final $Res Function(_MovieSearchState) _then;

/// Create a copy of MovieSearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? state = null,Object? searchResult = null,Object? message = null,}) {
  return _then(_MovieSearchState(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as RequestState,searchResult: null == searchResult ? _self._searchResult : searchResult // ignore: cast_nullable_to_non_nullable
as List<Movie>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
