import 'package:flutter/material.dart';
import 'package:r34_24/widgets/divider.dart';
import 'package:r34_24/widgets/cart_product.dart';


class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'My Cart',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.favorite, color: Colors.red.shade400, size: 28),
                const SizedBox(width: 8),
                const Text(
                  'Your Favorites',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            

            const SizedBox(height: 50), 

            CartProduct(),
            divider(),
            const SizedBox(height: 30),
            CartProduct(),
            divider(),
            const SizedBox(height: 30),
            CartProduct(),
            divider(),
            const SizedBox(height: 30),
            CartProduct(),
            divider(),
            const SizedBox(height: 30),
            CartProduct(),
            divider(),
            const SizedBox(height: 30),
            CartProduct(),
            divider(),
            const SizedBox(height: 30),

            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 22, 84, 54),
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Checkout',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),

          ],
        ),
        
      ),
      
    );
    
  }
}