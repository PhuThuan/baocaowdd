import 'package:flutter/material.dart';

class Botton extends StatelessWidget {
  final String image;
  final String name;
  final int price;
  //final Function onTap;
  const Botton(
      {super.key,
      // required this.onTap,
      required this.image,
      required this.price,
      required this.name});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: onTap(),
      child: Container(
        height: 270,
        width: 220,
        decoration: BoxDecoration(
            color: const Color(0xff3a3e3e),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(image, scale: 1.0),
            ),
            ListTile(
              leading: Text(
                name,
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
              trailing: Text(
                "\$ $price",
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Row(
                children: const [
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.white,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
