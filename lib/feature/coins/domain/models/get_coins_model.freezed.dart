// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_coins_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetCoins {
  @JsonKey(name: 'data')
  CoinData get data;
  @JsonKey(name: 'pagination')
  Pagination get pagination;

  /// Create a copy of GetCoins
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetCoinsCopyWith<GetCoins> get copyWith =>
      _$GetCoinsCopyWithImpl<GetCoins>(this as GetCoins, _$identity);

  /// Serializes this GetCoins to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetCoins &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, pagination);

  @override
  String toString() {
    return 'GetCoins(data: $data, pagination: $pagination)';
  }
}

/// @nodoc
abstract mixin class $GetCoinsCopyWith<$Res> {
  factory $GetCoinsCopyWith(GetCoins value, $Res Function(GetCoins) _then) =
      _$GetCoinsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') CoinData data,
      @JsonKey(name: 'pagination') Pagination pagination});

  $CoinDataCopyWith<$Res> get data;
  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class _$GetCoinsCopyWithImpl<$Res> implements $GetCoinsCopyWith<$Res> {
  _$GetCoinsCopyWithImpl(this._self, this._then);

  final GetCoins _self;
  final $Res Function(GetCoins) _then;

  /// Create a copy of GetCoins
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = null,
  }) {
    return _then(_self.copyWith(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as CoinData,
      pagination: null == pagination
          ? _self.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
    ));
  }

  /// Create a copy of GetCoins
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoinDataCopyWith<$Res> get data {
    return $CoinDataCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }

  /// Create a copy of GetCoins
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res> get pagination {
    return $PaginationCopyWith<$Res>(_self.pagination, (value) {
      return _then(_self.copyWith(pagination: value));
    });
  }
}

/// Adds pattern-matching-related methods to [GetCoins].
extension GetCoinsPatterns on GetCoins {
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
    TResult Function(_GetCoins value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetCoins() when $default != null:
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
    TResult Function(_GetCoins value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetCoins():
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
    TResult? Function(_GetCoins value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetCoins() when $default != null:
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
    TResult Function(@JsonKey(name: 'data') CoinData data,
            @JsonKey(name: 'pagination') Pagination pagination)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetCoins() when $default != null:
        return $default(_that.data, _that.pagination);
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
    TResult Function(@JsonKey(name: 'data') CoinData data,
            @JsonKey(name: 'pagination') Pagination pagination)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetCoins():
        return $default(_that.data, _that.pagination);
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
    TResult? Function(@JsonKey(name: 'data') CoinData data,
            @JsonKey(name: 'pagination') Pagination pagination)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetCoins() when $default != null:
        return $default(_that.data, _that.pagination);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable()
class _GetCoins implements GetCoins {
  const _GetCoins(
      {@JsonKey(name: 'data') required this.data,
      @JsonKey(name: 'pagination') required this.pagination});
  factory _GetCoins.fromJson(Map<String, dynamic> json) =>
      _$GetCoinsFromJson(json);

  @override
  @JsonKey(name: 'data')
  final CoinData data;
  @override
  @JsonKey(name: 'pagination')
  final Pagination pagination;

  /// Create a copy of GetCoins
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetCoinsCopyWith<_GetCoins> get copyWith =>
      __$GetCoinsCopyWithImpl<_GetCoins>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GetCoinsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetCoins &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, pagination);

  @override
  String toString() {
    return 'GetCoins(data: $data, pagination: $pagination)';
  }
}

/// @nodoc
abstract mixin class _$GetCoinsCopyWith<$Res>
    implements $GetCoinsCopyWith<$Res> {
  factory _$GetCoinsCopyWith(_GetCoins value, $Res Function(_GetCoins) _then) =
      __$GetCoinsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') CoinData data,
      @JsonKey(name: 'pagination') Pagination pagination});

  @override
  $CoinDataCopyWith<$Res> get data;
  @override
  $PaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class __$GetCoinsCopyWithImpl<$Res> implements _$GetCoinsCopyWith<$Res> {
  __$GetCoinsCopyWithImpl(this._self, this._then);

  final _GetCoins _self;
  final $Res Function(_GetCoins) _then;

  /// Create a copy of GetCoins
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
    Object? pagination = null,
  }) {
    return _then(_GetCoins(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as CoinData,
      pagination: null == pagination
          ? _self.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination,
    ));
  }

  /// Create a copy of GetCoins
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoinDataCopyWith<$Res> get data {
    return $CoinDataCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }

