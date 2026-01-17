
import 'package:flutter/material.dart';
import 'package:trust_flutter_task/features/product_details/presentation/views/widgets/product_details_card.dart';

class ViewFirstScection extends StatelessWidget {
  const ViewFirstScection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      children:  [
        ProductDetailsCard(),
        Spacer(),
        Text("data"),
      ],
    );
  }
}
