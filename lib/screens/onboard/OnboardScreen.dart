import 'package:flutter/material.dart';
import 'package:foodanddrink/widget/constant.dart';
import 'package:foodanddrink/screens/Login/LoginScreen.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (int index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                _buildPage(
                  imagePath: 'assests/Group.png',
                  title: "Diverse & sparkling food & drink.",
                  subtitle:
                      "We use the best local ingredients to create fresh and delicious food and drinks.",
                ),
                _buildPage(
                  imagePath: 'assests/Frame.png',
                  title: "Free shipping on all orders",
                  subtitle:
                      "Free shipping on the primary order whilst the usage of CaPay fee method.",
                ),
                _buildPage(
                  imagePath: 'assests/Frame2.png',
                  title: "+24K Restaurants",
                  subtitle:
                      "Easily find your favorite food and have it delivered in record time.",
                ),
              ],
            ),
          ),
          _buildDotsIndicator(),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  if (_currentPage == 2) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  } else {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: kmainbackgroundcolor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Text(_currentPage == 2 ? "Finish" : "Next"),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildPage({
    required String imagePath,
    required String title,
    required String subtitle,
  }) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 200,
            errorBuilder: (context, error, stackTrace) {
              return const Text('Image not found');
            },
          ),
          const SizedBox(height: 30),
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildDotsIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return Container(
          margin: const EdgeInsets.all(4.0),
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            color: _currentPage == index ? kmainbackgroundcolor : Colors.grey,
            shape: BoxShape.circle,
          ),
        );
      }),
    );
  }
}
