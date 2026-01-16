import 'package:flutter/material.dart';
import 'package:trust_flutter_task/features/products/presentation/views/widgets/product_view_body.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductViewBody(),
    );
  }
}