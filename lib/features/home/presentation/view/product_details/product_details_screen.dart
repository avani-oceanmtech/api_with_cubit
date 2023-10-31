import 'package:api_with_cubit/di/get_it.dart';
import 'package:api_with_cubit/features/home/presentation/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key, required this.index});
  final int index;
  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
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
      body: BlocBuilder<HomeCubit, HomeState>(
        bloc: homeCubit,
        builder: (context, state) {
          if (state is HomeLoadedState) {
            var productDetail = state.productDataEntity[widget.index];
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: productDetail.images.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(productDetail.images[index]),
                    )
                  ],
                );
              },
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
