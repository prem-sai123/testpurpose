import 'package:testpurpose/login_screen/data/ad_user_networkservice.dart';

class AdUserRepo {
  final AdUserNetWorkService adUserNS;

  AdUserRepo({required this.adUserNS});
  Future<A> checkUser(String name, String password) async {
    final adUserRes = await adUserNS.checkUser(name,password);
    return adUserRes;
  }
}
