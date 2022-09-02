import 'package:flutter/material.dart';
import 'package:otp_verification/utils/constant.dart';

class CustomTile extends StatelessWidget {
  IconData iconData;
  String name;
  CustomTile({required this.name, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Icon(iconData, size: 50, color: Colors.black),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: TextStyle(fontSize: 22)),
            SizedBox(height: 4,),
            Text('This is the Shipper ',
                maxLines: 4, style: Constants.kGreyStyle)
          ],
        )
      ],
    );
  }
}
