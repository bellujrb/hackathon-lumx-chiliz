import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:frontend/utils/extensions/build_context_utils.dart';
import 'package:frontend/utils/styles/colors.dart';
import 'package:frontend/utils/styles/text_styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();

    if (context.mediaWidth > 1250) {
      return Scaffold(
        body: Container(
          alignment: Alignment.center,
          height: context.mediaHeight * 1.0,
          width: context.mediaWidth * 1.0,
          decoration: BoxDecoration(color: AppColors.backgroundGray),
          child: Container(
            height: 500,
            width: context.mediaWidth * 0.6,
            decoration: BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.circular(40)),
            child: Padding(
              padding: const EdgeInsets.all(64.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () => Modular.to.navigate("/"),
                    child: Icon(
                      Icons.arrow_back,
                      color: AppColors.tertiary,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Fanify",
                    style: context.appTextStyles.mediumBlack50,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Great to see you here!",
                    style: context.appTextStyles.bigBlack,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 64,
                    width: 400,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                          label: Row(
                            children: [
                              Text(
                                "E-mail",
                                style: context.appTextStyles.smallBlack,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.info,
                                color: AppColors.tertiary,
                              )
                            ],
                          ),
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.backgroundWhite, width: 2)),
                          hintText: 'Enter your account email',
                          hintStyle: const TextStyle(color: Colors.grey),
                          labelStyle: context.appTextStyles.bigBlack),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Modular.to.navigate("/");
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppColors.tertiary,
                          borderRadius: BorderRadius.circular(16)),
                      height: 64,
                      width: 400,
                      child: Text(
                        "Login",
                        style: context.appTextStyles.smallWhite,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "In development",
          style: context.appTextStyles.bigBlack,
        ),
      );
    }
  }
}
