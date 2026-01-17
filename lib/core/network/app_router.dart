import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trust_flutter_task/features/card/presentation/cart_view.dart';
import 'package:trust_flutter_task/features/products/presentation/views/products_view.dart';
class AppRouter {
static const String kProductView= "/";
static const String kCartView= "/cartView";
 static final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: kProductView,
      builder: (BuildContext context, GoRouterState state) {
        return const ProductsView();
      },
      routes: <RouteBase>[
        GoRoute(
          path: kCartView,
          builder: (BuildContext context, GoRouterState state) {
            return const CartView();
          },
        ),
      ],
    ),
  ],
);
}