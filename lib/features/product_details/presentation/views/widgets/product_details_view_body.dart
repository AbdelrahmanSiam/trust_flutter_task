import 'package:flutter/material.dart';
import 'package:trust_flutter_task/core/utils/app_styles.dart';
import 'package:trust_flutter_task/core/widgets/custom_button.dart';
import 'package:trust_flutter_task/core/widgets/custom_divider.dart';
import 'package:trust_flutter_task/features/product_details/presentation/views/widgets/add_button.dart';
import 'package:trust_flutter_task/features/product_details/presentation/views/widgets/cobon_section.dart';
import 'package:trust_flutter_task/features/product_details/presentation/views/widgets/custom_text_field.dart';
import 'package:trust_flutter_task/features/product_details/presentation/views/widgets/product_details_app_bar.dart';
import 'package:trust_flutter_task/features/product_details/presentation/views/widgets/product_details_card.dart';
import 'package:trust_flutter_task/features/product_details/presentation/views/widgets/view_first_section.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 38),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const CustomProductDetailsAppBar(),
          const SizedBox(height: 30),
          ViewFirstScection(),
          SizedBox(height: 5,),
          CustomDivider(),
          SizedBox(height: 25,),
          CobonSection(),
          SizedBox(height: 25,),
          CustomDivider(),
          SizedBox(height: 25,),
        ],
      ),
    );
  }
}
