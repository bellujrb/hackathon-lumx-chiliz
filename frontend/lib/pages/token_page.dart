import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:frontend/utils/extensions/build_context_utils.dart';
import 'package:frontend/utils/styles/colors.dart';
import 'package:frontend/utils/styles/text_styles.dart';

class TokenPage extends StatelessWidget {
  const TokenPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();

    if (context.mediaWidth > 1250) {
      return Scaffold(
        body: Container(
          alignment: Alignment.center,
          height: context.mediaHeight * 1.0,
          width: context.mediaWidth * 1.0,
          decoration: BoxDecoration(color: AppColors.backgroundGray),
          child: Container(
            height: 790,
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
                    "Welcome to Fanify",
                    style: context.appTextStyles.miniBigBlack,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "It doesn’t matter if you are a Sport Team, a Musician or anything else, your passionate\nfans are waiting to have an exclusive Token that gives them access to awesome perks!",
                    style: context.appTextStyles.smallBlack50,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Basic Fan Token information",
                    style: context.appTextStyles.smallBlack,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "This is basic information to get yout customized Fan Token ready and running",
                    style: context.appTextStyles.smallBlack50,
                  ),const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 88,
                    width: 624,
                    child: Image.asset("assets/img/mock_img.png"),
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
                      controller: _emailController,
                      decoration: InputDecoration(
                          label: Row(
                            children: [
                              Text(
                                "Token name",
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
                          hintText: 'How would you like to call your Token?',
                          hintStyle: const TextStyle(color: Colors.grey),
                          labelStyle: context.appTextStyles.bigBlack),
                      keyboardType: TextInputType.number,
                    ),
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
                      controller: _emailController,
                      decoration: InputDecoration(
                          label: Row(
                            children: [
                              Text(
                                "Token Symbol",
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
                          hintText: 'What will it be the symbol of your Token?',
                          hintStyle: const TextStyle(color: Colors.grey),
                          labelStyle: context.appTextStyles.bigBlack),
                      keyboardType: TextInputType.number,
                    ),
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
                      controller: _emailController,
                      decoration: InputDecoration(
                          label: Row(
                            children: [
                              Text(
                                "Description",
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
                          hintText: 'Describe your Token and the benefits your fans will get from holding it?',
                          hintStyle: const TextStyle(color: Colors.grey),
                          labelStyle: context.appTextStyles.bigBlack),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppColors.tertiary,
                          borderRadius: BorderRadius.circular(16)),
                      height: 64,
                      width: 400,
                      child: Text(
                        "Continue",
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
