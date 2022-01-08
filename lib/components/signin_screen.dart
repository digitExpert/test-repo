import 'package:collectivity_demo/components/block_header.dart';
import 'package:collectivity_demo/components/input_field.dart';
import 'package:collectivity_demo/components/right_arrow_action.dart';
import 'package:collectivity_demo/model/access_token.dart';
import 'package:collectivity_demo/service/account_service.dart';
import 'package:collectivity_demo/service/impl/account_service_impl.dart';
import 'package:collectivity_demo/utils/constantes.dart';
import 'package:collectivity_demo/utils/toast.dart';
import 'package:collectivity_demo/utils/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';

import 'custom_button.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignInScreenState();
  }
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController emailController =
      TextEditingController(text: '764280173');
  final TextEditingController passwordController =
      TextEditingController(text: '123456789');
  final GlobalKey<OpenFlutterInputFieldState> emailKey = GlobalKey();
  final GlobalKey<OpenFlutterInputFieldState> passwordKey = GlobalKey();

  AccountService accountService = AccountServiceImpl(Client());

  double? sizeBetween;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    sizeBetween = height / 20;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.transparent,
          brightness: Brightness.light,
          elevation: 0,
          iconTheme: IconThemeData(color: AppColors.black),
        ),
        backgroundColor: AppColors.background,
        body: SingleChildScrollView(
          child: Container(
            height: height * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                OpenFlutterBlockHeader(title: 'Connexion', width: width),
                SizedBox(
                  height: sizeBetween,
                ),
                OpenFlutterInputField(
                  key: emailKey,
                  controller: emailController,
                  hint: 'Numéro de téléphone',
                  validator: Validator.isPhoneNumberCorrect,
                  keyboard: TextInputType.phone,
                ),
                OpenFlutterInputField(
                  key: passwordKey,
                  controller: passwordController,
                  hint: 'Mot de passe',
                  validator: Validator.isPasswordCorrect,
                  keyboard: TextInputType.visiblePassword,
                  isPassword: true,
                ),
                OpenFlutterRightArrow(
                  'Mot de passe oublié ?',
                  onClick: _showForgotPassword,
                ),
                OpenFlutterButton(
                    title: 'Connexion', onPressed: _validateAndSend),
                SizedBox(
                  height: sizeBetween! * 2,
                ),
              ],
            ),
          ),
        ));
  }

  void _showForgotPassword() {
    //  Navigator.of(context).pushNamed(OpenFlutterEcommerceRoutes.forgotPassword);
  }

  Future<void> _validateAndSend() async {
    if (emailKey.currentState!.validate() != null) {
      ToastService.showMessage(emailKey.currentState!.error!, context);

      return;
    }
    if (passwordKey.currentState!.validate() != null) {
      ToastService.showMessage(passwordKey.currentState!.error!, context);

      return;
    }

    print(
        '... logging in :${emailController.text} | ${passwordController.text}');

    // Sign In

    AccessToken token = await accountService.login(
        emailController.text, passwordController.text);

    print('token : $token');

    // Put the token in the storage

/*     BlocProvider.of<SignInBloc>(context).add(
      SignInPressedEvent(
        username: Validator.isValidPhoneNumber(emailController.text)
            ? Validator.formatPhoneNumber(emailController.text)
            : emailController.text,
        password: passwordController.text,
      ),
    ); */
  }
}

class SignInState {}
