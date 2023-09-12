class ProductListModel {
  ProductListModel({
    required this.message,
    required this.products,
    required this.status,
  });
  late final String message;
  late final List<Products> products;
  late final int status;
  
  ProductListModel.fromJson(Map<String, dynamic> json){
    message = json['message'];
    products = List.from(json['products']).map((e)=>Products.fromJson(e)).toList();
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['message'] = message;
    _data['products'] = products.map((e)=>e.toJson()).toList();
    _data['status'] = status;
    return _data;
  }
}

class Products {
  Products({
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
    required this.images,
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
  late final List<Images> images;
  
  Products.fromJson(Map<String, dynamic> json){
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
    images = List.from(json['images']).map((e)=>Images.fromJson(e)).toList();
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
    _data['images'] = images.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Images {
  Images({
    required this.id,
    required this.productId,
    required this.createdAt,
    required this.updatedAt,
    required this.imageUrl,
  });
  late final int id;
  late final int productId;
  late final String createdAt;
  late final String updatedAt;
  late final String imageUrl;
  
  Images.fromJson(Map<String, dynamic> json){
    id = json['id'];
    productId = json['product_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['product_id'] = productId;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['image_url'] = imageUrl;
    return _data;
  }
}