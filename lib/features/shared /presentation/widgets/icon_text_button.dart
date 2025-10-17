import 'package:datting_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class IconTextButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const IconTextButton({
    super.key,
    required this.icon,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 149,
        height: 48,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary: Colors.transparent,
          borderRadius: BorderRadius.circular(20), // Consistent rounded corners
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.black, // Use AppColors.black if imported
            ),
            const SizedBox(width: 8), // Spacing between icon and text
            Text(
              text,
              style: const TextStyle(
                color: Colors.black, // Use AppColors.black if imported
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}