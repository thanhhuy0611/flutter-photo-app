import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:photo_app/widget/author_info.dart';
import 'package:photo_app/widget/button/button_decoration.dart';
import 'package:photo_app/widget/button/outlined_button.dart';
import 'package:photo_app/widget/floating_button.dart';

part 'widgets/bottom_navigator.dart';
part 'widgets/discover_add_button.dart';

class DiscoverScreen extends StatelessWidget {
  static const PAGE_NAME = '/discover';
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const SettingThemeFloatingButton(),
      floatingActionButtonLocation: SettingThemeFloatingButton.location,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: StaggeredGridView.countBuilder(
            crossAxisCount: 4,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return _buildTodaySection(context);
              }
              if (index == 9) {
                return _buildSeeMoreButton(context);
              }
              return Container(
                color: Colors.grey[300],
                child: Image.asset(
                  'assets/images/photo_$index.png',
                  fit: BoxFit.cover,
                ),
              );
            },
            staggeredTileBuilder: (int index) {
              if (index == 0) {
                return const StaggeredTile.fit(4);
              }
              if (index == 9) {
                return const StaggeredTile.fit(4);
              }
              return StaggeredTile.count(2, index.isOdd ? 4 : 3);
            },
            mainAxisSpacing: 9.0,
            crossAxisSpacing: 9.0,
          ),
        )
      ),
      bottomNavigationBar: const DiscoverBottomNavigation(),
    );
  }

  Widget _buildSeeMoreButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0),
      child: CustomOutlinedButton(
        label: (AppLocalizations.of(context)!.see_more).toUpperCase(), 
        onTap: () {},
      ),
    );
  }

  Widget _buildTodaySection(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        Text(
          AppLocalizations.of(context)!.discover,
          style: Theme.of(context).textTheme.headline1,
        ),
        
        // New today
        const SizedBox(height: 32),
        Text(
          (AppLocalizations.of(context)!.whats_new_today).toUpperCase(),
          style: Theme.of(context).textTheme.subtitle1,
        ),
        const SizedBox(height: 24),
        Image.asset('assets/images/photo_today.png',
          fit: BoxFit.fitWidth,
          width: double.infinity,
        ),

        // Author
        const SizedBox(height: 16),
        const AuthorInfoWidget(),

        // Browse all
        const SizedBox(height: 32),
        Text(
          (AppLocalizations.of(context)!.browse_all).toUpperCase(),
          style: Theme.of(context).textTheme.subtitle1,
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
