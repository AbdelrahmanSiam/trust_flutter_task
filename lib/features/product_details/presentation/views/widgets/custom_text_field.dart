
import 'package:flutter/material.dart';
import 'package:trust_flutter_task/core/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, required this.hintText,this.isPressed= false
  });
final String hintText;
final bool isPressed;
  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.right,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.delete_outline_outlined,color:isPressed? Colors.red : Colors.red.shade200,size: 30,),
        hintStyle: AppStyles.textStyles16,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(width: 5),
        ),
      ),
    );
  }
}
