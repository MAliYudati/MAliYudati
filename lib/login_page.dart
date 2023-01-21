import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:main/main_page.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginScreen();
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController saldo = TextEditingController();

  Future login() async {
    var response = await http
        .post(Uri.parse("http://192.168.100.37/pulsa/login.php"), body: {
      "user": user.text,
      "password": pass.text,
    });

    var data = json.decode(response.body);
    if (data == "Success") {
      await SessionManager().set('token', user.text);
      var snackBar = SnackBar(
        content: const Text("Login Berhasil"),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return MainPage();
      }));
    } else {
      var snackBar = SnackBar(
        content: const Text("Login Gagal"),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  bool? isChecked = false;

  bool _secureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ).copyWith(top: 60),
            child: Column(
              children: [
                const Text(
                  'Alyu Reload',
                  style: TextStyle(
                    fontFamily: 'PT-Sans',
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 57, 206, 43),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Email',
                    style: TextStyle(
                      fontFamily: 'PT-Sans',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 57, 206, 43),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Material(
                  color: Colors.black54,
                  elevation: 2,
                  child: TextField(
                    controller: user,
                    cursorColor: Colors.white,
                    cursorWidth: 2,
                    obscureText: false,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.mail,
                        color: Color.fromARGB(255, 57, 206, 43),
                      ),
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(136, 25, 22, 26),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'PTSans',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Password',
                    style: TextStyle(
                      fontFamily: 'PT-Sans',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 57, 206, 43),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Material(
                  color: Colors.black54,
                  elevation: 2,
                  child: TextField(
                    controller: pass,
                    cursorColor: Colors.white,
                    cursorWidth: 2,
                    obscureText: _secureText,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      hintText: '',
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Color.fromARGB(255, 57, 206, 43),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _secureText = !_secureText;
                          });
                        },
                        icon: Icon(
                          Icons.remove_red_eye,
                          color: Color.fromARGB(255, 57, 206, 43),
                        ),
                      ),
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(136, 25, 22, 26),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'PTSans',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value;
                        });
                      },
                    ),
                    const Text(
                      'Remember me',
                      style: TextStyle(
                          fontFamily: 'PT-Sans',
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 64,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 57, 206, 43),
                      ),
                      elevation: MaterialStateProperty.all(6),
                      shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        fontFamily: 'PT-Sans',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 228, 219, 219),
                      ),
                    ),
                    onPressed: () {
                      login();
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Do not have an Account? ',
                      style: TextStyle(
                        fontFamily: 'PT-Sans',
                        fontSize: 16,
                      ),
                    ),
                    InkWell(
                      child: const Text(
                        'Sing Up',
                        style: TextStyle(
                          fontFamily: 'PT-Sans',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 57, 206, 43),
                        ),
                      ),
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return MainPage();
                        }));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
