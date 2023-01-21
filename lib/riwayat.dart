import 'dart:convert';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Riwayat extends StatefulWidget {
  @override
  _RiwayatState createState() => _RiwayatState();
}

class _RiwayatState extends State<Riwayat> {
  List listdata = [];

  Future getdata() async {
    dynamic user = await SessionManager().get('token');
    try {
      final response = await http
          .post(Uri.parse("http://192.168.100.37/pulsa/read.php"), body: {
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
        title: Text("Riwayat"),
      ),
      body: ListView.builder(
        itemCount: listdata.length,
        itemBuilder: ((context, index) {
          return Container(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      width: double.infinity,
                      color: Colors.grey,
                      child: Text(
                        listdata[index]["date"],
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      )),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        listdata[index]["nomor"],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Text(
                      listdata[index]["nominal"],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Berhasil",
                      style: TextStyle(
                          color: Colors.greenAccent[700],
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      listdata[index]["bayar"],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Divider(
                  thickness: 2,
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
