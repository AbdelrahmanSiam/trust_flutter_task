
import 'package:flutter/material.dart';
import 'package:trust_flutter_task/core/utils/app_styles.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,required this.onTap,
  });
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: Colors.black, 
              width: 0.7,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: Row(
              children: [
                Text(
                  "رجوع",
                  style: AppStyles.textStyles18,
                ),
                const SizedBox(width: 4),
                Icon(
                  Icons.arrow_forward,
                  size: 26,
                  color: Colors.black
                ),
              ],
            ),
          ),
        ),
    );
  }
}