  /// Create a copy of GetCoins
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res> get pagination {
    return $PaginationCopyWith<$Res>(_self.pagination, (value) {
      return _then(_self.copyWith(pagination: value));
    });
  }
}

/// @nodoc
mixin _$CoinData {
  @JsonKey(name: 'stats')
  CoinStats get stats;
  @JsonKey(name: 'coins')
  List<Coin> get coins;

  /// Create a copy of CoinData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CoinDataCopyWith<CoinData> get copyWith =>
      _$CoinDataCopyWithImpl<CoinData>(this as CoinData, _$identity);

  /// Serializes this CoinData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CoinData &&
            (identical(other.stats, stats) || other.stats == stats) &&
            const DeepCollectionEquality().equals(other.coins, coins));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, stats, const DeepCollectionEquality().hash(coins));

  @override
  String toString() {
    return 'CoinData(stats: $stats, coins: $coins)';
  }
}

/// @nodoc
abstract mixin class $CoinDataCopyWith<$Res> {
  factory $CoinDataCopyWith(CoinData value, $Res Function(CoinData) _then) =
      _$CoinDataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'stats') CoinStats stats,
      @JsonKey(name: 'coins') List<Coin> coins});

  $CoinStatsCopyWith<$Res> get stats;
}

/// @nodoc
class _$CoinDataCopyWithImpl<$Res> implements $CoinDataCopyWith<$Res> {
  _$CoinDataCopyWithImpl(this._self, this._then);

  final CoinData _self;
  final $Res Function(CoinData) _then;

  /// Create a copy of CoinData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stats = null,
    Object? coins = null,
  }) {
    return _then(_self.copyWith(
      stats: null == stats
          ? _self.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as CoinStats,
      coins: null == coins
          ? _self.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<Coin>,
    ));
  }

  /// Create a copy of CoinData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoinStatsCopyWith<$Res> get stats {
    return $CoinStatsCopyWith<$Res>(_self.stats, (value) {
      return _then(_self.copyWith(stats: value));
    });
  }
}

/// Adds pattern-matching-related methods to [CoinData].
extension CoinDataPatterns on CoinData {
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
    TResult Function(_CoinData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CoinData() when $default != null:
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
    TResult Function(_CoinData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoinData():
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
    TResult? Function(_CoinData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoinData() when $default != null:
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
    TResult Function(@JsonKey(name: 'stats') CoinStats stats,
            @JsonKey(name: 'coins') List<Coin> coins)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CoinData() when $default != null:
        return $default(_that.stats, _that.coins);
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
    TResult Function(@JsonKey(name: 'stats') CoinStats stats,
            @JsonKey(name: 'coins') List<Coin> coins)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoinData():
        return $default(_that.stats, _that.coins);
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
    TResult? Function(@JsonKey(name: 'stats') CoinStats stats,
            @JsonKey(name: 'coins') List<Coin> coins)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoinData() when $default != null:
        return $default(_that.stats, _that.coins);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable()
class _CoinData implements CoinData {
  const _CoinData(
      {@JsonKey(name: 'stats') required this.stats,
      @JsonKey(name: 'coins') required final List<Coin> coins})
      : _coins = coins;
  factory _CoinData.fromJson(Map<String, dynamic> json) =>
      _$CoinDataFromJson(json);

  @override
  @JsonKey(name: 'stats')
  final CoinStats stats;
  final List<Coin> _coins;
  @override
  @JsonKey(name: 'coins')
  List<Coin> get coins {
    if (_coins is EqualUnmodifiableListView) return _coins;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coins);
  }

  /// Create a copy of CoinData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CoinDataCopyWith<_CoinData> get copyWith =>
      __$CoinDataCopyWithImpl<_CoinData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CoinDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CoinData &&
            (identical(other.stats, stats) || other.stats == stats) &&
            const DeepCollectionEquality().equals(other._coins, _coins));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, stats, const DeepCollectionEquality().hash(_coins));

  @override
  String toString() {
    return 'CoinData(stats: $stats, coins: $coins)';
  }
}

/// @nodoc
abstract mixin class _$CoinDataCopyWith<$Res>
    implements $CoinDataCopyWith<$Res> {
  factory _$CoinDataCopyWith(_CoinData value, $Res Function(_CoinData) _then) =
      __$CoinDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'stats') CoinStats stats,
      @JsonKey(name: 'coins') List<Coin> coins});

  @override
  $CoinStatsCopyWith<$Res> get stats;
}

