import 'package:my_first_app/core/helper/either_minimal.dart';
import 'package:my_first_app/core/helper/failure_handler.dart';
import 'package:share_plus/share_plus.dart';

class ShareInviteUsecase {
  final String _linkInvite = 'https://www.7solutions.co.th/jobs';

  Future<Either<Failure, Unit>> execute() async {
    try {
      await SharePlus.instance.share(ShareParams(text: _linkInvite));
      return right(unit);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
