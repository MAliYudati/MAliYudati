import 'package:flutter/material.dart';

import 'package:main/confirm_stl.dart';

class Dana extends StatefulWidget {
  @override
  _DanaState createState() => _DanaState();
}

class _DanaState extends State<Dana> with SingleTickerProviderStateMixin {
  late TabController _controller;
  TextEditingController controller = TextEditingController();
  String nominal = "";
  String detail = "Saldo DANA";
  String bayar = "";

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(detail),
        backgroundColor: Colors.greenAccent[700],
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Center(child: Text("Nomor DANA")),
            ),
          ),
          Container(
            child: TextField(
                controller: controller,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                    hintText: 'Nomor',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    suffix: Container(
                      width: 5,
                      height: 5,
                      color: Colors.black,
                    ))),
          ),
          Container(
            height: 300.0,
            child: TabBarView(
              controller: _controller,
              children: <Widget>[
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                nominal = "D20000";
                                bayar = "22000";
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
                                        Container(
                                          margin: EdgeInsets.only(left: 15),
                                          child: Text(detail),
                                        ),
                                        Divider(
                                          thickness: 2,
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
                                            Text('Nominal'),
                                            Text(nominal),
                                          ],
                                        ),
                                        Divider(
                                          thickness: 2,
                                        ),
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
                                              bayar,
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
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.greenAccent[700],
                                                ),
                                                child: Text("Ubah")),
                                            ElevatedButton(
                                                onPressed: () {
                                                  Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                    return ConfirmCoba(
                                                        controller.text,
                                                        nominal,
                                                        bayar,
                                                        detail);
                                                  }));
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.greenAccent[700],
                                                ),
                                                child: Text("Konfirmasi"))
                                          ],
                                        )
                                      ],
                                    );
                                  },
                                );
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.greenAccent[700],
                            ),
                            child: Text("20.000"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                nominal = "D50000";
                                bayar = "52000";
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
                                            Text('Nominal'),
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
                                              'Rp 52.000',
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
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.greenAccent[700],
                                                ),
                                                child: Text("Ubah")),
                                            ElevatedButton(
                                                onPressed: () {
                                                  Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                    return ConfirmCoba(
                                                        controller.text,
                                                        nominal,
                                                        bayar,
                                                        detail);
                                                  }));
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.greenAccent[700],
                                                ),
                                                child: Text("Konfirmasi"))
                                          ],
                                        )
                                      ],
                                    );
                                  },
                                );
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.greenAccent[700],
                            ),
                            child: Text("50.000"),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                nominal = "D100000";
                                bayar = "102000";
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
                                            Text('Nominal'),
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
                                              'Rp 102.000',
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
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.greenAccent[700],
                                                ),
                                                child: Text("Ubah")),
                                            ElevatedButton(
                                                onPressed: () {
                                                  Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                    return ConfirmCoba(
                                                        controller.text,
                                                        nominal,
                                                        bayar,
                                                        detail);
                                                  }));
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.greenAccent[700],
                                                ),
                                                child: Text("Konfirmasi"))
                                          ],
                                        )
                                      ],
                                    );
                                  },
                                );
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.greenAccent[700],
                            ),
                            child: Text("100.000"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                nominal = "D200000";
                                bayar = "202000";
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
                                            Text('Nominal'),
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
                                              'Rp 202.000',
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
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.greenAccent[700],
                                                ),
                                                child: Text("Ubah")),
                                            ElevatedButton(
                                                onPressed: () {
                                                  Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                    return ConfirmCoba(
                                                        controller.text,
                                                        nominal,
                                                        bayar,
                                                        detail);
                                                  }));
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.greenAccent[700],
                                                ),
                                                child: Text("Konfirmasi"))
                                          ],
                                        )
                                      ],
                                    );
                                  },
                                );
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.greenAccent[700],
                            ),
                            child: Text("200.000"),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BlueBox extends Dana {
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
