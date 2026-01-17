import 'package:flutter/material.dart';
import 'package:trust_flutter_task/core/utils/app_styles.dart';
import 'package:trust_flutter_task/features/product_details/presentation/views/widgets/dash_divider.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      textDirection: TextDirection.rtl,
      children: [
        const Text("تفاصيل الدفع" , style: AppStyles.textStyles22,),
          const SizedBox(height: 20,),
          const DashedDivider(),
          const SizedBox(height: 20,),
          Column(
            textDirection: TextDirection.rtl,
            children: [
              TextWithSalaryRow(text: "المجموع الفرعي",salary: "218.42 ج.م ",style: AppStyles.textStyles16,),
              SizedBox(height: 10,),
              TextWithSalaryRow(text: "الضريبة",salary: "30.58 ج.م ",style: AppStyles.textStyles16,),
            ],
          ),
          const SizedBox(height: 5,),
          DashedDivider(),
          const SizedBox(height: 15,),
          TextWithSalaryRow(text: "المبلغ الإجمالي",salary: "249.00 ج.م ",style: AppStyles.textStyles18,),
      ],
    );
  }
}

class TextWithSalaryRow extends StatelessWidget {
  const TextWithSalaryRow({
    super.key, required this.text, required this.salary,this.style
  });
  final String text,salary;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      children: [
        Text(text,style: style,),
        Spacer(),
        Text(salary,style: style,),
      ],
    );
  }
}