/// @nodoc
class __$CoinDataCopyWithImpl<$Res> implements _$CoinDataCopyWith<$Res> {
  __$CoinDataCopyWithImpl(this._self, this._then);

  final _CoinData _self;
  final $Res Function(_CoinData) _then;

  /// Create a copy of CoinData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stats = null,
    Object? coins = null,
  }) {
    return _then(_CoinData(
      stats: null == stats
          ? _self.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as CoinStats,
      coins: null == coins
          ? _self._coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<Coin>,
    ));
  }

  /// Create a copy of CoinData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoinStatsCopyWith<$Res> get stats {
    return $CoinStatsCopyWith<$Res>(_self.stats, (value) {
      return _then(_self.copyWith(stats: value));
    });
  }
}

Coin _$CoinFromJson(Map<String, dynamic> json) {
  return _Coins.fromJson(json);
}

/// @nodoc
mixin _$Coin {
  @JsonKey(name: 'uuid')
  String get uuid;
  @JsonKey(name: 'symbol')
  String get symbol;
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'iconUrl')
  String get iconUrl;
  @JsonKey(name: 'marketCap')
  String get marketCap;
  @JsonKey(name: 'price')
  String get price;
  @JsonKey(name: 'change')
  String get change;
  @JsonKey(name: 'color')
  String? get color;
  @JsonKey(name: 'description')
  String? get description;
  @JsonKey(name: 'websiteUrl')
  String? get websiteUrl;
  @JsonKey(name: 'rank')
  int get rank;

  /// Create a copy of Coin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CoinCopyWith<Coin> get copyWith =>
      _$CoinCopyWithImpl<Coin>(this as Coin, _$identity);

  /// Serializes this Coin to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Coin &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.marketCap, marketCap) ||
                other.marketCap == marketCap) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.change, change) || other.change == change) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.websiteUrl, websiteUrl) ||
                other.websiteUrl == websiteUrl) &&
            (identical(other.rank, rank) || other.rank == rank));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, symbol, name, iconUrl,
      marketCap, price, change, color, description, websiteUrl, rank);

  @override
  String toString() {
    return 'Coin(uuid: $uuid, symbol: $symbol, name: $name, iconUrl: $iconUrl, marketCap: $marketCap, price: $price, change: $change, color: $color, description: $description, websiteUrl: $websiteUrl, rank: $rank)';
  }
}

/// @nodoc
abstract mixin class $CoinCopyWith<$Res> {
  factory $CoinCopyWith(Coin value, $Res Function(Coin) _then) =
      _$CoinCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'uuid') String uuid,
      @JsonKey(name: 'symbol') String symbol,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'iconUrl') String iconUrl,
      @JsonKey(name: 'marketCap') String marketCap,
      @JsonKey(name: 'price') String price,
      @JsonKey(name: 'change') String change,
      @JsonKey(name: 'color') String? color,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'websiteUrl') String? websiteUrl,
      @JsonKey(name: 'rank') int rank});
}

/// @nodoc
class _$CoinCopyWithImpl<$Res> implements $CoinCopyWith<$Res> {
  _$CoinCopyWithImpl(this._self, this._then);

  final Coin _self;
  final $Res Function(Coin) _then;

