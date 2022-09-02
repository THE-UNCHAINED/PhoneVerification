import 'package:flutter/material.dart';


class DropDown extends StatefulWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  var item = ['English', 'Hindi', 'French', 'Spanish'];
  String dropdownValue = 'Hindi';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 65,
      child: DropdownButtonFormField<String>(
        decoration: const InputDecoration(
          // focusColor: Colors.black,
          border: OutlineInputBorder(),
        ),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: item.map((String value) {
          return DropdownMenuItem(
            value: value,
            child: Text(
              value,
              style: const TextStyle(color: Colors.black, fontSize: 21),
            ),
          );
        }).toList(),
      ),
    );
  }
}
