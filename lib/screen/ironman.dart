import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IronMan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.red,
        title: Center(child: Text('Homem de Ferro')),
      ),
      body: Stack(
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Hero(
              tag: 'ironMan',
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(100))),
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/img2.png',
                    width: 300,
                    height: 300,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 320.0),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50)),
              width: double.infinity,
              height: 280,
              child: Card(
                color: Colors.white,
                child: Text(
                  '      Homem de Ferro (Iron Man, em inglês) é um personagem'
                  ' fictício dos quadrinhos publicados pela'
                  ' Marvel Comics. Sua identidade verdadeira'
                  ' é a do empresário e bilionário Tony Stark,'
                  ' que usa armaduras de alta tecnologia no'
                  ' combate ao crime. Foi criado em 1963 pelo'
                  ' escritor Stan Lee, o roteirista Larry Lieber,'
                  ' e os desenhistas Jack Kirby e Don Heck. O objetivo'
                  ' de seu criador, Stan Lee, era aceitar o desafio de'
                  ' fazer um personagem ser odiado e depois amado pelo'
                  ' público, assim, criou um dos super heróis mais'
                  ' marcantes de todos os tempos.',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
