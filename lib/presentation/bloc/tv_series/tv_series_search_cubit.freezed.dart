// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_series_search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TvSeriesSearchState {

 RequestState get state; List<TvSeries> get searchResult; String get message;
/// Create a copy of TvSeriesSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TvSeriesSearchStateCopyWith<TvSeriesSearchState> get copyWith => _$TvSeriesSearchStateCopyWithImpl<TvSeriesSearchState>(this as TvSeriesSearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TvSeriesSearchState&&(identical(other.state, state) || other.state == state)&&const DeepCollectionEquality().equals(other.searchResult, searchResult)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,state,const DeepCollectionEquality().hash(searchResult),message);

@override
String toString() {
  return 'TvSeriesSearchState(state: $state, searchResult: $searchResult, message: $message)';
}


}

/// @nodoc
abstract mixin class $TvSeriesSearchStateCopyWith<$Res>  {
  factory $TvSeriesSearchStateCopyWith(TvSeriesSearchState value, $Res Function(TvSeriesSearchState) _then) = _$TvSeriesSearchStateCopyWithImpl;
@useResult
$Res call({
 RequestState state, List<TvSeries> searchResult, String message
});




}
/// @nodoc
class _$TvSeriesSearchStateCopyWithImpl<$Res>
    implements $TvSeriesSearchStateCopyWith<$Res> {
  _$TvSeriesSearchStateCopyWithImpl(this._self, this._then);

  final TvSeriesSearchState _self;
  final $Res Function(TvSeriesSearchState) _then;

/// Create a copy of TvSeriesSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? state = null,Object? searchResult = null,Object? message = null,}) {
  return _then(_self.copyWith(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as RequestState,searchResult: null == searchResult ? _self.searchResult : searchResult // ignore: cast_nullable_to_non_nullable
as List<TvSeries>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TvSeriesSearchState].
extension TvSeriesSearchStatePatterns on TvSeriesSearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TvSeriesSearchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TvSeriesSearchState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TvSeriesSearchState value)  $default,){
final _that = this;
switch (_that) {
case _TvSeriesSearchState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TvSeriesSearchState value)?  $default,){
final _that = this;
switch (_that) {
case _TvSeriesSearchState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RequestState state,  List<TvSeries> searchResult,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TvSeriesSearchState() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RequestState state,  List<TvSeries> searchResult,  String message)  $default,) {final _that = this;
switch (_that) {
case _TvSeriesSearchState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RequestState state,  List<TvSeries> searchResult,  String message)?  $default,) {final _that = this;
switch (_that) {
case _TvSeriesSearchState() when $default != null:
return $default(_that.state,_that.searchResult,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _TvSeriesSearchState implements TvSeriesSearchState {
  const _TvSeriesSearchState({this.state = RequestState.Empty, final  List<TvSeries> searchResult = const [], this.message = ''}): _searchResult = searchResult;
  

@override@JsonKey() final  RequestState state;
 final  List<TvSeries> _searchResult;
@override@JsonKey() List<TvSeries> get searchResult {
  if (_searchResult is EqualUnmodifiableListView) return _searchResult;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_searchResult);
}

@override@JsonKey() final  String message;

/// Create a copy of TvSeriesSearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TvSeriesSearchStateCopyWith<_TvSeriesSearchState> get copyWith => __$TvSeriesSearchStateCopyWithImpl<_TvSeriesSearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TvSeriesSearchState&&(identical(other.state, state) || other.state == state)&&const DeepCollectionEquality().equals(other._searchResult, _searchResult)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,state,const DeepCollectionEquality().hash(_searchResult),message);

@override
String toString() {
  return 'TvSeriesSearchState(state: $state, searchResult: $searchResult, message: $message)';
}


}

/// @nodoc
abstract mixin class _$TvSeriesSearchStateCopyWith<$Res> implements $TvSeriesSearchStateCopyWith<$Res> {
  factory _$TvSeriesSearchStateCopyWith(_TvSeriesSearchState value, $Res Function(_TvSeriesSearchState) _then) = __$TvSeriesSearchStateCopyWithImpl;
@override @useResult
$Res call({
 RequestState state, List<TvSeries> searchResult, String message
});




}
/// @nodoc
class __$TvSeriesSearchStateCopyWithImpl<$Res>
    implements _$TvSeriesSearchStateCopyWith<$Res> {
  __$TvSeriesSearchStateCopyWithImpl(this._self, this._then);

  final _TvSeriesSearchState _self;
  final $Res Function(_TvSeriesSearchState) _then;

/// Create a copy of TvSeriesSearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? state = null,Object? searchResult = null,Object? message = null,}) {
  return _then(_TvSeriesSearchState(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as RequestState,searchResult: null == searchResult ? _self._searchResult : searchResult // ignore: cast_nullable_to_non_nullable
as List<TvSeries>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
