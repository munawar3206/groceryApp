import 'package:flutter/material.dart';
import 'package:groceryapp/widgets/search.dart';

class Customer extends StatelessWidget {
  const Customer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.menu,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
            onPressed: () {},
          ),
        ],
        title: Text(
          "Customers",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          search(
            icon: Icon(
              Icons.add_circle,
              color: Color.fromARGB(255, 3, 33, 130),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(),
              child: ListView.separated(
                itemCount: 15,
                separatorBuilder: (context, index) => Divider(),
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Card(
                      elevation: 5,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://media.istockphoto.com/id/587805156/vector/profile-picture-vector-illustration.jpg?s=612x612&w=0&k=20&c=gkvLDCgsHH-8HeQe7JsjhlOY6vRBJk_sKW9lyaLgmLo="))),
                        height: 60,
                        width: 80,
                      ),
                    ),
                    title: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Nesto Hypermarket",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Icon(
                              Icons.call,
                              size: 15,
                              color: Color.fromARGB(255, 0, 14, 144),
                            ),
                            Icon(
                              Icons.chat,
                              size: 15,
                              color: Color.fromARGB(255, 0, 14, 144),
                            )
                          ],
                        ),
                        Text("ID:555454D",
                            style: TextStyle(color: Colors.grey)),
                        Text("West Calicut",
                            style: TextStyle(color: Colors.grey)),
                        Text("Due Amount : 655",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
