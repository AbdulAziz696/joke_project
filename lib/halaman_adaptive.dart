// import 'package:flutter/material.dart';
// import 'package:job/halaman_daftarlistjoke.dart';
// import 'package:job/halaman_detailjoke.dart';
//
// import 'joke.dart';
//
// class HalamanAdaptive extends StatefulWidget {
//   const HalamanAdaptive({Key? key}) : super(key: key);
//
//   @override
//   _HalamanAdaptiveState createState() => _HalamanAdaptiveState();
// }
//
// class _HalamanAdaptiveState extends State<HalamanAdaptive> {
//   late final Joke pilihanJoke;
//
//   @override
//   Widget build(BuildContext context) {
//     Widget content;
//     var ukuranLayar = MediaQuery
//         .of(context)
//         .size
//         .shortestSide;
//     var orentasiLayar = MediaQuery
//         .of(context)
//         .orientation;
//     if (orentasiLayar == Orientation.portrait && ukuranLayar < 600) {
//       content = buildNotTablet();
//     } else {
//       content = buildTablet();
//     }
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Joke"),
//       ),
//       backgroundColor: Colors.orange,
//     );
//   }
//
//   Widget buildNotTablet() {
//     return HalamanListJoke(
//       pilihanJokeCallback: (pilihanJoke) {
//         Navigator.push(context, MaterialPageRoute(builder: (context) =>
//             HalamanDetailJoke(
//               cekDeviceLayout: false,
//               joke: pilihanJoke,
//             )));
//       },
//     );
//   }
//   Widget buildTablet(){
//     return Row(
//       children: <Widget>[
//         Flexible(child: Material(
//           elevation: 16,
//           child:  HalamanListJoke(
//             pilihanJokeCallback: (pilihanJoke){
//               setState(() {
//                 pilihanJoke = pilihanJoke;
//               });
//             },
//             pilihanJoke: pilihanJoke,
//           ),
//         )
//         ),
//         Flexible(
//             child: HalamanDetailJoke(
//           cekDeviceLayout: true,
//           joke: pilihanJoke,
//         ))
//       ] );
//
//   }
// }
