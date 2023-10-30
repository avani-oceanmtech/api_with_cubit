import 'dart:convert';

import 'package:api_with_cubit/features/home/domain/entities/product_data_entity.dart';

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));

class ProductModel {
  int? status;
  bool? success;
  String? message;
  List<ProductData> data;

  ProductModel({
    this.status,
    this.success,
    this.message,
    required this.data,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        status: int.tryParse(json["status"].toString()),
        success: bool.tryParse(json["success"].toString()),
        message: json["message"],
        data: json["data"] == null ? [] : List<ProductData>.from(json["data"]!.map((x) => ProductData.fromJson(x))),
      );
}

class ProductData {
  List<ProductDataEntity>? productData;
  int? pagination;
  int? sold;
  int? unSold;

  ProductData({
    this.productData,
    this.pagination,
    this.sold,
    this.unSold,
  });

  factory ProductData.fromJson(Map<String, dynamic> json) => ProductData(
        productData: json["ProductData"] == null
            ? []
            : List<ProductDataEntity>.from(json["ProductData"]!.map((x) => ProductDetails.fromJson(x))),
        pagination: json["pagination"],
        sold: json["Sold"],
        unSold: json["UnSold"],
      );
}

class ProductDetails {
  String? id;
  String? userId;
  String? userName;
  String? userProfile;
  String? address;
  String? contactNo;
  String? websiteUrl;
  String? longitude;
  String? langitude;
  String? categoryName;
  String? subCategoryName;
  String? name;
  String? currency;
  String? minPrice;
  String? maxPrice;
  String? discountPrice;
  String? weight;
  String? deliveryCharge;
  String? description;
  String? condition;
  String? images;
  String? negotiation;
  SoldStatus? soldStatus;
  String? productType;
  UserSince? userSince;
  String? creatAt;
  String? productSave;
  String? productReport;
  String? averageRating;
  String? totalUser;

  ProductDetails({
    this.id,
    this.userId,
    this.userName,
    this.userProfile,
    this.address,
    this.contactNo,
    this.websiteUrl,
    this.longitude,
    this.langitude,
    this.categoryName,
    this.subCategoryName,
    this.name,
    this.currency,
    this.minPrice,
    this.maxPrice,
    this.discountPrice,
    this.weight,
    this.deliveryCharge,
    this.description,
    this.condition,
    this.images,
    this.negotiation,
    this.soldStatus,
    this.productType,
    this.userSince,
    this.creatAt,
    this.productSave,
    this.productReport,
    this.averageRating,
    this.totalUser,
  });

  factory ProductDetails.fromJson(Map<String, dynamic> json) => ProductDetails(
        id: json["Id"],
        userId: json["UserId"],
        userName: json["UserName"],
        userProfile: json["UserProfile"],
        address: json["Address"],
        contactNo: json["ContactNo"],
        websiteUrl: json["WebsiteUrl"],
        longitude: json["Longitude"],
        langitude: json["Langitude"],
        categoryName: json["CategoryName"],
        subCategoryName: json["SubCategoryName"],
        name: json["Name"],
        currency: json["Currency"],
        minPrice: json["MinPrice"],
        maxPrice: json["MaxPrice"],
        discountPrice: json["DiscountPrice"],
        weight: json["Weight"],
        deliveryCharge: json["DeliveryCharge"],
        description: json["Description"],
        condition: json["Condition"],
        images: json["Images"],
        negotiation: json["Negotiation"],
        soldStatus: soldStatusValues.map[json["SoldStatus"]]!,
        productType: json["ProductType"],
        userSince: userSinceValues.map[json["UserSince"]]!,
        creatAt: json["CreatAt"],
        productSave: json["ProductSave"],
        productReport: json["ProductReport"],
        averageRating: json["AverageRating"],
        totalUser: json["TotalUser"],
      );
}

// ignore: constant_identifier_names
enum SoldStatus { UNSOLD }

final soldStatusValues = EnumValues({"Unsold": SoldStatus.UNSOLD});

// ignore: constant_identifier_names
enum UserSince { AUGUST_2022, JANUARY_2022, MAY_2022, MAY_2023, NOVEMBER_2022, OCTOBER_2022, SEPTEMBER_2022 }

final userSinceValues = EnumValues({
  "August 2022": UserSince.AUGUST_2022,
  "January 2022": UserSince.JANUARY_2022,
  "May 2022": UserSince.MAY_2022,
  "May 2023": UserSince.MAY_2023,
  "November 2022": UserSince.NOVEMBER_2022,
  "October 2022": UserSince.OCTOBER_2022,
  "September 2022": UserSince.SEPTEMBER_2022
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
