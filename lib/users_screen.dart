import 'package:flutter/material.dart';

class UserModel
{
  late final int id;
  late final String name ;
  late final String phone;

  UserModel({
   required this.id,
   required this.phone,
    required this.name,
});
}
class UsersScreen extends StatelessWidget {

  List<UserModel> users = [
    UserModel(
        id:1,
        phone: "",
        name:'Nada Hesham'
    ),
    UserModel(
        id:2,
        phone: "",
        name:'Nada H'
    ),
    UserModel(
        id:3,
        phone: "",
        name:'Nada '
    ),
    UserModel(
        id:1,
        phone: "",
        name:'Nada Hesham'
    ),
    UserModel(
        id:2,
        phone: "",
        name:'Nada H'
    ),
    UserModel(
        id:3,
        phone: "",
        name:'Nada '
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('users'),
      ),
      body:ListView.separated(
          itemBuilder: (context ,index) =>  buildUserItem(users[index]),
          separatorBuilder: (context , index) =>Padding(
            padding: const EdgeInsetsDirectional.only(start: 20),
            child: Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[300],
            ),
          ),
          itemCount:users.length,
      ) ,
    );
  }
  Widget buildUserItem(UserModel user)=> Padding(
    padding: const EdgeInsets.all(10),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25,
          child: Text(
            '${user.id}',
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        SizedBox(width: 20,),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${user.name}',
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
            Text(
              '${user.phone}',
              style: TextStyle(
                  color: Colors.grey
              ),
            ),
          ],
        )
      ],
    ),
  ) ;
}
