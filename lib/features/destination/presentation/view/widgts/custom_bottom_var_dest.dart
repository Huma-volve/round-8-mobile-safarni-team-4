import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CusotmBottomBarDest extends StatelessWidget {
  const CusotmBottomBarDest({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(color: Colors.white, border: Border(top: BorderSide(color: Colors.grey.shade200))),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Total price", style: TextStyle(color: Colors.grey)),
                  Text("\$150.00 /person", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xff1E429F))),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF1E429F),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                child: Text("Book Now", style: TextStyle(color: Colors.white)),
              ),]));
  }
}
