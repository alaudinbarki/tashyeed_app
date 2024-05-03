import 'package:flutter/material.dart';
import '/config/config.dart';

class BodyAndAppBarNestedScrollView extends StatelessWidget {
  const BodyAndAppBarNestedScrollView({
    super.key,
    required this.appBarTitle,
    required this.body,
    this.actions,
    this.centerTitle = false,
  });

  final String appBarTitle;
  final Widget body;
  final List<Widget>? actions;
  final bool centerTitle;

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (ctx, innerBoxIsScrolled) {
        return [
          SliverAppBar(
            floating: true,
            pinned: true,
            centerTitle: centerTitle,
            title: Padding(
              padding: Dimensions.kPaddingAllLarge,
              child: Text(
                appBarTitle,
                style: context.textTheme.headlineLarge,
              ),
            ),
            actions: actions,
          )
        ];
      },
      body: body,
    );
  }
}
