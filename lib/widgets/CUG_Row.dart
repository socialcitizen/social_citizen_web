import 'package:flutter/material.dart';
import 'package:social_citizen_web/widgets/chips.dart';
import 'package:social_citizen_web/widgets/forum_grid.dart';

class CUGRow extends StatelessWidget {
  const CUGRow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Text('Hey You goat'),
              ],
            ),
          ),
          SizedBox(
            width: size.width * 0.06,
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
               chipList(),
               Forum(),
              ],
            ),
          ),
        ],
      );
  }
}