import 'package:api_with_cubit/features/home/data/datasources/product_data_source.dart';
import 'package:api_with_cubit/features/home/domain/entities/app_errors.dart';
import 'package:api_with_cubit/features/home/domain/entities/params/no_params_file.dart';
import 'package:api_with_cubit/features/home/domain/entities/product_data_entity.dart';
import 'package:api_with_cubit/features/home/domain/repositories/product_remote_repositories.dart';
import 'package:dartz/dartz.dart';

class ProductDataRepositoriesImpl extends ProductRemoteRepositories {
  final ProductDataSource productDataSources;
  ProductDataRepositoriesImpl({required this.productDataSources});

  @override
  Future<Either<AppError, List<ProductDataEntity>>> getProductData({required NoParams noParams}) async {
    try {
      final result = await productDataSources.getProductData(noParams: noParams);
      return result;
    } on Exception {
      throw Exception('Something goes wrong.');
    }
  }
}
