import 'package:flutter/material.dart';

class PremiumCardWidget extends StatelessWidget {
  final String title;
  final String price;
  final String heartsPrefix;
  final String heartsNumber;
  final String heartsSuffix;
  final String feature;
  final String buttonText;
  final bool isYellowHalf; // Optional parameter to enable/disable yellow half

  const PremiumCardWidget({
    super.key,
    required this.title,
    required this.price,
    required this.heartsPrefix,
    required this.heartsNumber,
    required this.heartsSuffix,
    required this.feature,
    required this.buttonText,
    this.isYellowHalf = false, // Default is false, making it optional
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390, // Full width, adjust as needed
      height: 169, // Adjust height as per your design
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0), // Small curved border
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF4A4E2B), // Top color from your gradient
            Color(0xFF000000), // Bottom color from your gradient
          ],
        ),
      ),
      child: Stack(
        children: [
          // Yellow half at the bottom (optional)
          if (isYellowHalf)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 60, // Half of the container height
                decoration: const BoxDecoration(
                  color: Color(0xFFFFD700), // Yellow color
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(16.0),
                  ),
                ),
              ),
            ),
          // Text content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // First two texts as RichText
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '$title ',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: ' $price',
                        style: const TextStyle(
                          color: Color(0xFFFFD700), // Yellow color for price
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                // Hearts text as RichText with three parts
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: heartsPrefix,
                        style: const TextStyle(
                          color: Colors.white, // White for prefix
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: heartsNumber,
                        style: const TextStyle(
                          color: Color(0xFFFFD700), // Yellow for hearts number
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: heartsSuffix,
                        style: const TextStyle(
                          color: Colors.white, // White for suffix
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  feature,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const Spacer(), // Pushes the button to the bottom
                if (isYellowHalf)
                  Center(
                    child: Text(
                      buttonText,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Bold',
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}