import 'package:flutter/material.dart';
import 'package:rick_monty/models/rick_morty.dart';

class DetailInfo extends StatelessWidget {
  final RickMortyModel character;
  const DetailInfo({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius:  BorderRadius.only(
              topLeft:  Radius.circular(15), topRight:  Radius.circular(15))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildInfoRow('Name', character.name),
            _buildInfoRow('Status', character.status),
            _buildInfoRow('Species', character.species),
            _buildInfoRow('Type', character.type.toString().split(' ').first),
            _buildInfoRow('Gender', character.gender),
            _buildInfoRow(
                'Origin', character.origin!.name.toString().split(' ').first),
            _buildInfoRow(
                'Location',
                character.location!.name!.length > 15
                    ? character.origin!.name.toString().split(' ').first
                    : character.origin!.name),
          ],
        ),
      ),
    );
  }

  _buildInfoRow(String label, dynamic value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        if (value == null)
          const Text(
            'Unkown',
            style:  TextStyle(
              fontSize: 20,
            ),
          )
        else if (value.isEmpty)
          const Text(
            "Unkown",
            style:  TextStyle(
              fontSize: 20,
            ),
          )
        else
          Text(
            value.toString(),
            style:  const TextStyle(
              fontSize: 20,
            ),
          ),
      ],
    );
  }
}
