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





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TvSeriesListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TvSeriesListState()';
}


}

/// @nodoc
class $TvSeriesListStateCopyWith<$Res>  {
$TvSeriesListStateCopyWith(TvSeriesListState _, $Res Function(TvSeriesListState) __);
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( String? category)?  loading,TResult Function( List<TvSeries> nowPlayingTvSeries,  List<TvSeries> popularTvSeries,  List<TvSeries> topRatedTvSeries)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading(_that.category);case _Loaded() when loaded != null:
return loaded(_that.nowPlayingTvSeries,_that.popularTvSeries,_that.topRatedTvSeries);case _Error() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( String? category)  loading,required TResult Function( List<TvSeries> nowPlayingTvSeries,  List<TvSeries> popularTvSeries,  List<TvSeries> topRatedTvSeries)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading(_that.category);case _Loaded():
return loaded(_that.nowPlayingTvSeries,_that.popularTvSeries,_that.topRatedTvSeries);case _Error():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( String? category)?  loading,TResult? Function( List<TvSeries> nowPlayingTvSeries,  List<TvSeries> popularTvSeries,  List<TvSeries> topRatedTvSeries)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading(_that.category);case _Loaded() when loaded != null:
return loaded(_that.nowPlayingTvSeries,_that.popularTvSeries,_that.topRatedTvSeries);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements TvSeriesListState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TvSeriesListState.initial()';
}


}




/// @nodoc


class _Loading implements TvSeriesListState {
  const _Loading({this.category});
  

 final  String? category;

/// Create a copy of TvSeriesListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadingCopyWith<_Loading> get copyWith => __$LoadingCopyWithImpl<_Loading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'TvSeriesListState.loading(category: $category)';
}


}

/// @nodoc
abstract mixin class _$LoadingCopyWith<$Res> implements $TvSeriesListStateCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) _then) = __$LoadingCopyWithImpl;
@useResult
$Res call({
 String? category
});




}
/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(this._self, this._then);

  final _Loading _self;
  final $Res Function(_Loading) _then;

/// Create a copy of TvSeriesListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? category = freezed,}) {
  return _then(_Loading(
category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _Loaded implements TvSeriesListState {
  const _Loaded({final  List<TvSeries> nowPlayingTvSeries = const [], final  List<TvSeries> popularTvSeries = const [], final  List<TvSeries> topRatedTvSeries = const []}): _nowPlayingTvSeries = nowPlayingTvSeries,_popularTvSeries = popularTvSeries,_topRatedTvSeries = topRatedTvSeries;
  

 final  List<TvSeries> _nowPlayingTvSeries;
@JsonKey() List<TvSeries> get nowPlayingTvSeries {
  if (_nowPlayingTvSeries is EqualUnmodifiableListView) return _nowPlayingTvSeries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_nowPlayingTvSeries);
}

 final  List<TvSeries> _popularTvSeries;
@JsonKey() List<TvSeries> get popularTvSeries {
  if (_popularTvSeries is EqualUnmodifiableListView) return _popularTvSeries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_popularTvSeries);
}

 final  List<TvSeries> _topRatedTvSeries;
@JsonKey() List<TvSeries> get topRatedTvSeries {
  if (_topRatedTvSeries is EqualUnmodifiableListView) return _topRatedTvSeries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topRatedTvSeries);
}


/// Create a copy of TvSeriesListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other._nowPlayingTvSeries, _nowPlayingTvSeries)&&const DeepCollectionEquality().equals(other._popularTvSeries, _popularTvSeries)&&const DeepCollectionEquality().equals(other._topRatedTvSeries, _topRatedTvSeries));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_nowPlayingTvSeries),const DeepCollectionEquality().hash(_popularTvSeries),const DeepCollectionEquality().hash(_topRatedTvSeries));

@override
String toString() {
  return 'TvSeriesListState.loaded(nowPlayingTvSeries: $nowPlayingTvSeries, popularTvSeries: $popularTvSeries, topRatedTvSeries: $topRatedTvSeries)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $TvSeriesListStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 List<TvSeries> nowPlayingTvSeries, List<TvSeries> popularTvSeries, List<TvSeries> topRatedTvSeries
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of TvSeriesListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? nowPlayingTvSeries = null,Object? popularTvSeries = null,Object? topRatedTvSeries = null,}) {
  return _then(_Loaded(
nowPlayingTvSeries: null == nowPlayingTvSeries ? _self._nowPlayingTvSeries : nowPlayingTvSeries // ignore: cast_nullable_to_non_nullable
as List<TvSeries>,popularTvSeries: null == popularTvSeries ? _self._popularTvSeries : popularTvSeries // ignore: cast_nullable_to_non_nullable
as List<TvSeries>,topRatedTvSeries: null == topRatedTvSeries ? _self._topRatedTvSeries : topRatedTvSeries // ignore: cast_nullable_to_non_nullable
as List<TvSeries>,
  ));
}


}

/// @nodoc


class _Error implements TvSeriesListState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of TvSeriesListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TvSeriesListState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $TvSeriesListStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of TvSeriesListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
