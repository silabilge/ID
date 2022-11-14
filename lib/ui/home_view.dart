import 'package:flutter/material.dart';
import 'package:flutter_application_1/data.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  myData data = myData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Your ID"),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(height: 50),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(blurRadius: 10, color: Colors.grey, spreadRadius: 5)
                ],
              ),
              child: CircleAvatar(
                radius: data.radius,
                backgroundColor: Colors.blueGrey,
                child: CircleAvatar(
                  radius: data.radius - 15,
                  backgroundColor: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 50),
            Container(
              height: data.containerHeight,
              width: data.containerWidth,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        spreadRadius: 1,
                        offset: Offset(4, 4)),
                  ]),
              child: Center(
                  child: Text(
                data.name,
                style: data.style,
              )),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: data.containerHeight,
              width: data.containerWidth,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        spreadRadius: 1,
                        offset: Offset(4, 4)),
                  ]),
              child: Center(
                  child: Text(
                data.name,
                style: data.style,
              )),
            ),
          ]),
        ));
  }
}
