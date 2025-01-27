
import 'package:champs/features/favourite_screen/ui/widgets/favourite_card_body.dart';
import 'package:champs/features/favourite_screen/ui/widgets/favourite_header_screen.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 24,
              ),
              FavouriteHeaderScreen(),
              SizedBox(
                height: 16,
              ),
              FavouriteCardBody(),
              ],
    ),
        ),


      ),
    );
  }
}
