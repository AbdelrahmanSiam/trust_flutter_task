import 'package:flutter/material.dart';
import 'package:trust_flutter_task/features/product_details/presentation/views/widgets/add_button.dart';
import 'package:trust_flutter_task/features/product_details/presentation/views/widgets/custom_text_field.dart';

class CobonSection extends StatelessWidget {
  const CobonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      children: [
        Expanded(
          child: CustomTextField(
            hintText: "ادخل الكوبون هنا"),
        ),
        const SizedBox(width: 10),
        AddButton(
          buttonText: "تطبيق",
        ),
      ],
    );
  }
}
