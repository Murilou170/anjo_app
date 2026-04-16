import 'package:flutter/material.dart';

class MenuLateralWrapper extends StatelessWidget {
  const MenuLateralWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      "Imagem",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Text("Murilo Rodrigues"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
