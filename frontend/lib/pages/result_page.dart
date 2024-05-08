import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:frontend/utils/extensions/build_context_utils.dart';
import 'package:frontend/utils/styles/colors.dart';
import 'package:frontend/utils/styles/text_styles.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Modular.to.navigate("/");
    });
  }

  @override
  Widget build(BuildContext context) {
    if (context.mediaWidth > 1250) {
      return Scaffold(
        body: Container(
          alignment: Alignment.center,
          height: context.mediaHeight * 1.0,
          width: context.mediaWidth * 1.0,
          decoration: BoxDecoration(color: AppColors.backgroundGray),
          child: SizedBox(
            height: 616,
            width: 848,
            child: Image.asset("assets/img/mock_img6.png"),
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
