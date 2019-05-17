import 'package:flutter/material.dart';
import './ScaleAnimationRoute.dart';

class PetsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('宠物2'),
        ),
        body: ScaleAnimationRoute());
  }
}
