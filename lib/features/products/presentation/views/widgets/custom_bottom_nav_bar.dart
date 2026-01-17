import 'package:flutter/material.dart';
import 'package:trust_flutter_task/core/widgets/cart_icon.dart';
import 'package:trust_flutter_task/features/products/presentation/views/widgets/nav_bar_item.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped, required this.cartCount, required this.onCartTap,
  });

  final int selectedIndex;
  final Function(int) onItemTapped;
  final int cartCount;
  final VoidCallback onCartTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: const Color(0XFFFAF0E6),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavBarItem(
            icon: Icons.house_outlined,
            label: "الرئيسية",
            isSelected: selectedIndex == 0,
            onTap: () => onItemTapped(0),
          ),
          NavBarItem(
            icon: Icons.list_alt_outlined,
            label: "القائمة",
            isSelected: selectedIndex == 1,
            onTap: () => onItemTapped(1),
          ),
          CartIcon(cartCount: cartCount, onTap: onCartTap),
          NavBarItem(
            icon: Icons.local_offer,
            label: "العروض",
            isSelected: selectedIndex == 3,
            onTap: () => onItemTapped(3),
          ),
          NavBarItem(
            icon: Icons.account_circle,
            label: "الحساب",
            isSelected: selectedIndex == 4,
            onTap: () => onItemTapped(4),
          ),
        ],
      ),
    );
  }
}
