import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/shoe_tile.dart';
import 'package:flutter_application_1/models/shoe.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //search bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Search",
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search,
                color: Colors.grey
              ),
            ],
          ),
        ),

        // MOTD
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            'This just be what I need to bus',
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),

        // Hot Chickens
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Hot Pixels fire 🔥🔥🔥',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text(
                'See All',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              )
            
            ],

          ),
        ),

        const SizedBox(height: 10),
        
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              // create
              Shoe shoe = Shoe(
                name: 'Dreamy',
                price: '69',
                description: 'Bull',
                imagePath: 'lib/images/db7ccad0-9a32-45be-a279-3c51881f3092-1679862786574.png');
              return ShoeTile(
                shoe: shoe,
              );
            }
          ),
        ),

        const Padding(
          padding: EdgeInsets.only(top: 25.0, left: 25, right: 25),
          child: Divider(
            color: Colors.white,
          ),
        )

      ],
    );
  }
}