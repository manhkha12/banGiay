import 'package:smart_home/gen/assets.gen.dart';

class Intro {
  final String animationPath;
  final String title;
  final String description;
  final bool isLast;
  Intro({
    required this.animationPath,
    this.title = '',
    this.description = '',
    this.isLast = false,
  });

  factory Intro.first() {
    return Intro(
      animationPath: Assets.images.homeControl,
      title: 'intro.first.title',
      description: 'intro.first.description',
    );
  }
  factory Intro.second() {
    return Intro(
      animationPath: Assets.images.homeService,
      title: 'intro.second.title',
      description: 'intro.second.description',
    );
  }
  factory Intro.third() {
    return Intro(
      animationPath: Assets.images.smartHomeBackground.path,
      isLast: true,
    );
  }
}
