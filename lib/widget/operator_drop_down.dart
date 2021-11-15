import 'package:flutter/material.dart';
import 'package:qcoom_shopping/widget/operator_item.dart';

import '../size_config.dart';

class OperatorDropDown extends StatefulWidget {
  const OperatorDropDown({Key? key}) : super(key: key);

  @override
  State<OperatorDropDown> createState() => _OperatorDropDownState();
}

class _OperatorDropDownState extends State<OperatorDropDown> {
  var operators = ['Select OP','880', '91', '008'];
  var dropdownValue = 'Select OP';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.grey),
        borderRadius: BorderRadius.circular(8)
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          value: dropdownValue,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
              if(dropdownValue != "Select OP") {
                _modalBottomSheetMenu(context);
              }
            });
          },
          items: operators.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Row(
                children: [
                  if (value != 'Select OP') Icon(Icons.ten_mp_outlined),
                  SizedBox(width: 4),
                  Text(value, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),)
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  void _modalBottomSheetMenu(BuildContext context) {
    SizeConfig().init(context);
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            height: SizeConfig.screenHeight!/2,
            color: Colors.transparent,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) {
                return OperatorItem();
              },
              itemCount: 4,
            ),
          );
        });
  }
}
