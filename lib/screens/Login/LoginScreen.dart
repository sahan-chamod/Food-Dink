import 'package:flutter/material.dart';
import 'package:foodanddrink/widget/constant.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: kbackgroundcolor,
                    child: const Icon(
                      Icons.restaurant_menu,
                      size: 50,
                      color: kmainbackgroundcolor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "COOK",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: kmainbackgroundcolor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                "Welcome Back",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Hello Jos, sign in to continue!",
                style: TextStyle(
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/signin');
                },
                child: const Text(
                  "Create new account",
                  style: TextStyle(
                    color: kmainbackgroundcolor,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: "Username or Email",
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 20,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  filled: true,
                  fillColor: kfillcolor,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 20,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to home page after login
                    // Navigator.pushNamed(context, '/home');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kmainbackgroundcolor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: const Text(
                    "Sign in",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/forgot_password');
                },
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: kmainbackgroundcolor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text("OR"),
              const SizedBox(height: 10),
              _buildSocialButton(
                label: "Connect with Facebook",
                imagePath: "assets/Facebook.png",
              ),
              const SizedBox(height: 10),
              _buildSocialButton(
                label: "Connect with Google",
                imagePath: "assets/Google.png",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSocialButton(
      {required String label, required String imagePath}) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          // Social login logic here
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 24,
            ),
            const SizedBox(width: 10),
            Text(label),
          ],
        ),
      ),
    );
  }
}
