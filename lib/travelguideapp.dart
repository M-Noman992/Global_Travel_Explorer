import 'package:flutter/material.dart';

void main() {
  runApp(TravelGuideApp());
}

class TravelGuideApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Guide',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: PlaceListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Place {
  final String name;
  final String location;
  final String imagePath;
  final String history;
  final String thingsToDo;
  final String bestTime;

  Place({
    required this.name,
    required this.location,
    required this.imagePath,
    required this.history,
    required this.thingsToDo,
    required this.bestTime,
  });
}

class PlaceListScreen extends StatelessWidget {
  final List<Place> places = [
    Place(
      name: 'Lahore Fort',
      location: 'Lahore, Pakistan',
      imagePath: 'assets/lahore_fort.jpg',
      history: 'Lahore Fort, also known as Shahi Qila, is a UNESCO World Heritage Site. It was built during the reign of Emperor Akbar in the 16th century and expanded by later Mughal rulers.',
      thingsToDo: 'Explore Sheesh Mahal, Naulakha Pavilion, and Diwan-i-Aam. Enjoy guided tours and photography.',
      bestTime: 'October to March.',
    ),
    Place(
      name: 'Eiffel Tower',
      location: 'Paris, France',
      imagePath: 'assets/eiffel.jpg',
      history: 'The Eiffel Tower was built in 1889 for the World’s Fair. It was designed by Gustave Eiffel.',
      thingsToDo: 'Climb the tower, enjoy Paris view, dine at the restaurant.',
      bestTime: 'April to June, and September to November.',
    ),
    Place(
      name: 'Great Wall of China',
      location: 'Beijing, China',
      imagePath: 'assets/great_wall.jpg',
      history: 'It was built over centuries to protect Chinese states from invasions.',
      thingsToDo: 'Hike on the wall, photography, explore watchtowers.',
      bestTime: 'Spring (April–May) and Autumn (September–October).',
    ),
    Place(
      name: 'Taj Mahal',
      location: 'Agra, India',
      imagePath: 'assets/taj_mahal.jpeg',
      history: 'Built by Mughal Emperor Shah Jahan in memory of his wife Mumtaz Mahal in 1648.',
      thingsToDo: 'Visit at sunrise, take a guided tour, shop local handicrafts.',
      bestTime: 'October to March.',
    ),
    Place(
      name: 'Statue of Liberty',
      location: 'New York, USA',
      imagePath: 'assets/statue_liberty.jpg',
      history: 'Gifted by France to the U.S. in 1886, symbolizing freedom and democracy.',
      thingsToDo: 'Ferry ride, visit museum, panoramic views.',
      bestTime: 'March to May and September to November.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Famous Travel Places')),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          final place = places[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            child: ListTile(
              leading: Image.asset(place.imagePath, width: 60, fit: BoxFit.cover),
              title: Text(place.name),
              subtitle: Text(place.location),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailScreen(place: place)),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final Place place;

  const DetailScreen({required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(place.name)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(place.imagePath, width: double.infinity, height: 250, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(place.location, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text('History:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text(place.history),
                  SizedBox(height: 10),
                  Text('Things to Do:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text(place.thingsToDo),
                  SizedBox(height: 10),
                  Text('Best Time to Visit:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text(place.bestTime),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
