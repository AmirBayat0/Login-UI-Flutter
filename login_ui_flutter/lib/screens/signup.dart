import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
//
import '../screens/login.dart';
import '../widget/rep_textfiled.dart';
import '../utils/constanst.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(15),
          width: gWidth,
          height: gHeight,
          child: Column(
            children: [
              TopImage(),
              SignUpText(),
              SizedBox(height: 10),
              EmailTextFiled(),
              SizedBox(height: 20),
              FullNameTextFiled(),
              SizedBox(height: 20),
              MobileTextFiled(),
              SizedBox(
                height: 25,
              ),
              BottomText(),
              SizedBox(
                height: 25,
              ),
              ContinueButton(),
              LoginText()
            ],
          ),
        ),
      ),
    );
  }
}

// Login Text Components
class LoginText extends StatelessWidget {
  const LoginText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      child: GestureDetector(
        onTap: () {
          Get.offAll(
            () => LoginScreen(),
            transition: Transition.leftToRight,
          );
        },
        child: Container(
          margin: EdgeInsets.only(top: 22),
          width: gWidth / 2,
          height: gHeight / 32,
          child: FittedBox(
            child: RichText(
              text: TextSpan(
                text: "Joined us before?",
                style: TextStyle(color: text1Color),
                children: [
                  TextSpan(
                    text: "  Login",
                    style: TextStyle(
                      color: buttonColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Continue Button Components
class ContinueButton extends StatelessWidget {
  const ContinueButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: Duration(milliseconds: 400),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        width: gWidth,
        height: gHeight / 15,
        child: ElevatedButton(
          onPressed: () {
            Get.offAll(SignUpScreen());
          },
          child: Text("Continue"),
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(buttonColor),
          ),
        ),
      ),
    );
  }
}

// Bottom Text Components
class BottomText extends StatelessWidget {
  const BottomText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: Duration(milliseconds: 800),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        width: gWidth,
        height: gHeight / 21,
        child: RichText(
          text: TextSpan(
              text: "By siging up, you\'re agree to our",
              style: TextStyle(
                color: Color.fromARGB(255, 90, 90, 90),
              ),
              children: [
                TextSpan(
                  text: " Terms & Conditions",
                  style: TextStyle(color: buttonColor),
                ),
                TextSpan(
                  text: " and ",
                  style: TextStyle(color: Color.fromARGB(255, 90, 90, 90)),
                ),
                TextSpan(
                  text: " Privacy Policy",
                  style: TextStyle(color: buttonColor),
                ),
              ]),
        ),
      ),
    );
  }
}

// Mobile TextFiled Components
class MobileTextFiled extends StatelessWidget {
  const MobileTextFiled({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
        delay: Duration(milliseconds: 1200),
        child:
            RepTextFiled(icon: LineIcons.phone, text: "Mobile", sufIcon: null));
  }
}

// FullName TextFiled Components
class FullNameTextFiled extends StatelessWidget {
  const FullNameTextFiled({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
        delay: Duration(milliseconds: 1400),
        child: RepTextFiled(
            icon: LineIcons.user, text: "Full name", sufIcon: null));
  }
}

// Email TextFiled Components
class EmailTextFiled extends StatelessWidget {
  const EmailTextFiled({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
        delay: Duration(milliseconds: 1800),
        child:
            RepTextFiled(icon: LineIcons.at, text: "Email ID", sufIcon: null));
  }
}

// Top Sign UP Text Components
class SignUpText extends StatelessWidget {
  const SignUpText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      delay: Duration(milliseconds: 2100),
      child: Container(
        margin: EdgeInsets.only(right: 250, top: 10),
        width: gWidth / 3.5,
        height: gHeight / 17,
        child: FittedBox(
          child: Text(
            "Sign up",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

// Top Image Components
class TopImage extends StatelessWidget {
  const TopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: Duration(milliseconds: 2500),
      child: Container(
        width: gWidth,
        height: gHeight / 2.85,
        child: Image.asset(
          "assets/images/sign.png",
        ),
      ),
    );
  }
}
