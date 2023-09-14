import 'package:catalog/app/about_page.dart';
import 'package:flutter/material.dart';

import 'home_top_bar_page.dart';
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
