import 'package:flutter/material.dart';
import 'package:flutter_learning/core.dart';

gridTitle({required String title}) {
  return Container(
    width: MediaQuery.of(Get.currentContext).size.width,
    padding: const EdgeInsets.all(12),
    decoration: const BoxDecoration(),
    child: Text(
      title,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

getMenu({
  required String label,
  required Widget view,
}) {
  return InkWell(
    onTap: () {
      Get.to(view);
    },
    child: Card(
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}

getGrid({
  required List<Widget> children,
  required String title,
}) {
  return Column(
    children: [
      gridTitle(
        title: title,
      ),
      GridView(
        padding: EdgeInsets.zero,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 3,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
        ),
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        children: children,
      ),
    ],
  );
}
