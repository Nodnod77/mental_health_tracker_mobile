import 'package:flutter/material.dart';
import 'package:mental_health_tracker/widgets/left_drawer.dart';
import 'package:mental_health_tracker/widgets/mood_card.dart';

class MyHomePage extends StatelessWidget {
   final String npm = '2406394906 '; // NPM
    final String name = 'Donia Sakji'; // Name
    final String className = 'PBP '; // Class
    MyHomePage({super.key});
  final List<ItemHomepage> items = [
         ItemHomepage("View Mood", Icons.mood),
         ItemHomepage("Add Mood", Icons.add),
         ItemHomepage("Logout", Icons.logout),
     ];
    @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(  
        title: const Text(
          'Mental Health Tracker',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        // The background color of the AppBar is obtained from the application theme color scheme.
        backgroundColor: Theme.of(context).colorScheme.primary,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
       drawer: const LeftDrawer(),
      // Body of the page with paddings around it.
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(child: InfoCard(title: 'NPM', content: npm)),
              Expanded(child: InfoCard(title: 'Name', content: name)),
              Expanded(child: InfoCard(title: 'Class', content: className)),
            ],
          ),
            const SizedBox(height: 16.0),
            Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Welcome to Mental Health Tracker',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  GridView.count(
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    children: items.map((ItemHomepage item) {
                      return ItemCard(item);
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  // Card information that displays the title and content.

  final String title;  // Card title.
  final String content;  // Card content.

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      // Create a card box with a shadow.
      elevation: 2.0,
      child: Container(
        // Set the size and spacing within the card.
        width: MediaQuery.of(context).size.width / 3.5, // Adjust with the width of the device used.
        padding: const EdgeInsets.all(16.0),
        // Place the title and content vertically.
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(content),
          ],
        ),
      ),
    );
  }
}

