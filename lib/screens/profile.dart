// import 'package:flutter/material.dart';

// class Profile extends StatelessWidget {
//   const Profile({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("My Account"),
//         centerTitle: true,
//       ),
//       body: Column(children: [
//         SizedBox(
//           height: 20,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(100.0),
//               child: Image.network(
//                 'https://th.bing.com/th/id/OIP.Q_vZZcSYOaPMcxnXMQQ99QHaE8?pid=ImgDet&rs=1', // Replace with your image URL or use AssetImage for local images
//                 width: 200, // Adjust the width as needed
//                 height: 200, // Adjust the height as needed
//                 fit: BoxFit
//                     .cover, // You can use different BoxFit values as per your requirement
//               ),
//             )
//             //Image.network("https://th.bing.com/th/id/OIP.Q_vZZcSYOaPMcxnXMQQ99QHaE8?pid=ImgDet&rs=1",width: 100)
//           ],
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "name",
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
//             ),
//           ],
//         ),
//         SizedBox(
//           height: 40,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               width: 300,
//               height: 40,
//               //color: Color.fromARGB(31, 44, 43, 43),
//               decoration: BoxDecoration(
//                   color: Color.fromARGB(31, 44, 43, 43),
//                   borderRadius: BorderRadius.all(Radius.circular(10))),

//               child: Row(
//                 children: [
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Icon(Icons.bookmark),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Text(
//                     "Bookmarks",
//                     style: TextStyle(fontSize: 20),
//                   ),
//                   SizedBox(
//                     width: 115,
//                   ),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [Icon(Icons.keyboard_arrow_right)],
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//         SizedBox(
//           height: 15,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               width: 300,
//               height: 40,
//               //color: Color.fromARGB(31, 44, 43, 43),
//               decoration: BoxDecoration(
//                   color: Color.fromARGB(31, 44, 43, 43),
//                   borderRadius: BorderRadius.all(Radius.circular(10))),

//               child: Row(
//                 children: [
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Icon(Icons.comment),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Text(
//                     "My comments",
//                     style: TextStyle(fontSize: 20),
//                   ),
//                   SizedBox(
//                     width: 85,
//                   ),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [Icon(Icons.keyboard_arrow_right)],
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//         SizedBox(
//           height: 15,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//                 width: 300,
//                 height: 40,
//                 //color: Color.fromARGB(31, 44, 43, 43),
//                 decoration: BoxDecoration(
//                     color: Color.fromARGB(31, 44, 43, 43),
//                     borderRadius: BorderRadius.all(Radius.circular(10))),
//                 child: Row(
//                   children: [
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Icon(Icons.account_circle),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Text(
//                       "Account Details",
//                       style: TextStyle(fontSize: 20),
//                     ),
//                     SizedBox(
//                       width: 80,
//                     ),
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [Icon(Icons.keyboard_arrow_right)],
//                     )
//                   ],
//                 ))
//           ],
//         ),
//         SizedBox(
//           height: 15,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               width: 300,
//               height: 40,
//               //color: Color.fromARGB(31, 44, 43, 43),
//               decoration: BoxDecoration(
//                   color: Color.fromARGB(31, 44, 43, 43),
//                   borderRadius: BorderRadius.all(Radius.circular(10))),

//               child: Row(
//                 children: [
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Icon(Icons.bookmark),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Text(
//                     "Bookmarks",
//                     style: TextStyle(fontSize: 20),
//                   ),
//                   SizedBox(
//                     width: 100,
//                   ),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [Icon(Icons.keyboard_arrow_right)],
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ]),
//     );
//   }
// }
