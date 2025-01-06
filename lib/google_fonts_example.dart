import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleFontsExample extends StatefulWidget {
  const GoogleFontsExample({super.key});

  @override
  State<GoogleFontsExample> createState() => _GoogleFontsExampleState();
}

class _GoogleFontsExampleState extends State<GoogleFontsExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Fonts Example', style: GoogleFonts.lato()),
      ),
      body: Center(
        child: Text(
          'Hello,Google fonts',
          style: GoogleFonts.pacifico(fontSize: 24),
        ),
      ),
    );
  }
}
