import 'package:flutter/material.dart';

class AvailableSize extends StatefulWidget {
  final String size;
  const AvailableSize({super.key, required this.size});

  @override
  State<AvailableSize> createState() => _AvailableSizeState();
}

class _AvailableSizeState extends State<AvailableSize> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) =>

    GestureDetector(
      onTap: (){
        setState(() {
          isSelected = !isSelected;
        });

      },
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        width: 50,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? Colors.red : Colors.transparent,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.red),
        ),
        child: Text(
          widget.size,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  
}
