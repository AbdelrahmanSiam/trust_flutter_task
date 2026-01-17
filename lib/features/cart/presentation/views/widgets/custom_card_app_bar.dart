import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trust_flutter_task/core/utils/app_styles.dart';
import 'package:trust_flutter_task/features/cart/presentation/views/widgets/custom_back_button.dart';
import 'package:trust_flutter_task/features/products/presentation/views/widgets/nav_bar_item.dart';

class CustomCardAppBar extends StatelessWidget {
  const CustomCardAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      children: [
        CustomBackButton(),
        Spacer(),
        Text("تفاصيل المنتج", style: AppStyles.textStyles22),
        Spacer(),
        IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart , color: Colors.red,size: 34,)),
      ],
    );
  }
}
