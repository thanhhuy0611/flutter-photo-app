import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:photo_app/widget/button/elevated_button.dart';
import 'package:photo_app/widget/floating_button.dart';
import 'package:photo_app/widget/input_field_decoration.dart';

class LoginScreen extends StatelessWidget {
  static const PAGE_NAME = '/login';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const SettingThemeFloatingButton(),
      floatingActionButtonLocation: SettingThemeFloatingButton.location,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset('assets/images/back_icon.png',
            fit: BoxFit.contain,
            width: 12,
            height: 12,
          ), 
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppLocalizations.of(context)!.log_in,
                  style: Theme.of(context).textTheme.headline1,
                ),
                
                // Username
                const SizedBox(height: 32),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  maxLines: 1,
                  cursorColor: Theme.of(context).primaryColor,
                  decoration: InputFieldDecoration.inputDecoration(
                    context: context,
                    hint: AppLocalizations.of(context)!.user_name,
                  ),
                  onChanged: (value) => {},
                ),
        
                // Password
                const SizedBox(height: 16),
                TextField(
                  keyboardType: TextInputType.text,
                  maxLines: 1,
                  obscureText: true,
                  cursorColor: Theme.of(context).primaryColor,
                  decoration: InputFieldDecoration.inputDecoration(
                    context: context,
                    hint: AppLocalizations.of(context)!.password,
                  ),
                  onChanged: (value) => {},
                ),
        
                // Login button
                const SizedBox(height: 16),
                CustomElevatedButton(
                  label: (AppLocalizations.of(context)!.log_in).toUpperCase(),
                  onTap: () {
                    // TODO: to discover page
                    // Navigator.of(context).pushNamed(LoginScreen.PAGE_NAME);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}