import 'package:flutter/material.dart';
import 'package:matrimony/user_list_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var userNameController = TextEditingController();

  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  bool isRememberMe = true;

  @override
  void initState() {
    super.initState();
    userNameController.text = '';
    passwordController.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Card(
        elevation: 10,
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 25),
                    child: const Text("Username",
                        style: TextStyle(fontSize: 20, color: Colors.black))),
                Container(
                  child: TextFormField(
                      decoration: const InputDecoration(hintText: "Enter Username")),),
                Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: const Text("Password",
                        style: TextStyle(fontSize: 20, color: Colors.black))),
                Container(
                    child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(hintText: "Enter Password")))
              ],
            ),
          ),
        ),
      ),
    );
  }

// This is old Code !// MEAN : MySQL - Express - Angular - Node. MERN : MySQL - Express - React - Node
// @override
// Widget build(BuildContext context) {
//   // TODO: implement build
//   return Scaffold(
//     appBar: AppBar(
//       title: Text("Login"),
//     ),
//     body: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         // Expanded(child: Container()),
//         Expanded(
//           child: Container(
//             padding: EdgeInsets.all(5),
//             child: Card(
//               elevation: 10,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Form(
//                   key: formKey,
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Container(
//                         margin: EdgeInsets.all(10.0),
//                         child: Text(
//                           "Enter User Name",
//                           style: TextStyle(fontSize: 20, color: Colors.black),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: TextFormField(
//                           decoration: InputDecoration(
//                             hintText: "User Name"
//                           ),
//                           controller: userNameController,
//                           style: TextStyle(fontSize: 15, color: Colors.black45),
//                           validator: (value) {
//                             if (value != null && value.isEmpty) {
//                               return 'Enter Name';
//                             }
//                           },
//                         ),
//                       ),
//                       Container(
//                         margin: EdgeInsets.all(10.0),
//                         child: Text(
//                           "Enter Password",
//                           style: TextStyle(fontSize: 20, color: Colors.black),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: TextFormField(
//                           decoration: InputDecoration(
//                             hintText: "Enter Password"
//                           ),
//                           controller: passwordController,
//                           obscureText: true,
//                           obscuringCharacter: '*',
//                           style: TextStyle(fontSize: 15, color: Colors.black45),
//                           validator: (value) {
//                             if (value != null && value.isEmpty) {
//                               return 'Enter Password';
//                             }
//                           },
//                         ),
//                       ),
//                       Row(
//                         children: [
//                           Checkbox(
//                               value: isRememberMe,
//                               onChanged: (value) {
//                                 setState(() {
//                                   isRememberMe = !isRememberMe;
//                                 });
//                               }),
//                           Text(
//                             'Remember Me',
//                             style:
//                                 TextStyle(fontSize: 15, color: Colors.black),
//                           )
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           Center(
//                             child: Container(
//                                 margin: EdgeInsets.only(top: 10),
//                                 color: Colors.amber,
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(4.0),
//                                   child: TextButton(
//                                     onPressed: () {
//                                       if (formKey.currentState!.validate()) {
//                                         Navigator.of(context).push(
//                                           MaterialPageRoute(
//                                             builder: (context) {
//                                               return UserListPage();
//                                             },
//                                           ),
//                                         );
//                                       }
//                                     },
//                                     child: Text(
//                                       'Login',
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           color: Colors.black),
//                                     ),
//                                   ),
//                                 )),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         Expanded(child: Container()),
//       ],
//     ),
//   );
//   throw UnimplementedError();
// }
}
