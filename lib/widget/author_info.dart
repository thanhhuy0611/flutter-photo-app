import 'package:flutter/material.dart';

class AuthorInfoWidget extends StatelessWidget {
  const AuthorInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(28.0),
          child: Image.asset("assets/images/photo_2.png",
            height: 28,
            width: 28,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Pawel Czerwinski',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text('@pawel_czerwinski',
                style: Theme.of(context).textTheme.caption,
              )
            ],
          ),
        ),
      ],
    );
  }
}
