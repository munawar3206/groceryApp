import 'package:flutter/material.dart';
import 'package:groceryapp/home_subview/product.dart';
import 'package:groceryapp/widgets/card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://th.bing.com/th/id/OIP.VEhlSj01_sNxUEFpGYIPMwHaII?w=157&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
                    radius: 25,
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.menu))
              ],
            ),
            Row(
              children: [
                card(
                  icon: Icons.people,
                  title: "Customer",
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductScreen()));
                  },
                  child: card(
                    icon: Icons.shopping_cart,
                    title: "Product",
                  ),
                )
              ],
            ),
            Row(
              children: [
                card(
                  icon: Icons.add,
                  title: "New Order",
                ),
                card(
                  icon: Icons.keyboard_return_outlined,
                  title: "Return Order",
                )
              ],
            ),
            Row(
              children: [
                card(
                  icon: Icons.currency_exchange_outlined,
                  title: "Payment",
                ),
                card(
                  icon: Icons.note_alt_outlined,
                  title: "Today's Order",
                )
              ],
            ),
            Row(
              children: [
                card(
                  icon: Icons.map,
                  title: "Route",
                ),
                card(
                  icon: Icons.map,
                  title: "Route",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// class card extends StatelessWidget {
//   const card({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(13.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Stack(
//             children: [
//               Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                   color: const Color.fromARGB(255, 255, 255, 255),
//                   boxShadow: const [
//                     BoxShadow(
//                       color: Colors.grey,
//                       offset: Offset(
//                         5.0,
//                         5.0,
//                       ),
//                       blurRadius: 10.0,
//                       spreadRadius: 2.0,
//                     ), //BoxShadow
//                     BoxShadow(
//                       color: Colors.white,
//                       offset: Offset(0.0, 0.0),
//                       blurRadius: 0.0,
//                       spreadRadius: 0.0,
//                     ), //BoxShadow
//                   ],
//                 ),
//                 height: 100,
//                 width: 160,
//                 // color: Colors.black,
//               ),
//               Positioned(
//                 top: 10,
//                 left: 50,
//                 child: Column(
//                   children: [
//                     Icon(
//                       Icons.people,
//                       color: Color.fromARGB(255, 0, 9, 93),
//                       size: 50,
//                     ),
//                     Text(
//                       "Customer",
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           // Container(
//           //   height: 100,
//           //   width: 160,
//           //   color: Colors.black,
//           // ),
//         ],
//       ),
//     );
//   }
// }
