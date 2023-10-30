import 'package:api_with_cubit/di/get_it.dart';
import 'package:api_with_cubit/features/home/presentation/cubit/home_cubit.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeCubit homeCubit;
  @override
  void initState() {
    homeCubit = getItInstance<HomeCubit>();
    super.initState();
  }

  @override
  void dispose() {
    homeCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text("hjsgdfjgfhy"),
      ),
      //  BlocBuilder<HomeCubit, HomeState>(
      //   bloc: homeCubit,
      //   builder: (context, state) {
      //     if (state is HomeLoadedState) {
      //       return Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Text(state.productDataEntity.first.address),
      //           Text(state.productDataEntity.first.categoryName),
      //         ],
      //       );
      //     } else {
      //       return const SizedBox.shrink();
      //     }
      //   },
      // ),
    );
  }
}
