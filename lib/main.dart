import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:main/login_page.dart';
import 'package:main/profile.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  dynamic token = SessionManager().get('token');

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: token != '' ? LoginPage() : Profile(),
  ));
}
