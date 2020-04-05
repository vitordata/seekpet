import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Página 2 de cadastro

class CadastroPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 20,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset(
                  "assets/logo.png"), // local onde está localizada a logo
            ),
            SizedBox(
              height: 40,
            ),
            TextFormField(
              autofocus: true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "CEP",
                labelStyle: TextStyle(
                  color: Colors.black38, // cor da label "CEP"
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                // tamanho da fonte
                fontSize: 20,
              ),
            ),
            SizedBox(
              // campo para inserir endereço
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Endereço",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.2, 1],
                  colors: [
                    // cores degradê do botão "Próximo"
                    Color(0xFFF00c138),
                    Color(0XFFF00d8a2),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  // borda do botão "Próximo"
                  Radius.circular(20),
                ),
              ),
              child: SizedBox.expand(
                  // pega todo conteúdo do container
                  child: FlatButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceBetween, // preenche os espaços vazios dentro do container (botão "Próximo")
                  children: <Widget>[
                    // texto no botão
                    Text(
                      "Próximo",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      // imagem no botão "Próximo"
                      child: Image.asset("assets/pata.png"),
                      height: 28,
                      width: 28,
                    ),
                  ],
                ),
                onPressed: () => {},
              )),
            ),
            SizedBox(
              height: 28,
            ),
          ],
        ),
      ),
    );
  }
}