import 'package:flutter/material.dart';

class IsiSaldo extends StatelessWidget {
  const IsiSaldo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: buat kalimat silahkan transfer ke bank dibawah ini dan konfirmasi transfer ke Whatsapp ini
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[700],
        title: Text("Isi Saldo"),
      ),
    );
  }
}
