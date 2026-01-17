import 'package:flutter/material.dart';
import 'package:trust_flutter_task/core/utils/app_styles.dart';
import 'package:trust_flutter_task/core/utils/assets_data.dart';
import 'package:trust_flutter_task/features/cart/presentation/views/widgets/custom_card_app_bar.dart';
import 'package:trust_flutter_task/features/cart/presentation/views/widgets/custom_divider.dart';
import 'package:trust_flutter_task/features/cart/presentation/views/widgets/custom_quantity_button.dart';
import 'package:trust_flutter_task/features/cart/presentation/views/widgets/custom_sandwich_list.dart';
import 'package:trust_flutter_task/features/cart/presentation/views/widgets/large_text.dart';

class CartViewBody extends StatefulWidget {
  const CartViewBody({super.key});

  @override
  State<CartViewBody> createState() => _CartViewBodyState();
}

class _CartViewBodyState extends State<CartViewBody> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomCardAppBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      AssetsData.burgur,
                      height: 320,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "بيج بايت بوكس",
                    style: AppStyles.textStyles18,
                  ),
                  SizedBox(height: 20),
                  Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Text("ج.م 249", style: AppStyles.textStyles16),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Row(
                          children: [
                            CustomQuantityButton(
                              backgroundColor: Colors.red,
                              icon: Icons.add,
                              onPressed: () {
                                setState(
                                  () {
                                    quantity++;
                                  },
                                );
                              },
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                quantity.toString(),
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            CustomQuantityButton(
                              backgroundColor: Colors.grey.shade400,
                              icon: Icons.remove,
                              onPressed: () {
                                if (quantity > 1) {
                                  setState(() {
                                    quantity--;
                                  });
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  CustomDivider(color: Colors.grey.shade400,thickness: 5,),
                  SizedBox(height: 15,),
                  LargeText(text: "3 ساندوتشات سلايدر من اختيارك (ترافيل - أوجي - سبايس - رانشي - بيكون)"),
                  SizedBox(height: 15,),
                  CustomDivider(color: Colors.grey.shade400,thickness: 5,),
                  SizedBox(height: 15,),
                  CustomSandwichList(title: "السندوتش الاول"),
                  SizedBox(height: 15,),
                  CustomDivider(color: Colors.grey.shade400,thickness: 5,),
                  SizedBox(height: 15,),
                  CustomSandwichList(title: "السندوتش الثانى"),
                  SizedBox(height: 15,),
                  CustomDivider(color: Colors.grey.shade400,thickness: 5,),
                  SizedBox(height: 15,),
                  CustomSandwichList(title: "السندوتش الثالث"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
