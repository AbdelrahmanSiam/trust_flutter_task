
import 'package:flutter/material.dart';
import 'package:trust_flutter_task/core/utils/app_styles.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    super.key, required this.buttonText, this.isSelected = false,
  });
  final String buttonText;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected?Colors.red :Colors.red.shade200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child:  Text(buttonText,style: AppStyles.textStyles22.copyWith(color: Colors.white),),
      ),
    );
  }
}
