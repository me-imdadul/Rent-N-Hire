import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:rent_n_hire/core/theme/styles.dart';
import 'package:text_divider/text_divider.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/helpers/dark_mode.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.44,
              width: size.width,
              child: Image.asset(
                "assets/placeholder1.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Text(
                    "Hey Welcome Back!",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color:
                            isDakMode(context) ? Colors.grey : Colors.black87),
                  ),
                  const Gap(25),
                  TextDivider.horizontal(
                      text: Text(
                    'Log in or sign up',
                    style: TextStyle(
                        fontSize: 13,
                        color:
                            isDakMode(context) ? Colors.grey : Colors.black54),
                  )),
                  const Gap(25),
                  Container(
                      decoration: const BoxDecoration(),
                      child: TextFormField(
                        style: TextStyle(
                            color: isDakMode(context)
                                ? Colors.grey
                                : Colors.black87),
                        decoration: InputDecoration(
                            prefixText: '+91 ',
                            prefixStyle: TextStyle(
                                color: isDakMode(context)
                                    ? Colors.grey
                                    : Colors.black,
                                fontSize: 15),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            hintText: "Enter Phone Number",
                            hintStyle: TextStyle(
                                color: Colors.grey.shade500, fontSize: 15),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12))),
                      )),
                  const Gap(18),
                  SizedBox(
                    width: size.width,
                    child: ElevatedButton(
                      onPressed: () {
                        context.push('/userdetail');
                      },
                      style: authbtnstyle,
                      child: const Text(
                        'Continue',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  const Gap(25),
                  TextDivider(
                      text: Text(
                    'or',
                    style: TextStyle(
                        fontSize: 13,
                        color:
                            isDakMode(context) ? Colors.grey : Colors.black54),
                  )),
                  const Gap(25),
                  SizedBox(
                    width: size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                              side: const BorderSide(color: kyellow)),
                          fixedSize: const Size(double.infinity, 50),
                          foregroundColor: Colors.black45,
                          backgroundColor: isDakMode(context)
                              ? kbgcolor
                              : Colors.grey.shade100),
                      child: Text(
                        'Google',
                        style: TextStyle(
                            fontSize: 16,
                            color: isDakMode(context)
                                ? Colors.grey
                                : Colors.black54),
                      ),
                    ),
                  ),
                  const Gap(30),
                  Text(
                    'By continuing, you agree to our Terms of Service, Privacy Policy',
                    style: TextStyle(
                        fontSize: 10,
                        color:
                            isDakMode(context) ? Colors.grey : Colors.black87,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
