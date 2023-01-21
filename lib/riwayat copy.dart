// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:flutter/material.dart';

// class Riwayat extends StatefulWidget {
//   @override
//   _RiwayatState createState() => _RiwayatState();
// }

// class _RiwayatState extends State<Riwayat> {
//   Future<List> getData() async {
//     final response =
//         await http.get(Uri.parse("http://10.0.2.2/pulsa/getdata.php"));
//     return json.decode(response.body);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.greenAccent[700],
//         title: Text("Riwayat"),
//       ),
//       body: ListView(
//         children: [
//           Container(
//             child: Column(
//               children: [
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Container(
//                       width: double.infinity,
//                       color: Colors.grey,
//                       child: Text(
//                         "27 SEPTEMBER 2022",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 15),
//                       )),
//                 ),
//                 SizedBox(
//                   height: 12,
//                 ),
//                 Align(
//                     alignment: Alignment.centerLeft,
//                     child: Container(
//                       margin: EdgeInsets.only(left: 10),
//                       child: Text(
//                         "082111191828",
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 20),
//                       ),
//                     )),
//                 SizedBox(
//                   height: 3,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "Berhasil",
//                       style: TextStyle(
//                           color: Colors.greenAccent[700],
//                           fontWeight: FontWeight.bold),
//                     ),
//                     Text(
//                       "Rp6.000",
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     )
//                   ],
//                 ),
//                 Divider(
//                   thickness: 2,
//                 )
//               ],
//             ),
//           ),
//           Container(
//             child: Column(
//               children: [
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Container(
//                       width: double.infinity,
//                       color: Colors.grey,
//                       child: Text(
//                         "27 SEPTEMBER 2022",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 15),
//                       )),
//                 ),
//                 SizedBox(
//                   height: 12,
//                 ),
//                 Align(
//                     alignment: Alignment.centerLeft,
//                     child: Container(
//                       margin: EdgeInsets.only(left: 10),
//                       child: Text(
//                         "082111191828",
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 20),
//                       ),
//                     )),
//                 SizedBox(
//                   height: 3,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "Gagal",
//                       style: TextStyle(
//                           color: Colors.redAccent[700],
//                           fontWeight: FontWeight.bold),
//                     ),
//                     Text(
//                       "Rp6.000",
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     )
//                   ],
//                 ),
//                 Divider(
//                   thickness: 2,
//                 )
//               ],
//             ),
//           ),
//           Container(
//             child: Column(
//               children: [
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Container(
//                       width: double.infinity,
//                       color: Colors.grey,
//                       child: Text(
//                         "27 SEPTEMBER 2022",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 15),
//                       )),
//                 ),
//                 SizedBox(
//                   height: 12,
//                 ),
//                 Align(
//                     alignment: Alignment.centerLeft,
//                     child: Container(
//                       margin: EdgeInsets.only(left: 10),
//                       child: Text(
//                         "082111191828",
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 20),
//                       ),
//                     )),
//                 SizedBox(
//                   height: 3,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "Proses",
//                       style: TextStyle(
//                           color: Colors.blueAccent[700],
//                           fontWeight: FontWeight.bold),
//                     ),
//                     Text(
//                       "Rp6.000",
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     )
//                   ],
//                 ),
//                 Divider(
//                   thickness: 2,
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
