import 'package:my_first_app/app/app.locator.dart';
import 'package:my_first_app/core/helper/either_minimal.dart';
import 'package:my_first_app/core/helper/failure_handler.dart';
import 'package:my_first_app/feature/coins/data/coins_repository_impl.dart';
import 'package:my_first_app/feature/coins/domain/models/get_coins_model.dart';

class GetCoinsUsecase {
  final _coinsRepositoryImpl = locator<CoinsRepositoryImpl>();
  Future<Either<Failure, GetCoins>> execute(
      String? cursor, int limit, String? search) async {
    try {
      final res = await _coinsRepositoryImpl.getCoins(
          cursor: cursor, limit: limit, search: search);
      return right(res);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
