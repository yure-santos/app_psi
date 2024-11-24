import 'package:app_psi/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:app_psi/other_page.dart';

class LoginStructure extends StatelessWidget {
  const LoginStructure({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColors.backgroundColor,
          title: const Text('Voltar'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFE7F3FB), Color(0xFFB3DAF0)],
            )),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 30.0),
                      child: Text(
                        'Insira E-mail e senha para acessar',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Open Sans',
                            fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: Text('E-mail'),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: TextFormField(
                          style:
                              TextStyle(fontFamily: 'Open Sans', fontSize: 18),
                          maxLines: 2,
                          decoration: InputDecoration(
                            labelText: 'Digite seu E-mail',
                            labelStyle: TextStyle(
                              color: Color.fromRGBO(144, 144, 144, 1),
                            ),
                            filled: true,
                            fillColor: Color.fromRGBO(205, 230, 246, 1),
                            border: OutlineInputBorder(),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, bottom: 12.0),
                      child: Text('Senha'),
                    ),
                    SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: TextFormField(
                            style: TextStyle(
                                fontFamily: 'Open Sans', fontSize: 18),
                            maxLines: 2,
                            decoration: InputDecoration(
                              labelText: 'Digite sua senha',
                              labelStyle: TextStyle(
                                color: Color.fromRGBO(144, 144, 144, 1),
                              ),
                              filled: true,
                              fillColor: Color.fromRGBO(205, 230, 246, 1),
                              border: OutlineInputBorder(),
                            ))),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: (bool? value) {}),
                        const Text('Lembrar minha senha'),
                        Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Esqueci minha senha',
                            style: TextStyle(color: Colors.black),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Center(
                      child: SizedBox(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const OtherPage()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.loginButton,
                            padding: EdgeInsets.symmetric(
                                horizontal: 100, vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            'Entrar',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ]),
            ))));
  }
}
