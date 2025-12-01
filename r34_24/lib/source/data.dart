
import '../entity/product.dart';
import '../model/product_model.dart';

abstract class DataRepository {
  Future<List<Product>> getAllProducts();
  List<Product> searchProduct({required String name, String? category});
  List<Product> topSold({required List<Product> products});
  List<Product> topViewed({required List<Product> products});
}

class Data extends DataRepository {
  List<Product> allProducts = [
    ProductModel(
    id: 1,
    title: 'Fresh Strawberries',
    description: 'Sweet and juicy red strawberries, perfect for snacking, desserts, or smoothies.',
    category: 'fruits',
    price: 4.99,
    image: 'https://i.imgur.com/TYBIiTB.png',
    sold: 127,
    views: 1405,
  ),
  ProductModel(
    id: 2,
    title: 'Ripe Mangoes',
    description: 'Tropical, sweet, and fibrous mangoes, excellent eaten fresh or in salads and salsas.',
    category: 'fruits',
    price: 2.50,
    image: 'https://i.imgur.com/NauJGHx.png',
    sold: 88,
    views: 312,
  ),
  ProductModel(
    id: 3,
    title: 'Crisp Red Apples',
    description: 'Crunchy and slightly sweet apples, ideal for a healthy snack or baking.',
    category: 'fruits',
    price: 3.99,
    image: 'https://i.imgur.com/cXoqqUL.png',
    sold: 215,
    views: 1598,
  ),
  ProductModel(
    id: 4,
    title: 'Sweet Bananas',
    description: 'Naturally sweet and creamy bananas, a great source of potassium and energy.',
    category: 'fruits',
    price: 1.99,
    image: 'https://i.imgur.com/6legbn7.png',
    sold: 134,
    views: 1887,
  ),
  ProductModel(
    id: 5,
    title: 'Seedless Grapes',
    description: 'Bursting with sweetness, these green seedless grapes are a refreshing treat.',
    category: 'fruits',
    price: 5.49,
    image: 'https://i.imgur.com/b5lR0lx.png',
    sold: 94,
    views: 276,
  ),
  ProductModel(
    id: 6,
    title: 'Fresh Broccoli',
    description: 'Nutrient-packed green broccoli, perfect for steaming, roasting, or adding to stir-fries.',
    category: 'vegetables',
    price: 2.25,
    image: 'https://i.imgur.com/vFgF7JQ.png',
    sold: 156,
    views: 421,
  ),
  ProductModel(
    id: 7,
    title: 'Organic Carrots',
    description: 'Sweet and crunchy organic carrots, great raw as a snack or cooked in a variety of dishes.',
    category: 'vegetables',
    price: 1.75,
    image: 'https://i.imgur.com/kmJS2Ys.png',
    sold: 1203,
    views: 554,
  ),
  ProductModel(
    id: 8,
    title: 'Bell Peppers',
    description: 'Colorful mix of red, yellow, and green bell peppers, adding crunch and flavor to any meal.',
    category: 'vegetables',
    price: 3.99,
    image: 'https://i.imgur.com/okkk0T1.png',
    sold: 118,
    views: 367,
  ),
  ProductModel(
    id: 9,
    title: 'Spinach Bunch',
    description: 'Tender, dark leafy greens, excellent for salads, smoothies, or sautéing.',
    category: 'vegetables',
    price: 2.99,
    image: 'https://i.imgur.com/iY1WErx.png',
    sold: 178,
    views: 489,
  ),
  ProductModel(
    id: 10,
    title: 'Vine Tomatoes',
    description: 'Juicy and flavorful tomatoes on the vine, perfect for salads, sandwiches, or sauces.',
    category: 'vegetables',
    price: 3.49,
    image: 'https://i.imgur.com/4TsXMfL.png',
    sold: 265,
    views: 1702,
  ),
  ProductModel(
    id: 11,
    title: 'Chicken Breast',
    description: 'Lean and versatile boneless, skinless chicken breast, a high-protein staple for many meals.',
    category: 'meats',
    price: 8.99,
    image: 'https://i.imgur.com/TDSSBH4.png',
    sold: 331,
    views: 912,
  ),
  ProductModel(
    id: 12,
    title: 'Ground Beef',
    description: 'Fresh 80/20 ground beef, ideal for burgers, meatballs, tacos, and pasta sauces.',
    category: 'meats',
    price: 7.49,
    image: 'https://i.imgur.com/Ell8sEt.png',
    sold: 287,
    views: 765,
  ),
  ProductModel(
    id: 13,
    title: 'Salmon Fillets',
    description: 'Fresh, skin-on salmon fillets, rich in omega-3s and perfect for baking or grilling.',
    category: 'meats',
    price: 12.99,
    image: 'https://i.imgur.com/D4IsGyb.png',
    sold: 145,
    views: 1498,
  ),
  ProductModel(
    id: 14,
    title: 'Pork Chops',
    description: 'Thick-cut bone-in pork chops, tender and juicy when grilled, baked, or pan-seared.',
    category: 'meats',
    price: 9.99,
    image: 'https://i.imgur.com/XTczdgs.png',
    sold: 0,
    views: 334,
  ),
  ProductModel(
    id: 15,
    title: 'Italian Sausages',
    description: 'Flavorful pork sausages seasoned with fennel and other Italian herbs, great for grilling or pasta.',
    category: 'meats',
    price: 6.99,
    image: 'https://i.imgur.com/IRxk25o.png',
    sold: 19,
    views: 543,
  ),
  ProductModel(
    id: 16,
    title: 'Extra Virgin Olive Oil',
    description: 'High-quality, cold-pressed olive oil, perfect for dressings, dipping, and finishing dishes.',
    category: 'pantry',
    price: 10.99,
    image: 'https://i.imgur.com/Rrj7kVj.png',
    sold: 221,
    views: 610,
  ),
  ProductModel(
    id: 17,
    title: 'Basmati Rice',
    description: 'Long-grain, aromatic Basmati rice, known for its fluffy texture and delicate flavor.',
    category: 'pantry',
    price: 4.49,
    image: 'https://i.imgur.com/XqR1Ems.png',
    sold: 1305,
    views: 1801,
  ),
  ProductModel(
    id: 18,
    title: 'Sea Salt Grinder',
    description: 'Coarse sea salt in a reusable grinder, for enhancing the flavor of all your dishes.',
    category: 'pantry',
    price: 5.99,
    image: 'https://i.imgur.com/5tT8KrU.png',
    sold: 134,
    views: 455,
  ),
  ProductModel(
    id: 19,
    title: 'Black Peppercorns',
    description: 'Whole black peppercorns for grinding, offering robust and pungent flavor to your cooking.',
    category: 'pantry',
    price: 3.99,
    image: 'https://i.imgur.com/jf9em4k.png',
    sold: 187,
    views: 1522,
  ),
  ProductModel(
    id: 20,
    title: 'Balsamic Vinegar',
    description: 'Aged, sweet and tangy balsamic vinegar, excellent for vinaigrettes and glazes.',
    category: 'pantry',
   price: 7.50,
    image: 'https://i.imgur.com/BRwJ7x3.png',
    sold: 96,
    views: 321,
  ),



    
  ];

  @override
  Future<List<Product>> getAllProducts() async {
    return allProducts;
  }

  @override
  List<Product> searchProduct({required String name, String? category}) {
    return allProducts.where((product) {
      final matchesName =
          product.title.toLowerCase().contains(name.toLowerCase());
      final matchesCategory = category != null
          ? product.category.toLowerCase() == category.toLowerCase()
          : true;
      return matchesName && matchesCategory;
    }).toList();
  }

  @override
  List<Product> topSold({required List<Product> products}) {
    final sorted = List<Product>.from(products);
    sorted.sort((a, b) => b.sold.compareTo(a.sold));
    return sorted;
  }

  @override
  List<Product> topViewed({required List<Product> products}) {
    final sorted = List<Product>.from(products);
    sorted.sort((a, b) => b.views.compareTo(a.views));
    return sorted;
  }
}
