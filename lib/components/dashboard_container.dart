import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  final String text;
  final String image;
  final callback;
  const Item({super.key, required this.text, required this.image, required this.callback});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.callback,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        padding: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: const Color.fromRGBO(160, 197, 75, 0.9),
        ),
        child: Column(
          children: [
            Text(widget.text,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                )),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              widget.image,
              height: 80,
              width: 80,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
