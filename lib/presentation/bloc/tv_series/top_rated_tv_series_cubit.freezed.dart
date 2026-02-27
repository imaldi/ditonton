// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_rated_tv_series_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TopRatedTvSeriesState {

 RequestState get state; List<TvSeries> get tvSeries; String get message;
/// Create a copy of TopRatedTvSeriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopRatedTvSeriesStateCopyWith<TopRatedTvSeriesState> get copyWith => _$TopRatedTvSeriesStateCopyWithImpl<TopRatedTvSeriesState>(this as TopRatedTvSeriesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopRatedTvSeriesState&&(identical(other.state, state) || other.state == state)&&const DeepCollectionEquality().equals(other.tvSeries, tvSeries)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,state,const DeepCollectionEquality().hash(tvSeries),message);

@override
String toString() {
  return 'TopRatedTvSeriesState(state: $state, tvSeries: $tvSeries, message: $message)';
}


}

/// @nodoc
abstract mixin class $TopRatedTvSeriesStateCopyWith<$Res>  {
  factory $TopRatedTvSeriesStateCopyWith(TopRatedTvSeriesState value, $Res Function(TopRatedTvSeriesState) _then) = _$TopRatedTvSeriesStateCopyWithImpl;
@useResult
$Res call({
 RequestState state, List<TvSeries> tvSeries, String message
});




}
/// @nodoc
class _$TopRatedTvSeriesStateCopyWithImpl<$Res>
    implements $TopRatedTvSeriesStateCopyWith<$Res> {
  _$TopRatedTvSeriesStateCopyWithImpl(this._self, this._then);

  final TopRatedTvSeriesState _self;
  final $Res Function(TopRatedTvSeriesState) _then;

/// Create a copy of TopRatedTvSeriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? state = null,Object? tvSeries = null,Object? message = null,}) {
  return _then(_self.copyWith(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as RequestState,tvSeries: null == tvSeries ? _self.tvSeries : tvSeries // ignore: cast_nullable_to_non_nullable
as List<TvSeries>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TopRatedTvSeriesState].
extension TopRatedTvSeriesStatePatterns on TopRatedTvSeriesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopRatedTvSeriesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopRatedTvSeriesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopRatedTvSeriesState value)  $default,){
final _that = this;
switch (_that) {
case _TopRatedTvSeriesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopRatedTvSeriesState value)?  $default,){
final _that = this;
switch (_that) {
case _TopRatedTvSeriesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RequestState state,  List<TvSeries> tvSeries,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopRatedTvSeriesState() when $default != null:
return $default(_that.state,_that.tvSeries,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RequestState state,  List<TvSeries> tvSeries,  String message)  $default,) {final _that = this;
switch (_that) {
case _TopRatedTvSeriesState():
return $default(_that.state,_that.tvSeries,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RequestState state,  List<TvSeries> tvSeries,  String message)?  $default,) {final _that = this;
switch (_that) {
case _TopRatedTvSeriesState() when $default != null:
return $default(_that.state,_that.tvSeries,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _TopRatedTvSeriesState implements TopRatedTvSeriesState {
  const _TopRatedTvSeriesState({this.state = RequestState.Empty, final  List<TvSeries> tvSeries = const [], this.message = ''}): _tvSeries = tvSeries;
  

@override@JsonKey() final  RequestState state;
 final  List<TvSeries> _tvSeries;
@override@JsonKey() List<TvSeries> get tvSeries {
  if (_tvSeries is EqualUnmodifiableListView) return _tvSeries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tvSeries);
}

@override@JsonKey() final  String message;

/// Create a copy of TopRatedTvSeriesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopRatedTvSeriesStateCopyWith<_TopRatedTvSeriesState> get copyWith => __$TopRatedTvSeriesStateCopyWithImpl<_TopRatedTvSeriesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopRatedTvSeriesState&&(identical(other.state, state) || other.state == state)&&const DeepCollectionEquality().equals(other._tvSeries, _tvSeries)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,state,const DeepCollectionEquality().hash(_tvSeries),message);

@override
String toString() {
  return 'TopRatedTvSeriesState(state: $state, tvSeries: $tvSeries, message: $message)';
}


}

/// @nodoc
abstract mixin class _$TopRatedTvSeriesStateCopyWith<$Res> implements $TopRatedTvSeriesStateCopyWith<$Res> {
  factory _$TopRatedTvSeriesStateCopyWith(_TopRatedTvSeriesState value, $Res Function(_TopRatedTvSeriesState) _then) = __$TopRatedTvSeriesStateCopyWithImpl;
@override @useResult
$Res call({
 RequestState state, List<TvSeries> tvSeries, String message
});




}
/// @nodoc
class __$TopRatedTvSeriesStateCopyWithImpl<$Res>
    implements _$TopRatedTvSeriesStateCopyWith<$Res> {
  __$TopRatedTvSeriesStateCopyWithImpl(this._self, this._then);

  final _TopRatedTvSeriesState _self;
  final $Res Function(_TopRatedTvSeriesState) _then;

/// Create a copy of TopRatedTvSeriesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? state = null,Object? tvSeries = null,Object? message = null,}) {
  return _then(_TopRatedTvSeriesState(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as RequestState,tvSeries: null == tvSeries ? _self._tvSeries : tvSeries // ignore: cast_nullable_to_non_nullable
as List<TvSeries>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
