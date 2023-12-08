// import 'package:flutter/material.dart';
// import 'package:groceryapp/views/customers.dart';

// class bottom{
  
//   _showAddCustomerBottomSheet(BuildContext context) {
//     showModalBottomSheet(
//       context: context,
//       builder: (BuildContext context) {
//         return Container(
//           padding: EdgeInsets.all(16),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'Add Customer',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   IconButton(
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                       icon: Icon(Icons.highlight_remove))
//                 ],
//               ),
//               SizedBox(height: 16),
//               Text("Customer Name"),
//               SizedBox(height: 10),
//               textfieldcustomer(),
//               SizedBox(height: 16),
//               Text("Mobile Number"),
//               SizedBox(height: 10),
//                textfieldcustomer(),
//               SizedBox(height: 16),
//               Text("Email"),
//               SizedBox(height: 10),
//               textfieldcustomer(),
//               SizedBox(height: 16),
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: Text('Add'),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
