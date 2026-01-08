import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/search/presentation/view/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Search",),
      ),
      body:  SearchViewBody(),
    );
  }
}
