import 'package:flutter/material.dart';
import 'package:trust_flutter_task/core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.isSelected = false});
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: const Color(0XFFFAF0E6),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top:10.0,right: 10,left: 10),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(16),
              backgroundColor: isSelected? Colors.red :Colors.red.shade200,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: (){},
             child: Text("أضف إلى السلة",style: AppStyles.textStyles22,),),
        ),
      ),
    );
  }
}