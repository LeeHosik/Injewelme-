import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:inj/model/menu.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeBody();
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  late bool iconState1;
  late bool iconState2;
  late bool iconState3;
  late Icon icon1;
  late Icon icon2;
  late Icon icon3;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    iconState1 = true;
    iconState2 = true;
    iconState3 = true;
    icon1 = Icon(Icons.favorite_outline);
    icon2 = Icon(Icons.favorite_outline);
    icon3 = Icon(Icons.favorite_outline);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('injewelme')
            .orderBy('num')
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          final documents = snapshot.data!.docs;
          return ListView(
            children: documents.map((e) => _buildItemWidget(e)).toList(),
          );
        },
      ),
    );
  }

  Widget _buildItemWidget(DocumentSnapshot doc) {
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
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
      child: Column(
        children: [
          Row(
            children: [
              Container(
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
                      height: 10,
                    ),
                    Text(
                      menu.category,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
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
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.grey,
                  ),
                ),
                width: med.size.width * 0.6,
                height: 180,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            menu.name,
                            // TextStyle(fontSize: 20)
                            style: TextStyle(
                                // FontWeight: FontWeight.w700,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
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
  }
} // END

