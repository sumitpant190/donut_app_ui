import 'package:donut_app_ui/utils/donut_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DonutTab extends StatelessWidget {
  //lis of donuts
  List donutOnSale = [
    //[ donutFlavour , donutPrice , donutColor , imageName]
    ['Ice Cream', '36', Colors.blue, 'lib/images/icecream_donut.png'],
    ['Strwaberry', '36', Colors.red, 'lib/images/strawberry_donut.png'],
    ['Grape Ape', '36', Colors.purple, 'lib/images/grape_donut.png'],
    ['Choco', '36', Colors.brown, 'lib/images/chocolate_donut.png'],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutOnSale.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.5),
      itemBuilder: (context, index) {
        return DonutTile(
            donutFlavour: donutOnSale[index][0],
            donutPrice: donutOnSale[index][1],
            donutColor: donutOnSale[index][2],
            imageName: donutOnSale[index][3]);
      },
    );
  }
}
