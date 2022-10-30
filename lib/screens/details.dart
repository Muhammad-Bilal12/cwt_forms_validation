import 'package:first_app_cwt/models/products_models.dart';
import "package:flutter/material.dart";

class Details extends StatelessWidget {
  Details({
    super.key,
    required this.productDetails,
  });

  final ProductModels productDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text("Details"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Chip(
                  backgroundColor: Colors.blue.shade100,
                  label: const Text(
                    "Top Product",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue),
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "Product Name",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "Product description Product descriptionProduct descriptionProduct description",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          border: Border.all(color: Colors.blue.shade800),
                        ),
                        child: const Text("Medium"),
                      ),
                    ),
                    const SizedBox(width: 5.0),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          border: Border.all(color: Colors.blue.shade800),
                        ),
                        child: const Text("Downloadable"),
                      ),
                    ),
                  ],
                ),
                Divider(),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                productDetails.isTopProduct
                    ? Chip(
                        backgroundColor: Colors.blue.shade100,
                        label: const Text(
                          "Top Product",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.blue),
                        ),
                      )
                    : Container(),
                const SizedBox(height: 5),
                Text(
                  productDetails.productName,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  productDetails.productDescription,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          border: Border.all(color: Colors.blue.shade800),
                        ),
                        child: Text(productDetails.productSize),
                      ),
                    ),
                    const SizedBox(width: 5.0),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          border: Border.all(color: Colors.blue.shade800),
                        ),
                        child: Text(productDetails.productType.name),
                      ),
                    ),
                  ],
                ),
                Divider(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
