import 'soru.dart';
class Test_veri {
  List<Soru> soruBankasi = [
    Soru(
        soruMetni: 'İstanbul 14. yüzyılda fethedilmiştir',
        soruYaniti: false),
    Soru(
        soruMetni: ' Her doğal sayı tam sayıdır',
        soruYaniti: false),
    Soru(soruMetni: 'Afrika bir Ülke değildir', soruYaniti: true),
    Soru(soruMetni: ' Isı termometre ile ölçülür', soruYaniti: false),
    Soru(
        soruMetni: 'Ahmet Cevahir hoca 35 yaşındadır',
        soruYaniti: true),
    Soru(
        soruMetni: 'Çeyrek altın 0.25 gramdır',
        soruYaniti: false),//1.75 grammış
    Soru(soruMetni: 'İstiklal Marşı 1921 yılında TBMM de kabul edilmiştir', soruYaniti: true),
  ];
}
