import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:qcoom_shopping/model/common_response.dart';
import 'package:qcoom_shopping/model/product.dart';

class ProductProvider with ChangeNotifier {
  List<Product> products = [];

  Future<CommonResponse<List<Product>>> getProductsFromApi() async{
    final url = "http://qcoom-lb-2034082220.ap-southeast-1.elb.amazonaws.com/catalogue-reader/api/v1.0/public/products";
    final response = await http.get(url);
    final jsonProduct = jsonDecode(response.body);
    return CommonResponse<List<Product>>.fromJson(jsonProduct);
  }

}