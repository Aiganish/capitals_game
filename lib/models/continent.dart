import 'package:capitals_game/mock/africa_test.dart';
import 'package:capitals_game/mock/asia_test.dart';
import 'package:capitals_game/mock/australia.dart';
import 'package:capitals_game/mock/europe_test.dart';
import 'package:capitals_game/mock/north_america.dart';
import 'package:capitals_game/mock/south_america.dart';
import 'package:capitals_game/models/question.dart';

class Continent {
  const Continent({
    required this.name,
    required this.imagePath,
    required this.tests,
  });

  final String name;
  final String imagePath;
  final List<Test> tests;
}

final europe = Continent(
  name: 'Europe',
  imagePath: 'assets/images/europe.png',
  tests: europeTest,
);
final asia = Continent(
  name: 'Asia',
  imagePath: 'assets/images/asia.png',
  tests: asiaTest,
);
final northAmerica = Continent(
  name: 'North America',
  imagePath: 'assets/images/north_america.png',
  tests: northAmericaTest,
);
final southAmerica = Continent(
  name: 'South America',
  imagePath: 'assets/images/south_america.png',
  tests: southAmericaTest,
);
final africa = Continent(
  name: 'Africa',
  imagePath: 'assets/images/africa.png',
  tests: africaTest,
);
final australia = Continent(
  name: 'Australia',
  imagePath: 'assets/images/australia.png',
  tests: australiaTest,
);

final continents = [
  europe,
  asia,
  northAmerica,
  southAmerica,
  africa,
  australia,
];




/*
  final String
      name; //negizi cunstructordu montip kelip 'name' degenge kursordu koyup 'sary lampany' bassak ozu tuzup koyot;

  final String imagePath; //emi bul classka cunstructor tuzobuz;
*/


/*
bizdin "testteribiz dayar emi biz bulardy"asianyn testin dayardadyk,biz emi bul testi asiaga baylashybyz kerek;
test dep continentke koshushubuz kerek,antkeni testerin asianyn ozuno berishibiz kerek;
misaly:biz 'asia' dep baskanda asianyn surooloru chygyshy kerek,oshondoi bolush uchun biz suroolordu continentterge baylashybyz kerek;
biz oshondo jogoru jakta turgan 'reguired this. name,reguired this.imagePath' ushul jaka baryp 'Testibizdi'koshushubuz kerek,kantip?'reguired this.tests'dep koshobuz;
final List<Test>tests; ushintip bir list dagy achabyz;
*/ 