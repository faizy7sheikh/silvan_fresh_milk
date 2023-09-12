class SingleProductModel {
  SingleProductModel({
    required this.message,
    required this.data,
    required this.status,
  });
  late final String message;
  late final Data data;
  late final int status;
  
  SingleProductModel.fromJson(Map<String, dynamic> json){
    message = json['message'];
    data = Data.fromJson(json['data']);
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['message'] = message;
    _data['data'] = data.toJson();
    _data['status'] = status;
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
    required this.images,
    required this.descriptions,
    required this.category,
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
  late final List<Descriptions> descriptions;
  late final Category category;
  
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
    images = List.from(json['images']).map((e)=>Images.fromJson(e)).toList();
    descriptions = List.from(json['descriptions']).map((e)=>Descriptions.fromJson(e)).toList();
    category = Category.fromJson(json['category']);
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
    _data['descriptions'] = descriptions.map((e)=>e.toJson()).toList();
    _data['category'] = category.toJson();
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

class Descriptions {
  Descriptions({
    required this.id,
    required this.productId,
    required this.section,
    required this.content,
    required this.createdAt,
    required this.updatedAt,
  });
  late final int id;
  late final int productId;
  late final String section;
  late final String content;
  late final String createdAt;
  late final String updatedAt;
  
  Descriptions.fromJson(Map<String, dynamic> json){
    id = json['id'];
    productId = json['product_id'];
    section = json['section'];
    content = json['content'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['product_id'] = productId;
    _data['section'] = section;
    _data['content'] = content;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}

class Category {
  Category({
    required this.id,
    required this.name,
    required this.slug,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
  });
  late final int id;
  late final String name;
  late final String slug;
  late final String image;
  late final String createdAt;
  late final String updatedAt;
  
  Category.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    image = json['image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['slug'] = slug;
    _data['image'] = image;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}