import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_api/models/user_models.dart';

class UserRepository{

  Future<List<UserModel>> getUserModels() async {
    try{
      var response = await Dio().get('https://dummyjson.com/users');
      debugPrint('Response users : ${response.data['users']}');
      List list = response.data['users'];
      List<UserModel> listUser = list.map((element) => UserModel.fromJson(element)).toList();
      return listUser;
    } on DioException catch(e){
      throw Exception(e);
    }
  }
}