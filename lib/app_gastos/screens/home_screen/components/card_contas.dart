import 'package:app_responsividade_studio/app_gastos/models/conta.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

Widget cardConta(BuildContext context, Conta conta) {
  return InkWell(
    onTap: () {},
    child: Center(
      child: Container(
        width: MediaQuery.of(context).size.width - 60,
        margin: EdgeInsets.only(right: 10.0, left: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: Color(0xFF07436A),
          boxShadow: [
            BoxShadow(
                color: Color(0x100000),
                blurRadius: 10,
                spreadRadius: 4,
                offset: Offset(0.0, 8.0)),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              top: 14,
              right: 12,
              child: Text(
                "${conta.titulo}",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 64,
              left: 16,
              child: Text(
                "Saldo em conta",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 81,
              left: 16,
              child: Text(
                "R\$ ${conta.saldo.toString()}",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget carrousel(BuildContext context) {
  return CarouselSlider(
    options: CarouselOptions(
        //autoPlay: true,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
        aspectRatio: 2,
        height: 180.0),
    items: [1, 2, 3, 4, 5].map((i) {
      return Builder(
        builder: (context) {
          return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Color(0xFF07436A),
                boxShadow: [
                  BoxShadow(
                      color: Color(0x100000),
                      blurRadius: 10,
                      spreadRadius: 4,
                      offset: Offset(0.0, 8.0)),
                ],
              ),
              child: Text(
                'text $i',
                style: TextStyle(fontSize: 16.0),
              ));
        },
      );
    }).toList(),
  );
}
