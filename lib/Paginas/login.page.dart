import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seekpet_app/Paginas/cadastro.page.dart';
import 'package:seekpet_app/Paginas/reset.password.dart';

// Página de login

class LoginPage extends StatelessWidget {
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
              height: 50,
            ),
            TextFormField(
              autofocus: true,
              keyboardType:
                  TextInputType.emailAddress, // aparece o @ no teclado
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38, // cor da label "E-mail"
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                // tamanho da fonte
                fontSize: 20,
                color: Colors.black45,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
                color: Colors.black45,
              ),
            ),

            Container(
              // container botão de recuperar a senha
              height: 40, // altura do container
              alignment: Alignment.centerRight, // alinhamento a direita
              child: FlatButton(
                // botão para recuperar a senha
                child: Text(
                  "Esqueci minha Senha",
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetPassword(),
                    ),
                  );
                },
              ),
            ),
            // >> Aidiconar aqui a caixa para "CONTINUAR CONECTADO"
            SizedBox(
              // altura do botão entrar
              height: 10,
            ),

            Container(
              height: 60,
              // alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.2, 1],
                  colors: [
                    // cores degradê do botão "Entrar"
                    Color(0xFFF00c138),
                    Color(0XFFF00d8a2),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  // borda do botão "Entrar"
                  Radius.circular(20),
                ),
              ),
              child: SizedBox(
                // pega todo conteúdo do container
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween, // preenche os espaços vazios dentro do container (botão "Entrar")
                    children: <Widget>[
                      // texto no botão
                      Text(
                        "Entrar",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        // imagem no botão "Entrar"
                        child: Image.asset("assets/pata.png"),
                        height: 28,
                        width: 28,
                      ),
                    ],
                  ),
                  onPressed: () => {},
                ),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Container(
              height: 40,
              child: Text(
                "_____________________ ou _____________________",
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              // botão entrar com facebook
              height: 1,
            ),

            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Color(0xFF3C5A99),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Entrar com Facebook",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        child: SizedBox(
                          child: Image.asset("assets/facebook.png"),
                          height: 32,
                          width: 32,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Color(0xFFFF5840),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Entrar com Gmail",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        child: SizedBox(
                          child: Image.asset("assets/gmail.png"),
                          height: 28,
                          width: 28,
                        ),
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              // Início da função "Cadastre-se"
              height: 10,
            ),
            Container(
              // botão cadastre-se
              height: 40,
              child: FlatButton(
                child: Text(
                  "Cadastre-se",
                  textAlign: TextAlign.center,
                ),
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CadastroPage(),
                      ))
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
