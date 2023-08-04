import 'package:dhaka_live/helpers/constants/constants.dart';
import 'package:dhaka_live/widgets/text_field.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black54,
          title: const SearchField(hintext: "খেলা", icon: Icons.search)),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: Row(
                children: [
                  const Expanded(
                      flex: 1,
                      child: Image(
                        image: AssetImage("assets/images/person.jpg"),
                      )),
                  const SizedBox(width: 10),
                  Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: kPrimaryColor),
                            child: const Text("খেলাধুলা",
                                style: TextStyle(fontSize: 12)),
                          ),
                          const Text(
                              "এমবাপ্পের কড়া জবাবের পর ভুল স্বিকার ফ্রান্সের ফুটবল-প্রধানের",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500)),
                          const Text("১০ মিনিট আগে",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12))
                        ],
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}