  /// Create a copy of Coin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? symbol = null,
    Object? name = null,
    Object? iconUrl = null,
    Object? marketCap = null,
    Object? price = null,
    Object? change = null,
    Object? color = freezed,
    Object? description = freezed,
    Object? websiteUrl = freezed,
    Object? rank = null,
  }) {
    return _then(_self.copyWith(
      uuid: null == uuid
          ? _self.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _self.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: null == iconUrl
          ? _self.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      marketCap: null == marketCap
          ? _self.marketCap
          : marketCap // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      change: null == change
          ? _self.change
          : change // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      websiteUrl: freezed == websiteUrl
          ? _self.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      rank: null == rank
          ? _self.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [Coin].
extension CoinPatterns on Coin {
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
    TResult Function(_Coins value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Coins() when $default != null:
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
    TResult Function(_Coins value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Coins():
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
    TResult? Function(_Coins value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Coins() when $default != null:
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
    TResult Function(
            @JsonKey(name: 'uuid') String uuid,
            @JsonKey(name: 'symbol') String symbol,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'iconUrl') String iconUrl,
            @JsonKey(name: 'marketCap') String marketCap,
            @JsonKey(name: 'price') String price,
            @JsonKey(name: 'change') String change,
            @JsonKey(name: 'color') String? color,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'websiteUrl') String? websiteUrl,
            @JsonKey(name: 'rank') int rank)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Coins() when $default != null:
        return $default(
            _that.uuid,
            _that.symbol,
            _that.name,
            _that.iconUrl,
            _that.marketCap,
            _that.price,
            _that.change,
            _that.color,
            _that.description,
            _that.websiteUrl,
            _that.rank);
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
    TResult Function(
            @JsonKey(name: 'uuid') String uuid,
            @JsonKey(name: 'symbol') String symbol,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'iconUrl') String iconUrl,
            @JsonKey(name: 'marketCap') String marketCap,
            @JsonKey(name: 'price') String price,
            @JsonKey(name: 'change') String change,
            @JsonKey(name: 'color') String? color,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'websiteUrl') String? websiteUrl,
            @JsonKey(name: 'rank') int rank)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Coins():
        return $default(
            _that.uuid,
            _that.symbol,
            _that.name,
            _that.iconUrl,
            _that.marketCap,
            _that.price,
            _that.change,
            _that.color,
            _that.description,
            _that.websiteUrl,
            _that.rank);
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
    TResult? Function(
            @JsonKey(name: 'uuid') String uuid,
            @JsonKey(name: 'symbol') String symbol,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'iconUrl') String iconUrl,
            @JsonKey(name: 'marketCap') String marketCap,
            @JsonKey(name: 'price') String price,
            @JsonKey(name: 'change') String change,
            @JsonKey(name: 'color') String? color,
            @JsonKey(name: 'description') String? description,
            @JsonKey(name: 'websiteUrl') String? websiteUrl,
            @JsonKey(name: 'rank') int rank)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Coins() when $default != null:
        return $default(
            _that.uuid,
            _that.symbol,
            _that.name,
            _that.iconUrl,
            _that.marketCap,
            _that.price,
            _that.change,
            _that.color,
            _that.description,
            _that.websiteUrl,
            _that.rank);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable()
class _Coins implements Coin {
  const _Coins(
      {@JsonKey(name: 'uuid') required this.uuid,
      @JsonKey(name: 'symbol') required this.symbol,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'iconUrl') required this.iconUrl,
      @JsonKey(name: 'marketCap') required this.marketCap,
      @JsonKey(name: 'price') required this.price,
      @JsonKey(name: 'change') required this.change,
      @JsonKey(name: 'color') this.color,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'websiteUrl') this.websiteUrl,
      @JsonKey(name: 'rank') required this.rank});
  factory _Coins.fromJson(Map<String, dynamic> json) => _$CoinsFromJson(json);

  @override
  @JsonKey(name: 'uuid')
  final String uuid;
  @override
  @JsonKey(name: 'symbol')
  final String symbol;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'iconUrl')
  final String iconUrl;
  @override
  @JsonKey(name: 'marketCap')
  final String marketCap;
  @override
  @JsonKey(name: 'price')
  final String price;
  @override
  @JsonKey(name: 'change')
  final String change;
  @override
  @JsonKey(name: 'color')
  final String? color;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'websiteUrl')
  final String? websiteUrl;
  @override
  @JsonKey(name: 'rank')
  final int rank;

  /// Create a copy of Coin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CoinsCopyWith<_Coins> get copyWith =>
      __$CoinsCopyWithImpl<_Coins>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CoinsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Coins &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.marketCap, marketCap) ||
                other.marketCap == marketCap) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.change, change) || other.change == change) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.websiteUrl, websiteUrl) ||
                other.websiteUrl == websiteUrl) &&
            (identical(other.rank, rank) || other.rank == rank));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, symbol, name, iconUrl,
      marketCap, price, change, color, description, websiteUrl, rank);

  @override
  String toString() {
    return 'Coin(uuid: $uuid, symbol: $symbol, name: $name, iconUrl: $iconUrl, marketCap: $marketCap, price: $price, change: $change, color: $color, description: $description, websiteUrl: $websiteUrl, rank: $rank)';
  }
}

/// @nodoc
abstract mixin class _$CoinsCopyWith<$Res> implements $CoinCopyWith<$Res> {
  factory _$CoinsCopyWith(_Coins value, $Res Function(_Coins) _then) =
      __$CoinsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'uuid') String uuid,
      @JsonKey(name: 'symbol') String symbol,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'iconUrl') String iconUrl,
      @JsonKey(name: 'marketCap') String marketCap,
      @JsonKey(name: 'price') String price,
      @JsonKey(name: 'change') String change,
      @JsonKey(name: 'color') String? color,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'websiteUrl') String? websiteUrl,
      @JsonKey(name: 'rank') int rank});
}

