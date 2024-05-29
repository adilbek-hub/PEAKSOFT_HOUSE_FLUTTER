class CityClass {
  CityClass({required this.city, required this.emblems});
  final String city;
  final String emblems;
}

final bishkek = CityClass(
    city: "Бишкек",
    emblems:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Coat_of_arms_of_Bishkek_Kyrgyzstan.svg/1200px-Coat_of_arms_of_Bishkek_Kyrgyzstan.svg.png");
final osh = CityClass(
    city: "Ош",
    emblems: "https://oshcity.gov.kg/wp-content/uploads/2023/12/gerb.png");
final naryn = CityClass(
    city: "Нарын",
    emblems:
        "https://thumbs.dreamstime.com/z/%D0%B3%D0%B5%D1%80%D0%B1-%D0%B3%D0%BE%D1%80%D0%BE%D0%B4%D0%B0-%D0%BD%D0%B0%D1%80%D1%8B%D0%BD-%D0%B2-%D0%BA%D1%8B%D1%80%D0%B3%D1%8B%D0%B7%D1%81%D1%82%D0%B0%D0%BD%D0%B5-%D0%B8%D0%B7%D0%BE%D0%BB%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5-%D0%BD%D0%B0-%D0%B1%D0%B5%D0%BB%D0%BE%D0%BC-%D1%84%D0%BE%D0%BD%D0%B5-171972891.jpg");
final karakol = CityClass(
    city: "Кара-Кол",
    emblems:
        "https://thumbs.dreamstime.com/z/%D0%B3%D0%B5%D1%80%D0%B1-%D0%B3%D0%BE%D1%80%D0%BE%D0%B4%D0%B0-karakol-%D0%B2-%D0%BA%D1%8B%D1%80%D0%B3%D1%8B%D0%B7%D1%81%D1%82%D0%B0%D0%BD%D0%B5-%D0%B8%D0%B7%D0%BE%D0%BB%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5-%D0%BD%D0%B0-%D0%B1%D0%B5%D0%BB%D0%BE%D0%BC-%D1%84%D0%BE%D0%BD%D0%B5-171972194.jpg");
final talas = CityClass(
    city: "Талас",
    emblems:
        "https://upload.wikimedia.org/wikipedia/commons/3/38/Coat_of_arms_of_Talas_city.png");
final batken = CityClass(
    city: "Баткен",
    emblems:
        "https://thumbs.dreamstime.com/b/%D0%B3%D0%B5%D1%80%D0%B1-%D0%B3%D0%BE%D1%80%D0%BE%D0%B4%D0%B0-%D0%B1%D0%B0%D1%82%D0%BA%D0%B5%D0%BD-%D0%B2-%D0%BA%D1%8B%D1%80%D0%B3%D1%8B%D0%B7%D1%81%D1%82%D0%B0%D0%BD%D0%B5-%D0%B8%D0%B7%D0%BE%D0%BB%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%BD%D1%8B%D0%B5-%D0%BD%D0%B0-%D0%B1%D0%B5%D0%BB%D0%BE%D0%BC-%D1%84%D0%BE%D0%BD%D0%B5-171961294.jpg");
final jalalAbad = CityClass(
    city: "Жалал-Абад",
    emblems:
        "https://upload.wikimedia.org/wikipedia/commons/5/5e/Coat_of_arms_of_Jalal-Abad_region.png");
final tokmok = CityClass(
    city: "Токмок",
    emblems: "https://images.vector-images.com/142/tokmak-c-emb0.jpg");
List<CityClass> cityList = [
  bishkek,
  osh,
  naryn,
  karakol,
  talas,
  batken,
  jalalAbad,
  tokmok
];
