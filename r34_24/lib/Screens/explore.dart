// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:r34_24/widgets/cateogry_card.dart';
class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Find Products',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          children: [
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: 'Search Store',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey.shade100,
                contentPadding: const EdgeInsets.symmetric(vertical: 12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 25),

            // Grid
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.85,
                children: const [
                  CategoryCard(
                    image: 'assets/images/veggie.png',
                    title: 'Fresh Fruits\n& Vegetable',
                    color: Color(0xFFE6F8EC),
                    borderColor: Color(0xFF7AD793),
                  ),
                  CategoryCard(
                    image: 'assets/images/oil.png',
                    title: 'Cooking Oil\n& Ghee',
                    color: Color(0xFFFFF4E6),
                    borderColor: Color(0xFFFFC46B),
                  ),
                  CategoryCard(
                    image: 'assets/images/meat.png',
                    title: 'Meat & Fish',
                    color: Color(0xFFFFEAEA),
                    borderColor: Color(0xFFFF8B8B),
                  ),
                  CategoryCard(
                    image: 'assets/images/bake.png',
                    title: 'Bakery & Snacks',
                    color: Color(0xFFF4EBFF),
                    borderColor: Color(0xFFBCA7FF),
                  ),
                  CategoryCard(
                    image: 'assets/images/diary.png',
                    title: 'Dairy & Eggs',
                    color: Color(0xFFFFFBEB),
                    borderColor: Color(0xFFFFE27A),
                  ),
                  CategoryCard(
                    image: 'assets/images/beverage.png',
                    title: 'Beverages',
                    color: Color(0xFFEAF4FF),
                    borderColor: Color(0xFF8BBAFF),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


