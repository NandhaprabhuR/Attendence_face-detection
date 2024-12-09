// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: CombinedLoginPage(),
//     debugShowCheckedModeBanner: false,
//   ));
// }
//
// class CombinedLoginPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background image
//           Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage("assets/background.jpg"), // Replace with your image asset
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Center(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 40.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   // Left panel with welcome message
//                   Expanded(
//                     child: Container(
//                       padding: EdgeInsets.all(40.0),
//                       color: Colors.purple.withOpacity(0.8),
//                       child: Column(
//                         mainAxisSize: MainAxisSize.min,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Welcome to CEDP-LMS",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 28,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           SizedBox(height: 20),
//                           Text(
//                             "Technology is bringing a massive wave of evolution in learning things on different ways.",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 16,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 20),
//                   // Right panel with login form
//                   Expanded(
//                     child: Card(
//                       elevation: 8.0,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.all(32.0),
//                         child: Column(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Image.asset(
//                               'assets/logo.png', // Replace with your logo asset
//                               height: 60,
//                             ),
//                             SizedBox(height: 20),
//                             TextField(
//                               decoration: InputDecoration(
//                                 labelText: "Username",
//                                 prefixIcon: Icon(Icons.person),
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(height: 20),
//                             TextField(
//                               obscureText: true,
//                               decoration: InputDecoration(
//                                 labelText: "Password",
//                                 prefixIcon: Icon(Icons.lock),
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(height: 10),
//                             Row(
//                               children: [
//                                 Checkbox(
//                                   value: true,
//                                   onChanged: (bool? newValue) {},
//                                 ),
//                                 Text("Remember me"),
//                                 Spacer(),
//                                 TextButton(
//                                   onPressed: () {
//                                     // Forgot password action
//                                   },
//                                   child: Text("Lost Password?"),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(height: 20),
//                             ElevatedButton(
//                               onPressed: () {
//                                 // Login button action
//                               },
//                               style: ElevatedButton.styleFrom(
//                                 padding: EdgeInsets.symmetric(
//                                     horizontal: 80, vertical: 15),
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                                 primary: Colors.purple,
//                               ),
//                               child: Text("Login"),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
