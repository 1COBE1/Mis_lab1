import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ClothingList(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class ClothingList extends StatelessWidget {
  final List<Map<String, String>> clothes = [
    {
      'name': 'Casual Shirt',
      'image':
          'https://www.shutterstock.com/image-photo/clothes-on-clothing-hanger-260nw-2338282257.jpg',
      'description':
          'A light and comfortable casual shirt perfect for everyday wear.',
      'price': '\$35',
    },
    {
      'name': 'Denim Jeans',
      'image':
          'https://www.shutterstock.com/image-photo/clothes-on-clothing-hanger-260nw-2338282257.jpg',
      'description': 'Stylish denim jeans that pair well with any outfit.',
      'price': '\$50',
    },
    {
      'name': 'Leather Jacket',
      'image':
          'https://www.shutterstock.com/image-photo/clothes-on-clothing-hanger-260nw-2338282257.jpg',
      'description': 'A classic leather jacket that never goes out of style.',
      'price': '\$120',
    },
    {
      'name': 'Summer Dress',
      'image':
          'https://www.shutterstock.com/image-photo/clothes-on-clothing-hanger-260nw-2338282257.jpg',
      'description': 'A bright and breezy summer dress perfect for warm days.',
      'price': '\$45',
    },
    {
      'name': 'Running Shoes',
      'image':
          'https://www.shutterstock.com/image-photo/clothes-on-clothing-hanger-260nw-2338282257.jpg',
      'description': 'Comfortable running shoes designed for performance.',
      'price': '\$80',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('201211'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: clothes.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Image.network(clothes[index]['image']!),
                title: Text(clothes[index]['name']!),
                subtitle: Text(clothes[index]['price']!),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ClothingDetails(
                        details: clothes[index],
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class ClothingDetails extends StatelessWidget {
  final Map<String, String> details;

  const ClothingDetails({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('201211'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(details['image']!),
            const SizedBox(height: 20),
            Text(
              details['name']!,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              details['description']!,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Text(
              'Price: ${details['price']}',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
