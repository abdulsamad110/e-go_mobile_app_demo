import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../helper_functions/colors.dart';

class CustomTextField extends StatelessWidget {
  String title;
  Color textFieldColor;
  //Function onSaved;
  FocusNode focusNode;
  FocusNode? nextFocusNode;
  bool isReadOnly;
  final bool isObscure;
  TextInputType keyboardType;
  // FormFieldValidator<String> validator;
  // Function(String newVal) onChange;
  TextEditingController controller;
  Widget suffixIcon;
  int? maxLines;

  CustomTextField({
    required this.title,
    required this.controller,
    required this.textFieldColor,
    required this.focusNode,
    required this.keyboardType,
    this.maxLines,
    this.isObscure = false,
    required this.isReadOnly,
    // required this.onChange,
    required this.nextFocusNode,
    //required this.onSaved,
    // required this.validator,
    required this.suffixIcon,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: textFieldColor,
      ),
      child: TextFormField(
        maxLines: maxLines ?? null,
        minLines: 1,
        controller: controller,
        focusNode: focusNode,
        keyboardType: keyboardType,
        cursorColor: Colors.black,
        obscureText: isObscure,
        readOnly: isReadOnly,
        decoration: InputDecoration(
            suffixIcon: suffixIcon,
            suffixIconConstraints: BoxConstraints(
              maxHeight: 15.h,
            ),
            focusColor: Colors.black,
            hintText: title,
            hintStyle: const TextStyle(color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 14),
            isDense: true,
            border: InputBorder.none,
          // floatingLabelBehavior: FloatingLabelBehavior.never,
          // alignLabelWithHint: true,
          //label: Text(title, style: TextStyle(color: Colors.black),),
        ),
      ),
    );
  }
}