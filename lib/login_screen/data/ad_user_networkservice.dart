import 'dart:convert';

import 'package:testpurpose/login_screen/data/model/ad_user.dart';
import 'package:testpurpose/utils/constants.dart';
import 'package:http/http.dart' as http;

class A {
  bool? userBool;
  List<ADUser>? adUser;
}

class AdUserNetWorkService {
  Future<A> checkUser(String name, String password) async {
    A myReturnObj = A();
    bool userStatus = false;
    List<ADUser> userList = [];
    try {
      final response = await http.get(
          Uri.parse('${base_url}l=$name&p=$password&where=username=\'$name\''));
      if (response.statusCode == 200) {
        userStatus = true;
        userList = await fetchUserDetails(name, password);
        myReturnObj.userBool = userStatus;
        myReturnObj.adUser = userList;
        return myReturnObj;
      }
    } catch (err, stack) {
     log.w("ERROR $err, STACK $stack");
      myReturnObj.userBool = userStatus;
      myReturnObj.adUser = userList;
      return myReturnObj;
    }
    return myReturnObj;
  }

  Future<List<ADUser>> fetchUserDetails(String uname, String passwd) async {
    List<ADUser> userList = [];
    try {
      final response = await http.get(Uri.parse(
          '${base_url}l=$uname&p=$passwd&_where=username=\'$uname\'&_endRow=0&_selectedProperties=id,email,password,username'));
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body) as Map<String, dynamic>;
        var resData = data['response'];
        for (var record in resData['data']) {
          ADUser adUserRes = ADUser.fromJson(record);
          userList.add(adUserRes);
        }
        return userList;
      }
    } catch (err, stack) {
      log.w("ERROR $err, STACK $stack");
    }
    return userList;
  }
}
