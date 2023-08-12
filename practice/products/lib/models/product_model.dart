class ProductModel {
  int? id;
  String? title;
  double? price;
  String? image;

  ProductModel.fromJson(json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    image = json['image'];
  }
}
