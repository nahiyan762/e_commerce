import 'package:flutter/material.dart';

class OperatorDropDown extends StatefulWidget {
  const OperatorDropDown({Key? key}) : super(key: key);

  @override
  State<OperatorDropDown> createState() => _OperatorDropDownState();
}

class _OperatorDropDownState extends State<OperatorDropDown> {
  var operators = ['880', '91', '008'];
  var dropdownValue = '880';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.grey),
        borderRadius: BorderRadius.circular(8)
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          value: dropdownValue,
          icon: const Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: const TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: operators.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Row(
                children: [
                  const Icon(Icons.ten_mp_outlined),
                  Text(value)
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
