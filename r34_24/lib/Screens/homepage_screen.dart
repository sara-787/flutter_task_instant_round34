import 'package:flutter/material.dart';
import 'package:r34_24/Screens/account.dart';
import 'package:r34_24/Screens/cart.dart';
import 'package:r34_24/Screens/explore.dart';
import 'package:r34_24/Screens/fav.dart';
import 'package:r34_24/entity/product.dart';
import 'package:r34_24/source/data.dart';
import 'package:r34_24/widgets/name_banner.dart';
import 'package:r34_24/product_info/product_card.dart';
import 'package:r34_24/widgets/groceries_card.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  int currentPageIndex = 0;
  
  final Data _dataRepo = Data(); 
  List<Product> allProducts = [];
  List<Product> exclusiveOffers = [];
  List<Product> bestSelling = [];

  @override
  void initState() {
    super.initState();
    _loadProducts();
  }

  void _loadProducts() {
    _dataRepo.getAllProducts().then((products) {
      setState(() {
        allProducts = products;
        exclusiveOffers = _dataRepo.topViewed(products: products).take(5).toList();
        bestSelling = _dataRepo.topSold(products: products);
      });
    });
  }

  Widget _buildHomeContent() {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // HEADER
          const SizedBox(height: 20),
          Center(child: Image.asset('assets/images/logo.png', height: 40)),
          const SizedBox(height: 10),
          const Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.location_on, color: Colors.grey, size: 25),
                SizedBox(width: 8),
                Text('Giza, Egypt', style: TextStyle(color: Colors.grey, fontSize: 15)),
              ],
            ),
          ),
          // SEARCH BAR
          Container(
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Search Store',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                // BANNER IMAGE
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                image: AssetImage('assets/images/banner.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 30),

          //EXCLUSIVE OFFERS
          const NameBanner(bannerTitle: 'Exclusive Offer'),
          const SizedBox(height: 16),
          SizedBox(
            height: 280,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: exclusiveOffers.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: ProductCard(
                  
                    product: exclusiveOffers[index],
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/productDetailsScreen',
                        arguments: exclusiveOffers[index],
                      );
                    },
                  )
                );
              },
            ),
          ),

          const SizedBox(height: 30),
          //BEST SELLING
          const NameBanner(bannerTitle: 'Best Selling'),
          const SizedBox(height: 16),
          SizedBox(
            height: 280,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: bestSelling.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: ProductCard(
                    product: bestSelling[index],
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/productDetailsScreen',
                        arguments: bestSelling[index],
                      );
                    },
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 40),
          const NameBanner(bannerTitle: 'Groceries'),
          const SizedBox(height: 16),
          SizedBox(
            height: 140,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              GroceriesCard(
                imagePath: 'assets/images/spices.png',
                title: 'Spices',
                color: Colors.green[100]!,
              ),
              const SizedBox(width: 16),
              GroceriesCard(
                imagePath: 'assets/images/ginger.png',
                title: 'Vegetables',
                color: Colors.orange[100]!,
              ),
              const SizedBox(width: 16),
              GroceriesCard(
                imagePath: 'assets/images/apple.png',
                title: 'Fruits',
                color: Colors.pink[100]!,
              ),
            ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      _buildHomeContent(),
      const Explore(),
      const Cart(),
      const Fav(),
      const Account(),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: pages[currentPageIndex],
      ),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: currentPageIndex,
        onTap: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}

