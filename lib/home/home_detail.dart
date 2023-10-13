import 'package:capitals_game/models/question.dart';
import 'package:capitals_game/widgets/app_bar_title.dart';
import 'package:flutter/material.dart';

class HomeDetailView extends StatefulWidget {
  const HomeDetailView(this.tests, {super.key});

  final List<Test> tests;

  @override
  State<HomeDetailView> createState() => _HomeDetailViewState();
}

class _HomeDetailViewState extends State<HomeDetailView> {
  int index = 0;

  List<bool> answers = [];

  void checkAnswer(bool isTrue) {
    //bul bir function jogorudan alsyn tuura, tuura emes,dep alsyn;
    if (answers.length < widget.tests.length) {
      answers.add(isTrue);
      if (index + 1 < widget.tests.length) {
        index++;
      }
      //variant.isTrue == widget.tests[index];

      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle('Try Test'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            widget.tests[index].QuestionText,
            style: const TextStyle(
              fontSize: 38,
              //   textAlign:TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(
              20,
            ),
            child: Image.network(
              widget.tests[index].imageUrl,
              height: MediaQuery.of(context).size.height * 0.3,
              fit: BoxFit
                  .fitHeight, //"mediaQuery.of(context).size"degen bizge emneni alyp beret?bul degen biz ishtetip jatkan,devaistyn biyiktigin alyp beret
              //toist, size alyp beret,size ge kelip turup"height"desek biyiktigin,"width"desek tuurasyn alyp beret;
            ),
          ),
          Row(
            children: [
              OptionButton(
                text: widget.tests[index].variant1.text,
                onPressed: () {
                  //print(index);
                  //print(widget.tests.length);
                  //indexske + 1  birdi koshsok 1 bir boldu,1 bir 10 don kichine;
                  //okey dep turup indexske 1 birdi koshtu,kiyinkige otkordu;
                  //andan kiyin index 1 bir bolot 1birge 1 birdi koshso 2 eki bolot;
                  //2 eki 10 ondon kichine,dagy kiyinkige otkordu,anan keldi dagy;
                  //en akyryna kelgende indexsin 9 toguz,9 toguzunchu indexs bizge 10 onunchu elementti beret;
                  //anan biz 9 menen 10 salyshtyra albaybyz,9 ga 1 birdi koshup koiobuz,10 boldu 10 on 10 don kichine emes;
                  //length 10 du berdi,kiyinkige otkorgon jok;false berip kalat antkeni 10 on 10 don kichine emes;
                  checkAnswer(widget.tests[index].variant1.isTrue);
                },
              ), //bul kata beret,biz aitabyz senin textin [o]indexsinin variant1 birdin texti dep aitabyz;
              OptionButton(
                text: widget.tests[index].variant2.text,
                onPressed: () {
                  checkAnswer(widget.tests[index].variant2.isTrue);
                },
              ),
            ],
          ),
          Row(
            children: [
              OptionButton(
                text: widget.tests[index].variant3.text,
                onPressed: () {
                  checkAnswer(widget.tests[index].variant3.isTrue);
                },
              ),
              OptionButton(
                text: widget.tests[index].variant4.text,
                onPressed: () {
                  checkAnswer(widget.tests[index].variant4.isTrue);
                },
              ),
            ],
          ),
          const Spacer(),
          SizedBox(
            height: 20,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: answers.length,
                itemBuilder: (BuildContext contex, int index) {
                  final answer = answers[index];
                  return Icon(
                    Icons.star,
                    color: answer ? Colors.yellow : Colors.red,
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}

class OptionButton extends StatelessWidget {
  const OptionButton({
    super.key,
    required this.text,
    required this.onPressed,
  });
  //birinchi texsti jogorudan berishibiz kerek,
  //anan baskanda atkara turgan functiondu jogorudan berishibiz kerek;
  //anda aitabyz "final saga men jogorudan strin turundo text berem" misaly: 'final string text';
  //al texti

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: ElevatedButton(
          onPressed:
              onPressed, //bul jerde men bergen functiondu atkarasyn"onPressed";
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(double.infinity, 65),
            textStyle: const TextStyle(fontSize: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Text(
            text, //bul jerge "Kyrgyzstan"degen texti emes,men bergen jon ele "text"dep jazyp korsotosun;
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
