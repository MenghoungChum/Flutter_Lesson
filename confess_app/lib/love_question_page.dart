import 'package:flutter/material.dart';

class LoveQuestionPage extends StatefulWidget {
  const LoveQuestionPage({super.key});

  @override
  State<LoveQuestionPage> createState() => _LoveQuestionPageState();
}

class _LoveQuestionPageState extends State<LoveQuestionPage> {
  int _avoidAttempts = 0;
  bool _answeredYes = false;

  void _handleNoPressed() {
    setState(() {
      _avoidAttempts++;
    });
    // You can also add a playful SnackBar or dialog here
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Nice try! Attempt $_avoidAttempts to escape love! 🤭'),
        duration: const Duration(seconds: 1),
        backgroundColor: Colors.pinkAccent,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  void _handleYesPressed() {
    setState(() {
      _answeredYes = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 207, 217),
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
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.pink.shade50,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    color: Colors.pink.shade100,
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Top Action Chips
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.pink.withOpacity(0.05),
                              blurRadius: 5,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          children: const [
                            Text('🎯', style: TextStyle(fontSize: 12)),
                            SizedBox(width: 4),
                            Text(
                              'Mini-Game: Catch Heart!',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF2D1517),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.pink.withOpacity(0.05),
                              blurRadius: 5,
                              offset: const Offset(0, 20),
                            ),
                          ],
                        ),
                        child: Row(
                          children: const [
                            Text('🩻', style: TextStyle(fontSize: 12)),
                            SizedBox(width: 4),
                            Text(
                              'Scan Love %',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF2D1517),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
              
                  // Greeting Banner
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.pink[50],
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.pink[100]!, width: 1),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text('🌺', style: TextStyle(fontSize: 14)),
                        SizedBox(width: 6),
                        Text(
                          'Hey Sarah... 🥺💕 ✨',
                          style: TextStyle(
                            color: Color(0xFF2D1517),
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
              
                  // Main Title
                  const Text(
                    'Do you love me? 😳',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2D1517),
                    ),
                  ),
                  const SizedBox(height: 8),
              
                  // Subtitle
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                      'There is only one historically and scientifically accurate answer... please choose wisely! 💌',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        height: 1.4,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
              
                  // Cute Cat Illustration Container / Card
                  Container(
                    height: 220,
                    width: double.infinity,
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
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // Background Illustration placeholder feel
                        Positioned.fill(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(28),
                            child: Container(
                              color: Colors.pink[50]?.withOpacity(0.5),
                              child: const Center(
                                // Using an expressive emoji setup as placeholder for the AI cat image
                                child: Text('🐱💐💖', style: TextStyle(fontSize: 64)),
                              ),
                            ),
                          ),
                        ),
                        // Top Heart Rate Pill inside the card
                        Positioned(
                          top: 12,
                          right: 12,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.05),
                                  blurRadius: 4,
                                )
                              ],
                            ),
                            child: Row(
                              children: const [
                                Icon(Icons.favorite, color: Colors.pink, size: 14),
                                SizedBox(width: 4),
                                Text(
                                  'Heart rate: 120 bpm',
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF2D1517),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Bottom "Hopeful mode" Pill inside the card
                        Positioned(
                          bottom: 12,
                          left: 12,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.05),
                                  blurRadius: 4,
                                )
                              ],
                            ),
                            child: const Text(
                              'Hopeful mode 🥺 👉 👈',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF2D1517),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
              
                  // Attempts to Avoid Love Pill
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.pink[50],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('🛑', style: TextStyle(fontSize: 12)),
                        const SizedBox(width: 6),
                        Text(
                          'Attempts to avoid love: $_avoidAttempts',
                          style: const TextStyle(
                            color: Colors.pinkAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
              
                  // YES! Button (with Dashed-like or highlighted border)
                  Container(
                    width: double.infinity,
                    height: 58,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Colors.blueAccent.withOpacity(0.5),
                        width: 1.5,
                        style: BorderStyle.solid, // Can customize dash effect with packages, solid style looks neat here too
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: _handleYesPressed,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFF4081),
                        elevation: 4,
                        shadowColor: Colors.pink.withOpacity(0.4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('❤️', style: TextStyle(fontSize: 16)),
                          SizedBox(width: 6),
                          Text(
                            'YES! 💖 ✨',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    '(The only right choice in the universe)',
                    style: TextStyle(color: Colors.pinkAccent, fontSize: 11, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 16),
              
                  // NO Button
                  SizedBox(
                    width: 140,
                    height: 44,
                    child: ElevatedButton(
                      onPressed: _handleNoPressed,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        elevation: 2,
                        shadowColor: Colors.black.withOpacity(0.05),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'NO',
                            style: TextStyle(
                              color: Color(0xFF2D1517),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(width: 6),
                          Text('🤪', style: TextStyle(fontSize: 14)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
              
                  // Hint Footer
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('📍', style: TextStyle(fontSize: 12)),
                      SizedBox(width: 4),
                      Text(
                        'Hint: Resistance is futile, just press YES! 😅',
                        style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
              
                  // Bottom Page info bar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Text('• ', style: TextStyle(color: Colors.pinkAccent, fontWeight: FontWeight.bold)),
                          Text(
                            'Stage 3 of 8',
                            style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            'Double-tap screen for hearts ',
                            style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                          Text('💕', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}