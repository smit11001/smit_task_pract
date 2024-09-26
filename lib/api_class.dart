import 'dart:convert';
import 'package:http/http.dart'as http;
import 'model/product_details_model.dart';

Future<List<ProductDetails>>FetchData() async {
  final Response =await http.get(Uri.parse("https://fakestoreapi.com/products"));

  if(Response.statusCode == 200){
    List<dynamic>Jsondata=json.decode(Response.body);
    return Jsondata.map((item)=>ProductDetails.fromJson(item)).toList();
  }else{
    throw Exception("Failed to fetch data from API");
  }
}