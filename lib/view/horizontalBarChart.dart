// import 'package:flutter/material.dart';

// @override
// Widget horizontalBarChart(BuildContext context) {
//   return Padding(
//     padding: const EdgeInsets.all(10.0),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         // _title('Food Weight(grams)'),
//         Padding(
//           padding: const EdgeInsets.only(left: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               horizontalBarChartIkuyo(context, rate: 1), //title: 'Fat',
//               horizontalBarChartIkuyo(context, rate: 0.4), //title: 'Protein',
//             ],
//           ),
//         ),
//       ],
//     ),
//   );
// }

// @override
// Widget horizontalBarChartIkuyo(BuildContext context, {required double rate}) {
//   return LayoutBuilder(
//     builder: (context, constraints) {
//       final thisMaxSize = MediaQuery.of(context).size.width * 0.73;
//       // final lineWidget = (constraints.maxWidth * thisMaxSize) * rate;
//       final lineWidget = thisMaxSize * rate;
//       return Padding(
//         padding: const EdgeInsets.only(bottom: 10.0),
//         child: Column(
//           // crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               constraints: BoxConstraints(minWidth: lineWidget),
//               child: IntrinsicWidth(
//                 child: Column(
//                   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: const [
//                         Text(
//                           'title',
//                           style: TextStyle(
//                             fontSize: 18,
//                           ),
//                         ),
//                       ],
//                     ),

//                     // if (number != null)
//                     // Text(
//                     //   number.toString(),
//                     //   style: const TextStyle(
//                     //     fontSize: 18,
//                     //     fontWeight: FontWeight.bold,
//                     //   ),
//                     // ),
//                   ],
//                 ),
//               ),
//             ),
//             Row(
//               children: [
//                 Container(
//                   color: Color.fromARGB(255, 196, 194, 194),
//                   height: 20,
//                   width: lineWidget,
//                   child: Text(
//                     '${(rate * 100).toString()}%',
//                   ),
//                 ),
//                 Text(
//                     // '${(rate * 100).toString()}%',
//                     '100%'),
//               ],
//             ),
//           ],
//         ),
//       );
//     },
//   );
// }
// // }
