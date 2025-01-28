import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rent_n_hire/core/theme/styles.dart';
import 'package:text_divider/text_divider.dart';

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
              height: size.height * 0.48,
              width: size.width,
              child: const Placeholder(),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  const Text(
                    "Hey Welcome Back!",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const Gap(25),
                  TextDivider.horizontal(
                      text: const Text(
                    'Log in or sign up',
                    style: TextStyle(fontSize: 13, color: Colors.black54),
                  )),
                  const Gap(25),
                  Container(
                      decoration: const BoxDecoration(),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixText: '+91 ',
                            prefixStyle: const TextStyle(
                                color: Colors.black, fontSize: 15),
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
                      onPressed: () {},
                      style: authbtnstyle,
                      child: const Text(
                        'Continue',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  const Gap(25),
                  const TextDivider(
                      text: Text(
                    'or',
                    style: TextStyle(fontSize: 13, color: Colors.black54),
                  )),
                  const Gap(25),
                  SizedBox(
                    width: size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: googlebtnstyle,
                      child: const Text(
                        'Google',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const Gap(30),
                  const Text(
                    'By continuing, you agree to our Terms of Service, Privacy Policy',
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.black87,
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
