import 'package:flutter/material.dart';

class RoomDetailesView extends StatelessWidget {
  const RoomDetailesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RoomDetailesViewBody()
    );
  }
}
class RoomDetailesViewBody extends StatelessWidget {
  const RoomDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Stack(
      children: [
        Column(
        children: [
          Image.asset('assets/images/room_detailes.jpg', fit: BoxFit.cover, width: double.infinity,),
          Positioned(child: CustomArrawBack()),
      
        ],
      
      ),
      ]
    );
  }
}
class CustomArrawBack extends StatelessWidget {
  const CustomArrawBack({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle
      ),
      
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}