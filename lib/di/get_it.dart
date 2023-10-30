import 'package:api_with_cubit/features/home/data/datasources/product_data_source.dart';
import 'package:api_with_cubit/features/home/data/repositories/product_data_repositories_impl.dart';
import 'package:api_with_cubit/features/home/domain/repositories/product_remote_repositories.dart';
import 'package:api_with_cubit/features/home/domain/usecases/get_product_data.dart';
import 'package:api_with_cubit/features/home/presentation/cubit/home_cubit.dart';
import 'package:get_it/get_it.dart';

final getItInstance = GetIt.I;

Future init() async {
  getItInstance.registerLazySingleton<GetProductData>(() => GetProductData(userRemoteRepositories: getItInstance()));
  getItInstance.registerLazySingleton<ProductDataSource>(() => ProductDataSourceImpl(client: getItInstance()));
  // getItInstance.registerLazySingleton<UseCase>(() => );
  getItInstance.registerLazySingleton<ProductRemoteRepositories>(
      () => ProductDataRepositoriesImpl(userRemoteRepositories: getItInstance()));
  getItInstance.registerFactory<HomeCubit>(() => HomeCubit(getProductData: getItInstance()));
}
