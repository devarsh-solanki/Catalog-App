import 'package:flutter/material.dart';
import 'package:my_first_app/core/store.dart';
import 'package:my_first_app/models/cart.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: context.canvasColor,
        iconTheme: IconThemeData(color: context.accentColor),
        title: "Cart".text.bold.letterSpacing(1).make(),
      ),
      body: Column(
        children: [
          _CartList().p32().expand(),
          Divider(),
          _CardTotal(),
        ],
      ),
    );
  }
}

class _CardTotal extends StatelessWidget {
  const _CardTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // VxState.watch(context, on: [AddMutation, RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VxConsumer(
            builder: (context, store, status) {
              return "\$${_cart.totalPrice}"
                  .text
                  .xl3
                  .bold
                  .color(context.accentColor)
                  .make();
            },
            mutations: {RemoveMutation}, // {AddMutation, RemoveMutation},
          ),
          100.widthBox,
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  // ignore: deprecated_member_use
                  backgroundColor: context.theme.buttonColor,
                  content: "Buying not supported yet."
                      .text
                      .color(Colors.white)
                      .letterSpacing(1)
                      .xl
                      .make(),
                ),
              );
            },
            style: ButtonStyle(
              backgroundColor:
                  // ignore: deprecated_member_use
                  MaterialStateProperty.all(context.theme.buttonColor),
            ),
            child:
                "Buy".text.color(Colors.white).xl.bold.letterSpacing(1).make(),
          ).w20(context),
        ],
      ),
    );
  }
}

class _CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    return _cart.items.isEmpty
        ? "Nothing to show"
            .text
            .xl3
            .color(context.accentColor)
            .make()
            .centered()
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (context, index) => ListTile(
              leading: Icon(
                Icons.done,
                color: context.accentColor,
              ),
              title: _cart.items[index].name.text.xl2.bold.make(),
              trailing: IconButton(
                onPressed: (() {
                  RemoveMutation(item: _cart.items[index]);
                }),
                icon: Icon(
                  Icons.remove_circle_outline,
                  color: context.accentColor,
                ),
              ),
            ),
          );
  }
}
