import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CadastroPage extends StatelessWidget {
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
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Insira seu Nome",
                labelStyle: TextStyle(
                  color: Colors.black38, // cor da label "Nome"
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
              height: 10,
            ),
            TextFormField(
              autofocus: true,
              keyboardType:
                  TextInputType.emailAddress, // aparece o @ no teclado
              decoration: InputDecoration(
                labelText: "Insira seu E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38, // cor da label "E-mail"
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
              // campo para inserir a senha
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Insira sua Senha",
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
              // campo para data de nascimento
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              // obscureText: true,
              decoration: InputDecoration(
                labelText: "Data de Nascimento",
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
