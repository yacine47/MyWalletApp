import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.maxLines = 1,
    required this.hint,
    this.onSaved,
    this.controller,
    this.keyboardType = TextInputType.text,
  });
  final TextEditingController? controller;
  final int maxLines;
  final String hint;
  final void Function(String?)? onSaved;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        }
        return null;
      },
      maxLines: maxLines,
      keyboardType: keyboardType,
      cursorColor: kThemeColor,
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.only(bottom: 20, top: 20, left: 18, right: 18),
          hintText: hint,
          label: Text(
            hint,
            style: const TextStyle(
              color: kThemeColor,
            ),
          ),
          hintStyle: const TextStyle(color: kThemeColor),
          border: buildBorder(),
          enabledBorder: buildBorder(color: kThemeColor.withOpacity(0.45)),
          focusedBorder: buildBorder(color: kThemeColor)),
    );
  }

  OutlineInputBorder buildBorder({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
