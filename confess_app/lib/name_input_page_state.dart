import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NameInputPage extends StatefulWidget {
  const NameInputPage({super.key});

  @override
  State<NameInputPage> createState() => _NameInputPageState();
}

class _NameInputPageState extends State<NameInputPage> {
  final TextEditingController _nameController = TextEditingController();
  int _charCount = 0;

  @override
  void initState() {
    super.initState();
    _nameController.addListener(() {
      setState(() {
        _charCount = _nameController.text.length;
      });
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  void _selectNickname(String nickname) {
    setState(() {
      _nameController.text = nickname;
      _charCount = nickname.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.pink[100]?.withOpacity(0.5),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.auto_awesome, color: Colors.pink, size: 18),
            ),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Do You Love Me? 💕',
                  style: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Name',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundColor: Colors.pink[700],
              child: const Icon(Icons.person, color: Colors.white),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFFF0F3), Color(0xFFFFD1DC)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: const EdgeInsets.all(24.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32),
                boxShadow: [
                  BoxShadow(
                    color: Colors.pink.withOpacity(0.1),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Avatar with badges
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.pink[100]!, width: 4),
                          color: Colors.pink[50],
                        ),
                        child: const Center(
                          // Placeholder for illustration
                          child: Text('💖', style: TextStyle(fontSize: 40)),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.pinkAccent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Text(
                            '✨ Hi!',
                            style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 10,
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.pink[200],
                          child: const Icon(Icons.favorite, size: 12, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Step Indicator Pill
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.pink[50],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.favorite, color: Colors.pinkAccent, size: 14),
                        SizedBox(width: 4),
                        Text(
                          'Step 1 of 4',
                          style: TextStyle(color: Colors.pinkAccent, fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Title
                  const Text(
                    'First, tell me your\nname 🥺💕',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2D1517),
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Subtitle
                  const Text(
                    "I promise this won't be embarrassing...\nmaybe 😜",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  const SizedBox(height: 24),

                  // Input Label & Counter
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Text('❤️ ', style: TextStyle(fontSize: 12)),
                          Text(
                            'Who are you?',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF2D1517)),
                          ),
                        ],
                      ),
                      Text(
                        '$_charCount/20',
                        style: const TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),

                  // Text Field
                  TextField(
                    controller: _nameController,
                    maxLength: 20,
                    decoration: InputDecoration(
                      counterText: '',
                      prefixIcon: const Icon(Icons.favorite, color: Colors.pink),
                      hintText: 'Enter your cute name... 💕',
                      hintStyle: TextStyle(color: Colors.pink[200]),
                      filled: true,
                      fillColor: const Color(0xFFFFF0F3),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Nickname Label
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Or tap a cute nickname:',
                      style: TextStyle(color: Colors.grey[600], fontSize: 13),
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Nickname Chips Wrap
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      _buildNicknameChip('🍓', 'Cutie Pie'),
                      _buildNicknameChip('🧸', 'My Crush'),
                      _buildNicknameChip('🧁', 'Honey Bun'),
                      _buildNicknameChip('💌', 'Secret Admirer'),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Confidentiality Banner
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF0F3),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.pink[100],
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.lock, color: Colors.pink, size: 16),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                '100% Confidential',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Color(0xFF2D1517)),
                              ),
                              Text(
                                'Except to my rapidly racing heartb...',
                                style: TextStyle(color: Colors.grey, fontSize: 11),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Continue Button
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: _charCount > 0 ? () {} : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFFD1DC),
                        disabledBackgroundColor: const Color(0xFFFCE7F3),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Continue',
                            style: TextStyle(
                              color: Colors.pinkAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text('🤍', style: TextStyle(fontSize: 14)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Footer text
                  const Text(
                    'No turning back after this... ✨',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNicknameChip(String emoji, String label) {
    return ActionChip(
      avatar: Text(emoji, style: const TextStyle(fontSize: 12)),
      label: Text(
        label,
        style: const TextStyle(color: Colors.pinkAccent, fontSize: 12, fontWeight: FontWeight.w500),
      ),
      backgroundColor: const Color(0xFFFFF0F3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: Colors.pink[100]!, width: 1),
      ),
      onPressed: () => _selectNickname(label),
    );
  }
}