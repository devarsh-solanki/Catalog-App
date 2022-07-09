// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_first_app/widgets/home_widgets/add_to_cart.dart';
import 'package:my_first_app/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class homeDetailsPage extends StatelessWidget {
  final Item catalog;
  const homeDetailsPage({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.cardColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: context.cardColor,
        // ignore: deprecated_member_use
        iconTheme: IconThemeData(color: context.theme.accentColor),
      ),
      bottomNavigationBar: Container(
        color: context.canvasColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}"
                .text
                .xl3
                .color(context.theme.dividerColor)
                .bold
                .make(),
            Container(
              child: AddTOCart(catalog: catalog).wh(100, 40),
            ),
          ],
        ),
      ).p24().backgroundColor(context.canvasColor),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(
                  catalog.image,
                ).innerShadow(color: context.theme.shadowColor),
              ).h32(context),
            ),
            Expanded(
              child: VxArc(
                height: 30,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: context.canvasColor,
                  width: context.screenWidth,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        catalog.name.text.xl4.bold.make(),
                        catalog.desc.text
                            .textStyle(context.captionStyle)
                            .xl
                            .bold
                            .make(),
                        "Dolores sed at no sanctus aliquyam diam. Sed erat clita gubergren accusam magna sed sit sit. Sadipscing eirmod et duo."
                            .text
                            .lg
                            .make()
                            .p20(),
                        "Justo ea sadipscing et amet amet. Kasd et no labore rebum, sanctus amet stet dolor est. Stet sit lorem sit.  gubergren accusam magna sed sit sit. Sadipscing eirmod et duo."
                            .text
                            .lg
                            .make()
                            .px20(),
                      ],
                    ).py64(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
