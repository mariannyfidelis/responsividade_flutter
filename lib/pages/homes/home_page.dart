import 'package:app_responsividade_studio/pages/homes/widgets/appbar/mobile_appbar.dart';
import 'package:app_responsividade_studio/pages/homes/widgets/appbar/web_appbar.dart';
import 'package:flutter/material.dart';
import 'package:app_responsividade_studio/breakpoints.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      //Retorna a menor largura e menor largura
      /*
            print("maxWidth -> ${constraints.maxWidth.toString()}");
            print("maxHeight -> ${constraints.maxHeight.toString()}");
            //Retorna a menor largura e menor altura
            print("minWidth -> ${constraints.minWidth.toString()}");
            print("minHeight -> ${constraints.minHeight.toString()}");

            print("as->${constraints.biggest.toString()}");
            print("${constraints.smallest.toString()}");
          */
      return Scaffold(
        appBar: constraints.maxWidth < mobileBreakpoint
            ? PreferredSize(
                child: MobileAppBar(),
                preferredSize: Size(double.infinity, 56),
              )
            : PreferredSize(child: WebAppBar(), preferredSize: Size(double.infinity, 80)),
        drawer: constraints.maxWidth <= mobileBreakpoint ? Drawer(): null,
        body: Container(),
      );
    });
  }
}
