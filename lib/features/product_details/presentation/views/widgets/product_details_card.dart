import 'package:flutter/material.dart';
import 'package:trust_flutter_task/core/utils/app_styles.dart';
import 'package:trust_flutter_task/core/utils/assets_data.dart';
class ProductDetailsCard extends StatelessWidget {
  const ProductDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            AssetsData.burgur,
            fit: BoxFit.cover,
                cacheWidth: 80,
                cacheHeight: 80,
          ),
        ),

        const SizedBox(width: 16),

        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("بيج بايت بوكس", style: AppStyles.textStyles18),
            const SizedBox(height: 8),
            Text("ج.م 249", style: AppStyles.textStyles16.copyWith(color: Color(0XFFA12B3B),),),
              SizedBox(height: 15,),
            Text("الاضافات",style: AppStyles.textStyles18),
              Text("Truffle | Spicy | Ranchy",style: AppStyles.textStyles16,),
          ],
        ),
      ],
    );
  }
}
