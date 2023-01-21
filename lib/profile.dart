import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:main/login_page.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[700],
        title: Text("Profile"),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FutureBuilder(
                    future: SessionManager().get('token'),
                    builder: (context, snapshot) {
                      return Text(
                        snapshot.hasData
                            ? snapshot.data.toString()
                            : 'Loading...',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      );
                    }),
                Text(
                  " CELL",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
            Text("Alyu-0800"),
            Text(
              "0821-1119-1828",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            // Divider(
            //   thickness: 2,
            // ),
            // Container(
            //   margin: EdgeInsets.only(left: 16, right: 16),
            //   width: double.infinity,
            //   child: ElevatedButton(
            //     child: Text("Ubah Pin"),
            //     onPressed: () {},
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: Colors.greenAccent[700],
            //     ),
            //   ),
            // ),
            Divider(
              thickness: 2,
            ),
            Container(
              margin: EdgeInsets.only(left: 16, right: 16),
              width: double.infinity,
              child: ElevatedButton(
                child: Text("Panduan"),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent[700],
                ),
              ),
            ),
            Divider(
              thickness: 2,
            ),
            Container(
              margin: EdgeInsets.only(left: 16, right: 16),
              width: double.infinity,
              child: ElevatedButton(
                child: Text("Syarat dan Ketentuan"),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent[700],
                ),
              ),
            ),
            Divider(
              thickness: 2,
            ),
            Container(
              margin: EdgeInsets.only(left: 16, right: 16),
              width: double.infinity,
              child: ElevatedButton(
                child: Text("Pusat Bantuan"),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent[700],
                ),
              ),
            ),
            Divider(
              thickness: 2,
            ),
            Container(
              margin: EdgeInsets.only(left: 16, right: 16),
              width: double.infinity,
              child: ElevatedButton(
                child: Text("Log Out"),
                onPressed: () {
                  SessionManager().set('token', '');
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent[700],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
