// import 'package:flutter/material.dart';


// class ProfileScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [
//               Color(0xFF4A4E2B), // Dark olive-green at the top
//               Color(0xFF000000), // Black at the bottom
//             ],
//           ),
//         ),
//         child: Stack(
//           children: [
//             // Dashed line on the right
//             Positioned(
//               right: 10,
//               top: 0,
//               bottom: 0,
//               child: CustomPaint(
//                 painter: DashedLinePainter(),
//                 child: Container(width: 1),
//               ),
//             ),
//             // Top Bar
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     children: [
//                       CircleAvatar(
//                         radius: 20,
//                        // backgroundImage:AssetImage('assets/images/Vector.png') // Replace with actual image
//                       ),
//                       SizedBox(width: 8),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Hi, 👋 Andrew',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           Text(
//                             '12:00',
//                             style: TextStyle(
//                               color: Colors.white70,
//                               fontSize: 14,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   Container(
//                     padding: EdgeInsets.all(8),
//                     decoration: BoxDecoration(
//                       color: Color(0xFFFFD700), // Yellow heart background
//                       shape: BoxShape.circle,
//                     ),
//                     child: Text(
//                       '12',
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 14,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             // Main Image with Overlay
//             Center(
//               child: Container(
//                 margin: EdgeInsets.only(top: 100),
//                 width: 300,
//                 height: 400,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   image: DecorationImage(
//                     image: AssetImage('assets/images/Vector.png'),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 child: Align(
//                   alignment: Alignment.bottomCenter,
//                   child: Container(
//                     width: double.infinity,
//                     padding: EdgeInsets.all(10),
//                     decoration: BoxDecoration(
//                       color: Colors.black.withOpacity(0.5),
//                       borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Text(
//                           'Zelia Booth, 19',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Text(
//                           'Singer, Friendly',
//                           style: TextStyle(
//                             color: Colors.white70,
//                             fontSize: 16,
//                           ),
//                         ),
//                         Text(
//                           '5Km away | Canada',
//                           style: TextStyle(
//                             color: Colors.white70,
//                             fontSize: 14,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             // Bottom Buttons
//             Positioned(
//               bottom: 100,
//               left: 0,
//               right: 0,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   _buildCircularButton(Icons.close, Color(0xFFFFD700)),
//                   SizedBox(width: 20),
//                   _buildCircularButton(Icons.chat, Color(0xFFFFD700)),
//                   SizedBox(width: 20),
//                   _buildCircularButton(Icons.favorite, Color(0xFFFFD700)),
//                 ],
//               ),
//             ),
//             // Bottom Navigation
//             Positioned(
//               bottom: 20,
//               left: 0,
//               right: 0,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   _buildNavIcon(Icons.home, isActive: true),
//                   _buildNavIcon(Icons.favorite_border),
//                   _buildNavIcon(Icons.chat_bubble_outline),
//                   _buildNavIcon(Icons.person_outline),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildCircularButton(IconData icon, Color color) {
//     return Container(
//       width: 60,
//       height: 60,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         shape: BoxShape.circle,
//       ),
//       child: Icon(icon, color: color, size: 30),
//     );
//   }

//   Widget _buildNavIcon(IconData icon, {bool isActive = false}) {
//     return Container(
//       padding: EdgeInsets.all(8),
//       decoration: BoxDecoration(
//         color: isActive ? Color(0xFFFFD700).withOpacity(0.2) : null,
//         shape: BoxShape.circle,
//       ),
//       child: Icon(icon, color: isActive ? Color(0xFFFFD700) : Colors.white70, size: 24),
//     );
//   }
// }

// class DashedLinePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     var paint = Paint()
//       ..color = Color(0xFFFFD700) // Yellow dashed line
//       ..strokeWidth = 1
//       ..style = PaintingStyle.stroke;

//     var dashWidth = 5;
//     var dashSpace = 5;
//     double startY = 0;
//     while (startY < size.height) {
//       canvas.drawLine(Offset(0, startY), Offset(0, startY + dashWidth), paint);
//       startY += dashWidth + dashSpace;
//     }
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
// }