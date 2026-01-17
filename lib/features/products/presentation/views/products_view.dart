import 'package:flutter/material.dart';
import 'package:trust_flutter_task/features/product_details/presentation/views/widgets/product_details_view_body.dart';
import 'package:trust_flutter_task/features/products/presentation/views/widgets/custom_bottom_nav_bar.dart';
import 'package:trust_flutter_task/features/products/presentation/views/widgets/product_view_body.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({super.key});

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
    int selectedIndex = 0;

    final List<Widget> pages = const [
    Center(child: Text("الرئيسية")),  
    ProductViewBody(),      
    ProductDetailsViewBody(),
    Center(child: Text("العروض")),
    Center(child: Text("الحساب")),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: pages,
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: selectedIndex,
        onItemTapped: onItemTapped,
      ),
    );
  }
}