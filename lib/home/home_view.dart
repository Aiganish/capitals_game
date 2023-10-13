import 'package:capitals_game/models/continent.dart';
import 'package:capitals_game/widgets/app_bar_title.dart';
import 'package:capitals_game/widgets/continent_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle('Capitalis of the world'),
        //bul jaka title surait,ushul yldyi jaktagy title nin text berip koyobuz al jaka jon ele "title"dep jazyp koyobuz;
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/settings.png',
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
        bottom: const PreferredSize(
          preferredSize: Size(double.infinity, 1),
          child: Divider(
            color: Colors.black,
            indent: 15,
            endIndent: 15,
            thickness: 2,
            height: 0,
          ),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.fromLTRB(30, 20, 30, 40),
        itemCount: continents.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.4,
          //"childAspectRatio:"bul degen soz,mnogu elementtin uzun tuurasyna,kancha katysh bolsun degen soz,misaly:3/2;
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          return ContinentCard(continent: continents[index]);
        },
      ),
    );
  }
}

/*-tirkemenin on jagyndagy  'uch tochka' knopkany "IconButton"degen vidjet beret;
-baskanda seryi bolup ozgorup turat;misaly: jon ele 'Icon'degen knopka basylganda,
-svetin ozgortpoit,basylgany bilinbeit;
-"gridDelegate" degen vidjet,bul emne jumush alyp barat?,elementterdin
-uzun,tuurasy kancha bolsun,dagy bir liniyaga kancha element koyoyun,
-biz misaly 2 desek 2 ni koyup beret,3 desek liniyaga 3 element koyup beret;
-"itemBuilder" bul vidjet emne jumush atkarat?
-emneni chiyip bereyin dep suraganda,biz bir vidjetti chiyip berebiz,
-bir vidjet biz chiyip berebiz kalganyn ozu kchiet,jasait;
-misaly:"continents"degenge dagy birnerselerdi koshkubuz kelse,misaly:"tunduk muz okean";
-anda biz kelip "itemCount"6 dep turgan gerdi,"itemCount 7 dep,jetige ailandyryshybyz kerek bolup kalat";
-oshonu avtomattyk turdo alysh uchun biz emne kylyshybyz kerek,mnogu "continetsdin";
-uzundugu kancha bolso oshonu al"length" ushunu al deshibiz kerek;
-emi biz kelebiz dagy "continentsga" bir nersee koshup kalsak,anyn uzundugun avtomattyk turdo alyp kete beret;
*/