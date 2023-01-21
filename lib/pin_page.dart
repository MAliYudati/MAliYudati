import 'package:flutter/material.dart';
import 'package:main/main_page.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinPage extends StatelessWidget {
  const PinPage({Key? key}) : super(key: key);
  final String requiredNumber = '1234';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.greenAccent[700],
        title: Text("Enter PIN Number"),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: PinCodeTextField(
          appContext: context,
          length: 4,
          obscureText: true,
          obscuringCharacter: '*',
          blinkWhenObscuring: true,
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
          ),
          onChanged: (value) {
            print(value);
          },
          onCompleted: (value) {
            if (value == requiredNumber) {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return MainPage();
              }));
            } else {
              print('unvalid');
            }
          },
        ),
      )),
    );
  }
}
