class MatchCard {
  String name;
  String available;
  String imgSrc;
  String desc;
  double price;
  int people;
  double marginTop = 0;

  MatchCard(String name,String available,String imgSrc,double price,int people, double marginTop,String desc) {
    this.name = name;
    this.available = available;
    this.imgSrc = imgSrc;
    this.price = price;
    this.people = people;
    this.marginTop = marginTop;
    this.desc = desc;
  }
}
