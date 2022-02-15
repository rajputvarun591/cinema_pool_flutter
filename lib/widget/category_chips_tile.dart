import 'package:cinema_pool/model/celebrity_person.dart';
import 'package:cinema_pool/model/genres.dart';
import 'package:cinema_pool/styles/text_style.dart';
import 'package:flutter/material.dart';

import 'celebrity_tile.dart';

class CategoryChipsTile extends StatelessWidget {
  final String title;
  final List<Genres> genres;
  const CategoryChipsTile({Key? key, required this.genres, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  title,
                  style: ts20ptMontserratMEDIUM,
                ),
              ),
            ],
          ),
          Wrap(
            spacing: 8.00,
            runSpacing: 0.00,
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            children: List.generate(
              genres.length,
              (index) {
                return Chip(
                  elevation: 5.00,
                  backgroundColor: Theme.of(context).primaryColorDark.withOpacity(0.6),
                  label: Text(
                    genres[index].name!,
                    style: ts20ptMontserratREGULAR.copyWith(
                      fontSize: 14.00,
                      color: Colors.white
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
