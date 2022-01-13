import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MySlider extends StatelessWidget {
  const MySlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width - 40,
      padding: const EdgeInsets.all(0),
      child: CarouselSlider(
        items: [
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 245, 230),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .40,
                  height: 200,
                  child: const Image(
                    image: AssetImage('assets/img/sl1.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width * .60 - 40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "\n\nAVAIL PERSONAL\nLOAN AT ATTRACTIVE\nINTEREST RATES",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 13),
                      ),
                      Row(
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Apply Now",
                                style: TextStyle(color: Colors.red),
                              )),
                          IconButton(
                              onPressed: () {},
                              color: Colors.red,
                              icon: const Icon(Icons.arrow_forward))
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          viewportFraction: 1,
          aspectRatio: 2.0,
          initialPage: 2,
        ),
      ),
    );
  }
}
