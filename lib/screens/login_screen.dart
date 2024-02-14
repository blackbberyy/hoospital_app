import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(215, 255, 255, 255),
        leading: CloseButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/home');
            Colors.white;
          },
        ),
        title: SvgPicture.network(
          'https://www.hoospital.com/assets/uploads/logo.svg',
          fit: BoxFit.cover,
          width: 200,
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Divider(),
            Container(
              height: 130,
              child: Center(
                child: Text(
                  'Log in for easier access to your hospital operations',
                  style: GoogleFonts.changa(
                    fontSize: 29,
                    fontWeight: FontWeight.w500,
                    height: 1,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  width: 300,
                  child: ElevatedButton.icon(
                      onPressed: signIn,
                      icon: FaIcon(
                        FontAwesomeIcons.google,
                        color: Colors.red,
                      ),
                      label: Text('Continue with Google')),
                ),
                Container(
                  width: 300,
                  child: ElevatedButton.icon(
                      onPressed: signIn,
                      icon: FaIcon(
                        FontAwesomeIcons.facebook,
                        //color: Colors.red,
                      ),
                      label: Text('Continue with Facebook')),
                ),
                Container(
                  width: 300,
                  child: ElevatedButton(
                    child: Text(
                      'Continue with E-mail',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            Colors.blue.shade900)),
                    onPressed: signIn,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Future signIn() async {
    await GoogleSignInApi.login();
  }
}

class GoogleSignInApi {
  static final _googleSignIn = GoogleSignIn();

  static Future<GoogleSignInAccount?> login() => _googleSignIn.signIn();
}
