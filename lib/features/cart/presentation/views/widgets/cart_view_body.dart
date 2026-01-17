import 'package:flutter/material.dart';
import 'package:trust_flutter_task/core/utils/app_styles.dart';
import 'package:trust_flutter_task/core/utils/assets_data.dart';
import 'package:trust_flutter_task/features/cart/presentation/views/widgets/custom_card_app_bar.dart';
import 'package:trust_flutter_task/features/cart/presentation/views/widgets/custom_divider.dart';
import 'package:trust_flutter_task/features/cart/presentation/views/widgets/custom_quantity_button.dart';
import 'package:trust_flutter_task/features/cart/presentation/views/widgets/custom_quantity_selector.dart';
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
      padding: const EdgeInsets.only(right: 16.0,left: 16.0, top: 38),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const CustomCardAppBar(),
          const SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      AssetsData.burgur,
                      height: 320,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "بيج بايت بوكس",
                    style: AppStyles.textStyles18,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Text("ج.م 249", style: AppStyles.textStyles16),
                      const Spacer(),
                      CustomQuantitySelector(
                        quantity: quantity,
                        onIncrement: () {
                          setState(() {
                            quantity++;
                          });
                        },
                        onDecrement: () {
                          if (quantity > 1) {
                            setState(() {
                              quantity--;
                            });
                          }
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  CustomDivider(
                    color: Colors.grey.shade400,
                    thickness: 5, 
                  ),
                  const SizedBox(height: 15),
                  LargeText(
                    text:
                        "3 ساندوتشات سلايدر من اختيارك (ترافيل - أوجي - سبايس - رانشي - بيكون)",
                  ),
                  const SizedBox(height: 15),
                  CustomDivider(
                    color: Colors.grey.shade400,
                    thickness: 5,
                  ),
                  const SizedBox(height: 15),
                  CustomSandwichList(title: "السندوتش الاول"),
                  const SizedBox(height: 15),
                  CustomDivider(
                    color: Colors.grey.shade400,
                    thickness: 5,
                  ),
                  const SizedBox(height: 15),
                  CustomSandwichList(title: "السندوتش الثانى"),
                  const SizedBox(height: 15),
                  CustomDivider(
                    color: Colors.grey.shade400,
                    thickness: 5,
                  ),
                  const SizedBox(height: 15),
                  CustomSandwichList(title: "السندوتش الثالث"),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}