import 'package:flutter/material.dart';
import 'package:my_first_app/core/store.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/cart.dart';
import '../../models/catalog.dart';

class AddTOCart extends StatelessWidget {
  final Item catalog;
  AddTOCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation, RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    bool isInCart = _cart.items.contains(catalog);
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            // ignore: deprecated_member_use
            MaterialStateProperty.all(
                // ignore: deprecated_member_use
                context.theme.buttonColor),
        // shape: MaterialStateProperty.all(StadiumBorder()),
      ),
      onPressed: () {
        if (!isInCart) {
          AddMutation(item: catalog);
        }
      },
      child: isInCart
          ? Icon(
              Icons.done,
              color: Colors.white,
            )
          : "Add".text.color(Colors.white).lg.bold.make(),
    );
  }
}
