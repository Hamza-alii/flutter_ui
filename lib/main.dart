import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey[200],
                    child: Image.asset('assets/images/logo.png', 
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                    )
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hamza Yusuf Ali',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '252612452156',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      
                    ],
                    
                  ),
                ],
              ),
            ),

            // Image Banner Section
            Container(
              margin: EdgeInsets.all(16),
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage('assets/images/banner_image.jpg'), // Replace with your image asset
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
            
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                mainAxisSpacing: 2,
                crossAxisSpacing: 16,
                children: [
                  ActionIcon(icon: Icons.payment, label: 'Buy Plan'),
                  ActionIcon(icon: Icons.speed, label: 'Speed Test'),
                  ActionIcon(icon: Icons.shopping_bag, label: 'My Products'),
                  ActionIcon(icon: Icons.data_usage, label: 'Data Usage'),
                  ActionIcon(icon: Icons.settings, label: 'Maintain Request'),
                  ActionIcon(icon: Icons.support, label: 'Support'),
                ],
              ),
            ),

            // Featured Packages Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Featured Packages',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  PackageTile(title: 'Package 1', price: 20),
                  PackageTile(title: 'Package 2', price: 50),
                ],
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.speed), label: 'Speed'),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: 'Recharge'),
          BottomNavigationBarItem(icon: Icon(Icons.payment), label: 'Payments'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Account'),
        ],
      ),
    );
  }
}

// Custom Widgets

class ActionIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const ActionIcon({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey[200],
          child: Icon(icon, color: Colors.deepPurple),
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}

class PackageTile extends StatelessWidget {
  final String title;
  final int price;

  const PackageTile({required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.tv, color: Colors.deepPurple),
        title: Text(title),
        trailing: Text('\$ $price', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
