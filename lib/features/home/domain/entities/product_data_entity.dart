import 'package:api_with_cubit/features/home/data/models/product_model.dart';
import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class ProductDataEntity extends Equatable {
  final String id;
  final String userId;
  final String userName;
  final String userProfile;
  final String address;
  final String contactNo;
  final String websiteUrl;
  final String longitude;
  final String langitude;
  final String categoryName;
  final String subCategoryName;
  final String name;
  final String currency;
  final String minPrice;
  final String maxPrice;
  final String discountPrice;
  final String weight;
  final String deliveryCharge;
  final String description;
  final String condition;
  final String images;
  final String negotiation;
  final SoldStatus soldStatus;
  final String productType;
  final UserSince userSince;
  final String creatAt;
  final String productSave;
  final String productReport;
  final String averageRating;
  final String totalUser;

  const ProductDataEntity({
    this.id = '',
    this.userId = '',
    this.userName = '',
    this.userProfile = '',
    this.address = '',
    this.contactNo = '',
    this.websiteUrl = '',
    this.longitude = '',
    this.langitude = '',
    this.categoryName = '',
    this.subCategoryName = '',
    this.name = '',
    this.currency = '',
    this.minPrice = '',
    this.maxPrice = '',
    this.discountPrice = '',
    this.weight = '',
    this.deliveryCharge = '',
    this.description = '',
    this.condition = '',
    this.images = '',
    this.negotiation = '',
    this.soldStatus = SoldStatus.UNSOLD,
    this.productType = '',
    this.userSince = UserSince.AUGUST_2022,
    this.creatAt = '',
    this.productSave = '',
    this.productReport = '',
    this.averageRating = '',
    this.totalUser = '',
  });

  ProductDataEntity copyWith({
    String? id,
    String? userId,
    String? userName,
    String? userProfile,
    String? address,
    String? contactNo,
    String? websiteUrl,
    String? longitude,
    String? langitude,
    String? categoryName,
    String? subCategoryName,
    String? name,
    String? currency,
    String? minPrice,
    String? maxPrice,
    String? discountPrice,
    String? weight,
    String? deliveryCharge,
    String? description,
    String? condition,
    String? images,
    String? negotiation,
    SoldStatus? soldStatus,
    String? productType,
    UserSince? userSince,
    String? creatAt,
    String? productSave,
    String? productReport,
    String? averageRating,
    String? totalUser,
  }) {
    return ProductDataEntity(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      userName: userName ?? this.userName,
      userProfile: userProfile ?? this.userProfile,
      address: address ?? this.address,
      contactNo: contactNo ?? this.contactNo,
      websiteUrl: websiteUrl ?? this.websiteUrl,
      longitude: longitude ?? this.longitude,
      langitude: langitude ?? this.langitude,
      categoryName: categoryName ?? this.categoryName,
      subCategoryName: subCategoryName ?? this.subCategoryName,
      name: name ?? this.name,
      currency: currency ?? this.currency,
      minPrice: minPrice ?? this.minPrice,
      maxPrice: maxPrice ?? this.maxPrice,
      discountPrice: discountPrice ?? this.discountPrice,
      weight: weight ?? this.weight,
      deliveryCharge: deliveryCharge ?? this.deliveryCharge,
      description: description ?? this.description,
      condition: condition ?? this.condition,
      images: images ?? this.images,
      negotiation: negotiation ?? this.negotiation,
      soldStatus: soldStatus ?? this.soldStatus,
      productType: productType ?? this.productType,
      userSince: userSince ?? this.userSince,
      creatAt: creatAt ?? this.creatAt,
      productSave: productSave ?? this.productSave,
      productReport: productReport ?? this.productReport,
      averageRating: averageRating ?? this.averageRating,
      totalUser: totalUser ?? this.totalUser,
    );
  }

  @override
  List<Object?> get props => [
        id,
        userId,
        userName,
        userProfile,
        address,
        contactNo,
        websiteUrl,
        longitude,
        langitude,
        categoryName,
        subCategoryName,
        name,
        currency,
        minPrice,
        maxPrice,
        discountPrice,
        weight,
        deliveryCharge,
        description,
        condition,
        images,
        negotiation,
        soldStatus,
        productType,
        userSince,
        creatAt,
        productSave,
        productReport,
        averageRating,
        totalUser,
      ];
}
