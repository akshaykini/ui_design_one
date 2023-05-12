import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Row_One extends StatelessWidget {

  final  dockname;
  final iconname;
  const Row_One({super.key,required this.dockname,required this.iconname});

  @override
  Widget build(BuildContext context) {
    return 
          Column(
            children: [
              CircleAvatar(child: Icon(iconname)),
              SizedBox(height: 5),
              Text(dockname,style: TextStyle(fontFamily: 'Perpetua'),)
            ],
          );
  }
}
