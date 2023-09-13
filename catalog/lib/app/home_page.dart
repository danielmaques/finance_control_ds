import 'package:catalog/app/about_page.dart';
import 'package:flutter/material.dart';

import 'widgets/afinz_drawer_button.dart';

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
      // appBar: AfinzAppBar(
      //   title: 'Afinz Design System',
      //   leadingIcon: AfinzIcons.menu,
      //   onPressedleading: () => _scaffoldKey.currentState!.openDrawer(),
      //   elevation: 0,
      // ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomDrawerButton(
                label: 'Sobre',
                icon: const Icon(Icons.abc),
                onPressed: () {
                  setState(() {
                    page = const AboutPage();
                  });
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
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
    );
  }
}
