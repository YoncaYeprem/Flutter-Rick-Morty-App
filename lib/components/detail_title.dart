import 'package:flutter/material.dart';
import 'package:rick_monty/models/rick_morty.dart';

class DetailTitle extends StatelessWidget {
  final RickMortyModel character;
  const DetailTitle({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                character.name.toString(),
                style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Chip(
                backgroundColor: character.gender.toString() == 'Male'
                    ? Colors.indigo.shade800
                    : Colors.redAccent.shade400,
                padding: EdgeInsets.symmetric(
                    horizontal: character.gender.toString() == 'Male' ? 23 : 13,
                    vertical: 7),
                label: Text(character.gender.toString()),
                labelStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              character.status.toString() == 'unknown'
                  ? const Text("")
                  : Chip(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      backgroundColor: character.status.toString() == 'Alive'
                          ? Colors.green
                          : Colors.grey,
                      label: Text(character.status.toString(),
                          style: const TextStyle(color: Colors.white)),
                      labelStyle: const TextStyle(fontSize: 20),
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
