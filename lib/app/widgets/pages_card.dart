import 'package:flutter/material.dart';

class PageCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color backgroundColor;
  final VoidCallback onTap;

  const PageCard({
    super.key,
    required this.icon,
    required this.label,
    required this.backgroundColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 1.0),
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
        ),
        width: MediaQuery.of(context).size.width * 0.3,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Column(
          children: [
            Icon(
              icon,
              size: 80.0,
              color: Colors.white,
            ),
            const SizedBox(height: 5.0),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
