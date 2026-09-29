class TrackingStepModel {
  final String title;
  final String subtitle;
  final bool completed;
  final bool current;

  const TrackingStepModel({
    required this.title,
    required this.subtitle,
    this.completed = false,
    this.current = false,
  });
}