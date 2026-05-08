import 'package:flutter/material.dart';
import 'package:facebook_clone/model/model.dart';

class Marketplace extends StatefulWidget {
  const Marketplace({super.key});

  @override
  State<Marketplace> createState() => _MarketplaceState();
}

class _MarketplaceState extends State<Marketplace> {
  final List<Product> products = [
    Product(
      id: "1",
      title: "Windcaller Katana",
      price: 1200.0,
      location: "Hidden Leaf Village (Konoha)",
      image: "assets/images/Product1.jpg",
    ),
    Product(
      id: "2",
      title: "Lightning Strike Blade",
      price: 1550.0,
      location: "Soul Society (Seireitei)",
      image: "assets/images/Product2.webp",
    ),
    Product(
      id: "3",
      title: "Solar Flare Odachi",
      price: 2100.0,
      location: "Land of Wano (Onigashima)",
      image: "assets/images/Product3.jpg",
    ),
    Product(
      id: "4",
      title: "Glacial Ice Shard",
      price: 1800.0,
      location: "Kingdom of Clover",
      image: "assets/images/Product7.png",
    ),
    Product(
      id: "5",
      title: "Twin Azure Daggers",
      price: 950.0,
      location: "Aincrad (Floor 74)",
      image: "assets/images/Product4.webp",
    ),
    Product(
      id: "6",
      title: "Ancient Knight Greatsword",
      price: 3500.0,
      location: "Wall Rose (Trost District)",
      image: "assets/images/Product5.webp",
    ),
    Product(
      id: "7",
      title: "Cursed Shadow Blade",
      price: 2700.0,
      location: "Yorknew City",
      image: "assets/images/Product8.webp",
    ),
    Product(
      id: "8",
      title: "Ethereal Spirit Sword",
      price: 1300.0,
      location: "Mount Natagumo",
      image: "assets/images/Product6.webp",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent, // Dark background
      // appBar: AppBar(
      //   // backgroundColor: Colors.transparent,
      //   elevation: 0.5,
      //   title: const Text(
      //     "Marketplace",
      //     style: TextStyle(
      //       // color: Colors.black,
      //       fontWeight: FontWeight.bold,
      //       fontSize: 22,
      //     ),
      //   ),
      //   actions: [
      //     // _buildCircleAction(Icons.person),
      //     // _buildCircleAction(Icons.search),
      //     const SizedBox(width: 8),
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(),
            // Action Buttons Section
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
            //   child: Row(
            //     children: [
            //       _buildMainButton(Icons.edit, "Market Plase"),
            //       const SizedBox(width: 7),
            //       _buildMainButton(Icons.list, "Categories"),
            //     ],
            //   ),
            // ),
            // const Divider(color: Color(0xFF3a3b3c), thickness: 0.5),

            // Grid of Items
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.75,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return _buildProductCard(product);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCircleAction(IconData icon) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: const BoxDecoration(
        color: Colors.grey,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(icon, color: Colors.white, size: 20),
        onPressed: () {},
      ),
    );
  }

  Widget _buildMainButton(IconData icon, String label) {
    return Expanded(
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(icon, color: Colors.white, size: 18),
        label: Text(label, style: const TextStyle(color: Colors.white)),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF3a3b3c),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10),
        ),
      ),
    );
  }

  Widget _buildProductCard(Product products) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              products.image,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          "\$${products.price.toStringAsFixed(0)} . ${products.title}",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          products.location,
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
      ],
    );
  }
}

Widget _buildHeader() {
  return Padding(
    padding: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Market Plasce',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
