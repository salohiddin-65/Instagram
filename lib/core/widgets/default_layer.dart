// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';

class DefaultLayer extends StatelessWidget {
  const DefaultLayer(
      {Key? key, this.onRefreshAction, required this.childWidget})
      : super(key: key);

  final onRefreshAction;
  final Widget childWidget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 10),
      child: CustomRefreshIndicator(
          onRefresh: onRefreshAction,
          builder: (BuildContext context, Widget child,
              IndicatorController controller) {
            return Stack(
              children: [
                Positioned(
                  top: 35.0 * controller.value,
                  right: MediaQuery.of(context).size.width / 2,
                  child: SizedBox(
                    width: 30.0,
                    height: 30.0,
                    child: CircularProgressIndicator(
                      color: Colors.grey.shade500,
                      value: !controller.isLoading
                          ? controller.value.clamp(0.0, 0.8)
                          : null,
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(0, 100.0 * controller.value),
                  child: child,
                ),
              ],
            );
          },
          child: childWidget),
    );
  }
}