/// @nodoc
class __$CoinsCopyWithImpl<$Res> implements _$CoinsCopyWith<$Res> {
  __$CoinsCopyWithImpl(this._self, this._then);

  final _Coins _self;
  final $Res Function(_Coins) _then;

  /// Create a copy of Coin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? uuid = null,
    Object? symbol = null,
    Object? name = null,
    Object? iconUrl = null,
    Object? marketCap = null,
    Object? price = null,
    Object? change = null,
    Object? color = freezed,
    Object? description = freezed,
    Object? websiteUrl = freezed,
    Object? rank = null,
  }) {
    return _then(_Coins(
      uuid: null == uuid
          ? _self.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _self.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: null == iconUrl
          ? _self.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      marketCap: null == marketCap
          ? _self.marketCap
          : marketCap // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      change: null == change
          ? _self.change
          : change // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      websiteUrl: freezed == websiteUrl
          ? _self.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      rank: null == rank
          ? _self.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$CoinStats {
  @JsonKey(name: 'total')
  int get total;
  @JsonKey(name: 'totalCoins')
  int get totalCoins;
  @JsonKey(name: 'totalMarkets')
  int get totalMarkets;
  @JsonKey(name: 'totalExchanges')
  int get totalExchanges;
  @JsonKey(name: 'totalMarketCap')
  String get totalMarketCap;
  @JsonKey(name: 'total24hVolume')
  String get total24hVolume;

  /// Create a copy of CoinStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CoinStatsCopyWith<CoinStats> get copyWith =>
      _$CoinStatsCopyWithImpl<CoinStats>(this as CoinStats, _$identity);

  /// Serializes this CoinStats to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CoinStats &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalCoins, totalCoins) ||
                other.totalCoins == totalCoins) &&
            (identical(other.totalMarkets, totalMarkets) ||
                other.totalMarkets == totalMarkets) &&
            (identical(other.totalExchanges, totalExchanges) ||
                other.totalExchanges == totalExchanges) &&
            (identical(other.totalMarketCap, totalMarketCap) ||
                other.totalMarketCap == totalMarketCap) &&
            (identical(other.total24hVolume, total24hVolume) ||
                other.total24hVolume == total24hVolume));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, totalCoins, totalMarkets,
      totalExchanges, totalMarketCap, total24hVolume);

  @override
  String toString() {
    return 'CoinStats(total: $total, totalCoins: $totalCoins, totalMarkets: $totalMarkets, totalExchanges: $totalExchanges, totalMarketCap: $totalMarketCap, total24hVolume: $total24hVolume)';
  }
}

/// @nodoc
abstract mixin class $CoinStatsCopyWith<$Res> {
  factory $CoinStatsCopyWith(CoinStats value, $Res Function(CoinStats) _then) =
      _$CoinStatsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'total') int total,
      @JsonKey(name: 'totalCoins') int totalCoins,
      @JsonKey(name: 'totalMarkets') int totalMarkets,
      @JsonKey(name: 'totalExchanges') int totalExchanges,
      @JsonKey(name: 'totalMarketCap') String totalMarketCap,
      @JsonKey(name: 'total24hVolume') String total24hVolume});
}

/// @nodoc
class _$CoinStatsCopyWithImpl<$Res> implements $CoinStatsCopyWith<$Res> {
  _$CoinStatsCopyWithImpl(this._self, this._then);

  final CoinStats _self;
  final $Res Function(CoinStats) _then;

