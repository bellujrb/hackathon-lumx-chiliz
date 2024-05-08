import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:frontend/utils/styles/colors.dart';
import 'package:frontend/utils/styles/text_styles.dart';

class BuildAppBar extends StatefulWidget implements PreferredSizeWidget {
  const BuildAppBar({Key? key})
      : preferredSize = const Size.fromHeight(88),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  // ignore: library_private_types_in_public_api
  _BuildAppBarState createState() => _BuildAppBarState();
}

class _BuildAppBarState extends State<BuildAppBar> {
  String _currentLanguage = 'EN';

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: widget.preferredSize.height,
      title: Text(
        'Fanify',
        style: context.appTextStyles.title,
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20, right: 10),
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Sport teams',
              style: context.appTextStyles.superSmallBlack50,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20, right: 10),
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Artists & Celebs',
              style: context.appTextStyles.superSmallBlack50,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20, right: 10),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              borderRadius: BorderRadius.circular(16),
              value: _currentLanguage,
              icon: const Icon(Icons.arrow_drop_down, color: Colors.grey),
              onChanged: (String? newValue) {
                setState(() {
                  _currentLanguage = newValue!;
                });
              },
              items: <String>['EN', 'PT-BR']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Row(
                    children: [
                      const Icon(Icons.language, color: Colors.grey),
                      const SizedBox(width: 10),
                      Text(value),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20, right: 10),
          child: InkWell(
            onTap: () {
              Modular.to.navigate("login");
            },
            child: Container(
              alignment: Alignment.center,
              height: 24,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: AppColors.onTertiary,
              ),
              child: const Text('Login'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20, right: 10),
          child: InkWell(
            onTap: () {
              Modular.to.navigate("token");
            },
            child: Container(
              alignment: Alignment.center,
              height: 24,
              width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: AppColors.tertiary,
              ),
              child: const Text('Create your Fan Token'),
            ),
          ),
        ),
      ],
      backgroundColor: Colors.white,
    );
  }
}
