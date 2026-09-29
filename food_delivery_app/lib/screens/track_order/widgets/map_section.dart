import 'package:flutter/material.dart';

class MapSection extends StatelessWidget {
  const MapSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 330,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            "https://maps.geoapify.com/v1/staticmap?style=osm-bright-smooth&width=1200&height=700&center=lonlat:-74.0060,40.7128&zoom=13&apiKey=YOUR_API_KEY",
            fit: BoxFit.cover,
            errorBuilder: (_, __, ___) {
              return Image.network(
                "https://images.unsplash.com/photo-1524661135-423995f22d0b?w=1200",
                fit: BoxFit.cover,
              );
            },
          ),

          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 54,
                  height: 54,
                  decoration: const BoxDecoration(
                    color: Color(0xffC94D00),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.delivery_dining,
                    color: Colors.white,
                    size: 30,
                  ),
                ),

                Container(
                  width: 4,
                  height: 30,
                  color: const Color(0xffC94D00),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}