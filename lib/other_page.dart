import 'package:app_psi/app_colors.dart';
import 'package:app_psi/login_structure.dart';
import 'package:app_psi/menu.dart';
import 'package:flutter/material.dart';

class OtherPage extends StatefulWidget {
  const OtherPage({super.key});

  @override
  State<OtherPage> createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  double _currentValue = 0.5;

  Color getSliderColor() {
    if (_currentValue < 0.33) {
      return Colors.red;
    } else if (_currentValue < 0.66) {
      return Colors.blue;
    } else {
      return Colors.green;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.center,
          colors: [
            AppColors.backgroundColor.withOpacity(0.0),
            AppColors.backgroundColor.withOpacity(0.5),
          ],
        ),
      ),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0, left: 500, top: 30),
          child: SizedBox(
            width: double.infinity,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/simbolo de psicologia.jpg'),
              maxRadius: 25,
            ),
          ),
        ),
        Slider(
          value: _currentValue,
          onChanged: (newValue) {
            setState(() {
              _currentValue = newValue;
            });
          },
          min: 0,
          max: 1,
          activeColor: getSliderColor(),
          inactiveColor: Colors.grey[300],
        ),
        Padding(padding: const EdgeInsets.only(top: 50)),
        SizedBox(
          width: 300,
          child: Text('Sua proxima sessão'),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30, top: 30),
          child: SizedBox(
            height: 80,
            width: 300,
            child: Card.outlined(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(
                  color: Color.fromARGB(255, 58, 136, 172),
                  width: 1,
                ),
              ),
              color: Color.fromARGB(255, 58, 136, 172),
              child: ListTile(
                textColor: AppColors.appTextDark,
                title: Text('Não há sessões cadastradas'),
                subtitle: Text('Configure sua agenda'),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 300,
          child: Text('Meu terapeuta'),
        ),
        SizedBox(
          height: 80,
          width: 300,
          child: Card.outlined(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(
                color: AppColors.appTextBlue,
                width: 1,
              ),
            ),
            color: AppColors.appTextBlue,
            child: ListTile(
              title: Text('Não há profissional cadastrado'),
              subtitle: Text('Adicione um profissional'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Center(
            child: SizedBox(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Menu()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.loginButton,
                      padding:
                          EdgeInsets.symmetric(horizontal: 70, vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Meu Divã',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ))),
          ),
        ),
      ]),
    ));
  }
}
