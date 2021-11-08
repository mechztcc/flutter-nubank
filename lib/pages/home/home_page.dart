import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nubank/pages/home/widgets/card_app.dart';
import 'package:nubank/pages/home/widgets/my_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMenu = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    double _screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          MyAppBar(
            showMenu: _showMenu,
            onTap: () {
              setState(() {
                _showMenu = !_showMenu;
              });
            }
          ),
          Positioned(
            top: _screenHeight * 0.25,
            height: _screenHeight * 0.55,
            left: 0,
            right: 0,
            child: PageView(
              physics: BouncingScrollPhysics(),
              children: [
                CardApp(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
