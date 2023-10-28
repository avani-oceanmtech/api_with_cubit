import 'package:api_with_cubit/features/home/domain/usecases/get_product_data.dart';
import 'package:get_it/get_it.dart';

final getItInstance = GetIt.I;

Future init() async {
  getItInstance.registerLazySingleton<GetProductData>(() => GetProductData(userRemoteRepositories: getItInstance()));
}
