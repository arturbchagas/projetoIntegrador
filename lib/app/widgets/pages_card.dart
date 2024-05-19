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
        margin: const EdgeInsets.only(bottom: 12.0),
        padding: const EdgeInsets.symmetric(
          vertical: 30.0,
        ),
        width: MediaQuery.of(context).size.width * 0.6,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Column(
          children: [
            Icon(
              icon,
              size: 40.0,
              color: Colors.white,
            ),
            const SizedBox(height: 12.0),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
