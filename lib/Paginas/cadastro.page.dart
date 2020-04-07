import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seekpet_app/Paginas/cadastro2.page.dart';

// Página 1 de cadastro

class CadastroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black45,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 20,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              // Container para o usuário adicionar foto de perfil
              width: 150,
              height: 150,
              alignment: Alignment(0.3, 1),
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                // imagem fica na frente do container
                image: AssetImage("assets/useraddphoto.png"), // imagem usuário
                fit: BoxFit.fitHeight,
              )),
              child: Container(
                // container com o ícone "add"
                height: 56,
                width: 56,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1.0],
                    colors: [
                      // cores degradê do ícone
                      Color(0xFFF00c138),
                      Color(0XFFF00d8a2),
                    ],
                  ),
                  border: Border.all(
                    width: 4.0,
                    color: const Color(0xFFFFFFF), // borda branca
                  ),
                  borderRadius: BorderRadius.all(
                    // efeito de borda redonda (raio)
                    Radius.circular(56),
                  ),
                ),
                child: SizedBox(
                  child: FlatButton(
                    padding: EdgeInsets.all(
                        0), // alinha o icone "+" no centro do container
                    // botão para add
                    child: Icon(
                      (Icons.add),
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            //   SizedBox(
            //    width: 128,
            //     height: 128,
            //     child: Image.asset(
            //      "assets/logo.png"), // local onde está localizada a logo
            //   ),
            SizedBox(
              height: 40,
            ),
            TextFormField(
              autofocus:
                  true, // permite o teclado iniciar automaticamente após acessar a página
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
                color: Colors.black45,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              // autofocus: true, // permite o teclado iniciar automaticamente após acessar a página
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
                color: Colors.black45,
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
                color: Colors.black45,
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
                color: Colors.black45,
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
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CadastroSeguinte(),
                      ),
                    ),
                  },
                ),
              ),
            ),
            SizedBox(
              // ínicio da função "cancelar"
              height: 20,
            ),
            Container(
              height: 40,
              alignment: Alignment.center,
              child: FlatButton(
                child: Text(
                  "Cancelar",
                  textAlign: TextAlign.center,
                ),
                onPressed: () => Navigator.pop(context, false),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
