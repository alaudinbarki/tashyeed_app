import 'package:flutter/material.dart';
import 'package:tashyeed_app/core/constants/app_images.dart';

//
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginWeb extends StatefulWidget {
  static const routeName = 'Login';

  const LoginWeb({super.key});
  @override
  _LoginWebState createState() => _LoginWebState();
}

class _LoginWebState extends State<LoginWeb> {
  // final _scaffoldKey = GlobalKey<ScaffoldState>();
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
      // key: _scaffoldKey,
      resizeToAvoidBottomInset: true,
      // resizeToAvoidBottomPadding: true,
      body: SizedBox(
        width: deviceWidth,
        height: deviceHeight,
        child: Row(
          children: [
            SizedBox(
              width: deviceWidth * .5,
              child: SingleChildScrollView(
                padding: EdgeInsets.all(deviceWidth * .05),
                child: SizedBox(
                  width: deviceHeight,
                  // height: deviceHeight,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Center(
                            child: Text(
                          "Sign in",
                          // AppLocalizations.of(context).signIn,
                          // AppText.signIn.tr,
                          style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        )),
                        SizedBox(
                          height: deviceWidth * .025,
                        ),
                        const Center(
                            child: Text(
                          "Hi there",
                          // AppText.hiThere.tr,
                          // AppLocalizations.of(context).hiThere,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        )),
                        SizedBox(
                          height: deviceWidth * .05,
                        ),
                        const Text("Email",
                            // AppText.email.tr,
                            // AppLocalizations.of(context).email,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black)),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: deviceWidth * .0125),
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.black))),
                          width: deviceWidth,
                          child: TextFormField(
                            controller: _emailController,
                            focusNode: _emailFocusNode,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            onFieldSubmitted: (_) {
                              FocusScope.of(context)
                                  .requestFocus(_passwordFocusNode);
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Email";
                              }
                              return null;
                            },
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                            decoration: InputDecoration(
                              hintText: "Email",
                              // hintText: AppText.enterEmail.tr,
                              // hintText: AppLocalizations.of(context).enterEmail,
                              hintStyle: const TextStyle(
                                color: Colors.grey,
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
                        const Text("Password",
                            // AppText.password.tr,
                            // AppLocalizations.of(context).password,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black)),
                        Container(
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.black))),
                          margin: EdgeInsets.symmetric(
                              vertical: deviceWidth * .0125),
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
                              }
                              return null;
                            },
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                            decoration: InputDecoration(
                              // hintText: AppText.enterPassword.tr,
                              // hintText: AppLocalizations.of(context).enterPassword,
                              hintStyle: const TextStyle(
                                // color: greyText,
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
                          height: deviceWidth * .05,
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
                                  color: Colors.yellow),
                              child: const Center(
                                  child: Text(
                                "Sign In",
                                // AppText.signIn.tr,
                                // AppLocalizations.of(context).signIn,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              )),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: deviceWidth * .025,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                                onTap: () {
                                  // Get.to(ResetPasswordScreen());
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
                                      color: Colors.yellowAccent,
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
            ),
            Container(
              width: deviceWidth * .5,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xff1B1B1B),
                      Color(0xff666666),
                    ]),
              ),
              child: Center(
                child: Image.asset(
                  AppImages.tashyeedWebLogin,
                  height: 120,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
