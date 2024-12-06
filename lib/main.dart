import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(MyPropertiesApp());
}

class MyPropertiesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Properties',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyPropertiesScreen(),
    );
  }
}

class MyPropertiesScreen extends StatelessWidget {
  final List<Property> properties = [
    Property(
      datePost: "2024-12-02",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQW6gOe8HL3bfZPbh5YN63MaZz0AspGvyeXmA&s",
      price: "\$200,000",
      address: "456 Elm St, City A",
      totalRooms: 4,
      totalToilets: 3,
      acreage: 150.0,
    ),
    Property(
      datePost: "2024-12-01",
      imageUrl:
          "https://cdn.buildofy.com/projects/afd5b5f6-5820-4a79-819c-3479fdce9e0d.jpeg",
      price: "\$150,000",
      address: "123 Main St, City B",
      totalRooms: 3,
      totalToilets: 2,
      acreage: 120.5,
    ),
    Property(
      datePost: "2024-12-03",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXMjtV0VsWixeob6UR4jPZu5qcj3Ij7_Z47w&s",
      price: "\$250,000",
      address: "789 Pine St, City C",
      totalRooms: 5,
      totalToilets: 4,
      acreage: 200.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 16,
              ),
              onPressed: () {},
            ),
            const Text(
              'My Properties',
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold, height: 16 / 24),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        itemCount: properties.length,
        itemBuilder: (context, index) {
          final property = properties[index];
          return Card(
            color: Colors.transparent,
            elevation: 0,
            margin: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: CachedNetworkImage(
                        imageUrl: property.imageUrl,
                        height: 347,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        cacheKey: property.imageUrl,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        onPressed: () {},
                        icon: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.more_vert,
                            color: const Color(0xff797980),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: () {},
                        icon: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 4,
                            horizontal: 12,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: const Text(
                            '1 day ago'
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0),
                  child: Row(
                    children: [
                      Text(
                        property.price,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 12,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: const Color(0xff797980),
                        ),
                        child: const Text(
                          'Reserved',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0),
                  child: Text(
                    property.address,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.normal),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/bed_ic.svg',
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        property.totalRooms.toString(),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff797980),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      SvgPicture.asset(
                        'assets/icons/toilet_ic.svg',
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        property.totalToilets.toString(),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff797980),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      SvgPicture.asset(
                        'assets/icons/square_ic.svg',
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        '${property.acreage.toString()} Sqf',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff797980),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      SvgPicture.asset(
                        'assets/icons/building_ic.svg',
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text(
                        'Landed',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff797980),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Property {
  final String datePost;
  final String imageUrl;
  final String price;
  final String address;
  final int totalRooms;
  final int totalToilets;
  final double acreage;

  Property({
    required this.datePost,
    required this.imageUrl,
    required this.price,
    required this.address,
    required this.totalRooms,
    required this.totalToilets,
    required this.acreage,
  });
}
