import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trust_flutter_task/core/network/app_router.dart';
import 'package:trust_flutter_task/features/product_details/presentation/views/product_details_view.dart';
import 'package:trust_flutter_task/features/products/presentation/views/widgets/custom_bottom_nav_bar.dart';
import 'package:trust_flutter_task/features/products/presentation/views/widgets/product_view_body.dart';

class ProductsView extends StatefulWidget {
  final Widget child;

  const ProductsView({super.key, required this.child});

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  int selectedIndex = 0;
  int cartCount = 1;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });

    switch (index) {
      case 0:
        context.go(AppRouter.kProductsView);
        break;
      case 1:
        context.go('/menu');
        break;
      case 3:
        context.go('/offers');
        break;
      case 4:
        context.go('/profile');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: selectedIndex,
        onItemTapped: onItemTapped,
        cartCount: cartCount,
      ),
    );
  }
}
