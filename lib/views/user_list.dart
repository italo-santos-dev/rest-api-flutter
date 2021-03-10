import 'package:flutter/material.dart';
import 'package:flutter_crud/provider/users_provider.dart';
import 'package:flutter_crud/routes/app_routes.dart';
import 'package:flutter_crud/widgets/user_tile.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final  UsersProvider usersProvider = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Usuários'),
        actions: <Widget> [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(
                 AppRootes.USER_FROM,
               );
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: usersProvider.count,
        itemBuilder: (ctx, i) => UserTile(usersProvider.byIndex(i)),
      ),
    );
  }
}