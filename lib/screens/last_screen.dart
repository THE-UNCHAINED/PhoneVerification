import 'package:flutter/material.dart';
import 'package:otp_verification/utils/custombluebutton.dart';
import 'package:otp_verification/utils/customtile.dart';

class LastScreen extends StatefulWidget {
  const LastScreen({Key? key}) : super(key: key);

  @override
  State<LastScreen> createState() => _LastScreenState();
}

class _LastScreenState extends State<LastScreen> {
  int? services;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 120.0),
        child: Column(
          children: [
            const Text("Please select your profile",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
            const SizedBox(height: 29),
            Container(
              margin: const EdgeInsets.only(right: 17, left: 17, top: 17),
              padding: const EdgeInsets.only(right: 30, top: 24, bottom: 24),
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: RadioListTile(
                  activeColor: const Color(0xff05386b),
                  selectedTileColor: Colors.black,
                  title: CustomTile(
                    name: 'Shipper',
                    iconData: Icons.home_work_outlined,
                  ),
                  value: 1,
                  groupValue: services,
                  onChanged: (value) {
                    setState(() {
                      services = value;
                    });
                  }),
            ),
            Container(
              margin: const EdgeInsets.only(right: 17, left: 17, top: 17),
              padding: const EdgeInsets.only(right: 30, top: 24, bottom: 24),
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: RadioListTile(
                  title: CustomTile(
                    name: 'Transporter',
                    iconData: Icons.fire_truck,
                  ),
                  activeColor: const Color(0xff05386b),
                  value: 2,
                  groupValue: services,
                  onChanged: (value) {
                    setState(() {
                      services = value;
                    });
                  }),
            ),
            const SizedBox(height: 29),
            const CustomBlueButton(width: 360, text: "Continue")
          ],
        ),
      ),
    );
  }
}
