import 'package:flutter/material.dart';
import 'package:my_first_app/main.dart';
import 'package:velocity_x/velocity_x.dart';

class MySettings extends StatefulWidget {
  const MySettings({Key? key}) : super(key: key);

  @override
  State<MySettings> createState() => _MyWidgetState();
}

bool isDark = false;

class _MyWidgetState extends State<MySettings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.canvasColor,
        appBar: AppBar(
          backgroundColor: context.canvasColor,
          title: "Settings".text.make(),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Title(
              color: context.accentColor,
              child: "Theme"
                  .text
                  .xl2
                  .color(Color.fromARGB(255, 0, 190, 143))
                  .letterSpacing(1)
                  .bold
                  .make(),
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: "Dark Theme"
                        .text
                        .xl2
                        .color(context.accentColor)
                        .letterSpacing(1)
                        .make(),
                    subtitle: "Light text against dark background"
                        .text
                        .color(context.accentColor)
                        .letterSpacing(1)
                        .make(),
                    trailing: Column(
                      children: [
                        Switch(
                          value: isDark,
                          onChanged: (boolValue) {
                            setState(() async {
                              isDark = boolValue;
                              return main();
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                ],
              ),
            )
          ],
        ).p24(),
      ),
    );
  }
}
