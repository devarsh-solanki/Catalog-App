import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App"
            .text
            .xl5
            .bold
            // ignore: deprecated_member_use
            .color(context.theme.accentColor)
            .make(),
        "Trending products"
            .text
            .xl2
            .bold
            // ignore: deprecated_member_use
            .color(context.theme.accentColor)
            .make(),
        10.heightBox,
      ],
    );
  }
}
