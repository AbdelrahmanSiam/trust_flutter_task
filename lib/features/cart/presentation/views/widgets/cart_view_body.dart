import 'package:flutter/material.dart';
import 'package:trust_flutter_task/core/utils/assets_data.dart';
import 'package:trust_flutter_task/features/cart/presentation/views/widgets/custom_card_app_bar.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0 , vertical: 38),
      child: Column(
        children: [
          CustomCardAppBar(),
          SizedBox(height: 10,),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(AssetsData.burgur,height: 320,width: double.infinity,fit: BoxFit.cover,),
          ),
        ],
      ),
    );
  }
}