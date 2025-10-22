import 'package:flutter/material.dart';

void main() {
  runApp(const SareeCenterApp());
}

class SareeCenterApp extends StatelessWidget {
  const SareeCenterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'V Mate Sandhya Saree Center',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'V Mate Sandhya Saree Center',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome to Our Collection',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.deepOrange),
            ),
            const SizedBox(height: 10),
            const Text(
              'Explore our exquisite range of traditional and bridal sarees, crafted for elegance and tradition.',
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),
                itemCount: sarees.length,
                itemBuilder: (context, index) {
                  final saree = sarees[index];
                  return Card(
                    elevation: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 120,
                          width: double.infinity,
                          color: Colors.grey[300],
                          child: const Icon(Icons.photo, size: 50, color: Colors.grey),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                saree.name,
                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Text(
                                '₹${saree.price}',
                                style: const TextStyle(color: Colors.deepOrange, fontSize: 14),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                saree.description,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const Divider(),
            const Text(
              'Contact Us',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text('Phone: +91-9876543210'),
            const Text('Address: 123 Main Street, City, State'),
          ],
        ),
      ),
    );
  }
}

class Saree {
  final String name;
  final int price;
  final String description;

  Saree({required this.name, required this.price, required this.description});
}

final List<Saree> sarees = [
  Saree(name: 'Traditional Silk Saree', price: 2500, description: 'Elegant silk saree with intricate embroidery for festivals.'),
  Saree(name: 'Bridal Banarasi Saree', price: 5000, description: 'Luxurious Banarasi weave perfect for weddings.'),
  Saree(name: 'Cotton Casual Saree', price: 800, description: 'Comfortable cotton saree for everyday wear.'),
  Saree(name: 'Designer Kanchipuram', price: 3500, description: 'Premium Kanchipuram saree with gold zari work.'),
  Saree(name: 'Printed Chiffon Saree', price: 1200, description: 'Lightweight chiffon with modern prints.'),
  Saree(name: 'Embroidered Lehenga Saree', price: 4000, description: 'Stunning lehenga-style saree with heavy embroidery.'),
];