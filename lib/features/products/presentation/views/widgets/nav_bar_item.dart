import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({
    super.key,
    required this.icon,
    required this.isSelected,
    this.label,
    this.onTap,
    this.isMiddle = false,
  });

  final IconData icon;
  final bool isSelected;
  final bool isMiddle;
  final String? label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final Color iconColor =
        isMiddle ? Colors.white : (isSelected ? Colors.black : Colors.grey);

    final Color textColor =
        isSelected ? Colors.black : Colors.grey;

    final double iconSize =
        isMiddle ? 36 : (isSelected ? 30 : 24);

    Widget iconWidget = Icon(
      icon,
      color: iconColor,
      size: iconSize,
    );

    if (isMiddle) {
      iconWidget = Container(
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          color: Color(0XFF411E0F),
          shape: BoxShape.circle,
        ),
        child: iconWidget,
      );
    }

    Widget content = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        iconWidget,
        if (!isMiddle && label != null) ...[
          const SizedBox(height: 5),
          Text(
            label!,
            style: TextStyle(
              color: textColor,
              fontSize: 12,
              fontWeight:
                  isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ],
    );

    if (isMiddle) {
      content = Transform.translate(
        offset: const Offset(0, -20),
        child: content,
      );
    }

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: content,
    );
  }
}
