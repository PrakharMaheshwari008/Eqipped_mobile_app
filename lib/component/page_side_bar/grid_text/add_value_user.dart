import 'package:eqipped_test/Create_User/User_create.dart';
import 'package:eqipped_test/component/page_side_bar/grid_text/User_card.dart';
import 'package:flutter/material.dart';

class Add_User extends StatelessWidget {
    List data = [
    {"color": const Color(0xFF42A5F5)},

    // {"color": const Color(0xffff8f61)},

  ];

  final colorwhite = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Container(
        height: 140,
        child: GridView.builder(
          itemCount: data.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 6/2,
            // crossAxisSpacing: 10
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: SizedBox(
                height: 50,
                child: Card(
                  color: data[index]["color"],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '  Create Admin User',
                            style: TextStyle(color: colorwhite, fontSize: 27),
                          ),

                          Container(
                            padding: const EdgeInsets.all(45),
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30)),
                                color: Color.fromRGBO(255, 255, 255, 0.38)),
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const User_create(),
                                    ),
                                  );
                                },
                                child: const Text("+",style: TextStyle(fontSize: 24),)
                            ),

                          )
                        ],
                      ),
                      // Container(
                      //     alignment: Alignment.lerp(Alignment.bottomLeft, Alignment.topLeft,20.0),
                      //     padding: const EdgeInsets.only(left: 10),
                      //     child: Text(
                      //       '144 bpm',
                      //       style: TextStyle(fontSize: 25, color: colorwhite),
                      //     )),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
