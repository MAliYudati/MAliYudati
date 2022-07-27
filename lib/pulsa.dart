import 'package:flutter/material.dart';

class PulsaPage extends StatefulWidget {
  @override
  _PulsaPageState createState() => _PulsaPageState();
}

class _PulsaPageState extends State<PulsaPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(150),
            child: AppBar(
              title: Text("Pulsa & Data"),
              flexibleSpace: Stack(
                children: [
                  Positioned(
                    top: 60,
                    left: 0.0,
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: Text(
                        "Nomor Provider",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
              bottom: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.comment),
                    text: "Pulsa",
                  ),
                  Tab(
                    icon: Icon(Icons.computer),
                    text: "Data",
                  )
                ],
              ),
            ),
          ),
          body: Container(
            child: TabBarView(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("5000"),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("10000"),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("20000"),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("30000"),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("40000"),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("50000"),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("60000"),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("75000"),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("100000"),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("150000"),
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("5000"),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("10000"),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
