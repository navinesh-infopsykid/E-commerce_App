import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lit_starfield/view/lit_starfield_container.dart';

class LitStarfield extends StatelessWidget {
  const LitStarfield({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LitStarfieldContainer(
      animated: true,
      number: 500,
      velocity: 0.85,
      depth: 0.9,
      scale: 4,
      starColor: Colors.amber,
      backgroundDecoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).primaryColor,
            Theme.of(context).colorScheme.tertiary,
            Color(0xFF05294B),
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
    );
  }
}