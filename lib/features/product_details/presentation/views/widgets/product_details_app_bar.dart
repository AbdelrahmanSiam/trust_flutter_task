import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trust_flutter_task/core/network/app_router.dart';
import 'package:trust_flutter_task/core/utils/app_styles.dart';
import 'package:trust_flutter_task/core/widgets/custom_back_button.dart';

class CustomProductDetailsAppBar extends StatelessWidget {
  const CustomProductDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      children: [
        CustomBackButton(
          onTap: (){
            context.pop();
          },
        ),
        SizedBox(width: 50,),
        Text("عربه التسوق", 
        style: AppStyles.textStyles22,
        textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
