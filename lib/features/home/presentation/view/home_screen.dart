import 'package:api_with_cubit/di/get_it.dart';
import 'package:api_with_cubit/features/home/presentation/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    homeCubit.loadInitialData();
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
            var productDetails = state.productDataEntity;
            return ListView.builder(
              itemCount: state.productDataEntity.length,
              primary: false,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    
                  },
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(productDetails[index].images[0]),
                  ),
                  title: Text(productDetails[index].categoryName),
                  subtitle: Text(
                    productDetails[index].subCategoryName,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Text('${productDetails[index].minPrice} ${productDetails[index].currency}'),
                );
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
