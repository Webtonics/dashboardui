import 'package:flutter/material.dart';

class ProfileDetail extends StatelessWidget {
  const ProfileDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          // Box

          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.blue),
            height: 280,
          ),
          //List
          Expanded(
            child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      color: Colors.green,
                      child: Text(
                        "Detail $index",
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  );
                }),
          ),
          //Two button
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(minimumSize: const Size(90, 40)),
                  child: const Text("Buy"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(minimumSize: const Size(90, 40)),
                  child: const Text("Sell"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
