// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_series_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TvSeriesDetailState {

 RequestState get tvSeriesState; TvSeriesDetail? get tvSeries; RequestState get recommendationState; List<TvSeries> get recommendations; String get message; bool get isAddedToWatchlist; String get watchlistMessage;
/// Create a copy of TvSeriesDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TvSeriesDetailStateCopyWith<TvSeriesDetailState> get copyWith => _$TvSeriesDetailStateCopyWithImpl<TvSeriesDetailState>(this as TvSeriesDetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TvSeriesDetailState&&(identical(other.tvSeriesState, tvSeriesState) || other.tvSeriesState == tvSeriesState)&&(identical(other.tvSeries, tvSeries) || other.tvSeries == tvSeries)&&(identical(other.recommendationState, recommendationState) || other.recommendationState == recommendationState)&&const DeepCollectionEquality().equals(other.recommendations, recommendations)&&(identical(other.message, message) || other.message == message)&&(identical(other.isAddedToWatchlist, isAddedToWatchlist) || other.isAddedToWatchlist == isAddedToWatchlist)&&(identical(other.watchlistMessage, watchlistMessage) || other.watchlistMessage == watchlistMessage));
}


@override
int get hashCode => Object.hash(runtimeType,tvSeriesState,tvSeries,recommendationState,const DeepCollectionEquality().hash(recommendations),message,isAddedToWatchlist,watchlistMessage);

@override
String toString() {
  return 'TvSeriesDetailState(tvSeriesState: $tvSeriesState, tvSeries: $tvSeries, recommendationState: $recommendationState, recommendations: $recommendations, message: $message, isAddedToWatchlist: $isAddedToWatchlist, watchlistMessage: $watchlistMessage)';
}


}

/// @nodoc
abstract mixin class $TvSeriesDetailStateCopyWith<$Res>  {
  factory $TvSeriesDetailStateCopyWith(TvSeriesDetailState value, $Res Function(TvSeriesDetailState) _then) = _$TvSeriesDetailStateCopyWithImpl;
@useResult
$Res call({
 RequestState tvSeriesState, TvSeriesDetail? tvSeries, RequestState recommendationState, List<TvSeries> recommendations, String message, bool isAddedToWatchlist, String watchlistMessage
});




}
/// @nodoc
class _$TvSeriesDetailStateCopyWithImpl<$Res>
    implements $TvSeriesDetailStateCopyWith<$Res> {
  _$TvSeriesDetailStateCopyWithImpl(this._self, this._then);

  final TvSeriesDetailState _self;
  final $Res Function(TvSeriesDetailState) _then;

/// Create a copy of TvSeriesDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tvSeriesState = null,Object? tvSeries = freezed,Object? recommendationState = null,Object? recommendations = null,Object? message = null,Object? isAddedToWatchlist = null,Object? watchlistMessage = null,}) {
  return _then(_self.copyWith(
tvSeriesState: null == tvSeriesState ? _self.tvSeriesState : tvSeriesState // ignore: cast_nullable_to_non_nullable
as RequestState,tvSeries: freezed == tvSeries ? _self.tvSeries : tvSeries // ignore: cast_nullable_to_non_nullable
as TvSeriesDetail?,recommendationState: null == recommendationState ? _self.recommendationState : recommendationState // ignore: cast_nullable_to_non_nullable
as RequestState,recommendations: null == recommendations ? _self.recommendations : recommendations // ignore: cast_nullable_to_non_nullable
as List<TvSeries>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,isAddedToWatchlist: null == isAddedToWatchlist ? _self.isAddedToWatchlist : isAddedToWatchlist // ignore: cast_nullable_to_non_nullable
as bool,watchlistMessage: null == watchlistMessage ? _self.watchlistMessage : watchlistMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TvSeriesDetailState].
extension TvSeriesDetailStatePatterns on TvSeriesDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TvSeriesDetailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TvSeriesDetailState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TvSeriesDetailState value)  $default,){
final _that = this;
switch (_that) {
case _TvSeriesDetailState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TvSeriesDetailState value)?  $default,){
final _that = this;
switch (_that) {
case _TvSeriesDetailState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RequestState tvSeriesState,  TvSeriesDetail? tvSeries,  RequestState recommendationState,  List<TvSeries> recommendations,  String message,  bool isAddedToWatchlist,  String watchlistMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TvSeriesDetailState() when $default != null:
return $default(_that.tvSeriesState,_that.tvSeries,_that.recommendationState,_that.recommendations,_that.message,_that.isAddedToWatchlist,_that.watchlistMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RequestState tvSeriesState,  TvSeriesDetail? tvSeries,  RequestState recommendationState,  List<TvSeries> recommendations,  String message,  bool isAddedToWatchlist,  String watchlistMessage)  $default,) {final _that = this;
switch (_that) {
case _TvSeriesDetailState():
return $default(_that.tvSeriesState,_that.tvSeries,_that.recommendationState,_that.recommendations,_that.message,_that.isAddedToWatchlist,_that.watchlistMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RequestState tvSeriesState,  TvSeriesDetail? tvSeries,  RequestState recommendationState,  List<TvSeries> recommendations,  String message,  bool isAddedToWatchlist,  String watchlistMessage)?  $default,) {final _that = this;
switch (_that) {
case _TvSeriesDetailState() when $default != null:
return $default(_that.tvSeriesState,_that.tvSeries,_that.recommendationState,_that.recommendations,_that.message,_that.isAddedToWatchlist,_that.watchlistMessage);case _:
  return null;

}
}

}

/// @nodoc


class _TvSeriesDetailState implements TvSeriesDetailState {
  const _TvSeriesDetailState({this.tvSeriesState = RequestState.Empty, this.tvSeries, this.recommendationState = RequestState.Empty, final  List<TvSeries> recommendations = const [], this.message = '', this.isAddedToWatchlist = false, this.watchlistMessage = ''}): _recommendations = recommendations;
  

@override@JsonKey() final  RequestState tvSeriesState;
@override final  TvSeriesDetail? tvSeries;
@override@JsonKey() final  RequestState recommendationState;
 final  List<TvSeries> _recommendations;
@override@JsonKey() List<TvSeries> get recommendations {
  if (_recommendations is EqualUnmodifiableListView) return _recommendations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recommendations);
}

@override@JsonKey() final  String message;
@override@JsonKey() final  bool isAddedToWatchlist;
@override@JsonKey() final  String watchlistMessage;

/// Create a copy of TvSeriesDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TvSeriesDetailStateCopyWith<_TvSeriesDetailState> get copyWith => __$TvSeriesDetailStateCopyWithImpl<_TvSeriesDetailState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TvSeriesDetailState&&(identical(other.tvSeriesState, tvSeriesState) || other.tvSeriesState == tvSeriesState)&&(identical(other.tvSeries, tvSeries) || other.tvSeries == tvSeries)&&(identical(other.recommendationState, recommendationState) || other.recommendationState == recommendationState)&&const DeepCollectionEquality().equals(other._recommendations, _recommendations)&&(identical(other.message, message) || other.message == message)&&(identical(other.isAddedToWatchlist, isAddedToWatchlist) || other.isAddedToWatchlist == isAddedToWatchlist)&&(identical(other.watchlistMessage, watchlistMessage) || other.watchlistMessage == watchlistMessage));
}


