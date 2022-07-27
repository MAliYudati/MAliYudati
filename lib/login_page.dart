import 'package:flutter/material.dart';
import 'package:main/main_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Align(
            alignment: Alignment.bottomCenter,
            child: ListView(children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5)),
                margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.email,
                            color: Color(0xFFFF4891),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFFF4891))),
                          labelText: "Email: ",
                          labelStyle: TextStyle(color: Color(0xFFFF4891))),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.vpn_key,
                            color: Color(0xFFFF4891),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFFF4891))),
                          labelText: "Password: ",
                          labelStyle: TextStyle(color: Color(0xFFFF4891))),
                    )
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
                    child: Text(
                      "FORGOT PASSWORD?",
                      style: TextStyle(color: Color(0xFFFF4891), fontSize: 11),
                    ),
                  )),
              Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: 40,
                            child: Container(
                                child: Material(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.transparent,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(20),
                                    splashColor: Colors.amber,
                                    onTap: () {
                                      Navigator.pushReplacement(context,
                                          MaterialPageRoute(builder: (context) {
                                        return MainPage();
                                      }));
                                    },
                                    child: Center(
                                      child: Text(
                                        "SIGN IN",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xFFB226B2),
                                          Color(0xFFFF4891)
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter))))
                      ]))
            ]))
      ],
    ));
  }
}
