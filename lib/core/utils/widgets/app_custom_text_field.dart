import 'package:flutter/material.dart';

class AppCustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool? obscureText; 
  final Widget? suffix;
  final String? label; // New optional label parameter

  const AppCustomTextField({
    super.key, 
    required this.hintText, 
    required this.controller, 
    this.validator, 
    this.obscureText = false, 
    this.suffix,
    this.label, // Initialize the label
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Align label to the start
      children: [
        if (label != null) // Display label if provided
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              label!,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
        Container(
          width: 500,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: TextFormField(
            validator: validator,
            obscureText: obscureText!,
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20),
              ),
              hintText: hintText,
              suffix: suffix,
              hintStyle: const TextStyle(color: Colors.grey),
              contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              alignLabelWithHint: true, // This helps with vertical alignment
            ),
          ),
        ),
      ],
    );
  }
}