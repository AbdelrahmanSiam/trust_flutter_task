import 'package:flutter/material.dart';
import 'custom_quantity_button.dart';

class CustomQuantitySelector extends StatelessWidget {
  final int quantity;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const CustomQuantitySelector({
    super.key,
    required this.quantity,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            onPressed: onIncrement,
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
            onPressed: onDecrement,
          ),
        ],
      ),
    );
  }
}
