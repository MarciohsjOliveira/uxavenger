import 'package:finite_coverflow/finite_coverflow.dart';
import 'package:flutter/material.dart';
import 'package:uxavanger/screen/ironman.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Center(
          child: Image.asset(
            'assets/images/logo1.png',
            height: 50,
          ),
        ),
        backgroundColor: Color(0xFFed1c22),
      ),
      body: Container(
        child: Center(
          child: FinitePager(
              scrollDirection: Axis.vertical,
              scaleX: 0.7,
              scaleY: 0.4,
              opacity: 0.2,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => IronMan()));
                  },
                  child: Hero(
                    tag: 'ironMan',
                    child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('assets/images/img2.png')),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset('assets/images/img3.png')),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                      padding: const EdgeInsets.only(left: 10),
                      child: Image.asset('assets/images/img4.png')),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                      padding: const EdgeInsets.only(left: 10),
                      child: Image.asset('assets/images/img5.png')),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                      padding: const EdgeInsets.only(left: 10),
                      child: Image.asset('assets/images/img6.png')),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                      padding: const EdgeInsets.only(left: 10),
                      child: Image.asset('assets/images/img7.png')),
                ),
              ]),
        ),
      ),
    );
  }
}
