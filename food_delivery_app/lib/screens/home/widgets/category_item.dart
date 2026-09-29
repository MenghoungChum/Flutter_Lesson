import 'package:flutter/material.dart';

import '../../../../constants/app_colors.dart';
import '../../../../constants/app_text_styles.dart';
import '../../../../models/category_model.dart';

class CategoryItem extends StatefulWidget {
  final CategoryModel category;
  final VoidCallback? onTap;

  const CategoryItem({
    super.key,
    required this.category,
    this.onTap,
  });

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  bool _isHovered = false;
  bool _isPressed = false;

  static const _animationDuration = Duration(milliseconds: 230);

  void _updateHover(bool hovered) {
    setState(() {
      _isHovered = hovered;
    });
  }

  void _updatePressed(bool pressed) {
    setState(() {
      _isPressed = pressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    final cardScale = _isPressed ? 0.95 : 1.0;
    final iconScale = _isHovered ? 1.1 : 1.0;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => _updateHover(true),
      onExit: (_) => _updateHover(false),
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: widget.onTap,
        onTapDown: (_) => _updatePressed(true),
        onTapUp: (_) => _updatePressed(false),
        onTapCancel: () => _updatePressed(false),
        child: AnimatedScale(
          scale: cardScale,
          duration: _animationDuration,
          curve: Curves.easeInOut,
          child: Column(
            children: [
              Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.06),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Center(
                    child: AnimatedScale(
                      scale: iconScale,
                      duration: _animationDuration,
                      curve: Curves.easeInOut,
                      child: Icon(
                        widget.category.icon,
                        size: 30,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                widget.category.title,
                style: AppTextStyle.body.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
