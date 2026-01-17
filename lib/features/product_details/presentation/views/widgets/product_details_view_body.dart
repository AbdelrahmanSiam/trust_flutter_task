import 'package:flutter/material.dart';
import 'package:trust_flutter_task/features/product_details/presentation/views/widgets/product_details_app_bar.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0,left: 16.0, top: 38),
      child: Column(
        children: [
          CustomProductDetailsAppBar(),
          SizedBox(height: 30,),
          
        ],
      ),
    );
  }
}