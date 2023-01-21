import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:http/http.dart' as http;
import 'package:main/dana.dart';
import 'package:main/data.dart';
import 'dart:convert';
import 'package:main/pd_page.dart';
import 'package:main/pln_page.dart';
import 'package:main/profile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.greenAccent[700],
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
    ),
  );

  List listdata = [];

  Future getdata() async {
    dynamic user = await SessionManager().get('token');
    try {
      final response = await http
          .post(Uri.parse("http://192.168.100.37/pulsa/saldo.php"), body: {
        "user": user,
      });
      if (response.statusCode == 200) {
        //print(response.body);
        final data = jsonDecode(response.body);
        setState(() {
          listdata = data;
        });
      }
    } catch (e) {}
  }

  @override
  void initState() {
    getdata();
    //print(listdata);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.greenAccent[700],
          centerTitle: true,
          title: Text("Alyu Reload")),
      body: ListView.builder(
        itemCount: listdata.length,
        itemBuilder: ((context, index) {
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 180,
                  margin: EdgeInsets.all(30),
                  decoration: BoxDecoration(color: Colors.black),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Saldo : Rp.",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      listdata[index]["saldo"],
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Divider(
                  thickness: 2,
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        style: raisedButtonStyle,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return PulsaPage();
                          }));
                        },
                        child: Text("PLN"),
                      ),
                      ElevatedButton(
                        style: raisedButtonStyle,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return PdPage();
                          }));
                        },
                        child: Text("Pulsa"),
                      ),
                      ElevatedButton(
                        style: raisedButtonStyle,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DataPage();
                          }));
                        },
                        child: Text("Data"),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 2,
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        style: raisedButtonStyle,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Dana();
                          }));
                        },
                        child: Text("Uang Digital"),
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
