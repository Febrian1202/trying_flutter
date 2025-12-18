import 'package:flutter/material.dart';
import 'package:porto/controller/product.dart';

class DropdownDemo extends StatefulWidget {
  const DropdownDemo({super.key});

  @override
  State<DropdownDemo> createState() => _DropdownDemoState();
}

class _DropdownDemoState extends State<DropdownDemo> {
  List<Product> products = [
    Product(name: 'Ayam', price: 29.99),
    Product(name: 'Indomie', price: 49.99),
    Product(name: 'Bebek Carok', price: 19.99),
  ];

  Product? selectedProduct;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: Center(
          child: const Text(
            'Dropdown Button Example',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(12),
            ),
            child: DropdownButton<Product>(
              items: products
                  .map(
                    (product) => DropdownMenuItem<Product>(
                      value: product,
                      child: Text(product.name),
                    ),
                  )
                  .toList(),
              value: selectedProduct,
              onChanged: (Product? value) {
                setState(() {
                  selectedProduct = value;
                });
              },
              isExpanded: true,
              icon: const Icon(Icons.person),
              hint: const Text('Select a product'),
            ),
          ),
        ),
      ),
    );
  }
}
