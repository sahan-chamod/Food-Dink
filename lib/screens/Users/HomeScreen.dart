import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: 'Search on Goody',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.grey[200],
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () {},
            color: Colors.orange,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Category',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 100,
              child: PageView(
                controller: PageController(viewportFraction: 0.3),
                children: [
                  CategoryItem(icon: Icons.fastfood, label: 'Sandwiches'),
                  CategoryItem(icon: Icons.local_pizza, label: 'Pizza'),
                  CategoryItem(icon: Icons.lunch_dining, label: 'Burgers'),
                  CategoryItem(
                      icon: Icons.emoji_food_beverage, label: 'Coffee'),
                  CategoryItem(icon: Icons.ramen_dining, label: 'Ramen'),
                ],
              ),
            ),
            SizedBox(height: 20),
            SectionTitle(title: 'Best Partners'),
            SizedBox(height: 10),
            SizedBox(
              height: 160,
              child: PageView(
                controller: PageController(viewportFraction: 0.8),
                children: [
                  PartnerItem(imagePath: 'assets/subway.png', name: 'Subway'),
                  PartnerItem(
                      imagePath: 'assets/taco_bell.png', name: 'Taco Bell'),
                  PartnerItem(
                      imagePath: 'assets/McDonald.jpg', name: 'McDonald\'s'),
                  PartnerItem(
                      imagePath: 'assets/Starbucks.jpg', name: 'Starbucks'),
                ],
              ),
            ),
            SizedBox(height: 20),
            SectionTitle(title: 'Nearby'),
            SizedBox(height: 10),
            NearbyItem(
              imagePath: 'assets/burger_king.png',
              name: 'Burger King',
              details: 'Burgers · Fast Food',
            ),
            NearbyItem(
              imagePath: 'assets/kfc.png',
              name: 'KFC',
              details: 'Chicken · Fast Food',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String label;

  CategoryItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.orange[100],
          child: Icon(icon, color: Colors.orange, size: 30),
        ),
        SizedBox(height: 5),
        Text(label),
      ],
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}

class PartnerItem extends StatelessWidget {
  final String imagePath;
  final String name;

  PartnerItem({required this.imagePath, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(color: Colors.grey[300]!, blurRadius: 6)],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, height: 80),
          SizedBox(height: 10),
          Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
          Text("Fast Food"),
        ],
      ),
    );
  }
}

class NearbyItem extends StatelessWidget {
  final String imagePath;
  final String name;
  final String details;

  NearbyItem(
      {required this.imagePath, required this.name, required this.details});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(color: Colors.grey[300]!, blurRadius: 6)],
      ),
      child: Row(
        children: [
          Image.asset(imagePath, height: 80, width: 80),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text(details, style: TextStyle(color: Colors.grey)),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 16),
                    Text('4.2'),
                    Spacer(),
                    Text('Free Order', style: TextStyle(color: Colors.green)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