  /// Create a copy of CoinStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? totalCoins = null,
    Object? totalMarkets = null,
    Object? totalExchanges = null,
    Object? totalMarketCap = null,
    Object? total24hVolume = null,
  }) {
    return _then(_self.copyWith(
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      totalCoins: null == totalCoins
          ? _self.totalCoins
          : totalCoins // ignore: cast_nullable_to_non_nullable
              as int,
      totalMarkets: null == totalMarkets
          ? _self.totalMarkets
          : totalMarkets // ignore: cast_nullable_to_non_nullable
              as int,
      totalExchanges: null == totalExchanges
          ? _self.totalExchanges
          : totalExchanges // ignore: cast_nullable_to_non_nullable
              as int,
      totalMarketCap: null == totalMarketCap
          ? _self.totalMarketCap
          : totalMarketCap // ignore: cast_nullable_to_non_nullable
              as String,
      total24hVolume: null == total24hVolume
          ? _self.total24hVolume
          : total24hVolume // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [CoinStats].
extension CoinStatsPatterns on CoinStats {
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
    TResult Function(_CoinStats value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CoinStats() when $default != null:
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
    TResult Function(_CoinStats value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoinStats():
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
    TResult? Function(_CoinStats value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoinStats() when $default != null:
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
    TResult Function(
            @JsonKey(name: 'total') int total,
            @JsonKey(name: 'totalCoins') int totalCoins,
            @JsonKey(name: 'totalMarkets') int totalMarkets,
            @JsonKey(name: 'totalExchanges') int totalExchanges,
            @JsonKey(name: 'totalMarketCap') String totalMarketCap,
            @JsonKey(name: 'total24hVolume') String total24hVolume)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CoinStats() when $default != null:
        return $default(_that.total, _that.totalCoins, _that.totalMarkets,
            _that.totalExchanges, _that.totalMarketCap, _that.total24hVolume);
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
    TResult Function(
            @JsonKey(name: 'total') int total,
            @JsonKey(name: 'totalCoins') int totalCoins,
            @JsonKey(name: 'totalMarkets') int totalMarkets,
            @JsonKey(name: 'totalExchanges') int totalExchanges,
            @JsonKey(name: 'totalMarketCap') String totalMarketCap,
            @JsonKey(name: 'total24hVolume') String total24hVolume)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoinStats():
        return $default(_that.total, _that.totalCoins, _that.totalMarkets,
            _that.totalExchanges, _that.totalMarketCap, _that.total24hVolume);
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
    TResult? Function(
            @JsonKey(name: 'total') int total,
            @JsonKey(name: 'totalCoins') int totalCoins,
            @JsonKey(name: 'totalMarkets') int totalMarkets,
            @JsonKey(name: 'totalExchanges') int totalExchanges,
            @JsonKey(name: 'totalMarketCap') String totalMarketCap,
            @JsonKey(name: 'total24hVolume') String total24hVolume)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CoinStats() when $default != null:
        return $default(_that.total, _that.totalCoins, _that.totalMarkets,
            _that.totalExchanges, _that.totalMarketCap, _that.total24hVolume);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable()
class _CoinStats implements CoinStats {
  const _CoinStats(
      {@JsonKey(name: 'total') required this.total,
      @JsonKey(name: 'totalCoins') required this.totalCoins,
      @JsonKey(name: 'totalMarkets') required this.totalMarkets,
      @JsonKey(name: 'totalExchanges') required this.totalExchanges,
      @JsonKey(name: 'totalMarketCap') required this.totalMarketCap,
      @JsonKey(name: 'total24hVolume') required this.total24hVolume});
  factory _CoinStats.fromJson(Map<String, dynamic> json) =>
      _$CoinStatsFromJson(json);

  @override
  @JsonKey(name: 'total')
  final int total;
  @override
  @JsonKey(name: 'totalCoins')
  final int totalCoins;
  @override
  @JsonKey(name: 'totalMarkets')
  final int totalMarkets;
  @override
  @JsonKey(name: 'totalExchanges')
  final int totalExchanges;
  @override
  @JsonKey(name: 'totalMarketCap')
  final String totalMarketCap;
  @override
  @JsonKey(name: 'total24hVolume')
  final String total24hVolume;

  /// Create a copy of CoinStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CoinStatsCopyWith<_CoinStats> get copyWith =>
      __$CoinStatsCopyWithImpl<_CoinStats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CoinStatsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CoinStats &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalCoins, totalCoins) ||
                other.totalCoins == totalCoins) &&
            (identical(other.totalMarkets, totalMarkets) ||
                other.totalMarkets == totalMarkets) &&
            (identical(other.totalExchanges, totalExchanges) ||
                other.totalExchanges == totalExchanges) &&
            (identical(other.totalMarketCap, totalMarketCap) ||
                other.totalMarketCap == totalMarketCap) &&
            (identical(other.total24hVolume, total24hVolume) ||
                other.total24hVolume == total24hVolume));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, totalCoins, totalMarkets,
      totalExchanges, totalMarketCap, total24hVolume);

  @override
  String toString() {
    return 'CoinStats(total: $total, totalCoins: $totalCoins, totalMarkets: $totalMarkets, totalExchanges: $totalExchanges, totalMarketCap: $totalMarketCap, total24hVolume: $total24hVolume)';
  }
}

/// @nodoc
abstract mixin class _$CoinStatsCopyWith<$Res>
    implements $CoinStatsCopyWith<$Res> {
  factory _$CoinStatsCopyWith(
          _CoinStats value, $Res Function(_CoinStats) _then) =
      __$CoinStatsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total') int total,
      @JsonKey(name: 'totalCoins') int totalCoins,
      @JsonKey(name: 'totalMarkets') int totalMarkets,
      @JsonKey(name: 'totalExchanges') int totalExchanges,
      @JsonKey(name: 'totalMarketCap') String totalMarketCap,
      @JsonKey(name: 'total24hVolume') String total24hVolume});
}

/// @nodoc
class __$CoinStatsCopyWithImpl<$Res> implements _$CoinStatsCopyWith<$Res> {
  __$CoinStatsCopyWithImpl(this._self, this._then);

  final _CoinStats _self;
  final $Res Function(_CoinStats) _then;

  /// Create a copy of CoinStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? total = null,
    Object? totalCoins = null,
    Object? totalMarkets = null,
    Object? totalExchanges = null,
    Object? totalMarketCap = null,
    Object? total24hVolume = null,
  }) {
    return _then(_CoinStats(
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      totalCoins: null == totalCoins
          ? _self.totalCoins
          : totalCoins // ignore: cast_nullable_to_non_nullable
              as int,
      totalMarkets: null == totalMarkets
          ? _self.totalMarkets
          : totalMarkets // ignore: cast_nullable_to_non_nullable
              as int,
      totalExchanges: null == totalExchanges
          ? _self.totalExchanges
          : totalExchanges // ignore: cast_nullable_to_non_nullable
              as int,
      totalMarketCap: null == totalMarketCap
          ? _self.totalMarketCap
          : totalMarketCap // ignore: cast_nullable_to_non_nullable
              as String,
      total24hVolume: null == total24hVolume
          ? _self.total24hVolume
          : total24hVolume // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$Pagination {
  @JsonKey(name: 'limit')
  int get limit;
  @JsonKey(name: 'hasNextPage')
  bool get hasNextPage;
  @JsonKey(name: 'hasPreviousPage')
  bool get hasPreviousPage;
  @JsonKey(name: 'nextCursor')
  String? get nextCursor;
  @JsonKey(name: 'previousCursor')
  String? get previousCursor;

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<Pagination> get copyWith =>
      _$PaginationCopyWithImpl<Pagination>(this as Pagination, _$identity);

  /// Serializes this Pagination to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Pagination &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.hasPreviousPage, hasPreviousPage) ||
                other.hasPreviousPage == hasPreviousPage) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor) &&
            (identical(other.previousCursor, previousCursor) ||
                other.previousCursor == previousCursor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, limit, hasNextPage,
      hasPreviousPage, nextCursor, previousCursor);

  @override
  String toString() {
    return 'Pagination(limit: $limit, hasNextPage: $hasNextPage, hasPreviousPage: $hasPreviousPage, nextCursor: $nextCursor, previousCursor: $previousCursor)';
  }
}

