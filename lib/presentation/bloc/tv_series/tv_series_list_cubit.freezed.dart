// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_series_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TvSeriesListState {

 RequestState get nowPlayingState; List<TvSeries> get nowPlayingTvSeries; RequestState get popularState; List<TvSeries> get popularTvSeries; RequestState get topRatedState; List<TvSeries> get topRatedTvSeries; String get message;
/// Create a copy of TvSeriesListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TvSeriesListStateCopyWith<TvSeriesListState> get copyWith => _$TvSeriesListStateCopyWithImpl<TvSeriesListState>(this as TvSeriesListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TvSeriesListState&&(identical(other.nowPlayingState, nowPlayingState) || other.nowPlayingState == nowPlayingState)&&const DeepCollectionEquality().equals(other.nowPlayingTvSeries, nowPlayingTvSeries)&&(identical(other.popularState, popularState) || other.popularState == popularState)&&const DeepCollectionEquality().equals(other.popularTvSeries, popularTvSeries)&&(identical(other.topRatedState, topRatedState) || other.topRatedState == topRatedState)&&const DeepCollectionEquality().equals(other.topRatedTvSeries, topRatedTvSeries)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,nowPlayingState,const DeepCollectionEquality().hash(nowPlayingTvSeries),popularState,const DeepCollectionEquality().hash(popularTvSeries),topRatedState,const DeepCollectionEquality().hash(topRatedTvSeries),message);

@override
String toString() {
  return 'TvSeriesListState(nowPlayingState: $nowPlayingState, nowPlayingTvSeries: $nowPlayingTvSeries, popularState: $popularState, popularTvSeries: $popularTvSeries, topRatedState: $topRatedState, topRatedTvSeries: $topRatedTvSeries, message: $message)';
}


}

