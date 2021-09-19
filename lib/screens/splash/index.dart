import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:photo_app/widget/button/elevated_button.dart';
import 'package:photo_app/widget/button/outlined_button.dart';

class SplashScreen extends StatelessWidget {
  static const PAGE_NAME = '/';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Image.asset(
          'assets/images/splash_background.jpeg',
          fit: BoxFit.cover,
          height: size.height,
          width: size.width,
        ),
        Image.asset(
          'assets/images/logo.png',
          height: size.height/10,
          width: size.width/2,
          fit: BoxFit.contain,
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: CustomOutlinedButton(
                      label: (AppLocalizations.of(context)!.log_in).toUpperCase(),
                      onTap: () {
                        // TODO 
                      },
                    ),
                  ),
                  const SizedBox(width: 12),
                  Flexible(
                    flex: 1,
                    child: CustomElevatedButton(
                      label: (AppLocalizations.of(context)!.register).toUpperCase(),
                      onTap: () {
                        // TODO 
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
