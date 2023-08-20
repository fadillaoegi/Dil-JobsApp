import 'package:diljobsapp/models/user_model.dart';
import 'package:diljobsapp/providers/auth_provider.dart';
import 'package:diljobsapp/providers/user_provider.dart';
import 'package:diljobsapp/routes/routes_diljobapp.dart';
import 'package:diljobsapp/themes/colors.dart';
import 'package:diljobsapp/themes/font_style.dart';
import 'package:diljobsapp/widgets/avatar_widget.dart';
import 'package:diljobsapp/widgets/form_widget.dart';
import 'package:diljobsapp/widgets/header_text_widget.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/button_fill_widget.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isEmailValid = true;
  bool isImage = true;
  bool loading = false;
  final TextEditingController emailController = TextEditingController(text: "");
  final TextEditingController passwordController =
      TextEditingController(text: "");
  final TextEditingController nameController = TextEditingController(text: "");
  final TextEditingController goalController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var authProvider = Provider.of<AuthProvider>(context);
    // ignore: unused_local_variable
    var userProvider = Provider.of<UserProvider>(context);
    // ignore: unused_element
    void error(message) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(message),
        backgroundColor: ColordilJobsApp.red,
      ));
    }

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
                controllerForm: nameController,
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
                    controller: emailController,
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
                controllerForm: passwordController,
              ),
              const SizedBox(
                height: 6.0,
              ),
              FormCustom(
                text: "Your Goal",
                controllerForm: goalController,
              ),
              const SizedBox(
                height: 40.0,
              ),
              Center(
                child: loading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : ButtonFill(
                        fontColor: ColordilJobsApp.white,
                        text: "Sign Up",
                        onpress: () async {
                          if (nameController.text.isEmpty ||
                              emailController.text.isEmpty ||
                              passwordController.text.isEmpty ||
                              goalController.text.isEmpty) {
                            error(
                                "Pastikan tidak ada yg terlewat dalam mengisi form");
                          } else {
                            setState(() {
                              loading = true;
                            });
                            // ignore: unused_local_variable
                            UserModel? user = await authProvider.register(
                                nameController.text,
                                emailController.text,
                                passwordController.text,
                                goalController.text);

                            setState(() {
                              loading = false;
                            });

                            if (user == null) {
                              error("Akun Sudah Terdaftar");
                            } else {
                              userProvider.user = user;
                              // ignore: use_build_context_synchronously
                              Navigator.pushNamedAndRemoveUntil(context,
                                  RouteDiljobsapp.home, (route) => false);
                            }
                          }
                        },
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