/// @nodoc
abstract mixin class $TvSeriesListStateCopyWith<$Res>  {
  factory $TvSeriesListStateCopyWith(TvSeriesListState value, $Res Function(TvSeriesListState) _then) = _$TvSeriesListStateCopyWithImpl;
@useResult
$Res call({
 RequestState nowPlayingState, List<TvSeries> nowPlayingTvSeries, RequestState popularState, List<TvSeries> popularTvSeries, RequestState topRatedState, List<TvSeries> topRatedTvSeries, String message
});




}
/// @nodoc
class _$TvSeriesListStateCopyWithImpl<$Res>
    implements $TvSeriesListStateCopyWith<$Res> {
  _$TvSeriesListStateCopyWithImpl(this._self, this._then);

  final TvSeriesListState _self;
  final $Res Function(TvSeriesListState) _then;

/// Create a copy of TvSeriesListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nowPlayingState = null,Object? nowPlayingTvSeries = null,Object? popularState = null,Object? popularTvSeries = null,Object? topRatedState = null,Object? topRatedTvSeries = null,Object? message = null,}) {
  return _then(_self.copyWith(
nowPlayingState: null == nowPlayingState ? _self.nowPlayingState : nowPlayingState // ignore: cast_nullable_to_non_nullable
as RequestState,nowPlayingTvSeries: null == nowPlayingTvSeries ? _self.nowPlayingTvSeries : nowPlayingTvSeries // ignore: cast_nullable_to_non_nullable
as List<TvSeries>,popularState: null == popularState ? _self.popularState : popularState // ignore: cast_nullable_to_non_nullable
as RequestState,popularTvSeries: null == popularTvSeries ? _self.popularTvSeries : popularTvSeries // ignore: cast_nullable_to_non_nullable
as List<TvSeries>,topRatedState: null == topRatedState ? _self.topRatedState : topRatedState // ignore: cast_nullable_to_non_nullable
as RequestState,topRatedTvSeries: null == topRatedTvSeries ? _self.topRatedTvSeries : topRatedTvSeries // ignore: cast_nullable_to_non_nullable
as List<TvSeries>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TvSeriesListState].
extension TvSeriesListStatePatterns on TvSeriesListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TvSeriesListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TvSeriesListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TvSeriesListState value)  $default,){
final _that = this;
switch (_that) {
case _TvSeriesListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TvSeriesListState value)?  $default,){
final _that = this;
switch (_that) {
case _TvSeriesListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RequestState nowPlayingState,  List<TvSeries> nowPlayingTvSeries,  RequestState popularState,  List<TvSeries> popularTvSeries,  RequestState topRatedState,  List<TvSeries> topRatedTvSeries,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TvSeriesListState() when $default != null:
return $default(_that.nowPlayingState,_that.nowPlayingTvSeries,_that.popularState,_that.popularTvSeries,_that.topRatedState,_that.topRatedTvSeries,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RequestState nowPlayingState,  List<TvSeries> nowPlayingTvSeries,  RequestState popularState,  List<TvSeries> popularTvSeries,  RequestState topRatedState,  List<TvSeries> topRatedTvSeries,  String message)  $default,) {final _that = this;
switch (_that) {
case _TvSeriesListState():
return $default(_that.nowPlayingState,_that.nowPlayingTvSeries,_that.popularState,_that.popularTvSeries,_that.topRatedState,_that.topRatedTvSeries,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RequestState nowPlayingState,  List<TvSeries> nowPlayingTvSeries,  RequestState popularState,  List<TvSeries> popularTvSeries,  RequestState topRatedState,  List<TvSeries> topRatedTvSeries,  String message)?  $default,) {final _that = this;
switch (_that) {
case _TvSeriesListState() when $default != null:
return $default(_that.nowPlayingState,_that.nowPlayingTvSeries,_that.popularState,_that.popularTvSeries,_that.topRatedState,_that.topRatedTvSeries,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _TvSeriesListState implements TvSeriesListState {
  const _TvSeriesListState({this.nowPlayingState = RequestState.Empty, final  List<TvSeries> nowPlayingTvSeries = const [], this.popularState = RequestState.Empty, final  List<TvSeries> popularTvSeries = const [], this.topRatedState = RequestState.Empty, final  List<TvSeries> topRatedTvSeries = const [], this.message = ''}): _nowPlayingTvSeries = nowPlayingTvSeries,_popularTvSeries = popularTvSeries,_topRatedTvSeries = topRatedTvSeries;
  

@override@JsonKey() final  RequestState nowPlayingState;
 final  List<TvSeries> _nowPlayingTvSeries;
@override@JsonKey() List<TvSeries> get nowPlayingTvSeries {
  if (_nowPlayingTvSeries is EqualUnmodifiableListView) return _nowPlayingTvSeries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_nowPlayingTvSeries);
}

@override@JsonKey() final  RequestState popularState;
 final  List<TvSeries> _popularTvSeries;
@override@JsonKey() List<TvSeries> get popularTvSeries {
  if (_popularTvSeries is EqualUnmodifiableListView) return _popularTvSeries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_popularTvSeries);
}

@override@JsonKey() final  RequestState topRatedState;
 final  List<TvSeries> _topRatedTvSeries;
@override@JsonKey() List<TvSeries> get topRatedTvSeries {
  if (_topRatedTvSeries is EqualUnmodifiableListView) return _topRatedTvSeries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topRatedTvSeries);
}

@override@JsonKey() final  String message;

/// Create a copy of TvSeriesListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TvSeriesListStateCopyWith<_TvSeriesListState> get copyWith => __$TvSeriesListStateCopyWithImpl<_TvSeriesListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TvSeriesListState&&(identical(other.nowPlayingState, nowPlayingState) || other.nowPlayingState == nowPlayingState)&&const DeepCollectionEquality().equals(other._nowPlayingTvSeries, _nowPlayingTvSeries)&&(identical(other.popularState, popularState) || other.popularState == popularState)&&const DeepCollectionEquality().equals(other._popularTvSeries, _popularTvSeries)&&(identical(other.topRatedState, topRatedState) || other.topRatedState == topRatedState)&&const DeepCollectionEquality().equals(other._topRatedTvSeries, _topRatedTvSeries)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,nowPlayingState,const DeepCollectionEquality().hash(_nowPlayingTvSeries),popularState,const DeepCollectionEquality().hash(_popularTvSeries),topRatedState,const DeepCollectionEquality().hash(_topRatedTvSeries),message);

@override
String toString() {
  return 'TvSeriesListState(nowPlayingState: $nowPlayingState, nowPlayingTvSeries: $nowPlayingTvSeries, popularState: $popularState, popularTvSeries: $popularTvSeries, topRatedState: $topRatedState, topRatedTvSeries: $topRatedTvSeries, message: $message)';
}


}

/// @nodoc
abstract mixin class _$TvSeriesListStateCopyWith<$Res> implements $TvSeriesListStateCopyWith<$Res> {
  factory _$TvSeriesListStateCopyWith(_TvSeriesListState value, $Res Function(_TvSeriesListState) _then) = __$TvSeriesListStateCopyWithImpl;
@override @useResult
$Res call({
 RequestState nowPlayingState, List<TvSeries> nowPlayingTvSeries, RequestState popularState, List<TvSeries> popularTvSeries, RequestState topRatedState, List<TvSeries> topRatedTvSeries, String message
});




}
/// @nodoc
class __$TvSeriesListStateCopyWithImpl<$Res>
    implements _$TvSeriesListStateCopyWith<$Res> {
  __$TvSeriesListStateCopyWithImpl(this._self, this._then);

  final _TvSeriesListState _self;
  final $Res Function(_TvSeriesListState) _then;

/// Create a copy of TvSeriesListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nowPlayingState = null,Object? nowPlayingTvSeries = null,Object? popularState = null,Object? popularTvSeries = null,Object? topRatedState = null,Object? topRatedTvSeries = null,Object? message = null,}) {
  return _then(_TvSeriesListState(
nowPlayingState: null == nowPlayingState ? _self.nowPlayingState : nowPlayingState // ignore: cast_nullable_to_non_nullable
as RequestState,nowPlayingTvSeries: null == nowPlayingTvSeries ? _self._nowPlayingTvSeries : nowPlayingTvSeries // ignore: cast_nullable_to_non_nullable
as List<TvSeries>,popularState: null == popularState ? _self.popularState : popularState // ignore: cast_nullable_to_non_nullable
as RequestState,popularTvSeries: null == popularTvSeries ? _self._popularTvSeries : popularTvSeries // ignore: cast_nullable_to_non_nullable
as List<TvSeries>,topRatedState: null == topRatedState ? _self.topRatedState : topRatedState // ignore: cast_nullable_to_non_nullable
as RequestState,topRatedTvSeries: null == topRatedTvSeries ? _self._topRatedTvSeries : topRatedTvSeries // ignore: cast_nullable_to_non_nullable
as List<TvSeries>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
