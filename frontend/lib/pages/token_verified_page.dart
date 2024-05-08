import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:frontend/utils/extensions/build_context_utils.dart';
import 'package:frontend/utils/styles/colors.dart';
import 'package:frontend/utils/styles/text_styles.dart';

class TokenVerifiedPage extends StatelessWidget {
  const TokenVerifiedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController socialController = TextEditingController();

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
              child: SingleChildScrollView(
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
                      "Get your token verified",
                      style: context.appTextStyles.miniBigBlack,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Verify your identity and make your Fan Token trustworthy for your audience. You’ll need to provide enough documentation that you are legaly related to the artist or sport team que token will represent.",
                      style: context.appTextStyles.smallBlack50,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 88,
                      width: 624,
                      child: Image.asset("assets/img/mock_img2.png"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 88,
                      width: 624,
                      child: Image.asset("assets/img/mock_img3.png"),
                    ),
                    Text(
                      "Social Media",
                      style: context.appTextStyles.smallBlack,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Add official social media links to your token.",
                      style: context.appTextStyles.smallBlack50,
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
                        controller: socialController,
                        decoration: InputDecoration(
                            label: Row(
                              children: [
                                Text(
                                  "Social Link",
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
                            hintText: 'Example: instagram.com/lumx',
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
                        Modular.to.navigate("pre-sale");
                      },
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
