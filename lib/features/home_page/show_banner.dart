import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shoe_store/features/home_page/banner_intro.dart';
import 'package:shoe_store/shared/extensions/extensions.dart';


class ShowBanner extends StatefulWidget {
  const ShowBanner({super.key});

  @override
  State<ShowBanner> createState() => _ShowBannerState();
}

class _ShowBannerState extends State<ShowBanner> {
  final PageController _controller = PageController();
  final _banners = [BannerIntro.first(), BannerIntro.second()];
  int pageIndex = 0;

  Timer? _autoScrollTimer;

  @override
  void initState() {
    super.initState();

    _autoScrollTimer = Timer.periodic(Duration(seconds: 3), (_) {
      if (_controller.hasClients) {
        int nextPage = _controller.page!.toInt() + 1;

        if (nextPage >= _banners.length) {
          _controller.jumpToPage(0);
        } else {
          _controller.animateToPage(
            nextPage,
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        }
      }
    });
  }

  @override
  void dispose() {
    _autoScrollTimer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 133,
        child: Stack(
          children: [
            PageView.builder(
              controller: _controller,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (_, index) {
                final data = _banners[index];
                return ClipRRect(
                  child: Image.asset(data.imageUrl,
                      fit: BoxFit.cover, width: double.infinity),
                );
              },
              itemCount: _banners.length,
              onPageChanged: (value) {
                setState(() {
                  pageIndex = value;
                });
              },
            ),
            Positioned(
              bottom: 0,
              left: context.width * 0.5 - 10,
              right: 0,
              child: SafeArea(
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 10,
                        child: ListView.separated(
                            itemBuilder: (_, index) {
                              return AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: index == pageIndex
                                      ? context.colors.onlineColor
                                      : context.colors.divider,
                                ),
                              );
                            },
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (_, __) =>
                                const SizedBox(width: 8),
                            itemCount: _banners.length),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
