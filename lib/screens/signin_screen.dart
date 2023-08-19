import 'package:diljobsapp/models/user_model.dart';
import 'package:diljobsapp/providers/auth_provider.dart';
import 'package:diljobsapp/providers/user_provider.dart';
import 'package:diljobsapp/routes/routes_diljobapp.dart';
import 'package:diljobsapp/themes/colors.dart';
import 'package:diljobsapp/themes/font_style.dart';
import 'package:diljobsapp/widgets/button_fill_widget.dart';
import 'package:diljobsapp/widgets/header_text_widget.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:validators/validators.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _emailController =
      TextEditingController(text: "");
  final TextEditingController _passwordController = TextEditingController();
  bool isEmailValid = false;
  bool loading = false;
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
                textTwo: "Build Your Career",
              ),
              const SizedBox(
                height: 40.0,
              ),
              Center(
                child: Image.asset(
                  "assets/images/work.png",
                  width: 261.0,
                  height: 240.0,
                ),
              ),
              const SizedBox(
                height: 40.0,
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
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (email) {
                      bool isValid = EmailValidator.validate(email);
                      // isValid
                      //     ? print("Yes True Email")
                      //     : print("No True Email");
                      if (isValid) {
                        setState(() {
                          isEmailValid = true;
                        });
                      } else {
                        setState(() {
                          isEmailValid = false;
                        });
                      }
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
                                  ? ColordilJobsApp.primary
                                  : ColordilJobsApp.red)),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Password",
                    style: grey300.copyWith(fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    obscureText: true,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      fillColor: const Color(0xffF1F0F5),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100.0),
                          borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide:
                              const BorderSide(color: ColordilJobsApp.primary)),
                    ),
                  )
                ],
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
                        onpress: () async {
                          if (_emailController.text.isEmpty ||
                              _passwordController.text.isEmpty) {
                            error("Email dan password tidak boleh kosong");
                          } else {
                            setState(() {
                              loading = true;
                            });
                            // ignore: unused_local_variable
                            UserModel? user = await authProvider.login(
                                _emailController.text,
                                _passwordController.text);

                            setState(() {
                              loading = false;
                            });

                            if (user == null) {
                              error("Email atau password salah");
                            } else {
                              // ignore: use_build_context_synchronously
                              Navigator.pushReplacementNamed(
                                  context, RouteDiljobsapp.main);
                            }
                          }
                        },
                        text: "Sign In",
                        color: ColordilJobsApp.primary,
                        fontColor: ColordilJobsApp.white,
                      ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Center(
                child: TextButton(
                    onPressed: () => Navigator.pushReplacementNamed(
                        context, RouteDiljobsapp.signup),
                    child: Text(
                      "Sign Up",
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
