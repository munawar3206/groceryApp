import 'package:flutter/material.dart';

class search extends StatelessWidget {
  const search({
    super.key,
    required this.icon,
  });
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: "Search",
                contentPadding:
                    const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                prefixIcon: const Icon(Icons.search),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Icon(
                        Icons.qr_code,
                        color: Colors.grey,
                      ),
                      icon
                    ],
                  ),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
        )
      ],
    );
  }
}
