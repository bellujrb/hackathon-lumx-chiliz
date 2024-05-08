// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:frontend/utils/extensions/build_context_utils.dart';
import 'package:frontend/utils/styles/colors.dart';
import 'package:frontend/utils/styles/text_styles.dart';
import 'package:frontend/widgets/benefit_card.dart';
import 'package:frontend/widgets/build_appbar.dart';
import 'package:frontend/widgets/faq.dart';
import 'package:frontend/widgets/token_calculator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    if (context.mediaWidth > 1250) {
      return Scaffold(
        appBar: const BuildAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                width: context.mediaWidth * 1.0,
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Create engaging Fan Token\nexperiences for your audience!',
                      style: context.appTextStyles.titleSuper,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Fan Token is a digital asset that transforms passion into rewards. As a Fan Token holder,\nyour fans can access once-in-a-lifetime experiences, exclusive benefits and other perks!",
                      style: context.appTextStyles.smallBlack50,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: 58,
                            width: 185,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: AppColors.backgroundGray,
                            ),
                            child: Text(
                              'Explore Fan Tokens',
                              style: context.appTextStyles.smallBlack50,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: 58,
                            width: 185,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: AppColors.tertiary,
                            ),
                            child: Text(
                              'Create your Token',
                              style: context.appTextStyles.smallWhite,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                width: context.mediaWidth * 1.0,
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Benefits",
                      style: context.appTextStyles.superSmallBlack50,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Why would I create a Fan Token?",
                      style: context.appTextStyles.bigBlack,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BenefitCard(
                            title: "Beneficio 1",
                            description:
                                "Show examples cases: Success, show application and others"),
                        SizedBox(
                          width: 25,
                        ),
                        BenefitCard(
                            title: "Beneficio 1",
                            description:
                                "Show examples cases: Success, show application and others"),
                        SizedBox(
                          width: 25,
                        ),
                        BenefitCard(
                            title: "Beneficio 1",
                            description:
                                "Show examples cases: Success, show application and others"),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                width: context.mediaWidth * 1.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Use Cases",
                      style: context.appTextStyles.superSmallBlack50,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Discover how Fan Tokens are already\nbeen used out there!",
                      style: context.appTextStyles.bigBlack,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 66,
                          width: 420,
                          decoration: BoxDecoration(
                              color: AppColors.backgroundGray,
                              borderRadius: BorderRadius.circular(24)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: _selectedCategory == 0
                                      ? AppColors.tertiary
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      _selectedCategory = 0;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12.0, vertical: 8.0),
                                    child: Text(
                                      'Sport teams',
                                      style: _selectedCategory == 0
                                          ? context.appTextStyles.smallWhite
                                          : context
                                              .appTextStyles.superSmallBlack50,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: _selectedCategory == 1
                                      ? AppColors.tertiary
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      _selectedCategory = 0;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12.0, vertical: 8.0),
                                    child: Text(
                                      'Artists & Celebs',
                                      style: _selectedCategory == 1
                                          ? context.appTextStyles.smallWhite
                                          : context
                                              .appTextStyles.superSmallBlack50,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        buildConditionalContent(),
                        const SizedBox(
                          height: 20,
                        ),
                        const TokenCalculatorPage(),
                        const SizedBox(
                          height: 10,
                        ),
                        const FaqPage(),
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          height: 265,
                          width: context.mediaWidth * 1.0,
                          decoration: BoxDecoration(color: AppColors.tertiary),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Fanify",
                                style: context.appTextStyles.bigWhite,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "© Copyright 2024. All Rights Reserved",
                                style: context.appTextStyles.smallWhite70,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Mobile version under development, please use on your computer.",
          style: context.appTextStyles.bigBlack,
        ),
      );
    }
  }

  Widget buildConditionalContent() {
    if (_selectedCategory == 0) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: context.mediaWidth * 0.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Corinthians",
                  style: context.appTextStyles.miniBigBlack,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Corinthians has the SCCP fan token. The project was launched in September also in partnership with Socios.com. Like Atlético-MG, the club sold 850,000 units in the initial offer, and raised US 1.7 million – part of which went to the issuing company. With SCCP, Corinthians fans can help define, for example, which of the team's idols will be immortalized with the next bust in Parque São Jorge, the club's headquarters.",
                  style: context.appTextStyles.superSmallBlack50,
                )
              ],
            ),
          ),
          const SizedBox(
            width: 25,
          ),
          SizedBox(
            height: 400,
            width: 720,
            child: Image.asset("assets/img/team-case-1.png"),
          )
        ],
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
