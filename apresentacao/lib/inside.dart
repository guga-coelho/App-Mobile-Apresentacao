import 'package:flutter/material.dart';

class Inside extends StatefulWidget {
  const Inside({Key? key}) : super(key: key);

  @override
  State<Inside> createState() => _InsideState();
}

class _InsideState extends State<Inside> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dinâmica'),
        backgroundColor: Color.fromRGBO(248, 124, 52, 1),
      ),
      body: Center(
        child: Column(
          children: [
            Container(height: 300, child: Image.asset('logo.jpeg')),
            textCard(context, "No que eu acredito?", "No que eu acredito: ",
                "Eu acredito que cada um faz sua parte no mundo sem esperar nada de ninguém. Se eu faço algo eu faço por mim, para o meu desenvolvimento, e se meu próximo não fizer, tudo bem, não vou me aborrecer, irei dialogar e tentar entender o lado dele. É muito fácil culpar os outros por um erro seu, com isso, se eu erro, eu me responsabilizo e faço o máximo possível para não repetir esse erro. Sempre tentando evoluir, aprender, me desenvolver, tanto na área profissional quanto na interpessoal."),
            textCard(context, "Qual a minha aspiração?", "A minha aspiração: ",
                "Uma das minhas aspirações é poder me tornar um profissional com capacidade de sempre melhorar, nunca me acomodar e sempre procurar o melhor caminho para os piores problemas. Mesmo sabendo que isso é difícil, eu não me dou por derrotado, e sempre vou correr atrás dos meus objetivos."),
            textCard(context, "Qual o meu proposito?", "O meu proposito: ",
                "O meu propósito é me tornar um programador eficiente, fazer parte de uma comunidade, de uma empresa que me acolha e incentive sempre o meu melhor lado. Desenvolvendo códigos bens estruturados, ágeis, eficientes e que cumpram além do esperado. Sendo esse meu propósito profissional, já no âmbito pessoal, é poder fazer parte de uma família, e ter a relação que eu tenho hoje, com meus pais e meus 4 irmãos, com harmonia e muito amor."),
            textCard(
                context,
                "Como estou buscando meu proposito e aspiração através dessa oportunidade?",
                "Essa oportunidade para mim é: ",
                "Através dessa oportunidade eu enxergo a possibilidade de realizar quase por completo meu propósito e aspiração, vejo que essa oportunidade pode ser o meio no qual eu irei me tornar um profissional melhor, começando como estagiário remoto e logo em seguida me tornando um desenvolvedor. Encontrando meu lugar nessa comunidade que parece ser tão especial e única, trabalhando com tecnologias diversas, me desenvolvendo como desejo, colaborando como posso, sempre olhando para frente, e nunca desanimando."),
          ],
        ),
      ),
    );
  }
}

Container textCard(
    BuildContext context, String title1, String title2, String text) {
  return Container(
    width: 1000,
    child: Card(
      elevation: 5,
      margin: EdgeInsets.all(10),
      child: TextButton(
        child: Text(
          title1,
          style: TextStyle(fontSize: 20, color: Color.fromRGBO(4, 68, 148, 1)),
          textAlign: TextAlign.justify,
        ),
        onPressed: () {
          showAlertDialog1(context, title2, text);
        },
      ),
    ),
  );
}

// Quem sou eu, no que eu acredito, qual a minha aspiração, qual o meu proposito,
//como estou buscando meu proposito e aspiração através dessa oportunidade?

showAlertDialog1(BuildContext context, String titulo, String texto) {
  // configura o button
  Widget okButton = TextButton(
    child: Text(
      "Voltar",
      style: TextStyle(fontSize: 20),
      textAlign: TextAlign.justify,
    ),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  // configura o  AlertDialog
  AlertDialog alerta = AlertDialog(
    title: Text(
      titulo,
      style: TextStyle(
          color: Color.fromRGBO(248, 124, 52, 1),
          fontSize: 22,
          fontWeight: FontWeight.bold),
    ),
    content: SingleChildScrollView(
      child: Text(
        texto,
        style: TextStyle(color: Color.fromRGBO(41, 94, 163, 1), fontSize: 18),
        textAlign: TextAlign.justify,
      ),
    ),
    actions: [
      okButton,
    ],
  );
  // exibe o dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alerta;
    },
  );
}
