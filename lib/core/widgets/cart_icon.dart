import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trust_flutter_task/core/network/app_router.dart';

class CartIcon extends StatelessWidget {
  final int cartCount;
  final bool hasBackground;

  const CartIcon({
    super.key,
    required this.cartCount,
    this.hasBackground = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.push(AppRouter.kProductDetailsView);
      },
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            padding: hasBackground ? const EdgeInsets.all(12) : EdgeInsets.zero,
            decoration: hasBackground
                ? const BoxDecoration(
                    color: Color(0XFF411E0F),
                    shape: BoxShape.circle,
                  )
                : null,
            child: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: 32,
            ),
          ),

          if (cartCount > 0)
            Positioned(
              top: -2,
              right: -2,
              child: Container(
                width: 18,
                height: 18,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  cartCount.toString(),
                  style: const TextStyle(
                    color: Color(0XFF411E0F),
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
