import 'package:diljobsapp/routes/routes_diljobapp.dart';
import 'package:diljobsapp/themes/colors.dart';
import 'package:diljobsapp/themes/font_style.dart';
import 'package:diljobsapp/widgets/avatar_widget.dart';
import 'package:diljobsapp/widgets/form_widget.dart';
import 'package:diljobsapp/widgets/header_text_widget.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import '../widgets/button_fill_widget.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isEmailValid = true;
  bool isImage = true;
  TextEditingController EmailController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderText(
                textOne: "Sign In",
                textTwo: "Begin New Journey",
              ),
              const SizedBox(
                height: 50.0,
              ),
              Center(
                  child: isImage
                      ? InkWell(
                          onTap: () {
                            setState(() {
                              isImage = !isImage;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: ColordilJobsApp.primary, width: 1.0),
                                borderRadius: BorderRadius.circular(100.0)),
                            child: const SizedBox(
                              height: 120,
                              width: 120,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/upload_pic.png'),
                              ),
                            ),
                          ),
                        )
                      : InkWell(
                          onTap: () {
                            setState(() {
                              isImage = !isImage;
                            });
                          },
                          child: const Avatar())),
              const SizedBox(
                height: 50.0,
              ),
              FormCustom(
                text: "Full Name",
              ),
              const SizedBox(
                height: 6.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: grey300.copyWith(fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    controller: EmailController,
                    onChanged: (email) {
                      bool isValid = EmailValidator.validate(email);

                      isValid
                          ? setState(() {
                              isEmailValid = !isEmailValid;
                            })
                          : setState(() {
                              isEmailValid = !isEmailValid;
                            });
                    },
                    decoration: InputDecoration(
                      fillColor: const Color(0xffF1F0F5),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100.0),
                          borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(
                              color: isEmailValid
                                  ? ColordilJobsApp.red
                                  : ColordilJobsApp.primary)),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 6.0,
              ),
              FormCustom(
                obsecure: true,
                text: "Password",
              ),
              const SizedBox(
                height: 6.0,
              ),
              FormCustom(
                text: "Your Goal",
              ),
              const SizedBox(
                height: 40.0,
              ),
              Center(
                child: ButtonFill(
                  fontColor: ColordilJobsApp.white,
                  text: "Sign Up",
                  onpress: () {},
                  color: ColordilJobsApp.primary,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Center(
                child: TextButton(
                    onPressed: () => Navigator.pushReplacementNamed(
                        context, RouteDiljobsapp.signin),
                    child: Text(
                      "Sign In",
                      style: grey300.copyWith(fontSize: 16.0),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
