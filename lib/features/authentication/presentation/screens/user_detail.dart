import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import 'package:rent_n_hire/core/theme/styles.dart';
import 'package:rent_n_hire/shared/widgets/loading_dialog_widget.dart';

class UserDetail extends StatelessWidget {
  const UserDetail({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text(
          'Profile Detail',
          style: appbartitlestyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              _buildInputfield(
                title: "What's your name?",
                hint: "Eneter your name",
              ),
              _buildGenderSelect(title: "Choose your gender"),
              _buildInputfield(
                title: "Your email address",
                hint: "Eneter your name",
              ),
              _buildInputfield(
                title: "Your address",
                hint: "Eneter your address",
              ),
              _buildInputfield(
                title: "Your city",
                hint: "Eneter your city",
              ),
              _buildInputfield(
                title: "Your state",
                hint: "Eneter your state",
              ),
              _buildInputfield(
                title: "Your pincode",
                hint: "Eneter your pincode",
              ),
              const Gap(25),
              SizedBox(
                width: size.width,
                child: ElevatedButton(
                  onPressed: () async {
                    showDialog(
                        context: context,
                        builder: (ctx) => const LoadingDialogWidget(
                            title: 'Creating account'));
                    await Future.delayed(const Duration(seconds: 2));
                    if (context.mounted) context.go('/home');
                  },
                  style: authbtnstyle,
                  child: const Text(
                    'Continue',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputfield({
    TextEditingController? controller,
    required String title,
    required String hint,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 14),
          ),
          const Gap(12),
          Container(
              decoration: const BoxDecoration(),
              child: TextFormField(
                controller: controller,
                decoration: InputDecoration(
                    hintText: hint,
                    hintStyle:
                        TextStyle(color: Colors.grey.shade500, fontSize: 14),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              )),
        ],
      ),
    );
  }

  Widget _buildGenderSelect({
    required String title,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 14),
          ),
          const Gap(12),
          Row(
            children: List.generate(
              genders.length,
              (index) => Container(
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(100)),
                child: Row(
                  children: [
                    Icon(genders[index].icon),
                    const Gap(8),
                    Text(
                      genders[index].gender,
                      style: const TextStyle(fontSize: 13),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Gender {
  final String gender;
  final IconData icon;
  Gender({
    required this.gender,
    required this.icon,
  });
}

List<Gender> genders = [
  Gender(gender: "Male", icon: Icons.male),
  Gender(gender: "Female", icon: Icons.female),
  Gender(gender: "Other", icon: Icons.transgender),
];
