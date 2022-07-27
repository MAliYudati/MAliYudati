import 'package:flutter/material.dart';

class ConfirmCoba extends StatelessWidget {
  final String nominal;
  final String text;
  ConfirmCoba(this.text, this.nominal);
  //TODO: Lanjutkan confirmcoba
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Konfirmasi Pembayaran'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Center(
                child: Text("Telkomsel"),
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
              Text('Pulsa'),
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
                'Rp 6.000',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text(
              "----------------------------------------------------------------------------------------------------"),
          Text("Metode Pembayaran"),
          Card(
            child: Column(
              children: [Text("Saldo"), Text("Rp. 100.000")],
            ),
          ),
        ],
      ),
      bottomNavigationBar: ElevatedButton(
        onPressed: () {},
        child: Text(
          'Bayar',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
