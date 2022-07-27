import 'package:flutter/material.dart';

import 'package:main/confirm_stl.dart';

class PdPage extends StatefulWidget {
  @override
  _PdPageState createState() => _PdPageState();
}

class _PdPageState extends State<PdPage> with SingleTickerProviderStateMixin {
  TabController _controller;
  TextEditingController controller = TextEditingController();
  String nominal;

  provider(String data) {
    if (data == "") {
      return "Nama Provider";
    } else if (data.length >= 4) {
      // Telkomsel
      if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "1" &&
          data[3] == "1") {
        return "Telkomsel";
      } else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "1" &&
          data[3] == "2") {
        return "Telkomsel";
      } else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "1" &&
          data[3] == "3") {
        return "Telkomsel";
      } else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "2" &&
          data[3] == "1") {
        return "Telkomsel";
      } else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "2" &&
          data[3] == "2") {
        return "Telkomsel";
      } else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "2" &&
          data[3] == "3") {
        return "Telkomsel";
      } else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "5" &&
          data[3] == "1") {
        return "Telkomsel";
      } else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "5" &&
          data[3] == "2") {
        return "Telkomsel";
      } else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "5" &&
          data[3] == "3") {
        return "Telkomsel";
      }
      // Xl Axiata
      else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "5" &&
          data[3] == "9") {
        return "XL Axiata";
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pulsa & Data'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Center(child: Text(provider(controller.text) ?? "")),
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            child: TabBar(
              controller: _controller,
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: 'Pulsa',
                ),
                Tab(
                  icon: Icon(Icons.my_location),
                  text: 'Data',
                ),
              ],
            ),
          ),
          Card(
            child: ListTile(
              title: TextField(
                  controller: controller,
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                      hintText: 'Nomor Ponsel',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      suffix: Container(
                        width: 5,
                        height: 5,
                        color: Colors.black,
                      ))),
            ),
          ),
          Container(
            height: 300.0,
            child: TabBarView(
              controller: _controller,
              children: <Widget>[
                Card(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                nominal = "5000";
                                showModalBottomSheet(
                                  isDismissible: false,
                                  context: context,
                                  builder: (context) {
                                    // Using Wrap makes the bottom sheet height the height of the content.
                                    // Otherwise, the height will be half the height of the screen.
                                    return Wrap(
                                      children: [
                                        ListTile(
                                          title: Text(
                                            'Informasi Transaksi',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text('Nomor'),
                                            Text(controller.text),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text('Pulsa'),
                                            Text(nominal),
                                          ],
                                        ),
                                        Text(
                                            "----------------------------------------------------------------------------------------------------"),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              'Total Pembayaran',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              'Rp 6.000',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            ElevatedButton(
                                                onPressed: () =>
                                                    Navigator.pop(context),
                                                child: Text("Ubah")),
                                            ElevatedButton(
                                                onPressed: () {
                                                  Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                    return ConfirmCoba(
                                                        controller.text,
                                                        nominal);
                                                  }));
                                                },
                                                child: Text("Konfirmasi"))
                                          ],
                                        )
                                      ],
                                    );
                                  },
                                );
                              });
                            },
                            child: Text("5000"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                nominal = "10000";
                                showModalBottomSheet(
                                  isDismissible: false,
                                  context: context,
                                  builder: (context) {
                                    // Using Wrap makes the bottom sheet height the height of the content.
                                    // Otherwise, the height will be half the height of the screen.
                                    return Wrap(
                                      children: [
                                        ListTile(
                                          title: Text(
                                            'Informasi Transaksi',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text('Nomor'),
                                            Text(controller.text),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text('Pulsa'),
                                            Text(nominal),
                                          ],
                                        ),
                                        Text(
                                            "----------------------------------------------------------------------------------------------------"),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              'Total Pembayaran',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              'Rp 11.000',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            ElevatedButton(
                                                onPressed: () =>
                                                    Navigator.pop(context),
                                                child: Text("Ubah")),
                                            ElevatedButton(
                                                onPressed: () {
                                                  Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                    return ConfirmCoba(
                                                        controller.text,
                                                        nominal);
                                                  }));
                                                },
                                                child: Text("Konfirmasi"))
                                          ],
                                        )
                                      ],
                                    );
                                  },
                                );
                              });
                            },
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
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text('Latitude: 48.09342\nLongitude: 11.23403'),
                    trailing: IconButton(
                        icon: Icon(Icons.my_location), onPressed: () {}),
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Search for POIs',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class BlueBox extends PdPage {
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 65,
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        border: Border.all(),
      ),
    );
  }
}
