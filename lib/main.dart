import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});


  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  TextEditingController usuarioController = new TextEditingController();
  TextEditingController senhaController = new TextEditingController();
  String _textoInfo = "Informe seus dados";

  void _limpar_Tela(){
    usuarioController.text = "";
    senhaController.text = "";
    setState(() {
      _textoInfo = "Informe seus dados";
    });
  }

  void _cadastrar_usuario(){
    usuarioController.text = "";
    senhaController.text = "";
      setState(() {
        _textoInfo = "Cadastrado com sucesso";
      });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Cadastro de Usuário'),
        centerTitle: true,
        backgroundColor: Colors.yellowAccent,
        actions: <Widget>[
          IconButton(
              onPressed: _limpar_Tela,
              icon: Icon(Icons.refresh)
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(
              Icons.person_outline,
              size: 128.0,
              color: Colors.black,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Usuário",
                  labelStyle: TextStyle(color: Colors.black)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: usuarioController,
            ),
            //Segundo Imput para a senha
            TextField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Senha",
                  labelStyle: TextStyle(color: Colors.black)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: senhaController,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                height: 50.0,
                child: ElevatedButton(
                    onPressed: _cadastrar_usuario,
                    child: const Text ("Cadastrar Usuário")
                ),
              ),
            ),
            //Botão para executar o calculo do IMC,

            Text(
                _textoInfo,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0
                )
            ),
          ],
        ),
      ),
    );
  }
}


