import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum InputType { email, text, password }

class CustomInput extends StatefulWidget {
  final TextEditingController controller;
  final TextEditingController? confirmAgainst;
  final InputType type;
  final String? hintText;
  final String? topLabel;
  final String? hintFontFamily;
  final double? hintFontSize;
  final String? topLabelFontFamily;
  final double? topLabelFontSize;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final TextInputAction? textInputAction;
  final bool autofocus;
  final bool readOnly;
  final bool enabled;
  final int? maxLines;
  final int? minLines;
  final String? prefixIconSvgPath;
  final String? prefixIconSvgPath1;
  final Icon? prefixIcon;
  final String? suffixIconSvgPath;
  final Icon? suffixIcon;
  final String? sendIconSvgPath; // New property for send icon SVG
  final Icon? sendIcon; // New property for send icon
  final double? prefixIconWidth;
  final double? prefixIconHeight;
  final double? suffixIconWidth;
  final double? suffixIconHeight;
  final double? sendIconWidth; // New property for send icon width
  final double? sendIconHeight; // New property for send icon height
  final double? borderRadius;
  final TextInputType? keyboardType;
  final double? width;
  final double? height;
  final bool enableEmoji;
  final VoidCallback? onSendPressed; // New callback for send icon press

  const CustomInput({
    super.key,
    required this.controller,
    this.confirmAgainst,
    this.type = InputType.text,
    this.hintText,
    this.topLabel,
    this.hintFontFamily,
    this.hintFontSize,
    this.topLabelFontFamily,
    this.topLabelFontSize,
    this.validator,
    this.onChanged,
    this.textInputAction,
    this.autofocus = false,
    this.readOnly = false,
    this.enabled = true,
    this.maxLines,
    this.minLines,
    this.prefixIconSvgPath,
    this.prefixIconSvgPath1,
    this.prefixIcon,
    this.suffixIconSvgPath,
    this.suffixIcon,
    this.sendIconSvgPath, // Added
    this.sendIcon, // Added
    this.prefixIconWidth,
    this.prefixIconHeight,
    this.suffixIconWidth,
    this.suffixIconHeight,
    this.sendIconWidth, // Added
    this.sendIconHeight, // Added
    this.borderRadius,
    this.keyboardType,
    this.width,
    this.height,
    this.enableEmoji = true,
    this.onSendPressed, // Added
  });

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(() {
      print('Controller text: ${widget.controller.text}'); // Debug input
    });
  }

  @override
  Widget build(BuildContext context) {
    final isPassword = widget.type == InputType.password;

    final inputField = TextFormField(
      controller: widget.controller,
      obscureText: isPassword ? _obscureText : false,
      style: TextStyle(
        fontFamily: widget.hintFontFamily ?? 'Regular',
        fontSize: widget.hintFontSize ?? 13.0,
        color: Colors.black,
      ),
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          fontFamily: widget.hintFontFamily ?? 'Bold',
          fontSize: widget.hintFontSize,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
        prefixIcon: _getPrefixIcon(),
        suffixIcon: _getSuffixIcon(),
        filled: true,
        fillColor: Colors.transparent,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 4),
          borderSide: const BorderSide(color: Colors.black, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 4),
          borderSide: const BorderSide(color: Colors.black, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 4),
          borderSide: const BorderSide(color: Colors.black, width: 1),
        ),
      ),
      keyboardType: widget.keyboardType ?? _getKeyboardType(),
      textInputAction: widget.textInputAction ?? _getTextInputAction(),
      autofocus: widget.autofocus,
      readOnly: widget.readOnly,
      enabled: widget.enabled,
      maxLines: isPassword ? 1 : (widget.maxLines ?? 1),
      minLines: widget.minLines ?? 1,
      autocorrect: !isPassword,
      enableSuggestions: !isPassword,
      autofillHints: widget.type == InputType.email ? null : null,
      validator: widget.validator ?? _getDefaultValidator(),
      onChanged: widget.onChanged,
    );

    final inputWidget = widget.topLabel != null
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.topLabel!,
                style: TextStyle(
                  fontFamily: widget.topLabelFontFamily,
                  fontSize: widget.topLabelFontSize,
                ),
              ),
              const SizedBox(height: 8),
              inputField,
            ],
          )
        : inputField;

    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: inputWidget,
    );
  }

  Widget? _getPrefixIcon() {
    if (widget.prefixIcon != null) {
      return Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 4.0),
        child: widget.prefixIcon,
      );
    }

    if (widget.prefixIconSvgPath != null || widget.prefixIconSvgPath1 != null) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (widget.prefixIconSvgPath != null)
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 4.0),
              child: SvgPicture.asset(
                widget.prefixIconSvgPath!,
                width: widget.prefixIconWidth,
                height: widget.prefixIconHeight,
              ),
            ),
          if (widget.prefixIconSvgPath1 != null)
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: SvgPicture.asset(
                widget.prefixIconSvgPath1!,
                width: widget.prefixIconWidth,
                height: widget.prefixIconHeight,
              ),
            ),
        ],
      );
    }

    return null;
  }

  Widget? _getSuffixIcon() {
    if (widget.suffixIcon != null && widget.type != InputType.password && !widget.enableEmoji) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: widget.suffixIcon,
      );
    }

    if (widget.type == InputType.password) {
      return IconButton(
        icon: widget.suffixIcon != null
            ? widget.suffixIcon!
            : SvgPicture.asset(
                widget.suffixIconSvgPath ?? 'assets/icons/Group 9.svg',
                width: widget.suffixIconWidth,
                height: widget.suffixIconHeight,
              ),
        onPressed: () {
          setState(() {
            _obscureText = !_obscureText;
          });
        },
      );
    }

    if (widget.enableEmoji || widget.sendIcon != null || widget.sendIconSvgPath != null) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Emoji Icon
          if (widget.enableEmoji)
            IconButton(
              icon: const Icon(Icons.emoji_emotions_outlined),
              onPressed: () {
                FocusScope.of(context).requestFocus(FocusNode());
                SystemChannels.textInput.invokeMethod('TextInput.show').then((_) {
                  SystemChannels.textInput.invokeMethod('TextInput.setEditableSizeAndTransform');
                });
              },
            ),
          // Send Icon
          if (widget.sendIcon != null || widget.sendIconSvgPath != null)
            IconButton(
              icon: widget.sendIcon != null
                  ? widget.sendIcon!
                  : SvgPicture.asset(
                      widget.sendIconSvgPath!,
                      width: widget.sendIconWidth,
                      height: widget.sendIconHeight,
                    ),
              onPressed: widget.onSendPressed,
            ),
        ],
      );
    }

    if (widget.suffixIconSvgPath != null && !widget.enableEmoji) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SvgPicture.asset(
          widget.suffixIconSvgPath!,
          width: widget.suffixIconWidth,
          height: widget.suffixIconHeight,
        ),
      );
    }

    return null;
  }

  TextInputType _getKeyboardType() {
    return widget.keyboardType ??
        (widget.type == InputType.email
            ? TextInputType.emailAddress
            : TextInputType.text);
  }

  TextInputAction _getTextInputAction() {
    return widget.textInputAction ??
        (widget.type == InputType.password
            ? TextInputAction.done
            : TextInputAction.next);
  }

  String? Function(String?)? _getDefaultValidator() {
    if (widget.validator != null) return widget.validator;

    switch (widget.type) {
      case InputType.email:
        return (value) {
          if (value == null || value.isEmpty) {
            return 'Email is required';
          }
          if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
            return 'Enter a valid email';
          }
          return null;
        };
      case InputType.password:
        if (widget.confirmAgainst != null) {
          return (value) {
            if (value == null || value.isEmpty) {
              return 'Confirm password is required';
            }
            if (value != widget.confirmAgainst!.text) {
              return 'Passwords do not match';
            }
            return null;
          };
        }
        return (value) {
          if (value == null || value.isEmpty) {
            return 'Password is required';
          }
          if (value.length < 6) {
            return 'Password must be at least 6 characters';
          }
          return null;
        };
      default:
        return null;
    }
  }
}