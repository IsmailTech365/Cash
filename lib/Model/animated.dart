// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, camel_case_types

import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

enum AniProps { opacity, translateY }

class Animation_Widget extends StatelessWidget {
  final double delay;
  final Widget child;

  Animation_Widget(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final MovieTween tween = MovieTween()
      ..scene(
              begin: const Duration(milliseconds: 0),
              end: const Duration(milliseconds: 1000))
          .tween(AniProps.opacity, Tween(begin: 0.0, end: 1.0))
      ..scene(
              begin: const Duration(milliseconds: 1000),
              end: const Duration(milliseconds: 1500))
          .tween(AniProps.translateY, Tween(begin: -30.0, end: 0.0));

    return PlayAnimationBuilder<Movie>(
      delay: Duration(milliseconds: (500 * delay).round()),

      tween: tween, // Pass in tween
      duration: tween.duration, // Obtain duration
      child: child,
      builder: (context, animation, child) => Opacity(
        opacity: animation.get(AniProps.opacity),
        child: Transform.translate(
            offset: Offset(0, animation.get(AniProps.translateY)),
            child: child),
      ),
    );
  }
}
