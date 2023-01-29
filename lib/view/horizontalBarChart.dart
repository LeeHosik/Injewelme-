import 'package:flutter/material.dart';
import 'package:inj/model/barChartData.dart';

class AnimatedChart extends StatefulWidget {
  const AnimatedChart({super.key});

  @override
  State<AnimatedChart> createState() => _AnimatedChartState();
}

class _AnimatedChartState extends State<AnimatedChart> {
  List<nutrient> nutrients = [];
  double _opacity = 1;

  @override
  void initState() {
    nutrients.add(nutrient('탄수화물', 24, Colors.blue));
    nutrients.add(nutrient('단백질', 65, Colors.blueGrey));
    nutrients.add(nutrient('지방', 51, Color.fromARGB(255, 24, 36, 199)));
    nutrients.add(nutrient('총 식이섬유', 24, Colors.green));
    nutrients.add(nutrient('콜레스테롤', 48, Colors.greenAccent));
    nutrients.add(nutrient('총 포화 지방산', 48, Colors.lightGreen));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _body();
  }

  Widget _body() {
    final widthMed = MediaQuery.of(context).size.width * 0.85;
    return Center(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: nutrients.length,
        itemBuilder: (context, position) {
          return Column(
            children: [
              AnimatedOpacity(
                opacity: _opacity,
                duration: const Duration(seconds: 1),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 3, 0, 3),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        nutrients[position].name,
                      ),
                      Row(
                        // mainAxisSize: CrossAxisAlignment.stretch,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          AnimatedContainer(
                            duration: const Duration(seconds: 2),
                            curve: Curves.bounceIn,
                            color: nutrients[position].color,
                            height: 25,
                            width: (nutrients[position].percent) *
                                (widthMed * 0.01),
                            child: Text(
                              '${nutrients[position].percent.toStringAsFixed(0)}',
                              textAlign: TextAlign.right,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.grey[200],
                              child: const Text(''),
                            ),
                          ),
                          const Text(' 100%'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
} // ----
