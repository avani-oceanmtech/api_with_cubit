import 'package:api_with_cubit/di/get_it.dart';
import 'package:api_with_cubit/features/home/presentation/cubit/home_cubit.dart';
import 'package:api_with_cubit/features/home/presentation/view/home_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends HomeWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<HomeCubit, HomeState>(
        bloc: homeCubit,
        builder: (context, state) {
          if (state is HomeLoadedState) {
            return ListView.builder(
              itemCount: state.productDataEntity.length,
              primary: false,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return commonTile(index: index, state: state);
              },
            );
          } else if (state is HomeLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
