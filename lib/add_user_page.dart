import 'package:flutter/material.dart';

class AddUserPage extends StatefulWidget {
  dynamic name;
  dynamic city;
  AddUserPage({super.key, required this.name, required this.city});


  @override
  State<AddUserPage> createState() => _AddUserPageState();
}

class _AddUserPageState extends State<AddUserPage> {
  TextEditingController nameController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.text = widget.name ?? '';
    cityController.text = widget.city ?? '';
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextFormField(controller: nameController),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextFormField(controller: cityController),
          ),
          Center(
            child: Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: TextButton(
                    onPressed: () {
                      Map<String, dynamic> map = {};
                      map['Name'] = nameController.text;
                      map['AGE'] = 31;
                      map['City'] = cityController.text;
                      Navigator.of(context).pop(map);
                      //       },
                      //     ),
                      //   );
                      // }
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
    throw UnimplementedError();
  }
}
