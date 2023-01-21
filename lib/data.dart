import 'package:flutter/material.dart';

import 'package:main/confirm_stl.dart';

class DataPage extends StatefulWidget {
  @override
  _DataPageState createState() => _DataPageState();
}

class _DataPageState extends State<DataPage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  TextEditingController controller = TextEditingController();
  TextEditingController saldo = TextEditingController();
  String nominal = "";
  String detail = "Pulsa Elektrik";
  String bayar = "";

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
      // Indosat
      else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "5" &&
          data[3] == "7") {
        return "Indosat";
      } else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "5" &&
          data[3] == "6") {
        return "Indosat";
      }
      // Tri
      else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "9" &&
          data[3] == "5") {
        return "Tri";
      } else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "9" &&
          data[3] == "6") {
        return "Tri";
      } else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "9" &&
          data[3] == "7") {
        return "Tri";
      } else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "9" &&
          data[3] == "8") {
        return "Tri";
      } else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "9" &&
          data[3] == "9") {
        return "Tri";
      }
      // Xl Axiata
      else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "1" &&
          data[3] == "7") {
        return "XL Axiata";
      } else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "1" &&
          data[3] == "8") {
        return "XL Axiata";
      } else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "1" &&
          data[3] == "9") {
        return "XL Axiata";
      } else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "5" &&
          data[3] == "9") {
        return "XL Axiata";
      } else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "7" &&
          data[3] == "7") {
        return "XL Axiata";
      } else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "7" &&
          data[3] == "8") {
        return "XL Axiata";
      }
      // Axis
      else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "3" &&
          data[3] == "1") {
        return "Axis";
      } else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "3" &&
          data[3] == "2") {
        return "Axis";
      } else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "3" &&
          data[3] == "3") {
        return "Axis";
      } else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "3" &&
          data[3] == "8") {
        return "Axis";
      }
      //Smartfren
      else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "8" &&
          data[3] == "1") {
        return "Smartfren";
      } else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "8" &&
          data[3] == "3") {
        return "Smartfren";
      } else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "8" &&
          data[3] == "3") {
        return "Smartfren";
      } else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "8" &&
          data[3] == "4") {
        return "Smartfren";
      } else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "8" &&
          data[3] == "5") {
        return "Smartfren";
      } else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "8" &&
          data[3] == "6") {
        return "Smartfren";
      } else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "8" &&
          data[3] == "7") {
        return "Smartfren";
      } else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "8" &&
          data[3] == "8") {
        return "Smartfren";
      } else if (data[0] == "0" &&
          data[1] == "8" &&
          data[2] == "8" &&
          data[3] == "9") {
        return "Smartfren";
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
        title: Text('Data Elektrik'),
        backgroundColor: Colors.greenAccent[700],
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Center(child: Text(provider(controller.text) ?? "")),
            ),
          ),
          Card(
            child: ListTile(
              title: TextFormField(
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
                    )),
              ),
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
                                nominal = "1GB";
                                bayar = "7000";
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
                                              'Rp 7.000',
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
                            child: Text("1GB"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                nominal = "2GB";
                                bayar = "14000";
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
                                              'Rp 14.000',
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
                            child: Text("2GB"),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                nominal = "3GB";
                                bayar = "21000";
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
                                              'Rp 21.000',
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
                            child: Text("3GB"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                nominal = "5GB";
                                bayar = "28000";
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
                                              'Rp 28.000',
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
                            child: Text("5GB"),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                nominal = "10GB";
                                bayar = "50000";
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
                                              'Rp 50.000',
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
                            child: Text("10GB"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                nominal = "25GB";
                                bayar = "75000";
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
                                              'Rp 75.000',
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
                            child: Text("25GB"),
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
        ],
      ),
    );
  }
}

class BlueBox extends DataPage {
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
