part of '../index.dart';

class SplashActionButtonsWidget extends StatelessWidget {
  const SplashActionButtonsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          // Login button
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
          // Register button
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
    );
  }
}
