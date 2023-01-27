import 'package:flutter/material.dart';

  List<String> list = <String>['Meses', 'Anos'];
class TextFieldComponent extends StatelessWidget {
  TextFieldComponent(
      {super.key, this.label, this.controller, this.keyboardType, this.suffixIcon, this.padding, this.dropDownList, this.dropDownValue, this.onChangeDropDown });

  String? label;
  TextEditingController? controller;
  TextInputType? keyboardType;
  Widget? suffixIcon;
  EdgeInsetsGeometry? padding;
  List<String>? dropDownList;
  String? dropDownValue;
  Function(String? value)? onChangeDropDown;

  //String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: TextFormField(
        scrollPadding: EdgeInsets.all(0),
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
            suffixIcon: dropDownList != null ? DropdownButton<String>(
              menuMaxHeight: 300,
              dropdownColor: Colors.grey[300],
              value: dropDownValue,
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              onChanged: (value) => onChangeDropDown!(value),
              items: dropDownList?.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ) : suffixIcon,
            filled: true,
            fillColor: Colors.grey[300],
            border: UnderlineInputBorder(borderRadius: BorderRadius.circular(0)),
            labelText: label),
      ),
    );
  }
}
