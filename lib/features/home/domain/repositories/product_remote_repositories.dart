import 'package:api_with_cubit/features/home/domain/entities/app_errors.dart';
import 'package:api_with_cubit/features/home/domain/entities/params/get_product_params.dart';
import 'package:api_with_cubit/features/home/domain/entities/product_data_entity.dart';
import 'package:dartz/dartz.dart';

abstract class ProductRemoteRepositories {
  Future<Either<AppError, List<ProductDataEntity>>> getProductData({required GetProdcutParams getProductParams});
}
