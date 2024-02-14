import 'package:flutter/material.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  // Placeholder list for filtered items
  List<String> filteredItems = [
    'Upwork',
    'Netflix',
    'Instagram',
    'Office Wifi',
    'Driver License',
    'Mastercard'
  ];

  // Placeholder method to build leading icon based on index
  Widget _buildLeadingIcon(int index) {
    // Replace with your logic to build the leading icon
    return Icon(Icons.circle_rounded, size: 30);
  }

  // Placeholder method to build trailing container based on item
  Widget _buildTrailingContainer(String item) {
    // Replace with your logic to build the trailing container
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: EdgeInsets.all(10.0),
      child: Text('Login'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome back',
              style: TextStyle(fontSize: 19.0),
            ),
            Text(
              'Lisandro Martinez',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        leading: CircleAvatar(
          backgroundImage: AssetImage(
              'assets/profile_image.jpg'), // Replace with your profile image
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Handle notification center action
            },
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListTile(
            title: ListView(
              shrinkWrap: true,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: ListTile(
                          title: Text('294'),
                          subtitle: Text('Total'),
                          leading: Icon(Icons.lock),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: ListTile(
                          title: Text('5'),
                          subtitle: Text('Compromise'),
                          leading: Icon(Icons.lock),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8), // Adding spacing between rows
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: ListTile(
                          title: Text('102'),
                          subtitle: Text('Weak'),
                          leading: Icon(Icons.lock),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: ListTile(
                          title: Text('82'),
                          subtitle: Text('Reused'),
                          leading: Icon(Icons.lock),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 14.0,
          ),
          Row(
            children: [
              Text(
                'Top Vault',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredItems.length,
              itemBuilder: (context, index) {
                String item = filteredItems[index];
                return Card(
                  child: ListTile(
                    title: Text(
                      item,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('xyz@gmail.com'),
                    leading: _buildLeadingIcon(index),
                    trailing: _buildTrailingContainer(item),
                    onTap: () {
                      print('pressed');
                    },
                    onLongPress: () {
                      print('pressed long');
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
