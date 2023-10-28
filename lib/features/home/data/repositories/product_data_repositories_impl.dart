import 'package:api_with_cubit/features/home/domain/entities/app_errors.dart';
import 'package:api_with_cubit/features/home/domain/entities/params/no_params_file.dart';
import 'package:api_with_cubit/features/home/domain/entities/product_data_entity.dart';
import 'package:api_with_cubit/features/home/domain/repositories/product_remote_repositories.dart';
import 'package:dartz/dartz.dart';

class ProductDataRepositoriesImpl extends ProductRemoteRepositories {
  final ProductRemoteRepositories userRemoteRepositories;
  ProductDataRepositoriesImpl({required this.userRemoteRepositories});

  @override
  Future<Either<AppError, List<ProductDataEntity>>> getProductData({required NoParams noParams}) async {
    try {
      final result = await userRemoteRepositories.getProductData(noParams: noParams);
      return result;
    } on Exception {
      throw Exception('Something goes wrong.');
    }
  }
}
