import 'package:my_first_app/app/app.locator.dart';
import 'package:my_first_app/core/helper/either_minimal.dart';
import 'package:my_first_app/core/helper/failure_handler.dart';
import 'package:my_first_app/feature/coins/data/coins_repository_impl.dart';
import 'package:my_first_app/feature/coins/domain/models/get_coin_detail_model.dart';

class GetCoinDetailUsecase {
  final _coinsRepositoryImpl = locator<CoinsRepositoryImpl>();

  Future<Either<Failure, GetCoinDetail>> execute(String uuid) async {
    try {
      final res = await _coinsRepositoryImpl.getCoinDetail(uuid);
      return right(res);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
