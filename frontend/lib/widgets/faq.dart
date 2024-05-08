import 'package:flutter/material.dart';
import 'package:frontend/utils/styles/colors.dart';
import 'package:frontend/utils/styles/text_styles.dart';

class FaqPage extends StatelessWidget {
  const FaqPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> faqData = [
      {
        "question": "What are Fan Tokens?",
        "answer": "",
      },
      {
        "question":
            "What are the benefits of creating Fank Tokens for my fans?",
        "answer": "",
      },
      {
        "question": "How much will I eaarn and how much will it cost?",
        "answer": "",
      },
      {
        "question":
            "How do I crete Fan Tokens? I don't know much about crypto and blockchain.",
        "answer": "",
      },
      {
        "question": "How do i Get verifyed?",
        "answer": "",
      },
      {
        "question": "What is Chiliz?",
        "answer": "",
      },
    ];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "FAQ",
                style: context.appTextStyles.smallBlack,
              ),
              Text(
                "Some things you\nmight be asking",
                style: context.appTextStyles.bigBlack,
              )
            ],
          ),
        ),
        const SizedBox(
          width: 40,
        ),
        Container(
          width: 727,
          decoration: BoxDecoration(
              color: AppColors.backgroundGray,),
          child: Column(
            children: List.generate(
              faqData.length,
              (index) => ExpansionTile(
                title: Text(faqData[index]["question"]!),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(faqData[index]["answer"]!),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
