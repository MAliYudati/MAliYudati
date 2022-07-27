import 'package:flutter/material.dart';

class ConfirmPage extends StatefulWidget {
  final String nominal;
  ConfirmPage(String text, this.nominal);

  @override
  _ConfirmPageState createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage>
    with SingleTickerProviderStateMixin {
  String get nominal => null;

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
                child: Text("Nomor 082111191828"),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Nomor'),
              Text("082111191828"),
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
                'Total Pembayaran',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Rp 6.000',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
