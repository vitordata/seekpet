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
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: <Widget>[
            Image.asset(
              "assets/surface.png", // imagem de background
              width: double.maxFinite,
              height: 280,
            ),
            Positioned(
              // permite definir margens nos 4 cantos da tela
              top: 202,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 38),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(52),
                    topRight: Radius.circular(52),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Usuário',
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
                    Padding(
                      padding: EdgeInsets.only(top: 16, bottom: 2),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        obscureText: true, // define a senha com ***
                        decoration: InputDecoration(
                          labelText: 'Senha',
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
                          style: TextStyle(
                            color: Colors.black45,
                          ),
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
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 60,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.2, 1],
                          colors: [
                            Color(0xFFF00c138),
                            Color(0XFFF00d8a2),
                          ],
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: SizedBox(
                        child: FlatButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Entrar",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              Container(
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
                    ),
                    Container(
                      height: 20,
                      child: Text(
                        "__________________ ou __________________",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Color(0xFF3C5A99),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: SizedBox(
                            child: FlatButton(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Facebook",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Container(
                                      //child: Image.asset("assets/facebook.png"),
                                      //height: 20,
                                      //width: 20,
                                      ),
                                ],
                              ),
                              onPressed: () => {},
                            ),
                          ),
                        ),
                        Container(
                          // altura do botão
                          height: 100,
                        ),
                        Container(
                          // botão Login com Gmail
                          height: 60,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Color(0xFFFF5840),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: SizedBox(
                            child: FlatButton(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Gmail",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Container(
                                      // child: Image.asset("assets/gmail.png"),
                                      // height: 40,
                                      // width: 40,
                                      ),
                                ],
                              ),
                              onPressed: () => {},
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      // botão cadastre-se
                      // height: 200,
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
                            ),
                          )
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
