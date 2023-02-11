import 'package:flutter/material.dart';
import 'package:matrimony/login.dart';

class Program1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Column(
          children: [
            Expanded(
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      'assets/images/bg_matrimony_prelogin.jpg',
                      fit: BoxFit.fitHeight,
                    ),
                    Container(color: Color(0x99ffffff)),
                    Column(
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          child: Image.asset(
                            'assets/images/metrimony_logo.png',
                            height: 80,
                            width: 140,
                          ),
                          margin: EdgeInsets.only(top: 50),
                        ),
                        Text('INDIA\'S' ,style: TextStyle(color: Colors.black,fontSize: 25),),
                        Text('MOST TRUSTED' ,style: TextStyle(color: Colors.black,fontSize: 25),),
                        Text('MATRIMONY BRAND' ,style: TextStyle(color: Colors.black,fontSize: 25),),
                      ],
                    )
                  ],
                )),
            Row(
              children: [
                Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return LoginPage();
                        },));
                      },
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        color: Colors.black,
                        child: Text(
                          "Login",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )),
                Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      color: Colors.green,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Singup',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_forward_rounded,
                            size: 18,
                          ),
                        ],
                      ),
                    )),
              ],
            )
          ],
        ));
    throw UnimplementedError();
  }
}
