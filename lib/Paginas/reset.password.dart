import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // appBar do botão voltar
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black45,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        // contém as informações da tela
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset("assets/resetpassword.png"),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Esqueceu sua senha?",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                //color: Colors.black54, // decidir se a cor da fonte será preta ou cinza escuro
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Por gentileza, informe o E-mail assosiado a sua conta que enviaremos um código de recuperação.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black45,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            TextFormField(
              //autofocus: true, // permite o teclado iniciar automaticamente após acessar a página
              keyboardType:
                  TextInputType.emailAddress, // aparece o @ no teclado
              decoration: InputDecoration(
                // cria efeito quando clica na label
                labelText: "E-mail", // mostra o nome dentro da label
                labelStyle: TextStyle(
                  color: Colors.black38, // cor da label "E-mail"
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                fontSize: 20, // tamanho da fonte
                color: Colors.black45,
              ),
            ),
            SizedBox(
              // inicio do botão "Enviar"
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
                    // cores degradê do botão "Enviar"
                    Color(0xFFF00c138),
                    Color(0XFFF00d8a2),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  // borda do botão "Enviar"
                  Radius.circular(20),
                ),
              ),
              child: SizedBox.expand(
                // pega todo conteúdo do container
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween, // preenche os espaços vazios dentro do container (botão "Enviar")
                    children: <Widget>[
                      // texto no botão
                      Text(
                        "Enviar",
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
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
