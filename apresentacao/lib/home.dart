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
          title: const Text('Dinâmica'),
          backgroundColor: const Color.fromRGBO(248, 124, 52, 1),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.all(4)),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Image.asset('eu.jpeg')),
                button(context),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Eu sou Gustavo Coelho, estudante de Ciência da Computação, me encontro atualmente no sétimo semestre. Sou originalmente de Maceió- AL, resido atualmente em Salvador- BA. Amo a lógica de programação, o ato de desenvolver raciocínio e com isso chegar a uma solução viável. Isso que me encanta na área que escolhi, programação, poder atuar com o que desejar, podendo atuar com física, matemática, probabilidade, são infinitas possibilidades e eu pretendo aprender o máximo possível para poder me tornar um profissional capaz de atuar na área em que eu desejar e que falta de conhecimento nunca seja um problema.\n",
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
            color: Color.fromRGBO(4, 68, 148, 1)),
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
