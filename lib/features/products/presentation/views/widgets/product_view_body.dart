import 'package:flutter/material.dart';
import 'package:trust_flutter_task/core/utils/app_styles.dart';
import 'package:trust_flutter_task/core/utils/assets_data.dart';
import 'package:trust_flutter_task/features/products/presentation/views/widgets/horizontal_list_view_item.dart';
import 'package:trust_flutter_task/features/products/presentation/views/widgets/product_card.dart';

class ProductViewBody extends StatelessWidget {
  const ProductViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 28.0,horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context , index){
              return HorizontalListViewItem(title: "عروض دوشكا برجر",image: AssetsData.burgur,);
            },),
          ),
          SizedBox(height: 20,),
          Text("عروض دوشكا برجر" , style: AppStyles.textStyles22,),
          ProductCard(
            title: "بيج بايت بوكس",
            subTitle: "249 ج.م",
            image: AssetsData.burgur,
          ),
        ],
      ),
    );
  }
}
