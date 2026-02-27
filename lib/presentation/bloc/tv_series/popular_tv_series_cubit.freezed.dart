// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_tv_series_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PopularTvSeriesState {

 RequestState get state; List<TvSeries> get tvSeries; String get message;
/// Create a copy of PopularTvSeriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PopularTvSeriesStateCopyWith<PopularTvSeriesState> get copyWith => _$PopularTvSeriesStateCopyWithImpl<PopularTvSeriesState>(this as PopularTvSeriesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PopularTvSeriesState&&(identical(other.state, state) || other.state == state)&&const DeepCollectionEquality().equals(other.tvSeries, tvSeries)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,state,const DeepCollectionEquality().hash(tvSeries),message);

@override
String toString() {
  return 'PopularTvSeriesState(state: $state, tvSeries: $tvSeries, message: $message)';
}


}

/// @nodoc
abstract mixin class $PopularTvSeriesStateCopyWith<$Res>  {
  factory $PopularTvSeriesStateCopyWith(PopularTvSeriesState value, $Res Function(PopularTvSeriesState) _then) = _$PopularTvSeriesStateCopyWithImpl;
@useResult
$Res call({
 RequestState state, List<TvSeries> tvSeries, String message
});




}
/// @nodoc
class _$PopularTvSeriesStateCopyWithImpl<$Res>
    implements $PopularTvSeriesStateCopyWith<$Res> {
  _$PopularTvSeriesStateCopyWithImpl(this._self, this._then);

  final PopularTvSeriesState _self;
  final $Res Function(PopularTvSeriesState) _then;

/// Create a copy of PopularTvSeriesState
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


/// Adds pattern-matching-related methods to [PopularTvSeriesState].
extension PopularTvSeriesStatePatterns on PopularTvSeriesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PopularTvSeriesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PopularTvSeriesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PopularTvSeriesState value)  $default,){
final _that = this;
switch (_that) {
case _PopularTvSeriesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PopularTvSeriesState value)?  $default,){
final _that = this;
switch (_that) {
case _PopularTvSeriesState() when $default != null:
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
case _PopularTvSeriesState() when $default != null:
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
case _PopularTvSeriesState():
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
case _PopularTvSeriesState() when $default != null:
return $default(_that.state,_that.tvSeries,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _PopularTvSeriesState implements PopularTvSeriesState {
  const _PopularTvSeriesState({this.state = RequestState.Empty, final  List<TvSeries> tvSeries = const [], this.message = ''}): _tvSeries = tvSeries;
  

@override@JsonKey() final  RequestState state;
 final  List<TvSeries> _tvSeries;
@override@JsonKey() List<TvSeries> get tvSeries {
  if (_tvSeries is EqualUnmodifiableListView) return _tvSeries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tvSeries);
}

@override@JsonKey() final  String message;

/// Create a copy of PopularTvSeriesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PopularTvSeriesStateCopyWith<_PopularTvSeriesState> get copyWith => __$PopularTvSeriesStateCopyWithImpl<_PopularTvSeriesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PopularTvSeriesState&&(identical(other.state, state) || other.state == state)&&const DeepCollectionEquality().equals(other._tvSeries, _tvSeries)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,state,const DeepCollectionEquality().hash(_tvSeries),message);

@override
String toString() {
  return 'PopularTvSeriesState(state: $state, tvSeries: $tvSeries, message: $message)';
}


}

/// @nodoc
abstract mixin class _$PopularTvSeriesStateCopyWith<$Res> implements $PopularTvSeriesStateCopyWith<$Res> {
  factory _$PopularTvSeriesStateCopyWith(_PopularTvSeriesState value, $Res Function(_PopularTvSeriesState) _then) = __$PopularTvSeriesStateCopyWithImpl;
@override @useResult
$Res call({
 RequestState state, List<TvSeries> tvSeries, String message
});




}
/// @nodoc
class __$PopularTvSeriesStateCopyWithImpl<$Res>
    implements _$PopularTvSeriesStateCopyWith<$Res> {
  __$PopularTvSeriesStateCopyWithImpl(this._self, this._then);

  final _PopularTvSeriesState _self;
  final $Res Function(_PopularTvSeriesState) _then;

/// Create a copy of PopularTvSeriesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? state = null,Object? tvSeries = null,Object? message = null,}) {
  return _then(_PopularTvSeriesState(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as RequestState,tvSeries: null == tvSeries ? _self._tvSeries : tvSeries // ignore: cast_nullable_to_non_nullable
as List<TvSeries>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
