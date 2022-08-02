import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Baseline(
        baseline: 5,
        baselineType: TextBaseline.alphabetic,
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 25,
              offset: const Offset(0, 10),
            ),
          ]),
          child: TextField(
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              hintText: 'what are you looking for?',
              hintStyle: Theme.of(context).textTheme.labelSmall,
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.all(15),
              prefixIcon: Icon(
                Icons.search,
                color: Theme.of(context).textTheme.labelSmall?.color,
              ),
              suffixIcon: Container(
                margin: const EdgeInsets.only(right: 5),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.tune_rounded,
                  color: Theme.of(context).iconTheme.color,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
