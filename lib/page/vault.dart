import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Vault extends StatefulWidget {
  const Vault({Key? key});

  @override
  State<Vault> createState() => _VaultState();
}

class _VaultState extends State<Vault> {
  TextEditingController _searchController = TextEditingController();
  List<String> items = [
    'Upwork Agency',
    'Netflix',
    'Instagram',
    'Office Wifi',
    'Driver License',
    'Mastercard'
  ];

  List<String> filteredItems = [];

  @override
  void initState() {
    super.initState();
    filteredItems = items;
    _searchController.addListener(_onSearchChanged);
  }

  void _onSearchChanged() {
    setState(() {
      filteredItems = items
          .where((item) =>
              item.toLowerCase().contains(_searchController.text.toLowerCase()))
          .toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Vault',
          style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                controller: _searchController,
                onChanged: (value) {
                  _onSearchChanged();
                },
                decoration: InputDecoration(
                  hintText: 'Search Password',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          Container(
            height: 40, // Set the height of the chip list
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (String label in [
                  'All',
                  'Login',
                  'Wifi',
                  'Identity',
                  'Bank Account'
                ])
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    child: InkWell(
                      onTap: () {
                        // Handle chip tap
                      },
                      child: Chip(
                        label: Text(label),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
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
          )
        ],
      ),
    );
  }

  Widget _buildLeadingIcon(int index) {
    IconData iconData;
    switch (index) {
      case 0:
        iconData = Icons.circle_rounded;
        break;
      case 1:
        iconData = Icons.circle_rounded;
        break;
      case 2:
        iconData = Icons.square_rounded;
        break;
      case 3:
        iconData = Icons.wifi_rounded;
        break;
      case 4:
        iconData = Icons.car_rental;
        break;
      case 5:
        iconData = Icons.credit_card;
        break;
      default:
        iconData = Icons.circle_rounded;
        break;
    }
    return Icon(
      iconData,
      size: 30,
    );
  }

  Widget _buildTrailingContainer(String item) {
    String category;
    if (item == 'Upwork Agency' || item == 'Netflix' || item == 'Instagram') {
      category = 'Login';
    } else if (item == 'Office Wifi') {
      category = 'Wifi';
    } else if (item == 'Driver License') {
      category = 'Identity';
    } else if (item == 'Mastercard') {
      category = 'Bank Account';
    } else {
      category = '';
    }
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: EdgeInsets.all(10.0),
      child: Text(category),
    );
  }
}
