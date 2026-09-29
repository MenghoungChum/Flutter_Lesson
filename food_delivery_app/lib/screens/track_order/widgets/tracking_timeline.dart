import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/tracking_step_model.dart';
class TrackingTimeline extends StatelessWidget {
  const TrackingTimeline({super.key});

  @override
  Widget build(BuildContext context) {
    final steps = [
      const TrackingStepModel(
        title: "Order Confirmed",
        subtitle: "Your order was received at 12:15 PM",
        completed: true,
      ),
      const TrackingStepModel(
        title: "Preparing",
        subtitle: "Chef is adding the finishing touches",
        completed: true,
      ),
      const TrackingStepModel(
        title: "Out for Delivery",
        subtitle: "Marcus is 1.2 miles away from you",
        current: true,
      ),
      const TrackingStepModel(
        title: "Arrived",
        subtitle: "Your food is at your doorstep",
      ),
    ];

    return Container(
      padding: const EdgeInsets.all(18),
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
      child: Column(
        children: List.generate(
          steps.length,
          (index) => _TimelineItem(
            step: steps[index],
            isLast: index == steps.length - 1,
          ),
        ),
      ),
    );
  }
}

class _TimelineItem extends StatelessWidget {
  final TrackingStepModel step;
  final bool isLast;

  const _TimelineItem({
    required this.step,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    Color dotColor;

    if (step.current) {
      dotColor = const Color(0xffFF6B35);
    } else if (step.completed) {
      dotColor = const Color(0xffC94D00);
    } else {
      dotColor = Colors.grey.shade300;
    }

    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Timeline
          Column(
            children: [
              Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  color: dotColor,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 3,
                  ),
                ),
              ),

              if (!isLast)
                Expanded(
                  child: Container(
                    width: 2,
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    color: step.completed || step.current
                        ? const Color(0xffC94D00)
                        : Colors.grey.shade300,
                  ),
                ),
            ],
          ),

          const SizedBox(width: 16),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    step.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: step.current
                          ? const Color(0xffC94D00)
                          : Colors.black,
                    ),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    step.subtitle,
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}