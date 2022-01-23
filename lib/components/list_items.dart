import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rick_monty/models/rick_morty.dart';
import 'package:rick_monty/screens/detail_screen.dart';

class ListItemWidget extends StatelessWidget {
  final RickMortyModel characher;
  const ListItemWidget({Key? key, required this.characher}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailScreen(character: characher)));
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        elevation: 3,
        shadowColor: Colors.white,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            //color: const Color(0xff7c94b6),
            borderRadius: BorderRadius.circular(40),
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.6), BlendMode.dstATop),
                fit: BoxFit.contain,
                image: CachedNetworkImageProvider(characher.image.toString())),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                characher.name.toString(),
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF002C69)),
              ),
              Chip(
                label: Text(characher.species.toString()),
                backgroundColor: const Color(0xFF002C69),
                labelStyle: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
