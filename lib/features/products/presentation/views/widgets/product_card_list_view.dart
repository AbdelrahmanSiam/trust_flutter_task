
import 'package:flutter/material.dart';
import 'package:trust_flutter_task/core/utils/assets_data.dart';
import 'package:trust_flutter_task/features/products/presentation/views/widgets/product_card.dart';

class ProductCardListView extends StatelessWidget {
  const ProductCardListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context , index){
      return ProductCard(
      title: "بيج بايت بوكس",
      subTitle: "ج.م 249",
      image: AssetsData.burgur,
    );
    },);
  }
}
