import 'package:catalog/app/about_page.dart';
import 'package:catalog/app/button_page.dart';
import 'package:catalog/app/checkbox_page.dart';
import 'package:catalog/app/list_page.dart';
import 'package:catalog/app/menu_page.dart';
import 'package:flutter/material.dart';

import 'credt_card_tile_page.dart';
import 'drop_down_page.dart';
import 'filter_page.dart';
import 'home_top_bar_page.dart';
import 'spending_tile_page.dart';
import 'text_field_page.dart';
import 'transaction_top_bar_page.dart';
import 'widgets/custom_drawer_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Widget page;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    page = const AboutPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Column(
              children: [
                CustomDrawerButton(
                  label: 'Home Top Bar',
                  icon: const Icon(Icons.home),
                  onPressed: () {
                    setState(() {
                      page = const HomeTopBarPage();
                    });
                  },
                ),
                CustomDrawerButton(
                  label: 'Transaction Top Bar',
                  icon: const Icon(Icons.monetization_on_outlined),
                  onPressed: () {
                    setState(() {
                      page = const TransactionTopBarPage();
                    });
                  },
                ),
                CustomDrawerButton(
                  label: 'Menu',
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    setState(() {
                      page = const MenuPage();
                    });
                  },
                ),
                CustomDrawerButton(
                  label: 'Text Field',
                  icon: const Icon(Icons.text_format_rounded),
                  onPressed: () {
                    setState(() {
                      page = const TextFieldPage();
                    });
                  },
                ),
                CustomDrawerButton(
                  label: 'Drop Down',
                  icon: const Icon(Icons.arrow_drop_down_circle),
                  onPressed: () {
                    setState(() {
                      page = const DropDownPage();
                    });
                  },
                ),
                CustomDrawerButton(
                  label: 'Button',
                  icon: const Icon(Icons.rectangle_rounded),
                  onPressed: () {
                    setState(() {
                      page = const ButtonPage();
                    });
                  },
                ),
                CustomDrawerButton(
                  label: 'Check Box',
                  icon: const Icon(Icons.check_box_rounded),
                  onPressed: () {
                    setState(() {
                      page = const CheckBoxPage();
                    });
                  },
                ),
                CustomDrawerButton(
                  label: 'Transaction List',
                  icon: const Icon(Icons.list_rounded),
                  onPressed: () {
                    setState(() {
                      page = const ListPage();
                    });
                  },
                ),
                CustomDrawerButton(
                  label: 'Transaction List',
                  icon: const Icon(Icons.filter_alt_rounded),
                  onPressed: () {
                    setState(() {
                      page = const FilterPage();
                    });
                  },
                ),
                CustomDrawerButton(
                  label: 'Transaction List',
                  icon: const Icon(Icons.filter_alt_rounded),
                  onPressed: () {
                    setState(() {
                      page = const CredtCardTilePage();
                    });
                  },
                ),
                CustomDrawerButton(
                  label: 'Transaction List',
                  icon: const Icon(Icons.filter_alt_rounded),
                  onPressed: () {
                    setState(() {
                      page = const SpendingTilePage();
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: page,
            ),
          ),
        ),
      ),
    );
  }
}
