
import 'package:flutter/material.dart';
import 'package:trust_flutter_task/core/utils/app_styles.dart';
import 'package:trust_flutter_task/core/utils/assets_data.dart';

class HorizontalListViewItem extends StatelessWidget {
  const HorizontalListViewItem({
    super.key, required this.title, required this.image,
  });
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        height: 50,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            Text(title, style: AppStyles.textStyles16.copyWith(color: Colors.white),),
            SizedBox(width: 5,),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(image,height: 24,width: 24,fit: BoxFit.cover,)),
          ],
        ),
      ),
    );
  }
}