import 'package:flutter/material.dart';

import 'Answer_item.dart';

class Makeitems extends StatelessWidget {
  const Makeitems(this.items,{super.key});

  final List<Map<String,Object>> items;
  @override
  Widget build(BuildContext context) {
      return Column(
        children: items.map(
            (data){
              return MakesingleItem(data);
      }
        ).toList(),
      );
  }
}
