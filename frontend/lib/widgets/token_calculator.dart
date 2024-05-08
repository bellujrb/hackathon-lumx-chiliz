import 'package:flutter/material.dart';
import 'package:frontend/utils/extensions/build_context_utils.dart';
import 'package:frontend/utils/styles/colors.dart';
import 'package:frontend/utils/styles/text_styles.dart';

class TokenCalculatorPage extends StatefulWidget {
  const TokenCalculatorPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TokenCalculatorPageState createState() => _TokenCalculatorPageState();
}

class _TokenCalculatorPageState extends State<TokenCalculatorPage> {
  final TextEditingController _tokenAmountController = TextEditingController();
  final TextEditingController _tokenPriceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width;

    return Container(
      alignment: Alignment.center,
      height: 624,
      width: mediaWidth,
      child: Container(
        alignment: Alignment.center,
        height: 464,
        width: mediaWidth * 0.8,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: context.mediaWidth * 0.38,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Calculator",
                      style: context.appTextStyles.smallWhite70,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Preview how much you'll get from your Fan Token",
                      style: context.appTextStyles.bigWhite,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Fan Tokens can be profitable! Preview how much money you’ll get in the FTO (Fan Token Offering) of your own Token.",
                      style: context.appTextStyles.smallWhite70,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              SizedBox(
                width: context.mediaWidth * 0.3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 64,
                      width: 400,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: TextField(
                        controller: _tokenAmountController,
                        decoration: InputDecoration(
                          label: Row(
                            children: [
                              Text(
                                "Token Offer",
                                style: context.appTextStyles.smallWhite,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.info,
                                color: AppColors.backgroundWhite,
                              )
                            ],
                          ),
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.backgroundWhite, width: 2)),
                          hintText: 'How many Tokens would you like to sell?',
                          hintStyle: const TextStyle(color: Colors.grey),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 64,
                      width: 400,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: TextField(
                        controller: _tokenPriceController,
                        decoration: InputDecoration(
                          label: Row(
                            children: [
                              Text(
                                "Token Offer",
                                style: context.appTextStyles.smallWhite,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.info,
                                color: AppColors.backgroundWhite,
                              )
                            ],
                          ),
                          filled: true,
                          fillColor: Colors.transparent,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.backgroundWhite,
                              width: 2,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2.5,
                            ),
                          ),
                          hintText: 'How much your Token will cost?',
                          hintStyle: const TextStyle(color: Colors.grey),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: _calculateRevenue,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: AppColors.secondary,
                            borderRadius: BorderRadius.circular(16)),
                        height: 64,
                        width: 400,
                        child: Text(
                          "Preview your revenue",
                          style: context.appTextStyles.smallBlack,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _calculateRevenue() {
    if (_tokenAmountController.text.isNotEmpty &&
        _tokenPriceController.text.isNotEmpty) {
      final int tokenCount = int.tryParse(_tokenAmountController.text) ?? 0;
      final double tokenPrice =
          double.tryParse(_tokenPriceController.text) ?? 0.0;
      final double revenue = tokenCount * tokenPrice;

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Revenue Preview'),
          content: Text('Total Revenue: \$${revenue.toStringAsFixed(2)}'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error'),
          content: Text('Please fill in both fields to calculate the revenue.'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
    }
  }
}
