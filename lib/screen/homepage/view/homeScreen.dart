import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.custom(
              gridDelegate: SliverWovenGridDelegate.count(pattern: [
                WovenGridTile(1),
                WovenGridTile(4 / 7,
                    crossAxisRatio: 0.9,
                    alignment: AlignmentDirectional.centerEnd)
              ], crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8),
              childrenDelegate: SliverChildBuilderDelegate(
                  childCount: 10, (context, index) => custom())),
        ),
      ),
    );
  }

  Widget custom() {
    return Container(
      color: Colors.black,
      height: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/raj.jpg",
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(height: 30,width: 200,color: Colors.blueAccent,child: Center(child: Text("Raj",style: TextStyle(color: Colors.white))),)
          ),
        ],
      ),
    );
  }
}
