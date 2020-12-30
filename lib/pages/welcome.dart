import 'package:flutter/material.dart';
// import 'dart:developer' as developer;
import '../components/interface.dart';
//import '../pages/gameplay.dart';
import '../components/box.dart';
import '../classes/colorset.dart';
import '../components/tile.dart';


class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget cross() {
      var startTileSize = 70.0;
      Colorset introColorSet = Colorset(Colorset.colorssets['blue']);

      return Column(
        children: [
         
          Tile( 0, 0, "", false ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                 Tile( 0, 0, "", false),
                 Tile( 0, 0,  "Play", true),
                Tile( 0, 0,  "", false),
            ],
          ),
             Tile( 0, 0, "", false ),
        ],
      );
    }

    return Column (
      
        children: [Stack(alignment: Alignment.center, children: [
          BkgImageWidget(),
          ColorFilterWidget(),
          Container(
              alignment: Alignment.center,
              child: Padding(
        padding: EdgeInsets.symmetric(vertical: 100.0),
        child: Column(children: [TitleText(), cross()])
        )
          )
        ]
        )]
        );
  }
}