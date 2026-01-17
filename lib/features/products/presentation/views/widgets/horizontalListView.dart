
import 'package:flutter/material.dart';
import 'package:trust_flutter_task/core/utils/assets_data.dart';
import 'package:trust_flutter_task/features/products/presentation/views/widgets/horizontal_list_view_item.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (context , index){
      return HorizontalListViewItem(title: "عروض دوشكا برجر",image: AssetsData.burgur,);
    },);
  }
}
