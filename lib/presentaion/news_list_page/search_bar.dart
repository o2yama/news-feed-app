import 'package:flutter/material.dart';

final searchController = TextEditingController();

class SearchBar extends StatelessWidget {
  SearchBar({this.onSearched});
  final ValueChanged onSearched;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 9,
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextFormField(
                maxLines: 1,
                controller: searchController,
                decoration: InputDecoration(
                  hintText: '検索ワードを入れてください',
                ),
                onChanged: (value) {
                  onSearched(value);
                },
              ),
            ),
          ),
        ),
        Expanded(
          child: IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              FocusScope.of(context).requestFocus(FocusNode());
              onSearched(searchController.text);
            },
          ),
        )
      ],
    );
  }
}