/// @nodoc
abstract mixin class $PaginationCopyWith<$Res> {
  factory $PaginationCopyWith(
          Pagination value, $Res Function(Pagination) _then) =
      _$PaginationCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'limit') int limit,
      @JsonKey(name: 'hasNextPage') bool hasNextPage,
      @JsonKey(name: 'hasPreviousPage') bool hasPreviousPage,
      @JsonKey(name: 'nextCursor') String? nextCursor,
      @JsonKey(name: 'previousCursor') String? previousCursor});
}

/// @nodoc
class _$PaginationCopyWithImpl<$Res> implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._self, this._then);

  final Pagination _self;
  final $Res Function(Pagination) _then;

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? hasNextPage = null,
    Object? hasPreviousPage = null,
    Object? nextCursor = freezed,
    Object? previousCursor = freezed,
  }) {
    return _then(_self.copyWith(
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      hasNextPage: null == hasNextPage
          ? _self.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPreviousPage: null == hasPreviousPage
          ? _self.hasPreviousPage
          : hasPreviousPage // ignore: cast_nullable_to_non_nullable
              as bool,
      nextCursor: freezed == nextCursor
          ? _self.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as String?,
      previousCursor: freezed == previousCursor
          ? _self.previousCursor
          : previousCursor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Pagination].
extension PaginationPatterns on Pagination {
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
    TResult Function(_Pagination value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Pagination() when $default != null:
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
    TResult Function(_Pagination value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Pagination():
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
    TResult? Function(_Pagination value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Pagination() when $default != null:
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
    TResult Function(
            @JsonKey(name: 'limit') int limit,
            @JsonKey(name: 'hasNextPage') bool hasNextPage,
            @JsonKey(name: 'hasPreviousPage') bool hasPreviousPage,
            @JsonKey(name: 'nextCursor') String? nextCursor,
            @JsonKey(name: 'previousCursor') String? previousCursor)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Pagination() when $default != null:
        return $default(_that.limit, _that.hasNextPage, _that.hasPreviousPage,
            _that.nextCursor, _that.previousCursor);
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
    TResult Function(
            @JsonKey(name: 'limit') int limit,
            @JsonKey(name: 'hasNextPage') bool hasNextPage,
            @JsonKey(name: 'hasPreviousPage') bool hasPreviousPage,
            @JsonKey(name: 'nextCursor') String? nextCursor,
            @JsonKey(name: 'previousCursor') String? previousCursor)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Pagination():
        return $default(_that.limit, _that.hasNextPage, _that.hasPreviousPage,
            _that.nextCursor, _that.previousCursor);
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
    TResult? Function(
            @JsonKey(name: 'limit') int limit,
            @JsonKey(name: 'hasNextPage') bool hasNextPage,
            @JsonKey(name: 'hasPreviousPage') bool hasPreviousPage,
            @JsonKey(name: 'nextCursor') String? nextCursor,
            @JsonKey(name: 'previousCursor') String? previousCursor)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Pagination() when $default != null:
        return $default(_that.limit, _that.hasNextPage, _that.hasPreviousPage,
            _that.nextCursor, _that.previousCursor);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable()
class _Pagination implements Pagination {
  const _Pagination(
      {@JsonKey(name: 'limit') required this.limit,
      @JsonKey(name: 'hasNextPage') required this.hasNextPage,
      @JsonKey(name: 'hasPreviousPage') required this.hasPreviousPage,
      @JsonKey(name: 'nextCursor') this.nextCursor,
      @JsonKey(name: 'previousCursor') this.previousCursor});
  factory _Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);

  @override
  @JsonKey(name: 'limit')
  final int limit;
  @override
  @JsonKey(name: 'hasNextPage')
  final bool hasNextPage;
  @override
  @JsonKey(name: 'hasPreviousPage')
  final bool hasPreviousPage;
  @override
  @JsonKey(name: 'nextCursor')
  final String? nextCursor;
  @override
  @JsonKey(name: 'previousCursor')
  final String? previousCursor;

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaginationCopyWith<_Pagination> get copyWith =>
      __$PaginationCopyWithImpl<_Pagination>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PaginationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Pagination &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.hasPreviousPage, hasPreviousPage) ||
                other.hasPreviousPage == hasPreviousPage) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor) &&
            (identical(other.previousCursor, previousCursor) ||
                other.previousCursor == previousCursor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, limit, hasNextPage,
      hasPreviousPage, nextCursor, previousCursor);

  @override
  String toString() {
    return 'Pagination(limit: $limit, hasNextPage: $hasNextPage, hasPreviousPage: $hasPreviousPage, nextCursor: $nextCursor, previousCursor: $previousCursor)';
  }
}

/// @nodoc
abstract mixin class _$PaginationCopyWith<$Res>
    implements $PaginationCopyWith<$Res> {
  factory _$PaginationCopyWith(
          _Pagination value, $Res Function(_Pagination) _then) =
      __$PaginationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'limit') int limit,
      @JsonKey(name: 'hasNextPage') bool hasNextPage,
      @JsonKey(name: 'hasPreviousPage') bool hasPreviousPage,
      @JsonKey(name: 'nextCursor') String? nextCursor,
      @JsonKey(name: 'previousCursor') String? previousCursor});
}

/// @nodoc
class __$PaginationCopyWithImpl<$Res> implements _$PaginationCopyWith<$Res> {
  __$PaginationCopyWithImpl(this._self, this._then);

  final _Pagination _self;
  final $Res Function(_Pagination) _then;

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? limit = null,
    Object? hasNextPage = null,
    Object? hasPreviousPage = null,
    Object? nextCursor = freezed,
    Object? previousCursor = freezed,
  }) {
    return _then(_Pagination(
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      hasNextPage: null == hasNextPage
          ? _self.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPreviousPage: null == hasPreviousPage
          ? _self.hasPreviousPage
          : hasPreviousPage // ignore: cast_nullable_to_non_nullable
              as bool,
      nextCursor: freezed == nextCursor
          ? _self.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as String?,
      previousCursor: freezed == previousCursor
          ? _self.previousCursor
          : previousCursor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
