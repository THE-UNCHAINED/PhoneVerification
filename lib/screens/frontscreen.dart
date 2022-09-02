import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_verification/utils/constant.dart';
import 'package:otp_verification/screens/phone_number_screen.dart';
import '../utils/custombluebutton.dart';
import '../utils/dropdown.dart';

class FrontScreen extends StatelessWidget {
  const FrontScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("asset/images/background.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: Image(
                    image: AssetImage("asset/images/icon.png"),
                  ),
                ),
                SizedBox(height: 39),
                Text("Please select your Language",
                    style: GoogleFonts.roboto(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),),
                SizedBox(height: 9),

                Text("You can change the language",
                    style: Constants.kGreyStyle),
                Text(" at any time", style: Constants.kGreyStyle),
                SizedBox(height: 29),

                DropDown(), // Dropdown Button
                SizedBox(height: 29),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  PhoneNumberScreen()),
                    );
                  },
                  child: CustomBlueButton(width: 200, text: "Next"),
                ),
              ],
            ),
          ),
        ),
      );

}
