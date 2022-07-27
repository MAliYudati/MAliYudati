import 'package:flutter/material.dart';

import 'package:main/pd_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Alyu Reload")),
      body: Container(
        color: Colors.greenAccent[700],
        child: Column(
          children: [
            Container(
              height: 180,
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(color: Colors.black),
            ),
            Container(
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(color: Colors.black),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: raisedButtonStyle,
                    onPressed: () {},
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
                        return PdPage();
                      }));
                    },
                    child: Text("Data"),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(color: Colors.black),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: raisedButtonStyle,
                    onPressed: () {},
                    child: Text(
                      "Voucher Game",
                      maxLines: 2,
                    ),
                  ),
                  ElevatedButton(
                    style: raisedButtonStyle,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SimpleDialog(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              child: Text("MASALAH"),
                            )
                          ],
                        );
                      }));
                    },
                    child: Text("Pulsa"),
                  ),
                  ElevatedButton(
                    style: raisedButtonStyle,
                    onPressed: () {},
                    child: Text("Uang Digital"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
