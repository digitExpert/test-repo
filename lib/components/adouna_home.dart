import 'package:collectivity_demo/components/signin_screen.dart';
import 'package:collectivity_demo/inscriptionScreen.dart';
import 'package:collectivity_demo/model/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdounaHome extends StatelessWidget {
  const AdounaHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                constraints: BoxConstraints(maxWidth: 350, maxHeight: 450),
                child: Image.asset(
                  'assets/introduction_animation/image2.jpeg',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Text(
              "Welcome",
              style: TextStyle(
                  fontSize: 25.0,
                  color: AppTheme.primary,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 64, right: 64, top: 16, bottom: 16),
              child: Text(
                "Stay organised and live stress-free with you-do app",
                textAlign: TextAlign.center,
              ),
            ),
            InkWell(
              key: ValueKey('Sign Up button'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => InscriptionScreen()));
              },
              child: Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Inscription',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Icon(Icons.arrow_forward_rounded, color: Colors.redAccent),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Vous avez déjà un compte? ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(
                          color: AppTheme.primary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        print('connecion...');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInScreen()));
                      },
                      child: const Text(
                        'Connexion',
                        style: TextStyle(color: AppTheme.primary),
                      ),
                    ),
                    // Text(
                    //   'Login',
                    //   style: TextStyle(
                    //     color: AppTheme.primary,
                    //     fontSize: 16,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
