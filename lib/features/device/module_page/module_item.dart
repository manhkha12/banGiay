import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:smart_home/gen/assets.gen.dart';
import 'package:smart_home/models/module.dart';
import 'package:smart_home/routes.dart';
import 'package:smart_home/shared/extensions/build_context_extension.dart';
import 'package:smart_home/shared/widgets/app_text.dart';

const Map<String, double> producVersionToHeight = {
  'M1': 50,
};

class ModuleItem extends StatelessWidget {
  final Module module;
  const ModuleItem({
    super.key,
    required this.module,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        // Navigator.of(context).pushNamed(
        //   RouteName.moduleDetails,
        //   arguments: {'module': module},
        // );
      },
      child: Container(
        height: producVersionToHeight[module.productVersion],
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Colors.grey.withOpacity(0.2),
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 5,
              offset: Offset.zero,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: AppText(
                module.name,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.symmetric(
                  horizontal: BorderSide(
                    color: context.colors.divider,
                    strokeAlign: BorderSide.strokeAlignOutside,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Wrap(
                      spacing: 6,
                      runAlignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Assets.icons.wifi.svg(
                          width: 16,
                          height: 16,
                          color: module.isOnline
                              ? context.colors.onlineColor
                              : context.colors.disableIcon,
                        ),
                        // ...module.nodes.mapIndexed(
                        //   (index, node) {
                        //     final isRunning = module.nodes[index].state == 1;
                        //     return AppText(
                        //       'G${index + 1}',
                        //       fontWeight: FontWeight.w500,
                        //       color: isRunning
                        //           ? context.colors.onlineColor
                        //           : context.colors.offlineColor,
                        //     );
                        //   },
                        // )
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  // Center(
                  //   child: Wrap(
                  //     spacing: 8,
                  //     runSpacing: 8,
                  //     children: module.sensors
                  //         .map(
                  //           (e) => SensorShortcut(
                  //             sensor: e,
                  //           ),
                  //         )
                  //         .toList(),
                  //   ),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
