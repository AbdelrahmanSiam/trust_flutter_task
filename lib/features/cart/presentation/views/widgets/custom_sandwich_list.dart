import 'package:flutter/material.dart';
import 'package:trust_flutter_task/core/utils/app_styles.dart';

class CustomSandwichList extends StatefulWidget {
  final String title;

  const CustomSandwichList({
    super.key,
    required this.title,
  });

  @override
  State<CustomSandwichList> createState() => _CustomSandwichListState();
}

class _CustomSandwichListState extends State<CustomSandwichList> {
  int? selectedIndex;

  final List<String> options = [
    'ترافيل',
    'أوجي',
    'سبايس',
    'رانشي',
    'بيكون',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      textDirection: TextDirection.rtl,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          textDirection: TextDirection.rtl,
          children: [
            Text(
              widget.title,
              style: AppStyles.textStyles18,
            ),
            SizedBox(width: 5,),
            Text("*" , style: TextStyle(color: Colors.red , fontSize: 20),)
          ],
        ),

        const SizedBox(height: 16),

        ...List.generate(options.length, (index) {
          final isSelected = selectedIndex == index;

          return GestureDetector(
            onTap: () {
              setState(() {
                if (selectedIndex == index) {
                  selectedIndex = null;
                } else {
                  selectedIndex = index;
                }
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      options[index],
                      textAlign: TextAlign.right,
                      style: AppStyles.textStyles16,
                    ),
                  ),

                  const SizedBox(width: 12),

                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 2, color: Colors.black),
                      color: isSelected ? Colors.red : Colors.transparent,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ],
    );
  }
}
