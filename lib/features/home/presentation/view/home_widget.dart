import 'package:api_with_cubit/di/get_it.dart';
import 'package:api_with_cubit/features/home/presentation/cubit/home_cubit.dart';
import 'package:api_with_cubit/features/home/presentation/view/home_screen.dart';
import 'package:api_with_cubit/features/home/presentation/view/product_details/product_details_screen.dart';
import 'package:flutter/material.dart';

abstract class HomeWidget extends State<HomeScreen> {
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

  Widget commonTile({required HomeLoadedState state, required int index}) {
    var productDetails = state.productDataEntity;
    return ListTile(
      onTap: () {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) => ProductDetailsScreen(index: index),
        //     ));
      },
      leading: CircleAvatar(
        backgroundImage: NetworkImage(productDetails[index].userProfile),
      ),
      title: Text(productDetails[index].categoryName),
      subtitle: Text(
        productDetails[index].subCategoryName,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text('${productDetails[index].minPrice} ${productDetails[index].currency}'),
    );
  }
}
