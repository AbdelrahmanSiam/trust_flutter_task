import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trust_flutter_task/core/network/app_router.dart';
import 'package:trust_flutter_task/core/utils/app_styles.dart';
import 'package:trust_flutter_task/core/widgets/cart_icon.dart';
import 'package:trust_flutter_task/core/widgets/custom_back_button.dart';

class CustomCardAppBar extends StatelessWidget {
  const CustomCardAppBar({super.key});
  final int cartCount = 1;
  @override 
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      children: [
        CustomBackButton(
          onTap: (){(context).push(AppRouter.kProductsView);},
        ),
        Spacer(),
        Text("تفاصيل المنتج", style: AppStyles.textStyles22),
        Spacer(),
        CartIcon(cartCount: cartCount,hasBackground: false,),
      ],
    );
  }
}
