import 'package:flutter/material.dart';
class Excercises extends StatelessWidget {
  final icon;
  final String name;
  final String numbers;
  final color;
  const Excercises({Key? key,
  required this.icon,
  required this.name,
  required this.numbers,
  required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                    decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(12),
                        color: color
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Icon(icon,
                      color: Colors.white,)),
                const SizedBox(width: 16,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),),
                    const SizedBox(height: 5,),
                    Text(numbers,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.grey
                      ),),
                  ],
                )
              ],
            ),
            const Icon(Icons.more_horiz)
          ],
        ),
      ),
    );
  }
}
