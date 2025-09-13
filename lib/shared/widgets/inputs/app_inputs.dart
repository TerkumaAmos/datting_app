import 'package:flutter/material.dart';
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
  final String? prefixIconSvgPath1; // Second SVG icon path
  final String? suffixIconSvgPath;
  final double? prefixIconWidth;
  final double? prefixIconHeight;
  final double? suffixIconWidth;
  final double? suffixIconHeight;
  final double? borderRadius;
  final TextInputType? keyboardType;

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
    this.prefixIconSvgPath1, // Second SVG icon path
    this.suffixIconSvgPath,
    this.prefixIconWidth,
    this.prefixIconHeight,
    this.suffixIconWidth,
    this.suffixIconHeight,
    this.borderRadius,
    this.keyboardType,
  });

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final isPassword = widget.type == InputType.password;

    final inputField = TextFormField(
      controller: widget.controller,
      obscureText: isPassword ? _obscureText : false,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          fontFamily: widget.hintFontFamily?? 'Bold',
          fontSize: widget.hintFontSize,
          fontWeight: FontWeight.bold
        ),
        prefixIcon: (widget.prefixIconSvgPath != null || widget.prefixIconSvgPath1 != null)
            ? Row(
                mainAxisSize: MainAxisSize.min, // Keep Row as small as needed
                children: [
                  if (widget.prefixIconSvgPath != null)
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                      child: SvgPicture.asset(
                        widget.prefixIconSvgPath!,
                        width: widget.prefixIconWidth,
                        height: widget.prefixIconHeight,
                      ),
                    ),
                  if (widget.prefixIconSvgPath1 != null)
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: SvgPicture.asset(
                        widget.prefixIconSvgPath1!,
                        width: widget.prefixIconWidth,
                        height: widget.prefixIconHeight,
                      ),
                    ),
                ],
              )
            : null,
        suffixIcon: _getSuffixIcon(),
        filled: true,
        fillColor: Colors.transparent,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 4),
          borderSide: const BorderSide(color: Colors.black, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 4),
          borderSide: const BorderSide(color: Colors.black, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 4),
          borderSide: const BorderSide(color: Colors.black, width: 2),
        ),
      ),
      keyboardType: widget.keyboardType ?? _getKeyboardType(),
      textInputAction: widget.textInputAction ?? _getTextInputAction(),
      autofocus: widget.autofocus,
      readOnly: widget.readOnly,
      enabled: widget.enabled,
      maxLines: isPassword ? 1 : widget.maxLines,
      minLines: widget.minLines,
      autocorrect: !isPassword,
      enableSuggestions: !isPassword,
      autofillHints: widget.type == InputType.email ? null : null,
      validator: widget.validator ?? _getDefaultValidator(),
      onChanged: widget.onChanged,
    );

    return widget.topLabel != null
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
  }

  Widget? _getSuffixIcon() {
    if (widget.suffixIconSvgPath != null && widget.type != InputType.password) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SvgPicture.asset(
          widget.suffixIconSvgPath!,
          width: widget.suffixIconWidth,
          height: widget.suffixIconHeight,
        ),
      );
    }

    if (widget.type == InputType.password) {
      return IconButton(
        icon: SvgPicture.asset(
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