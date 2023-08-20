
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Container(
      width: width * .9,
      height: 32,
      decoration: BoxDecoration(
        color: Colors.white30,
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(
            Icons.search,
            color: Colors.grey,
            size: 20,
          ), // Prefix Icon
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
