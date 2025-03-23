// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10)],
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _navItem("assets/home.png"),
              _navItem("assets/download.png"),
              // const SizedBox(width: 50),
              _navItem("assets/profile.png"),
              _navItem("assets/settings.png"),
            ],
          ),
          Positioned(
            bottom: 20,
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.black54,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 3),
              ),
              child: FloatingActionButton(
                backgroundColor: Colors.black54,
                elevation: 0,
                onPressed: () {},
                child: const Icon(Icons.add, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _navItem(String imagePath) {
    return Image.asset(
      imagePath,
      width: 30,
      height: 30,
      color: Colors.black,
    );
  }
}
