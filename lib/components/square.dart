import 'package:chess_app/components/piece.dart';
import 'package:flutter/material.dart';

import '../values/Colors.dart';

class Square extends StatelessWidget {
  final bool isWhite;
  final ChessPiece? piece;
  final bool isSelected;
  final bool isValidMove;
  final void Function()? onTap;

  const Square({super.key, required this.isWhite, this.piece, required this.isSelected, this.onTap, required this.isValidMove});

  @override
  Widget build(BuildContext context) {
    Color? squareColor;

    if (isSelected) {
      squareColor = Colors.green;

    }else if (isValidMove){
      squareColor = Colors.green[300];
    }else {
      squareColor = isWhite ? foregroundColor : backgroundColor;
    }
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: squareColor,
        margin: EdgeInsets.all(isValidMove ? 8 : 0),
        child: piece != null
            ? Image.asset(
              piece!.imagePath,
              color: piece!.isWhite ? Colors.white : Colors.black,
             )
            : null,
      ),
    );
  }
}
