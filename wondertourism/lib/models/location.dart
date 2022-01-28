import 'location_facts.dart';

class Location {
  final int id;
  String name;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location(1, 'Candi Borobudur', 'assets/images/candi.jpg', [
        LocationFact('Summary', 
        'The Sailendra dynasty built this Largest Buddhist monument in the world between AD 780 and 840. The Sailendra are the ruling dynasty in Central Java at the time. It was built as a place for glorifying Buddha and a pilgrimage spot to guide mankind from worldly desires into enlightenment and wisdom according to Buddha. This monument was discovered by the British in 1814 under Sir Thomas Stanford Raffles, it was until 1835 that the entire area of the temple has been cleared.' ),
        LocationFact('How to Get There',
            'Jawa airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
      ]),
      Location(2, 'Labuan Bajo', 'assets/images/labuanbajo.jpg', [
        LocationFact('Summary', 
        'On the westernmost tip of the Island of Flores sits the town of Labuan Bajo. It lies peacefully, with many wonders waiting for you to explore. Labuan Bajo was only a small fishing site, but flourished to become the gateway to many exotic destinations in East Nusa Tenggara.'),
        LocationFact('How to Get There',
            'Nusa airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
      ]),
      Location(3, 'Raja Ampat', 'assets/images/rajaampat.jpg', [
        LocationFact('Summary', 
        'Far from the view-blocking skyscrapers, dense and hectic concrete jungles, congested traffics, flickering electric billboards, endless annoying noises, and all the nuisances of modern cities, you will find a pristine paradise where Mother Nature and warm friendly people welcome you with all the exceptional wonders in Raja Ampat, the islands-regency in West Papua Province. With all the spectacular wonders above and beyond its waters, as well as on land and amidst the thick jungles, this is truly the place where words such as beautiful, enchanting, magnificent, and fascinating get its true physical meaning.'),
        LocationFact('How to Get There',
            'Papua airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
      ]),
      Location(4, 'Kuta Beach', 'assets/images/kuta.jpg', [
        LocationFact('Summary', 
        'Far from the view-blocking skyscrapers, dense and hectic concrete jungles, congested traffics, flickering electric billboards, endless annoying noises, and all the nuisances of modern cities, you will find a pristine paradise where Mother Nature and warm friendly people welcome you with all the exceptional wonders in Raja Ampat, the islands-regency in West Papua Province. With all the spectacular wonders above and beyond its waters, as well as on land and amidst the thick jungles, this is truly the place where words such as beautiful, enchanting, magnificent, and fascinating get its true physical meaning.'),
        LocationFact('How to Get There',
            'Bali airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
      ]),
      Location(5, 'Nusa Dua Bali', 'assets/images/nusa.jpg', [
        LocationFact('Summary', 
        'Far from the view-blocking skyscrapers, dense and hectic concrete jungles, congested traffics, flickering electric billboards, endless annoying noises, and all the nuisances of modern cities, you will find a pristine paradise where Mother Nature and warm friendly people welcome you with all the exceptional wonders in Raja Ampat, the islands-regency in West Papua Province. With all the spectacular wonders above and beyond its waters, as well as on land and amidst the thick jungles, this is truly the place where words such as beautiful, enchanting, magnificent, and fascinating get its true physical meaning.'),
        LocationFact('How to Get There',
            'Papua airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
      ]),
      Location(6, 'Losari Beach', 'assets/images/losari.jpg', [
        LocationFact('Summary', 
        'Far from the view-blocking skyscrapers, dense and hectic concrete jungles, congested traffics, flickering electric billboards, endless annoying noises, and all the nuisances of modern cities, you will find a pristine paradise where Mother Nature and warm friendly people welcome you with all the exceptional wonders in Raja Ampat, the islands-regency in West Papua Province. With all the spectacular wonders above and beyond its waters, as well as on land and amidst the thick jungles, this is truly the place where words such as beautiful, enchanting, magnificent, and fascinating get its true physical meaning.'),
        LocationFact('How to Get There',
            'Sultan Hasanuddin airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
      ]),
    ];
  } 

  static Location? fetchById(int locationID) {
      List<Location> locations = Location.fetchAll();
      for(var i = 0; i < locations.length; i++) {
        if(locations[i].id == locationID) {
          return locations[i];
        }
      }
      return null;
  }
}