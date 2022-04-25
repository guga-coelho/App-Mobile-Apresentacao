import 'package:flutter/material.dart';
import 'package:apresentacao/inside.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dinâmica'),
          backgroundColor: const Color.fromRGBO(248, 124, 52, 1),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(8)),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Image.asset('eu.jpeg')),
                Padding(
                  padding: EdgeInsets.all(6),
                  child: button(context),
                ),
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    "Sou Gustavo Alves Coelho, tenho 21 anos de idade e estou cursando o 7º semestre de Ciência da Computação no IFBA. Sou originalmente de Maceió, Alagoas, e me mudei para Salvador, Bahia, aos 6 anos de idade. Atualmente, moro ao lado de meus pais e 4 irmãos, sendo eu o caçula. Meus familiares e amigos costumam dizer que eu sou uma pessoa bastante entusiasmada, sobretudo com as novidades tecnológicas, e que adora se propor a novas aventuras e oportunidades, principalmente aquelas que poderão contribuir com o meu crescimento pessoal e profissional.\n",
                    style: TextStyle(
                        fontSize: 18, color: Color.fromRGBO(41, 94, 163, 1)),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

Card button(BuildContext context) {
  return Card(
    elevation: 5,
    child: TextButton(
      child: const Text(
        "Quem sou eu: ",
        style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(248, 124, 52, 1)),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Inside()),
        );
      },
    ),
  );
}
