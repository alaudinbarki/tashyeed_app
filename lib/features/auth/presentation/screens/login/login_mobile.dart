// ignore_for_file: prefer_typing_uninitialized_variables, avoid_print

//
// import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class LoginMobile extends StatefulWidget {
  // static const routeName = 'Login';

  const LoginMobile({super.key});

  @override
  State<LoginMobile> createState() => _LoginMobileState();
}

class _LoginMobileState extends State<LoginMobile> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  String? _emailErrorText;
  String? _passwordErrorText;

  bool _passwordVisible = true;

  @override
  void dispose() {
    super.dispose();
    _passwordFocusNode.dispose();
  }

  @override
  void initState() {
    _passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // key: _formKey,
      resizeToAvoidBottomInset: true,
      // resizeToAvoidBottomPadding: true,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(deviceWidth * .05),
        child: SizedBox(
          width: deviceHeight,
          height: deviceHeight,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                    child: Text(
                  // AppLocalizations.of(context).signIn,
                  "Sign In",
                  // AppText.signIn.tr,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
                SizedBox(
                  height: deviceWidth * .05,
                ),
                const Center(
                    child: Text(
                  "Hi There",
                  // AppText.hiThere.tr,
                  // AppLocalizations.of(context).hiThere,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )),
                SizedBox(
                  height: deviceWidth * .2,
                ),
                const Text(
                    // AppText.email.tr,
                    "Email",
                    // AppLocalizations.of(context).email,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black)),
                Container(
                  margin: EdgeInsets.symmetric(vertical: deviceWidth * .025),
                  decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey))),
                  width: deviceWidth,
                  child: TextFormField(
                    controller: _emailController,
                    focusNode: _emailFocusNode,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (_) {
                      FocusScope.of(context).requestFocus(_passwordFocusNode);
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Required';
                      }
                      return null;
                    },
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    decoration: InputDecoration(
                      // hintText: AppText.enterEmail.tr,
                      // hintText: AppLocalizations.of(context).enterEmail,
                      hintStyle: const TextStyle(
                        // color: greyText,
                        fontSize: 15,
                      ),
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                      errorText: _emailErrorText,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                    // AppText.password.tr,
                    'Password',
                    // AppLocalizations.of(context).password,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black)),
                Container(
                  decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey))),
                  margin: EdgeInsets.symmetric(vertical: deviceWidth * .025),
                  width: deviceWidth,
                  child: TextFormField(
                    controller: _passwordController,
                    focusNode: _passwordFocusNode,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.text,
                    obscureText: !_passwordVisible,
                    onFieldSubmitted: (_) {
                      // _submit();
                      //  signIn();
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        // return AppText.passwordIsRequired.tr;
                        return 'Password is required';
                      }
                      return null;
                    },
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      // hintText: AppText.enterPassword.tr,
                      // hintText: AppLocalizations.of(context).enterPassword,
                      hintStyle: const TextStyle(
                        color: Colors.green,
                        fontSize: 15,
                      ),
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                      errorText: _passwordErrorText,
                      suffixIcon: IconButton(
                        icon: Icon(
                          // Based on passwordVisible state choose the icon
                          _passwordVisible
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: Colors.black,
                          size: 25,
                        ),
                        onPressed: () {
                          // Update the state i.e. toogle the state of passwordVisible variable
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: deviceWidth * .25,
                ),
                Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () async {
                      // await _submit();
                    },
                    child: Container(
                      width: deviceWidth,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.yellowAccent),
                      child: const Center(
                          child: Text(
                        'Sign In',
                        // AppText.signIn.tr,
                        // AppLocalizations.of(context).signIn,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      )),
                    ),
                  ),
                ),
                SizedBox(
                  height: deviceWidth * .1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          // Get.to(const ResetPasswordScreen());
                        },
                        child: const Text(
                          "Forgot Password",
                          // AppText.forgotPassword.tr,
                          // AppLocalizations.of(context).forgotPassword,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        )),
                    InkWell(
                        onTap: () {
                          // goToSignUpScreen(context);
                        },
                        child: const Text(
                          "Sign Up",
                          // AppText.signUp.tr,
                          // AppLocalizations.of(context).signUp,
                          style: TextStyle(
                              color: Colors.yellow,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
