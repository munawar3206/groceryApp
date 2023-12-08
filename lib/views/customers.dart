import 'package:flutter/cupertino.dart';
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
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            onPressed: () {},
          ),
        ],
        title: const Text(
          "Customers",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          search(
            icon: GestureDetector(
              onTap: () {
                _showAddCustomerBottomSheet(context);
              },
              child: Icon(
                Icons.add_circle,
                color: Color.fromARGB(255, 3, 33, 130),
              ),
            ),
            nav: null,
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
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPQYDLrl4smDlC_NO3SzrZlGx-weLC7cAsGw&usqp=CAU"))),
                        height: 60,
                        width: 80,
                      ),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Text(
                              "Nesto Hypermarket",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Icon(
                              CupertinoIcons.phone_circle_fill,
                              size: 20,
                              color: Color.fromARGB(255, 0, 14, 144),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              CupertinoIcons.chat_bubble,
                              size: 20,
                              color: Color.fromARGB(255, 0, 144, 17),
                            )
                          ],
                        ),
                        const Text("ID:555454D",
                            style: TextStyle(color: Colors.grey)),
                        const Text("West Calicut",
                            style: TextStyle(color: Colors.grey)),
                        RichText(
                          text: const TextSpan(
                              text: "Due Amount : ",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(
                                    text: "50.00",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold))
                              ]),
                        )
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

  _showAddCustomerBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Add Customer',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.highlight_remove))
                  ],
                ),
                Text("Customer Name"),
                textfieldcustomer(),
                Text("Mobile Number"),
                textfieldcustomer(),
                Text("Email"),
                textfieldcustomer(),
                Text("Address"),
                textfieldcustomer(),
                Text("Email"),
                textfieldcustomer(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Add'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class textfieldcustomer extends StatelessWidget {
  const textfieldcustomer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      decoration: BoxDecoration(border: Border(bottom: BorderSide())
          // borderRadius: BorderRadius.circular(5),
          ),
    );
  }
}
