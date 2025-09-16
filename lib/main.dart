import 'package:ecomm_395/data/remote/helper/api_helper.dart';
import 'package:ecomm_395/data/remote/repository/cart_repo.dart';
import 'package:ecomm_395/data/remote/repository/product_repo.dart';
import 'package:ecomm_395/data/remote/repository/user_repo.dart';
import 'package:ecomm_395/domain/constants/app_routes.dart';
import 'package:ecomm_395/ui/bloc/cart/cart_bloc.dart';
import 'package:ecomm_395/ui/bloc/product/product_bloc.dart';
import 'package:ecomm_395/ui/bloc/user/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              UserBloc(userRepository: UserRepository(apiHelper: ApiHelper())),
        ),
        BlocProvider(
          create: (context) =>
              ProductBloc(productRepo: ProductRepo(apiHelper: ApiHelper())),
        ),
        BlocProvider(
          create: (context) =>
              CartBloc(cartRepository: CartRepository(apiHelper: ApiHelper())),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: AppRoutes.splash_page,
      routes: AppRoutes.mRoutes,
    );
  }
}
