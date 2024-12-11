import 'package:flutter/material.dart';
import 'package:flutter_api/models/user_models.dart';

class UserDetail extends StatelessWidget {
  UserModel userModel;
  UserDetail({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${userModel.firstName}'),),
    );
  }
}