import 'dart:convert';

import 'package:http/http.dart';
import 'package:testpurpose/settings_screen/screens/api_user_model.dart';

import '../../utils/constants.dart';

class ApiCall {
  Future<List<ApiUserModel>> fetchApiPosts({String? query}) async {
    var data = [];
    List<ApiUserModel> userList = [];
    const url = 'http://jsonplaceholder.typicode.com/users';
    try {
      var response = await get(Uri.parse(url));
      if (response.statusCode == 200) {
        data = json.decode(response.body);
        userList = data.map((e) => ApiUserModel.fromJson(e)).toList();
        if (query != null) {
          userList = userList
              .where((element) =>
                  element.name!.toLowerCase().contains(query.toLowerCase()))
              .toList();
        }
      }
    } catch (e) {
      log.w(e);
    }
    return userList;
  }
}
