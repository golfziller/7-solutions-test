// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_coin_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetCoinDetail {
  @JsonKey(name: 'data')
  CoinDetailData get data;

  /// Create a copy of GetCoinDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetCoinDetailCopyWith<GetCoinDetail> get copyWith =>
      _$GetCoinDetailCopyWithImpl<GetCoinDetail>(
          this as GetCoinDetail, _$identity);

  /// Serializes this GetCoinDetail to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetCoinDetail &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'GetCoinDetail(data: $data)';
  }
}

/// @nodoc
abstract mixin class $GetCoinDetailCopyWith<$Res> {
  factory $GetCoinDetailCopyWith(
          GetCoinDetail value, $Res Function(GetCoinDetail) _then) =
      _$GetCoinDetailCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'data') CoinDetailData data});

  $CoinDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class _$GetCoinDetailCopyWithImpl<$Res>
    implements $GetCoinDetailCopyWith<$Res> {
  _$GetCoinDetailCopyWithImpl(this._self, this._then);

  final GetCoinDetail _self;
  final $Res Function(GetCoinDetail) _then;

  /// Create a copy of GetCoinDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_self.copyWith(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as CoinDetailData,
    ));
  }

  /// Create a copy of GetCoinDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoinDetailDataCopyWith<$Res> get data {
    return $CoinDetailDataCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [GetCoinDetail].
extension GetCoinDetailPatterns on GetCoinDetail {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GetCoinDetail value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetCoinDetail() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_GetCoinDetail value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetCoinDetail():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GetCoinDetail value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetCoinDetail() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'data') CoinDetailData data)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetCoinDetail() when $default != null:
        return $default(_that.data);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'data') CoinDetailData data) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetCoinDetail():
        return $default(_that.data);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@JsonKey(name: 'data') CoinDetailData data)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetCoinDetail() when $default != null:
        return $default(_that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable()
class _GetCoinDetail implements GetCoinDetail {
  const _GetCoinDetail({@JsonKey(name: 'data') required this.data});
  factory _GetCoinDetail.fromJson(Map<String, dynamic> json) =>
      _$GetCoinDetailFromJson(json);

  @override
  @JsonKey(name: 'data')
  final CoinDetailData data;

  /// Create a copy of GetCoinDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetCoinDetailCopyWith<_GetCoinDetail> get copyWith =>
      __$GetCoinDetailCopyWithImpl<_GetCoinDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GetCoinDetailToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetCoinDetail &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'GetCoinDetail(data: $data)';
  }
}

/// @nodoc
abstract mixin class _$GetCoinDetailCopyWith<$Res>
    implements $GetCoinDetailCopyWith<$Res> {
  factory _$GetCoinDetailCopyWith(
          _GetCoinDetail value, $Res Function(_GetCoinDetail) _then) =
      __$GetCoinDetailCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'data') CoinDetailData data});

  @override
  $CoinDetailDataCopyWith<$Res> get data;
}

/// @nodoc
class __$GetCoinDetailCopyWithImpl<$Res>
    implements _$GetCoinDetailCopyWith<$Res> {
  __$GetCoinDetailCopyWithImpl(this._self, this._then);

  final _GetCoinDetail _self;
  final $Res Function(_GetCoinDetail) _then;

  /// Create a copy of GetCoinDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(_GetCoinDetail(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as CoinDetailData,
    ));
  }

  /// Create a copy of GetCoinDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoinDetailDataCopyWith<$Res> get data {
    return $CoinDetailDataCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$CoinDetailData {
  @JsonKey(name: 'coin')
  Coin get coin;

  /// Create a copy of CoinDetailData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CoinDetailDataCopyWith<CoinDetailData> get copyWith =>
      _$CoinDetailDataCopyWithImpl<CoinDetailData>(
          this as CoinDetailData, _$identity);

  /// Serializes this CoinDetailData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CoinDetailData &&
            (identical(other.coin, coin) || other.coin == coin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, coin);

  @override
  String toString() {
    return 'CoinDetailData(coin: $coin)';
  }
}

/// @nodoc
abstract mixin class $CoinDetailDataCopyWith<$Res> {
  factory $CoinDetailDataCopyWith(
          CoinDetailData value, $Res Function(CoinDetailData) _then) =
      _$CoinDetailDataCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'coin') Coin coin});

  $CoinCopyWith<$Res> get coin;
}

/// @nodoc
class _$CoinDetailDataCopyWithImpl<$Res>
    implements $CoinDetailDataCopyWith<$Res> {
  _$CoinDetailDataCopyWithImpl(this._self, this._then);

  final CoinDetailData _self;
  final $Res Function(CoinDetailData) _then;

  /// Create a copy of CoinDetailData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coin = null,
  }) {
    return _then(_self.copyWith(
      coin: null == coin
          ? _self.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as Coin,
    ));
  }

  /// Create a copy of CoinDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoinCopyWith<$Res> get coin {
    return $CoinCopyWith<$Res>(_self.coin, (value) {
      return _then(_self.copyWith(coin: value));
    });
  }
}

/// Adds pattern-matching-related methods to [CoinDetailData].
extension CoinDetailDataPatterns on CoinDetailData {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CoinDetailData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CoinDetailData() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CoinDetailData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoinDetailData():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CoinDetailData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoinDetailData() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'coin') Coin coin)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CoinDetailData() when $default != null:
        return $default(_that.coin);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'coin') Coin coin) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoinDetailData():
        return $default(_that.coin);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@JsonKey(name: 'coin') Coin coin)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoinDetailData() when $default != null:
        return $default(_that.coin);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable()
class _CoinDetailData implements CoinDetailData {
  const _CoinDetailData({@JsonKey(name: 'coin') required this.coin});
  factory _CoinDetailData.fromJson(Map<String, dynamic> json) =>
      _$CoinDetailDataFromJson(json);

  @override
  @JsonKey(name: 'coin')
  final Coin coin;

  /// Create a copy of CoinDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CoinDetailDataCopyWith<_CoinDetailData> get copyWith =>
      __$CoinDetailDataCopyWithImpl<_CoinDetailData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CoinDetailDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CoinDetailData &&
            (identical(other.coin, coin) || other.coin == coin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, coin);

  @override
  String toString() {
    return 'CoinDetailData(coin: $coin)';
  }
}

/// @nodoc
abstract mixin class _$CoinDetailDataCopyWith<$Res>
    implements $CoinDetailDataCopyWith<$Res> {
  factory _$CoinDetailDataCopyWith(
          _CoinDetailData value, $Res Function(_CoinDetailData) _then) =
      __$CoinDetailDataCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'coin') Coin coin});

  @override
  $CoinCopyWith<$Res> get coin;
}

/// @nodoc
class __$CoinDetailDataCopyWithImpl<$Res>
    implements _$CoinDetailDataCopyWith<$Res> {
  __$CoinDetailDataCopyWithImpl(this._self, this._then);

  final _CoinDetailData _self;
  final $Res Function(_CoinDetailData) _then;

  /// Create a copy of CoinDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? coin = null,
  }) {
    return _then(_CoinDetailData(
      coin: null == coin
          ? _self.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as Coin,
    ));
  }

  /// Create a copy of CoinDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoinCopyWith<$Res> get coin {
    return $CoinCopyWith<$Res>(_self.coin, (value) {
      return _then(_self.copyWith(coin: value));
    });
  }
}

// dart format on
