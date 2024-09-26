import 'package:flutter/material.dart';
import 'package:smit_task/model/product_details_model.dart';
import 'package:smit_task/screens/product_screen.dart';
import 'api_class.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<List<ProductDetails>> products;

  @override
  void initState() {
    super.initState();
    products = FetchData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: FutureBuilder<List<ProductDetails>>(
          future: products,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            } else if (snapshot.hasData) {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0,
                ),
                itemCount: snapshot.data!.length, // added itemCount
                itemBuilder: (context, index) {
                  var product = snapshot.data![index];
                  return ProductScreen(product: product);
                },
              );
            } else {
              return const Center(
                child: Text('No data available'),
              );
            }
          },
        ),
      ),
    );
  }
}
