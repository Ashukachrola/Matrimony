import 'package:flutter/material.dart';
import 'package:matrimony/add_user_page.dart';

class UserListPage extends StatefulWidget {
  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  List<Map> users = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext con) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text('UserList'),
        actions: [
          InkWell(
            onTap: () {
              Navigator.of(con).push(MaterialPageRoute(
                builder: (context) {
                  return AddUserPage(name: null, city: null);
                },
              )).then((value) {
                setState(() {
                  users.add(value);
                });
              });
            },
            child: Container(
                margin: EdgeInsets.only(right: 15), child: Icon(Icons.add)),
          )
        ],
      ),
      body: users.length > 0
          ? ListView.builder(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(con).push(MaterialPageRoute(
                      builder: (context) {
                        return AddUserPage(
                          name: users[index]['Name'],
                          city: users[index]['City'],
                        );
                      },
                    )).then((value) {
                      setState(() {
                        users[index] = value;
                      });

                      // print(value.toString());
                    });
                  },
                  child: Card(
                    child: Row(
                      children: [
                        Text(
                          users[index]['Name'],
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                );
              },
              itemCount: users.length,
            )
          : Center(
              child: Text(
              'No data found',
              style: TextStyle(fontSize: 30, color: Colors.grey),
            )),
    );
    throw UnimplementedError();
  }
}
