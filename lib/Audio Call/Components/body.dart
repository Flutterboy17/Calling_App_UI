import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constant.dart';
import 'components.dart';
import '../Widgets/widgets.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Paul Smith",
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 36,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Incoming Call...",
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  color: Colors.white54,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CircleAvatar(
              radius: 100,
              backgroundColor: kBackgoundColor,
              child: CircleAvatar(
                radius: 75,
                backgroundColor: kSecondaryColor,
                child: CircleAvatar(
                  radius: 71,
                  backgroundImage: AssetImage(
                    "images/man_3.jpg",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 280,
              child: Column(
                children: const [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DialPad(
                        color: kPrimaryColor,
                        icon: Icons.mic_outlined,
                        text: "Mute",
                      ),
                      DialPad(
                        color: kPrimaryColor,
                        icon: Icons.volume_up,
                        text: "Speaker",
                      ),
                      DialPad(
                        color: kPrimaryColor,
                        icon: Icons.videocam_outlined,
                        text: "Video",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DialPad(
                        color: kPrimaryColor,
                        icon: Icons.messenger_outline,
                        text: "Message",
                      ),
                      DialPad(
                        color: kPrimaryColor,
                        icon: Icons.person_add_alt_1,
                        text: "Add Person",
                      ),
                      DialPad(
                        color: kPrimaryColor,
                        icon: Icons.voicemail,
                        text: "Voice Mail",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            DialButton(),
          ],
        ),
      ),
    );
  }
}
