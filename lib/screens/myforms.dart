import 'package:first_app_cwt/screens/details.dart';
import 'package:first_app_cwt/models/products_models.dart';
import 'package:first_app_cwt/myWidgets/mybuttons.dart';
import 'package:first_app_cwt/myWidgets/mycheckbox.dart';
import 'package:first_app_cwt/myWidgets/myradio.dart';
import "package:flutter/material.dart";

enum ProductTypeEnum { deliverable, downloadable }

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _productNameController = TextEditingController();
  final _productDescriptionController = TextEditingController();

  bool? listTileCheckbox = false;
  ProductTypeEnum? _productType;

  final List productSizesList = ["Small", "Medium", "Large", "XL"];

  String? selectedItem = "Small";
  _MyFormState() {
    selectedItem = productSizesList[0];
  }

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _productNameController.dispose();
    _productDescriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forms"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Insert some Text";
                      } else {
                        return null;
                      }
                    },
                    controller: _productNameController,
                    decoration: const InputDecoration(
                      label: Text("Product Name"),
                      prefixIcon: Icon(Icons.verified_user_sharp),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Insert some Text";
                      } else {
                        return null;
                      }
                    },
                    controller: _productDescriptionController,
                    decoration: const InputDecoration(
                      label: Text("Product Description"),
                      prefixIcon: Icon(Icons.verified_user_sharp),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20),

                  MYCheckBox(
                      listCheckbox: listTileCheckbox,
                      onchanged: (val) {
                        setState(() {
                          listTileCheckbox = val;
                        });
                      }),

                  //Radio Button
                  /* Create two types of radio buttons
          * 1. setstata to update
          * 2. Custom Widget stateless => setstate in this class.
           */
                  // Radio(value: 1, groupValue: 2, onChanged: (val) {}),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      MyRadio(
                          productTypeValue: ProductTypeEnum.deliverable,
                          mytitle: ProductTypeEnum.deliverable.name,
                          productType: _productType,
                          onchanged: (val) {
                            setState(() {
                              _productType = val;
                            });
                          }),
                      const SizedBox(width: 5),
                      MyRadio(
                          productTypeValue: ProductTypeEnum.downloadable,
                          mytitle: ProductTypeEnum.downloadable.name,
                          productType: _productType,
                          onchanged: (val) {
                            setState(() {
                              _productType = val;
                            });
                          }),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // DropDown Button

                  // DragDownFormField
                  DropdownButtonFormField(
                      icon: const Icon(
                        Icons.arrow_drop_down_circle_outlined,
                        color: Colors.blue,
                      ),
                      decoration: const InputDecoration(
                        labelText: "Product Size",
                        contentPadding: EdgeInsets.symmetric(horizontal: 5),
                        filled: false,
                        fillColor: Colors.white,
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                      ),
                      items: productSizesList
                          .map(
                              (e) => DropdownMenuItem(value: e, child: Text(e)))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          selectedItem = val as String;
                        });
                      }),
                  const SizedBox(height: 20),
                  MyOutlineButtons(onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ProductModels productDetails = ProductModels();
                      productDetails.productName = _productNameController.text;
                      productDetails.productDescription =
                          _productDescriptionController.text;
                      productDetails.isTopProduct = listTileCheckbox!;
                      productDetails.productType = _productType!;
                      productDetails.productSize = selectedItem!;

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Details(
                                    productDetails: productDetails,
                                  )));
                    }
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
