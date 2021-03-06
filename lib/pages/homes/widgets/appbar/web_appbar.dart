import 'package:app_responsividade_studio/pages/homes/widgets/appbar/web_appbar_responsive_content.dart';
import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 80,
      title: Row(
        children: [
          Text("AppBar Web"),
          SizedBox(width: 20),
          WebAppBarResponsiveContent(),
          const SizedBox(width: 32),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          SizedBox(width: 20),
          OutlinedButton(
            onPressed: () {},
            child: Text(
              "Fazer Login",
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(width: 8),
          OutlinedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateColor.resolveWith((states) => Colors.white)
            ),
            onPressed: () {},
            child: Text(
              "Cadastrar",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
