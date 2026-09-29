import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoveSuccessPage extends StatefulWidget {
  const LoveSuccessPage({super.key});

  @override
  State<LoveSuccessPage> createState() => _LoveSuccessPageState();
}

class _LoveSuccessPageState extends State<LoveSuccessPage> {
  String _lastActionMessage = '';

  void _showActionFeedback(String message) {
    setState(() {
      _lastActionMessage = message;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 1),
        backgroundColor: Colors.pinkAccent,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFFF0F3), Color(0xFFFFD1DC)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 3),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        color: const Color.fromARGB(255, 243, 194, 211),
                      )
                    ],
                    borderRadius: BorderRadius.circular(40)
                  ),
                  child: Text("✨ Relationship Status : unlock 🔒 ❤️ ✨",style: TextStyle(color: const Color.fromARGB(164, 233, 30, 98)),),
                ),
                SizedBox(height: 10,),
                // Top Header Text
                const Text(
                  'I knew it! We are officially cute together now 🥰',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2D1517),
                  ),
                ),
                const SizedBox(height: 12),

                // Congratulations Illustration Card
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(28),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink.withOpacity(0.1),
                        blurRadius: 15,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      // Placeholder graphic area for the cute hearts image
                      Container(
                        height: 160,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.pink[50]?.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text(
                            '💖✨🥰💕✨💖',
                            style: TextStyle(fontSize: 28),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),

                      // Holding Hands Forever Pill
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.pink[50],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text(
                              'Holding Hands Forever ',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF2D1517),
                              ),
                            ),
                            Text('🤝', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),

                      // Match Guaranteed Label
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.favorite, color: Colors.pinkAccent, size: 14),
                          SizedBox(width: 6),
                          Text(
                            '100% Match Guaranteed',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF2D1517),
                            ),
                          ),
                          SizedBox(width: 6),
                          Icon(Icons.favorite, color: Colors.pinkAccent, size: 14),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),

                // Love Confession Receipt Card
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink.withOpacity(0.08),
                        blurRadius: 12,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      // Receipt Header
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(Icons.verified, color: Colors.pinkAccent, size: 18),
                              SizedBox(width: 6),
                              Text(
                                'Love Confession Receipt',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Color(0xFF2D1517),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                            decoration: BoxDecoration(
                              color: Colors.pink[50],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Text(
                              'Just Now',
                              style: TextStyle(fontSize: 10, color: Colors.pinkAccent, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 14),

                      // Receipt Items
                      _buildReceiptItem(
                        icon: Icons.check_circle,
                        title: 'Said YES without hesitation',
                        value: 'Instant!',
                        valueColor: Colors.pinkAccent,
                      ),
                      const SizedBox(height: 10),
                      _buildReceiptItem(
                        icon: Icons.monitor_heart,
                        title: 'Heart rate measurement',
                        value: '160 BPM 🔥',
                        valueColor: Color(0xFF2D1517),
                      ),
                      const SizedBox(height: 10),
                      _buildReceiptItem(
                        icon: Icons.pest_control_rodent, // Placeholder icon for tummy butterfly
                        title: 'Tummy butterfly count',
                        value: '9,999 🦋',
                        valueColor: Color(0xFF2D1517),
                      ),
                      const SizedBox(height: 10),
                      _buildReceiptItem(
                        icon: Icons.emoji_events,
                        title: 'Cutest couple award',
                        value: 'Secured 🏆',
                        valueColor: Colors.pinkAccent,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),

                // Interactive Action Buttons Row (Send Kiss, Sweet Treat, Save Memory)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildActionButton('❤️', 'Send Kiss', () => _showActionFeedback('Kiss sent! 😘')),
                    _buildActionButton('🧁', 'Sweet Treat', () => _showActionFeedback('Sweet treat requested! 🍰')),
                    _buildActionButton('📸', 'Save Memory', () => _showActionFeedback('Memory saved to gallery! 🖼️')),
                  ],
                ),
                const SizedBox(height: 20),

                // Continue Our Love Story Button
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () => _showActionFeedback('Continuing our love story... 💖'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFD81B60),
                      elevation: 4,
                      shadowColor: Colors.pink.withOpacity(0.4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Continue Our Love Story',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text('💌', style: TextStyle(fontSize: 16)),
                        SizedBox(width: 6),
                        Icon(Icons.arrow_forward, color: Colors.white, size: 18),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Footer Confetti text
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('🎉 ', style: TextStyle(fontSize: 12)),
                    Text(
                      'Tap to pop more confetti!',
                      style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildReceiptItem({
    required IconData icon,
    required String title,
    required String value,
    required Color valueColor,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF0F3),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.pinkAccent, size: 18),
              const SizedBox(width: 8),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF2D1517),
                ),
              ),
            ],
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: valueColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(String emoji, String label, VoidCallback onTap) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.pink.withOpacity(0.05),
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(emoji, style: const TextStyle(fontSize: 18)),
                const SizedBox(height: 4),
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF2D1517),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}