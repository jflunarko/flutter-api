import 'package:flutter/material.dart';
import 'package:flutter_api/models/user_models.dart';
import 'package:flutter_api/repository/data_dummy.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final dataDummy = DataDummy();
  List<UserModel> list = [];

  @override
  void initState() {
    list = dataDummy.listUser;
    debugPrint('Data : ${dataDummy.listUser}');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Demo'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(backgroundImage: NetworkImage(list[index].image),),
              title: Text('${list[index].firstName} ${list[index].lastName}'),
              subtitle: Text(list[index].gender),
            );
          },
          separatorBuilder: (context, index) => Divider(
                thickness: 1,
              ),
          itemCount: list.length),
    );
  }
}