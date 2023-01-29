import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../model/menu.dart';

Widget buildItemWidget(DocumentSnapshot doc, context) {
  // BuildContext context;
  final med = MediaQuery.of(context);
  final menu = Menu(
    category: doc['category'],
    meal: doc['meal'],
    name: doc['name'],
    ingredient: doc['ingredient'],
    dose: doc['dose'],
    kcal: doc['kcal'],
    totalkcal: doc['totalKcal'],
  );

  return Padding(
    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
    child: Column(
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                // 클릭시 border color , bgcolor chg?
              },
              child: Container(
                width: med.size.width * 0.3,
                height: 180,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.grey,
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: med.size.width * 0.04,
                        ),
                        Text(
                          menu.category,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: med.size.width * 0.04,
                        ),
                        Text(
                          menu.totalkcal.toString(),
                          style: TextStyle(
                            color: Colors.greenAccent[400],
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Text(' kcal'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.grey,
                ),
              ),
              width: med.size.width * 0.64,
              height: 180,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          menu.name,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('종류'),
                        Text(menu.meal),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('재료'),
                        Text(menu.ingredient),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('정량'),
                        Text('${menu.dose.toString()}g'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('칼로리'),
                        Text('${menu.kcal.toString()}kcal'),
                      ],
                    ),
                    /////////////
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
} //ListView Widget END