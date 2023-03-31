import 'package:flutter/material.dart';
import 'package:flutter_layouts/flutter_layouts.dart';

class BottomStickyScreen extends StatefulWidget {
  static const routeName = "/demo/sticky-footer";

  @override
  State<StatefulWidget> createState() => _BottomStickyScreenState();
}

class _BottomStickyScreenState extends State<BottomStickyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("sticky bottom"),
        ),
        body: _buildBody() // animationsList() //
        );
  }

  Widget _buildBody() {
    return BottomSticky(
      body: ListView.builder(
        itemBuilder: (c, i) {
          return Text("body");
        },
        itemCount: 50,
      ),
      bottom: FloatingActionButton(
        onPressed: () {},
        child: Text("press me"),
      ),
//        bottomSize: 100,
    );
  }

  Widget animationsList() {
    return Expanded(
      child: ShaderMask(
        shaderCallback: (Rect bounds) {
          return LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[Colors.transparent, Colors.red],
          ).createShader(bounds);
        },
        child: Container(
          height: 200.0,
          width: 200.0,
          color: Colors.blue,
        ),
        blendMode: BlendMode.dstATop,
      ),
    );
  }
}
