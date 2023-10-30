// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:api_with_cubit/features/home/data/models/product_model.dart';

// ignore: must_be_immutable
class ProductDataEntity extends Equatable {
  final String userName;
  final String userProfile;
  final String address;
  final String longitude;
  final String langitude;
  final String categoryName;
  final String subCategoryName;
  final String name;
  final String currency;
  final String minPrice;
  final String discountPrice;
  final String description;
  final String images;
  final SoldStatus soldStatus;
  final String averageRating;

  const ProductDataEntity({
    this.userName = '',
    this.userProfile = '',
    this.address = '',
    this.longitude = '',
    this.langitude = '',
    this.categoryName = '',
    this.subCategoryName = '',
    this.name = '',
    this.currency = '',
    this.minPrice = '',
    this.discountPrice = '',
    this.description = '',
    this.images = '',
    this.soldStatus = SoldStatus.UNSOLD,
    this.averageRating = '',
  });

  ProductDataEntity copyWith({
    String? userName,
    String? userProfile,
    String? address,
    String? longitude,
    String? langitude,
    String? categoryName,
    String? subCategoryName,
    String? name,
    String? currency,
    String? minPrice,
    String? discountPrice,
    String? description,
    String? images,
    SoldStatus? soldStatus,
    String? averageRating,
  }) {
    return ProductDataEntity(
      userName: userName ?? this.userName,
      userProfile: userProfile ?? this.userProfile,
      address: address ?? this.address,
      longitude: longitude ?? this.longitude,
      langitude: langitude ?? this.langitude,
      categoryName: categoryName ?? this.categoryName,
      subCategoryName: subCategoryName ?? this.subCategoryName,
      name: name ?? this.name,
      currency: currency ?? this.currency,
      minPrice: minPrice ?? this.minPrice,
      discountPrice: discountPrice ?? this.discountPrice,
      description: description ?? this.description,
      images: images ?? this.images,
      soldStatus: soldStatus ?? this.soldStatus,
      averageRating: averageRating ?? this.averageRating,
    );
  }

  @override
  List<Object> get props {
    return [
      userName,
      userProfile,
      address,
      longitude,
      langitude,
      categoryName,
      subCategoryName,
      name,
      currency,
      minPrice,
      discountPrice,
      description,
      images,
      soldStatus,
      averageRating,
    ];
  }
}
