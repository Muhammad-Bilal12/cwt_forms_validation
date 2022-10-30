import 'package:first_app_cwt/screens/myforms.dart';
import 'package:flutter/material.dart';

class MyRadio extends StatelessWidget {
  const MyRadio(
      {super.key,
      required this.mytitle,
      required this.productType,
      required this.onchanged,
      required this.productTypeValue});

  final String mytitle;
  final ProductTypeEnum? productType;
  final ProductTypeEnum productTypeValue;
  final Function(ProductTypeEnum?)? onchanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RadioListTile<ProductTypeEnum>(
        title: Text(mytitle.toUpperCase()),
        tileColor: Colors.blue.shade50,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        contentPadding: EdgeInsets.zero,
        dense: true,
        value: productTypeValue,
        groupValue: productType,
        onChanged: onchanged,
      ),
    );
  }
}
