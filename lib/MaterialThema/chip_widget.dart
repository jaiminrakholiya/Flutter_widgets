import 'package:flutter/material.dart';

class ChipWidget extends StatefulWidget {
  const ChipWidget({super.key});

  @override
  State<ChipWidget> createState() => _ChipWidgetState();
}

class _ChipWidgetState extends State<ChipWidget> {
  // For input chip
  final TextEditingController _controller = TextEditingController();

  // For choice chip
  bool isSelected = false;

  // For filter chip
  bool isSelectedFilter = false;

  // For action chip
  void _onActionChipPressed() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Action Chip Pressed!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chip Widget Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Input Chip
            Chip(
              label: TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  hintText: 'Enter a tag',
                  border: InputBorder.none,
                ),
              ),
              backgroundColor: Colors.blueAccent,
            ),
            const SizedBox(height: 20),

            // Choice Chip
            ChoiceChip(
              label: const Text('Choice Chip'),
              selected: isSelected,
              onSelected: (bool selected) {
                setState(() {
                  isSelected = selected;
                });
              },
              selectedColor: Colors.green,
            ),
            const SizedBox(height: 20),

            // Filter Chip
            FilterChip(
              label: const Text('Filter Chip'),
              selected: isSelectedFilter,
              onSelected: (bool selected) {
                setState(() {
                  isSelectedFilter = selected;
                });
              },
              selectedColor: Colors.orange,
            ),
            const SizedBox(height: 20),

            // Action Chip
            ActionChip(
              label: const Text('Action Chip'),
              onPressed: _onActionChipPressed,
              backgroundColor: Colors.purple,
              avatar: const Icon(Icons.add, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
