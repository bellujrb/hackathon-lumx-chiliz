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
        "answer": "The crypto market has invaded soccer fields. Throughout 2021, several Brazilian clubs launched their own fan tokens, digital assets that have a specific function: to connect fans with sports teams. In this guide, InfoMoney explains how these crypto-assets work and where to buy them.",
      },
      {
        "question":
            "What are the benefits of creating Fank Tokens for my fans?",
        "answer": "Enhances engagement, creates new revenue streams, strengthens community, and offers exclusive rewards.",
      },
      {
        "question": "How much will I eaarn and how much will it cost?",
        "answer": "Earnings depend on token demand and strategy; costs include development, marketing, and platform fees.",
      },
      {
        "question":
            "How do I create Fan Tokens? I don't know much about crypto and blockchain.",
        "answer": "Partner with a blockchain platform specializing in fan tokens to handle the technical aspects.",
      },
      {
        "question": "How do i Get verifyed?",
        "answer": "Apply for verification through the platform where you plan to issue your tokens, providing required identification and information.",
      },
      {
        "question": "What is Chiliz?",
        "answer": "Chiliz is a blockchain platform that provides sports and entertainment entities with tools to engage and monetize their audiences through Fan Tokens.",
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
