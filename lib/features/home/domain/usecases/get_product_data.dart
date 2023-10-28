import 'package:api_with_cubit/features/home/domain/entities/app_errors.dart';
import 'package:api_with_cubit/features/home/domain/entities/params/no_params_file.dart';
import 'package:api_with_cubit/features/home/domain/entities/product_data_entity.dart';
import 'package:api_with_cubit/features/home/domain/repositories/product_remote_repositories.dart';
import 'package:api_with_cubit/features/home/domain/usecases/usecase.dart';
import 'package:dartz/dartz.dart';

class GetProductData extends UseCase<List<ProductDataEntity>, NoParams> {
  final ProductRemoteRepositories userRemoteRepositories;

  GetProductData({required this.userRemoteRepositories});

  @override
  Future<Either<AppError, List<ProductDataEntity>>> call(NoParams params) async {
    return await userRemoteRepositories.getProductData(noParams: params);
  }
}