@override
int get hashCode => Object.hash(runtimeType,tvSeriesState,tvSeries,recommendationState,const DeepCollectionEquality().hash(_recommendations),message,isAddedToWatchlist,watchlistMessage);

@override
String toString() {
  return 'TvSeriesDetailState(tvSeriesState: $tvSeriesState, tvSeries: $tvSeries, recommendationState: $recommendationState, recommendations: $recommendations, message: $message, isAddedToWatchlist: $isAddedToWatchlist, watchlistMessage: $watchlistMessage)';
}


}

/// @nodoc
abstract mixin class _$TvSeriesDetailStateCopyWith<$Res> implements $TvSeriesDetailStateCopyWith<$Res> {
  factory _$TvSeriesDetailStateCopyWith(_TvSeriesDetailState value, $Res Function(_TvSeriesDetailState) _then) = __$TvSeriesDetailStateCopyWithImpl;
@override @useResult
$Res call({
 RequestState tvSeriesState, TvSeriesDetail? tvSeries, RequestState recommendationState, List<TvSeries> recommendations, String message, bool isAddedToWatchlist, String watchlistMessage
});




}
/// @nodoc
class __$TvSeriesDetailStateCopyWithImpl<$Res>
    implements _$TvSeriesDetailStateCopyWith<$Res> {
  __$TvSeriesDetailStateCopyWithImpl(this._self, this._then);

  final _TvSeriesDetailState _self;
  final $Res Function(_TvSeriesDetailState) _then;

/// Create a copy of TvSeriesDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tvSeriesState = null,Object? tvSeries = freezed,Object? recommendationState = null,Object? recommendations = null,Object? message = null,Object? isAddedToWatchlist = null,Object? watchlistMessage = null,}) {
  return _then(_TvSeriesDetailState(
tvSeriesState: null == tvSeriesState ? _self.tvSeriesState : tvSeriesState // ignore: cast_nullable_to_non_nullable
as RequestState,tvSeries: freezed == tvSeries ? _self.tvSeries : tvSeries // ignore: cast_nullable_to_non_nullable
as TvSeriesDetail?,recommendationState: null == recommendationState ? _self.recommendationState : recommendationState // ignore: cast_nullable_to_non_nullable
as RequestState,recommendations: null == recommendations ? _self._recommendations : recommendations // ignore: cast_nullable_to_non_nullable
as List<TvSeries>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,isAddedToWatchlist: null == isAddedToWatchlist ? _self.isAddedToWatchlist : isAddedToWatchlist // ignore: cast_nullable_to_non_nullable
as bool,watchlistMessage: null == watchlistMessage ? _self.watchlistMessage : watchlistMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
