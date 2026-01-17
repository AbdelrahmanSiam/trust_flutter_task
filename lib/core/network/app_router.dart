import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trust_flutter_task/features/card/presentation/cart_view.dart';
import 'package:trust_flutter_task/features/product_details/presentation/views/product_details_view.dart';
import 'package:trust_flutter_task/features/products/presentation/views/products_view.dart';
import 'package:trust_flutter_task/features/products/presentation/views/widgets/product_view_body.dart';
class AppRouter {
  static const String kProductsView = '/';
  static const String kProductDetailsView = '/productDetails';
  static const String kCartView = '/cart';

  static final GoRouter router = GoRouter(
    routes: [

      /// 🧭 ShellRoute = Screens فيها BottomNavBar
      ShellRoute(
        builder: (context, state, child) {
          return ProductsView(child: child);
        },
        routes: [
          GoRoute(
            path: kProductsView,
            builder: (context, state) =>
                const Center(child: Text("الرئيسية")),
          ),
          GoRoute(
            path: '/menu',
            builder: (context, state) => const ProductViewBody(),
          ),
          GoRoute(
            path: '/offers',
            builder: (context, state) =>
                const Center(child: Text("العروض")),
          ),
          GoRoute(
            path: '/profile',
            builder: (context, state) =>
                const Center(child: Text("الحساب")),
          ),
        ],
      ),

      GoRoute(
        path: kProductDetailsView,
        builder: (context, state) => const ProductDetailsView(),
      ),
      GoRoute(
        path: kCartView,
        builder: (context, state) => const CartView(),
      ),
    ],
  );
}
