import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:http/http.dart' as http;

class ConfirmCoba extends StatelessWidget {
  final String nominal;
  final String text;
  final String bayar;
  final String detail;

  ConfirmCoba(this.text, this.nominal, this.bayar, this.detail);

  Future simpan() async {
    dynamic user = await SessionManager().get('token');

    final response = await http
        .post(Uri.parse("http://192.168.100.37/pulsa/create.php"), body: {
      "user": user,
      "nominal": nominal,
      "nomor": text,
      "bayar": bayar,
    });
    if (response.statusCode == 200) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Konfirmasi Pembayaran'),
        backgroundColor: Colors.greenAccent[700],
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Center(
                child: Text(detail),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Nomor'),
              Text(text),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Nominal'),
              Text(nominal),
            ],
          ),
          Text(
              "----------------------------------------------------------------------------------------------------"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Pembayaran',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                bayar,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text(
              "----------------------------------------------------------------------------------------------------"),
          Text("Metode Pembayaran"),
          Card(
            child: Column(
              children: [
                Text(
                  "CASH",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  bayar,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: ElevatedButton(
        onPressed: () {
          simpan().then((value) {
            if (value) {
              final snackBar = SnackBar(
                content: const Text("Data Berhasil Terkirim"),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            } else {
              final snackBar = SnackBar(
                content: const Text("Data Gagal Terkirim"),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.greenAccent[700],
        ),
        child: Text(
          'Bayar',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
