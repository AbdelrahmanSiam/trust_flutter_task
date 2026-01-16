import 'package:flutter/material.dart';
import 'package:trust_flutter_task/core/utils/app_styles.dart';
class HorizontalListViewItem extends StatefulWidget {
  const HorizontalListViewItem({
    super.key, required this.title, required this.image,
  });
  final String title;
  final String image;

  @override
  State<HorizontalListViewItem> createState() => _HorizontalListViewItemState();
}

class _HorizontalListViewItemState extends State<HorizontalListViewItem> {
  bool isPressed = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isPressed = !isPressed; 
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          height: 50,
          decoration: BoxDecoration(
            color: isPressed ? Colors.red : const Color(0xFFF5E1DC),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Text(
                widget.title,
                style: AppStyles.textStyles16.copyWith(
                  color: isPressed ? Colors.white : Colors.red,
                ),
              ),
              const SizedBox(width: 5),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  widget.image,
                  height: 24,
                  width: 24,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
