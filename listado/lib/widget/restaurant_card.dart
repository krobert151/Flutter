import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ListItem extends StatelessWidget {
  final String urlImage;
  final String name;
  final double valoration;
  final String direction;
  final double price;
  const ListItem(
      {super.key,
      required this.urlImage,
      required this.name,
      required this.valoration,
      required this.direction,
      required this.price});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
          height: 200,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 15, 0, 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          child: RatingBar.builder(
                            itemSize: 15,
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            initialRating: valoration,
                            onRatingUpdate: (double value) {},
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                            textAlign: TextAlign.center,
                            name),
                      ),
                      Expanded(
                        child: Text(textAlign: TextAlign.center, '$price €'),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Image(
                    width: 300,
                    colorBlendMode: BlendMode.clear,
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                    image: NetworkImage(urlImage)),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                      alignment: Alignment.center, child: Text(direction)))
            ],
          )),
    );
  }
}
