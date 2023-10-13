class Test {
  //emi bul 4 variantka 'Nemad Constructor tuzobuz;
  Test({
    required this.QuestionText,
    required this.imageUrl,
    required this.variant1,
    required this.variant2,
    required this.variant3,
    required this.variant4,
  });

  final String QuestionText;
  final String imageUrl;
  final Variant variant1;
  final Variant variant2;
  final Variant variant3;
  final Variant variant4;
}

class Variant {
//constructorun tuzobuz,ozun jazabyz ()jonokoy kasha achyp jababyz,bul "nemad"constructor;
//sebebi eger mnogu "Variantty" berbese al kata bolsun "false"bolsun,sebebi biz:"Varianttyn" uchono ten ar birine "false dep"berbeybiz;
//arasynan biroono "True" dep berip koyobuz,biroono sen "true"desek kalgan uch "Variant" a men kata ekemin dep bilish kerek;
  const Variant(
      {required this.text,
      this.isTrue =
          false}); //"reguired sozsuz berilish kerek degendi bildiret,= false,bul default men bunu kaira,kaira saga berbeim"berbesem demek sen kata "Variantsyn";,

  final String text;
  final bool isTrue;
}

final test1 = Test(
  QuestionText: 'Bishkek',
  imageUrl: 'https://www.photohound.co/images/1018113l.jpg',
  variant1: const Variant(text: 'Kazahstan'),
  variant2: const Variant(text: 'Kyrgyzstan', isTrue: true),
  variant3: const Variant(text: 'Korey'),
  variant4: const Variant(text: 'Turkey'),
);
