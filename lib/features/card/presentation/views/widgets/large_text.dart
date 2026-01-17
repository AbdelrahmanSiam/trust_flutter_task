import 'package:flutter/material.dart';
import 'package:trust_flutter_task/core/utils/app_styles.dart';

class LargeText extends StatelessWidget {
  const LargeText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
  text,
  style: AppStyles.textStyles18,
  textDirection: TextDirection.rtl,
  textAlign: TextAlign.right,
  maxLines: 2,
  overflow: TextOverflow.ellipsis,
);
  }
}