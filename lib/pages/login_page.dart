import 'package:appBarbearia/pages/home_page.dart';
import 'package:appBarbearia/pages/sign_up_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  child: Image.asset(
                'img/logoBarber.png',
                height: 160,
              )),
              SizedBox(height: 50.0),
              TextField(
                onChanged: (text) {
                  email = text;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextField(
                onChanged: (text) {
                  password = text;
                },
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              ElevatedButton(
                child: Text('Entrar'),
                onPressed: () {
                  if (email == 'walter.lima.viana@gmail.com' &&
                      password == '123456') {
                    signIn();
                  }
                },
              ),
              SizedBox(height: 30.0),
              GestureDetector(
                onTap: () {
                  signUp();
                },
                child: Text(
                  'Não possui uma conta? Cadastre-se.',
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  signIn() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  signUp() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
  }
}
