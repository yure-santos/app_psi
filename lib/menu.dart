import 'package:app_psi/app_colors.dart';
import 'package:app_psi/edit_profile.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: const Text('Voltar'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [
                AppColors.backgroundColor.withOpacity(0.0),
                AppColors.backgroundColor.withOpacity(0.5)
              ])),
          child: Column(children: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EditProfile()));
              },
              icon: Icon(Icons.person, color: Colors.black),
              label: Text(
                'Editar Perfil',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EditProfile()));
                },
                icon: Icon(
                  Icons.key,
                  color: Colors.black,
                ),
                label: Text(
                  'Segurança',
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditProfile()),
                  );
                },
                icon: Icon(
                  Icons.bookmark_outline,
                  color: Colors.black,
                ),
                label: Text(
                  'Tags',
                  style: TextStyle(color: Colors.black, fontSize: 35),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
