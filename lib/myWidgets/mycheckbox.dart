import 'package:flutter/material.dart';

class MYCheckBox extends StatelessWidget {
  const MYCheckBox({super.key, this.listCheckbox, required this.onchanged});

  final bool? listCheckbox;
  final void Function(bool?)? onchanged;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      tristate: true,
      contentPadding: EdgeInsets.zero,
      tileColor: Colors.blue.shade50,
      dense: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      title: const Text("Top Products"),
      controlAffinity: ListTileControlAffinity.leading,
      value: listCheckbox,
      onChanged: onchanged,
    );
  }
}




            // CheckBoxes
            // There are two types of checkboxes

            // simple checkbox
            // Checkbox(
            //     value: checbox,
            //     tristate: true,
            //     activeColor: Colors.blue,
            //     checkColor: Colors.black,
            //     onChanged: (val) {
            //       setState(() {
            //         checbox = val;
            //       });
            //     }),
            // List Tile Checkbox