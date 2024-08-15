import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: Colors.amber,
          size: 19,
        ),
        const SizedBox(width: 4),
        Text(
          '4.8',
          style: GoogleFonts.montserrat(
            color: Colors.grey,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(width: 4),
        Text(
          '(2450)',
          style: GoogleFonts.montserrat(
            color: Colors.grey,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
