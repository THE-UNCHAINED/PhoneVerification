import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_verification/utils/constant.dart';
import 'package:otp_verification/utils/custombluebutton.dart';
import 'otpscreen.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({super.key});

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(top: 150),
      margin: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Please Enter your mobile number",
            style: GoogleFonts.roboto(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(height: 15),
          Text("You will receive a 4 digit code", style: Constants.kGreyStyle),
          Text("to verify next", style: Constants.kGreyStyle),
          const SizedBox(height: 45),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              controller: phoneController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    'asset/images/flag.jpg',
                    width: 40,
                    height: 20,
                    fit: BoxFit.fill,
                  ),
                ),
                prefixText: "+91  -  ",
                hintText: " Mobile Number",
              ),
              maxLength: 10,
              keyboardType: TextInputType.phone,
            ),
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: () {
              if (phoneController.text.length == 10) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => OtpScreen(
                      phone: phoneController.text,
                    ),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Enter correct Phone Number"),
                    duration: Duration(seconds: 3),
                  ),
                );
              }
            },
            child: const CustomBlueButton(width: 333, text: "CONTINUE"),
          ),
          const SizedBox(height: 20),
        ],
      ),
    ));
  }
}
