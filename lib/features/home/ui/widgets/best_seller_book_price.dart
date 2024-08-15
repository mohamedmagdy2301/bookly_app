import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookPrice extends StatelessWidget {
  const BookPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '19.99 €',
      style: GoogleFonts.montserrat(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
