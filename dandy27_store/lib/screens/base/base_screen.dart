import 'package:dandy27_store/common/custom_drawer/custom_drawer.dart';
import 'package:dandy27_store/common/custom_drawer/drawer_tile.dart';
import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {

  final PageController pageController = PageController();


  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: pageController,
      children: [
        Scaffold(
          drawer: CustomDrawer(),
          appBar: AppBar(
            title: const Text('Home'),
          ),
        ),
        Container(color: Colors.red,),
        Container(color: Colors.yellow,),
        Container(color: Colors.green,)
      ],
    );
  }
}
