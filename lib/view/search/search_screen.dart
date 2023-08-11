import 'package:dhaka_live/widgets/text_field.dart';
import 'package:flutter/material.dart';
import '../../helpers/constants/images.dart';
import '../home/components/news_virtical_card.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black54,
      //   title: const SearchField(hintext: "খেলা", icon: Icons.search),
      // ),
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            automaticallyImplyLeading: false,
            floating: true,
            backgroundColor: Colors.black54,
            title: SearchField(hintext: "খেলা", icon: Icons.search),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: 30,
                itemBuilder: (context, index) {
                  return const NewsVirticalCard(
                    category: "আন্তুর্জাতিক",
                    title: "আসামে বন্যায় মৃত্যু ৭০ জনের, গৃহহীন ৩০ লাখের বেশি",
                    time: "১০ মিনিট আগে",
                    imageName: Images.image2,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
