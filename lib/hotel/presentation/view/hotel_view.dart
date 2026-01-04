import 'package:flutter/material.dart';

class HotelView extends StatelessWidget {
  const HotelView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const HotelViewBody());
  }
}

class HotelViewBody extends StatelessWidget {
  const HotelViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
        SearchTextField(),
        SizedBox(height: 16.0),
        HotelRecommendation(),
      ],
    );
  }
}

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key, this.onChanged});
  final bool isFocused = false;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      textInputAction: TextInputAction.search,
      
      autofocus: false,

      onChanged: onChanged,
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
      cursorColor: Color(0xff1C64F2),
      style: TextStyle(
        color: Colors.grey[500],
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.transparent,
        constraints: BoxConstraints(
          maxHeight: 48,
        ),
        prefixIcon: Icon(
          Icons.search,
          color: isFocused ? Color(0xff1C64F2) : Colors.grey[400],
        ),
        hintText: 'Search for hotels',
        hintStyle: TextStyle(color: Colors.grey[400]),
        border: _buildBorder(Colors.grey[400]),
        focusedBorder: _buildBorder(Color(0xff3F83F8)),
        enabledBorder: _buildBorder(Colors.grey[400]),
      ),
    );
  }

  OutlineInputBorder _buildBorder(Color? color) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? Colors.grey[400]!),
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    );
  }
}

class HotelRecommendation extends StatelessWidget {
  const HotelRecommendation({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        
      ),
      child: Column(
        children: [
          Image.asset('assets/images/hotel.png'),
          const SizedBox(height: 8.0),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.red[100],
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Text("10%Off",style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              Expanded(child: SizedBox()),
              IconButton(onPressed: (){}, icon: Icon(Icons.star,color: Colors.amber,)),
              Text("4.5",style: TextStyle(
                color: Colors.grey[600],
              ),),
            ],
          ),
          Text("OasisOverture",style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),),
          Row(
            children: [
              Icon(Icons.location_on,color: Colors.grey[600],size: 16.0,),
              Text("Downtown, NYC",style: TextStyle(
                color: Colors.grey[600],
              ),),
            ],
          ),
        ],
      ),

    );
  }
}