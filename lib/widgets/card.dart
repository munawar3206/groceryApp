import 'package:flutter/material.dart';

class card extends StatelessWidget {
  card({
    super.key,
    required this.icon,
    required this.title,
  });
  final icon;
  final title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Row(
      
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ), 
              
                  ],
                ),
                height: 150,
                width: 160,
              ),
              Positioned(
                top: 50,
                left: 40,
                child: Column(
                  children: [
                    Icon(
                      icon,
                      color: Color.fromARGB(255, 0, 9, 93),
                      size: 30,
                    ),
                    Text(
                      title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
          // Container(
          //   height: 100,
          //   width: 160,
          //   color: Colors.black,
          // ),
        ],
      ),
    );
  }
}
