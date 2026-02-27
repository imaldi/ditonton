// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watchlist_tv_series_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WatchlistTvSeriesState {

 RequestState get state; List<TvSeries> get watchlistTvSeries; String get message;
/// Create a copy of WatchlistTvSeriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WatchlistTvSeriesStateCopyWith<WatchlistTvSeriesState> get copyWith => _$WatchlistTvSeriesStateCopyWithImpl<WatchlistTvSeriesState>(this as WatchlistTvSeriesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchlistTvSeriesState&&(identical(other.state, state) || other.state == state)&&const DeepCollectionEquality().equals(other.watchlistTvSeries, watchlistTvSeries)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,state,const DeepCollectionEquality().hash(watchlistTvSeries),message);

@override
String toString() {
  return 'WatchlistTvSeriesState(state: $state, watchlistTvSeries: $watchlistTvSeries, message: $message)';
}


}

/// @nodoc
abstract mixin class $WatchlistTvSeriesStateCopyWith<$Res>  {
  factory $WatchlistTvSeriesStateCopyWith(WatchlistTvSeriesState value, $Res Function(WatchlistTvSeriesState) _then) = _$WatchlistTvSeriesStateCopyWithImpl;
@useResult
$Res call({
 RequestState state, List<TvSeries> watchlistTvSeries, String message
});




}
/// @nodoc
class _$WatchlistTvSeriesStateCopyWithImpl<$Res>
    implements $WatchlistTvSeriesStateCopyWith<$Res> {
  _$WatchlistTvSeriesStateCopyWithImpl(this._self, this._then);

  final WatchlistTvSeriesState _self;
  final $Res Function(WatchlistTvSeriesState) _then;

/// Create a copy of WatchlistTvSeriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? state = null,Object? watchlistTvSeries = null,Object? message = null,}) {
  return _then(_self.copyWith(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as RequestState,watchlistTvSeries: null == watchlistTvSeries ? _self.watchlistTvSeries : watchlistTvSeries // ignore: cast_nullable_to_non_nullable
as List<TvSeries>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WatchlistTvSeriesState].
extension WatchlistTvSeriesStatePatterns on WatchlistTvSeriesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WatchlistTvSeriesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WatchlistTvSeriesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WatchlistTvSeriesState value)  $default,){
final _that = this;
switch (_that) {
case _WatchlistTvSeriesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WatchlistTvSeriesState value)?  $default,){
final _that = this;
switch (_that) {
case _WatchlistTvSeriesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RequestState state,  List<TvSeries> watchlistTvSeries,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WatchlistTvSeriesState() when $default != null:
return $default(_that.state,_that.watchlistTvSeries,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RequestState state,  List<TvSeries> watchlistTvSeries,  String message)  $default,) {final _that = this;
switch (_that) {
case _WatchlistTvSeriesState():
return $default(_that.state,_that.watchlistTvSeries,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RequestState state,  List<TvSeries> watchlistTvSeries,  String message)?  $default,) {final _that = this;
switch (_that) {
case _WatchlistTvSeriesState() when $default != null:
return $default(_that.state,_that.watchlistTvSeries,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _WatchlistTvSeriesState implements WatchlistTvSeriesState {
  const _WatchlistTvSeriesState({this.state = RequestState.Empty, final  List<TvSeries> watchlistTvSeries = const [], this.message = ''}): _watchlistTvSeries = watchlistTvSeries;
  

@override@JsonKey() final  RequestState state;
 final  List<TvSeries> _watchlistTvSeries;
@override@JsonKey() List<TvSeries> get watchlistTvSeries {
  if (_watchlistTvSeries is EqualUnmodifiableListView) return _watchlistTvSeries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_watchlistTvSeries);
}

@override@JsonKey() final  String message;

/// Create a copy of WatchlistTvSeriesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WatchlistTvSeriesStateCopyWith<_WatchlistTvSeriesState> get copyWith => __$WatchlistTvSeriesStateCopyWithImpl<_WatchlistTvSeriesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WatchlistTvSeriesState&&(identical(other.state, state) || other.state == state)&&const DeepCollectionEquality().equals(other._watchlistTvSeries, _watchlistTvSeries)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,state,const DeepCollectionEquality().hash(_watchlistTvSeries),message);

@override
String toString() {
  return 'WatchlistTvSeriesState(state: $state, watchlistTvSeries: $watchlistTvSeries, message: $message)';
}


}

/// @nodoc
abstract mixin class _$WatchlistTvSeriesStateCopyWith<$Res> implements $WatchlistTvSeriesStateCopyWith<$Res> {
  factory _$WatchlistTvSeriesStateCopyWith(_WatchlistTvSeriesState value, $Res Function(_WatchlistTvSeriesState) _then) = __$WatchlistTvSeriesStateCopyWithImpl;
@override @useResult
$Res call({
 RequestState state, List<TvSeries> watchlistTvSeries, String message
});




}
/// @nodoc
class __$WatchlistTvSeriesStateCopyWithImpl<$Res>
    implements _$WatchlistTvSeriesStateCopyWith<$Res> {
  __$WatchlistTvSeriesStateCopyWithImpl(this._self, this._then);

  final _WatchlistTvSeriesState _self;
  final $Res Function(_WatchlistTvSeriesState) _then;

/// Create a copy of WatchlistTvSeriesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? state = null,Object? watchlistTvSeries = null,Object? message = null,}) {
  return _then(_WatchlistTvSeriesState(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as RequestState,watchlistTvSeries: null == watchlistTvSeries ? _self._watchlistTvSeries : watchlistTvSeries // ignore: cast_nullable_to_non_nullable
as List<TvSeries>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
