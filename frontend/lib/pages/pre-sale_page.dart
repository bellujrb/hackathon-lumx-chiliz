// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:frontend/utils/extensions/build_context_utils.dart';
import 'package:frontend/utils/styles/colors.dart';
import 'package:frontend/utils/styles/text_styles.dart';

class PreSalePage extends StatefulWidget {
  const PreSalePage({super.key});

  @override
  State<PreSalePage> createState() => _PreSalePageState();
}

class _PreSalePageState extends State<PreSalePage> {
  @override
  Widget build(BuildContext context) {
    DateTime? selectedDate;
    // ignore: unused_local_variable
    bool launchNow = false;

    final TextEditingController tokenOfferController = TextEditingController();
    final TextEditingController tokenValueController = TextEditingController();
    final TextEditingController walletController = TextEditingController();
    final TextEditingController dataController = TextEditingController();

    // ignore: no_leading_underscores_for_local_identifiers
    String _formatDateTime(DateTime? dateTime) {
      if (dateTime == null) return "";
      return "${dateTime.day.toString().padLeft(2, '0')}/${dateTime.month.toString().padLeft(2, '0')}/${dateTime.year}";
    }

    // ignore: no_leading_underscores_for_local_identifiers
    Future<void> _selectDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate ?? DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2101),
      );
      if (picked != null && picked != selectedDate) {
        setState(() {
          selectedDate = picked;
          dataController.text = _formatDateTime(picked);
        });
      }
    }

    if (context.mediaWidth > 1250) {
      return Scaffold(
          body: Container(
        alignment: Alignment.center,
        height: context.mediaHeight * 1.0,
        width: context.mediaWidth * 1.0,
        decoration: BoxDecoration(color: AppColors.backgroundGray),
        child: Container(
          height: 1000,
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
                    "Pre-sale information",
                    style: context.appTextStyles.miniBigBlack,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "During the pre-sale period, a pre-defined amount of your Fan Tokens will be for sale for the determined value.",
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
                      controller: tokenOfferController,
                      decoration: InputDecoration(
                          label: Row(
                            children: [
                              Text(
                                "Initial Token Offer",
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
                          hintText:
                              'How many Tokens would you like to sell in the initial offer?',
                          hintStyle: const TextStyle(color: Colors.grey),
                          labelStyle: context.appTextStyles.bigBlack),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Total suply: 192827378912893 (Up to 10% of total suply)\n\nTotal fandom number (depend on how popular it is and engagement) Balance of offer and suply",
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
                      controller: tokenValueController,
                      decoration: InputDecoration(
                          label: Row(
                            children: [
                              Text(
                                "Initial Token Value",
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
                          hintText:
                              'How much each Token will cost during the pre-sale?',
                          hintStyle: const TextStyle(color: Colors.grey),
                          labelStyle: context.appTextStyles.bigBlack),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 64,
                        width: 400,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            label: Row(
                              children: [
                                Text(
                                  "Pre-sale Date",
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
                                color: AppColors.backgroundWhite,
                                width: 2,
                              ),
                            ),
                            hintStyle: const TextStyle(color: Colors.grey),
                            labelStyle: context.appTextStyles.bigBlack,
                          ),
                          controller: dataController,
                          readOnly: true,
                          onTap: () {
                            _selectDate(context);
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                content: Text(
                                    'Pre sale date: ${DateTime.now().toString()}'),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text('OK'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: AppColors.tertiary,
                              borderRadius: BorderRadius.circular(16)),
                          height: 50,
                          width: 200,
                          child: Text(
                            "Launch Now!",
                            style: context.appTextStyles.smallWhite,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 118,
                    width: 400,
                    child: Image.asset("assets/img/mock_img4.png"),
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
                      controller: walletController,
                      decoration: InputDecoration(
                          label: Row(
                            children: [
                              Text(
                                "Wallet",
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
                          hintText: 'Who will receive the pre-sale revenue?',
                          hintStyle: const TextStyle(color: Colors.grey),
                          labelStyle: context.appTextStyles.bigBlack),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () => Modular.to.navigate("result"),
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
      ));
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
