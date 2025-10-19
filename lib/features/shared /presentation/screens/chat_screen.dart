import 'package:datting_app/core/theme/app_colors.dart';
import 'package:datting_app/shared/widgets/buttons/back_button.dart';
import 'package:datting_app/shared/widgets/gradient/app_gradient.dart';
import 'package:datting_app/shared/widgets/inputs/app_inputs.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
    TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        leading: CustomBackButton(
          svgPath: 'assets/icons/Frame1.svg',
          color: AppColors.black,
          size: 24,
          onPressed: () {
            context.go('/messages');
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            Image.asset(
              'assets/images/Groupp 28.png',
              width: 58,
              height: 58, // Added height for consistency
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.error); // Show error if image fails
              },
            ),
            const SizedBox(width: 10),
            const Text(
              'T.E.C.H_uma',
              style: TextStyle(
                fontFamily: 'Regular',
                fontSize: 22,
                color: AppColors.black,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: AppGradients.radialBackground,
        ),
        child: Column(
          children: [
            const SizedBox(height: 150),
            Divider(
              color: Colors.black,
              thickness: 2,
            ),
            // Chat messages
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16.0),
                children: [
                  // Sender's messages (e.g., Elwa)
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/images/Groupp 28.png'), // Replace with sender's image
                        onBackgroundImageError: (_, __) => const Icon(Icons.error),
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 4), // Space between containers
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.grey[200], // Light gray bubble
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Text(
                              'Hi, Evan',
                              style: TextStyle(fontSize: 13, color: Colors.black,fontFamily: 'Regular'),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.grey[200], // Light gray bubble
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Text(
                              'How are you!',
                              style: TextStyle(fontSize: 13, color: Colors.black,fontFamily: 'Regular'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16), 
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end, // Align to the right
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 4), // Space between containers
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.yellow[600],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Text(
                              'Hi, Elwa',
                              style: TextStyle(fontSize: 13, color: Colors.black,fontFamily: 'Regular'),
                              textAlign: TextAlign.right,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.yellow[600], 
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Text(
                              'I am good!',
                              style: TextStyle(fontSize: 13, color: Colors.black,fontFamily: 'Regular'),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 8),
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/images/Groupp 28.png'), 
                        onBackgroundImageError: (_, __) => const Icon(Icons.error),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CustomInput(
  width: 370,
  height: 48,
  hintText: 'write a message',
  type: InputType.text,
  hintFontFamily: 'Regular',
  hintFontSize: 13,
  keyboardType: TextInputType.text,
  borderRadius: 20,
  validator: (value) => null,
  enableEmoji: true,
  controller: messageController,
  sendIcon: const Icon(Icons.send, color: Colors.black), 
  sendIconWidth: 24, 
  sendIconHeight: 24,
  onSendPressed: () {
                if (messageController.text.isNotEmpty) {
                  print('Sending message: ${messageController.text}');
                  messageController.clear();
                }
              },
),


              SizedBox(height: 50),
          ],
        
        ),
      ),
    );
  }
}