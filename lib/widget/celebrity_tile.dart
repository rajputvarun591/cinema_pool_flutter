import 'package:cinema_pool/constants/constants.dart';
import 'package:cinema_pool/model/celebrity_person.dart';
import 'package:cinema_pool/styles/text_style.dart';
import 'package:flutter/material.dart';

class CelebrityTile extends StatelessWidget {
  final CelebrityPerson celebrity;
  const CelebrityTile({Key? key, required this.celebrity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);
    final String image = imagesBasePath + celebrity.profilePath!;
    return AspectRatio(
      aspectRatio: 0.78,
      child: Container(
        padding: const EdgeInsets.all(5.00),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Material(
              elevation: 5.00,
              borderRadius: BorderRadius.circular(40.00),
              child: CircleAvatar(
                backgroundImage: NetworkImage(image),
                radius: 40.00,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                celebrity.name!,
                style: ts20ptMontserratMEDIUM.copyWith(fontSize: 16.00),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
