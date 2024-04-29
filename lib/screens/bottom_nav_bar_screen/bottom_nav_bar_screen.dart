import 'package:e_commerce/cubit/home_cubit/home_cubit.dart';
import 'package:e_commerce/widgets/custom_app_bar.dart';
import 'package:e_commerce/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBarScreen extends StatelessWidget {
  const BottomNavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          appBar: const CustomAppBar(title: 'Zero to unicorn'),
          body: HomeCubit.get(context)
              .screens[HomeCubit.get(context).currentIndex],
          bottomNavigationBar: const CustomNavBar(),
        );
      },
    );
  }
}
