import 'package:my_first_app/feature/coins/data/models/coins_response_model.dart'
    as data;

import 'package:my_first_app/feature/coins/domain/models/get_coins_model.dart'
    as domain;

extension CoinDataMapper on data.CoinData {
  domain.CoinData toDomain() {
    return domain.CoinData(
      coins: coins.map((e) => e.toDomain()).toList(),
      stats: stats.toDomain(),
    );
  }
}

extension CoinMapper on data.Coin {
  domain.Coin toDomain() {
    return domain.Coin(
      marketCap: marketCap,
      uuid: uuid,
      symbol: symbol,
      name: name,
      iconUrl: iconUrl,
      description: description,
      price: price,
      websiteUrl: websiteUrl,
      color: color,
      change: change,
      rank: rank,
    );
  }
}

extension CoinStatsMapper on data.CoinStats {
  domain.CoinStats toDomain() {
    return domain.CoinStats(
      total: total,
      totalCoins: totalCoins,
      totalMarkets: totalMarkets,
      totalExchanges: totalExchanges,
      totalMarketCap: totalMarketCap,
      total24hVolume: total24hVolume,
    );
  }
}

extension PaginationMapper on data.Pagination {
  domain.Pagination toDomain() {
    return domain.Pagination(
        limit: limit,
        hasNextPage: hasNextPage,
        hasPreviousPage: hasPreviousPage,
        nextCursor: nextCursor,
        previousCursor: previousCursor);
  }
}
