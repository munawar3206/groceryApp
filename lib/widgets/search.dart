
import 'package:flutter/material.dart';

class search extends StatelessWidget {
  const search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: "Search",
                contentPadding:const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                prefixIcon:const Icon(Icons.search),
                suffixIcon:const Icon(
                  Icons.qr_code,
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
        )
      ],
    );
  }
}
