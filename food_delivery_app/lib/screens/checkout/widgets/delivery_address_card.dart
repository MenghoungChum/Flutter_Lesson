import 'package:flutter/material.dart';

class DeliveryAddressCard extends StatelessWidget {
  final String title;
  final String address;
  final String note;
  final VoidCallback onChange;

  const DeliveryAddressCard({
    super.key,
    required this.title,
    required this.address,
    required this.note,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.05),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Location Icon
          Container(
            width: 58,
            height: 58,
            decoration: BoxDecoration(
              color: const Color(0xffFFE7DE),
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Icon(
              Icons.location_on,
              color: Color(0xffC94D00),
              size: 30,
            ),
          ),

          const SizedBox(width: 14),

          /// Address Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const Spacer(),

                    TextButton(
                      onPressed: onChange,
                      child: const Text(
                        "Change",
                        style: TextStyle(
                          color: Color(0xffFF6B35),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 6),

                Text(
                  address,
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    height: 1.5,
                  ),
                ),

                const SizedBox(height: 10),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xffFFF5F1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.info_outline,
                        color: Color(0xffFF6B35),
                        size: 18,
                      ),

                      const SizedBox(width: 8),

                      Expanded(
                        child: Text(
                          note,
                          style: const TextStyle(
                            color: Color(0xff666666),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}