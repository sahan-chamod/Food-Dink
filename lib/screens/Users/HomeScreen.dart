import 'package:flutter/material.dart';
import 'package:foodanddrink/widget/constant.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> addresses = [
    '1014 Prospect Vall',
    '789 Elm Street',
    '456 Oak Avenue',
    '321 Maple Road'
  ];
  String selectedAddress = '1014 Prospect Vall';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: TextField(
          decoration: InputDecoration(
            hintText: "Search",
            prefixIcon: const Icon(Icons.location_on, color: Colors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.grey[200],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Text(
                            'Delivery to',
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(width: 4),
                          Icon(Icons.location_on, color: Colors.red, size: 14),
                        ],
                      ),
                      const SizedBox(height: 4),
                      DropdownButton<String>(
                        value: selectedAddress,
                        icon: const Icon(Icons.arrow_drop_down,
                            color: kmainbackgroundcolor),
                        underline: const SizedBox(),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        items: addresses
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedAddress = newValue!;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.filter_alt,
                            size: 20,
                          ),
                          color: Colors.grey,
                          onPressed: () {},
                        ),
                      ),
                      const Text(
                        'filter',
                        style: TextStyle(

                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Best Partners',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'See All',
                      style:
                          TextStyle(fontSize: 14, color: kmainbackgroundcolor),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 180,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  buildPartnerCard('Subway', 'assets/subway.png'),
                  buildPartnerCard('Taco Bell', 'assets/taco_bell.png'),
                  buildPartnerCard('Starbucks', 'assets/Starbucks.jpg'),
                  buildPartnerCard('Subway', 'assets/subway.png'),
                  buildPartnerCard('Taco Bell', 'assets/taco_bell.png'),
                  buildPartnerCard('Starbucks', 'assets/Starbucks.jpg'),
                  buildPartnerCard('Subway', 'assets/subway.png'),
                  buildPartnerCard('Taco Bell', 'assets/taco_bell.png'),
                  buildPartnerCard('Starbucks', 'assets/Starbucks.jpg'),
                  buildPartnerCard('Subway', 'assets/subway.png'),
                  buildPartnerCard('Taco Bell', 'assets/taco_bell.png'),
                  buildPartnerCard('Starbucks', 'assets/Starbucks.jpg'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'More Restaurants',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'See All',
                      style:
                          TextStyle(fontSize: 14, color: kmainbackgroundcolor),
                    ),
                  ),
                ],
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              children: [
                buildRestaurantCard('Burger King', 'assets/burger_king.png'),
                buildRestaurantCard('Pizza Hut', 'assets/pizza_hut.jpg'),
                buildRestaurantCard('McDonald\'s', 'assets/McDonald.jpg'),
                buildPartnerCard('Taco Bell', 'assets/taco_bell.png'),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
      ),
    );
  }

  Widget buildPartnerCard(String name, String imagePath) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, width: 100, height: 100),
          const SizedBox(height: 10),
          Text(name),
        ],
      ),
    );
  }

  Widget buildRestaurantCard(String name, String imagePath) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, width: 100, height: 100),
          const SizedBox(height: 10),
          Text(name),
        ],
      ),
    );
  }
}
