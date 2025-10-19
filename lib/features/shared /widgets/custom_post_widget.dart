import 'package:datting_app/shared/widgets/container/custom_positioned_circle.dart';
import 'package:flutter/material.dart';

class CustomPostWidget extends StatelessWidget {
  final ImageProvider? backgroundImage;
  final String? titleText;
  final String? timeText;
  final String? descriptionText;
  final Color? timeTextColor;
  final bool showPositionedCircle;
  final String? circleText;
  final Color? circleColor;
  final Color? circleTextColor;
  final double avatarRadius;
  final double spacing;
  final VoidCallback? onTap; // Callback for tap action

  const CustomPostWidget({
    Key? key,
    this.backgroundImage,
    this.titleText,
    this.timeText,
    this.descriptionText,
    this.timeTextColor,
    this.showPositionedCircle = false,
    this.circleText,
    this.circleColor,
    this.circleTextColor,
    this.avatarRadius = 30.0,
    this.spacing = 16.0,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // Use InkWell for tap feedback (ripple effect)
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // CircleAvatar with nullable background image
          CircleAvatar(
            radius: avatarRadius,
            backgroundImage: backgroundImage,
            backgroundColor: backgroundImage == null ? Colors.grey[300] : null,
          ),
          SizedBox(width: spacing),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Title text (only shown if not null)
                    if (titleText != null)
                      Text(
                        titleText!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      )
                    else
                      const SizedBox.shrink(),
                    // Time text (only shown if not null)
                    if (timeText != null)
                      Text(
                        timeText!,
                        style: TextStyle(
                          color: timeTextColor ?? const Color(0xff4285f4),
                          fontSize: 12,
                        ),
                      )
                    else
                      const SizedBox.shrink(),
                  ],
                ),
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Description text (only shown if not null)
                    if (descriptionText != null)
                      Expanded(
                        child: Text(
                          descriptionText!,
                          style: const TextStyle(
                            fontSize: 14,
                            fontFamily: 'Regular',
                          ),
                        ),
                      )
                    else
                      const SizedBox.shrink(),
                    // Custom positioned circle (only shown if enabled)
                    if (showPositionedCircle && circleText != null)
                      CustomPositionedCircle(
                        width: 28,
                        height: 28,
                        color: circleColor ?? Colors.blue,
                        text: circleText!,
                        textColor: circleTextColor ?? Colors.white,
                      )
                    else
                      const SizedBox.shrink(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}