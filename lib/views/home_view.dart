import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_wallet_app/constants.dart';
import 'package:my_wallet_app/views/add_expenses_view.dart';
import 'package:my_wallet_app/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundTheme,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: FloatingActionButton(
            backgroundColor: kThemeColor,
            child: const Icon(
              FontAwesomeIcons.plus,
            ),
            onPressed: () {
              Navigator.pushNamed(context, AddExpensesView.id);
            }),
      ),
      body: const HomeViewBody(),
    );
  }
}
