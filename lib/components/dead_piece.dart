import 'package:flutter/material.dart';

class DeadPiece extends StatelessWidget {
  final String image;
  final bool isWhite;

  const DeadPiece({super.key, required this.image, required this.isWhite});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      color: isWhite ? Colors.grey[400] : Colors.grey[800],
    );
  }
}
