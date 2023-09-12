class CategoryBasedProductModel {
  CategoryBasedProductModel({
    required this.status,
    required this.data,
    required this.message,
  });
  late final int status;
  late final List<Data> data;
  late final String message;
  
  CategoryBasedProductModel.fromJson(Map<String, dynamic> json){
    status = json['status'];
    data = List.from(json['data']).map((e)=>Data.fromJson(e)).toList();
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['data'] = data.map((e)=>e.toJson()).toList();
    _data['message'] = message;
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.productName,
     this.anotherName,
    required this.quantity,
    required this.quantityType,
    required this.grossPrice,
    required this.actualPrice,
    required this.description,
    required this.discountPercentage,
    required this.categoryId,
    required this.createdAt,
    required this.updatedAt,
  });
  late final int id;
  late final String productName;
  late final Null anotherName;
  late final int quantity;
  late final String quantityType;
  late final String grossPrice;
  late final String actualPrice;
  late final String description;
  late final int discountPercentage;
  late final int categoryId;
  late final String createdAt;
  late final String updatedAt;
  
  Data.fromJson(Map<String, dynamic> json){
    id = json['id'];
    productName = json['product_name'];
    anotherName = null;
    quantity = json['quantity'];
    quantityType = json['quantity_type'];
    grossPrice = json['gross_price'];
    actualPrice = json['actual_price'];
    description = json['description'];
    discountPercentage = json['discount_percentage'];
    categoryId = json['category_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['product_name'] = productName;
    _data['another_name'] = anotherName;
    _data['quantity'] = quantity;
    _data['quantity_type'] = quantityType;
    _data['gross_price'] = grossPrice;
    _data['actual_price'] = actualPrice;
    _data['description'] = description;
    _data['discount_percentage'] = discountPercentage;
    _data['category_id'] = categoryId;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}