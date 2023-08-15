import 'package:dio/dio.dart';
import 'package:products/models/product_model.dart';

Future<List<ProductModel>?> getProducts() async {
  String url = "https://fakestoreapi.com/products";
  var res = await Dio().get(url);
  try {
    var data = res.data as List;
    return data.map((e) => ProductModel.fromJson(e)).toList();
  } catch (e) {
    print('Error: $e');
  }
  return [];
}
