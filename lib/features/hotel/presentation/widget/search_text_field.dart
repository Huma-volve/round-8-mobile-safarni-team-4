import 'package:flutter/material.dart';

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
      cursorColor: const Color(0xff1C64F2),
      style: TextStyle(
        color: Colors.grey[500],
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.transparent,
        constraints: const BoxConstraints(maxHeight: 48),
        prefixIcon: Icon(
          Icons.search,
          color: isFocused ? const Color(0xff1C64F2) : Colors.grey[400],
        ),
        hintText: 'Search for hotels',
        hintStyle: TextStyle(color: Colors.grey[400]),
        border: _buildBorder(Colors.grey[400]),
        focusedBorder: _buildBorder(const Color(0xff3F83F8)),
        enabledBorder: _buildBorder(Colors.grey[400]),
      ),
    );
  }

  OutlineInputBorder _buildBorder(Color? color) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? Colors.grey[400]!),
      borderRadius: const BorderRadius.all(Radius.circular(8.0)),
    );
  }
}
