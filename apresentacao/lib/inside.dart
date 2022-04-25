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
                "Por ser uma pessoa positiva e alto astral, eu acredito bastante na vida e nas coisas boas que ela tem a oferecer. Em razão disso, eu acredito que todas as oportunidades merecem ser experimentadas, de maneira intensa, para que se possa extrair o máximo de conhecimento e aprendizado delas e, com isso, crescer pessoalmente e profissionalmente. Logo, não existe experiência que não mereça ser vivida, ou, pelo menos, tentada, isso porque eu acredito que sempre há coisas positivas para serem apreciadas e internalizadas. "),
            textCard(context, "Qual a minha aspiração?", "A minha aspiração: ",
                "A minha principal aspiração é ser um desenvolvedor bem sucedido, com conhecimento vasto na minha área de atuação, assim como competente nos trabalhos os quais me proponho a realizar. Assim, quero ser um profissional capaz de, através das minhas habilidades e experiências, transformar positivamente o mundo, trazendo projetos, tecnologias e códigos revolucionários, isto é, trazer instrumentos úteis e aptos a facilitar o cotidiano da sociedade, de forma efetiva."),
            textCard(context, "Qual o meu proposito?", "O meu proposito: ",
                "Para responder a essa pergunta, é necessário fazer uma análise sob dois pontos de vista: pessoal e profissional.\n\n Do ponto de vista pessoal, eu quero ser sempre uma pessoa compreensiva, organizada, proativa, e com vontade de aprender cada vez mais, através do autoconhecimento. Assim, pretendo melhorar como ser humano, tendo em vista que isso certamente influenciará em outros aspectos da vida, inclusive no profissional. Pretendo, também, aprimorar minha criatividade, senso crítico e olhar de mundo, características tão necessárias para ser um ser humano íntegro e sensível às causas do mundo.\n\n No tocante ao aspecto profissional, meu propósito está bastante relacionado à qualidade e competência, princípios esses que servirão como norte na minha atuação profissional. Logo, pretendo ser um profissional preparado, hábil e capacitado, a fim de melhorar ainda mais o desempenho da atividade da empresa na qual eu represento e, com isso, alcançar melhores resultados práticos. Além disso, planejo, também, ser um profissional humano e sensível com questões humanas, de modo a contribuir no trabalho em equipe de forma positiva."),
            textCard(
                context,
                "Como estou buscando meu proposito e aspiração através dessa oportunidade?",
                "Essa oportunidade para mim é: ",
                "Essa oportunidade de estágio é ideal para que eu possa alcançar meus objetivos acadêmicos e profissionais, pois oferecerá as ferramentas adequadas, bem como os meios necessários, para que eu possa aperfeiçoar e pôr em prática todo o conhecimento técnico adquirido na faculdade até o presente momento. Além disso, essa será uma ótima forma de conhecer a fundo o cotidiano da profissão, de modo que irei desenvolver habilidades suficientes para resolver, de maneira definitiva, célere e estratégica, qualquer problema que venha a surgir em decorrência do ofício."),
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
