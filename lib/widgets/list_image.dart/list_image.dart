import 'package:buso/theme/layout_size.dart';
import 'package:buso/theme/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListImage extends StatefulWidget {
  final List<String> listImage;
  final double? sizeOther;

  const ListImage({super.key, required this.listImage, this.sizeOther});

  @override
  State<ListImage> createState() => _ListImageState();
}

class _ListImageState extends State<ListImage> {
  @override
  Widget build(BuildContext context) {
    if (widget.listImage.length == 2) {
      return SizedBox(
        width: MediaQuery.of(context).size.width -
            (LayoutSize.paddingHorizontalScreen * 2 +
                LayoutSize.sizeAvatar +
                10),
        child: Row(
          children: [
            SizedBox(
              width: (MediaQuery.of(context).size.width -
                      (LayoutSize.paddingHorizontalScreen * 2 +
                          LayoutSize.sizeAvatar +
                          (widget.sizeOther ?? 0) +
                          4)) /
                  2,
              height: (MediaQuery.of(context).size.width -
                      (LayoutSize.paddingHorizontalScreen * 2 +
                          LayoutSize.sizeAvatar +
                          (widget.sizeOther ?? 0) +
                          4)) /
                  2,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(BorderRadiusBuso.value),
                  bottomLeft: Radius.circular(BorderRadiusBuso.value),
                ),
                child: Image.asset(
                  widget.listImage[0],
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
            SizedBox(
              width: (MediaQuery.of(context).size.width -
                      (LayoutSize.paddingHorizontalScreen * 2 +
                          LayoutSize.sizeAvatar +
                          (widget.sizeOther ?? 0) +
                          4)) /
                  2,
              height: (MediaQuery.of(context).size.width -
                      (LayoutSize.paddingHorizontalScreen * 2 +
                          LayoutSize.sizeAvatar +
                          (widget.sizeOther ?? 0) +
                          4)) /
                  2,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(BorderRadiusBuso.value),
                  bottomRight: Radius.circular(BorderRadiusBuso.value),
                ),
                child: Image.asset(
                  widget.listImage[1],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      );
    } else if (widget.listImage.length == 3) {
      return SizedBox(
        width: MediaQuery.of(context).size.width -
            (LayoutSize.paddingHorizontalScreen * 2 +
                LayoutSize.sizeAvatar +
                (widget.sizeOther ?? 0)),
        child: Row(
          children: [
            SizedBox(
              width: (MediaQuery.of(context).size.width -
                      (LayoutSize.paddingHorizontalScreen * 2 +
                          LayoutSize.sizeAvatar +
                          (widget.sizeOther ?? 0) +
                          4)) /
                  2,
              height: (MediaQuery.of(context).size.width -
                  (LayoutSize.paddingHorizontalScreen * 2 +
                      LayoutSize.sizeAvatar +
                      (widget.sizeOther ?? 0) +
                      4)),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(BorderRadiusBuso.value),
                  bottomLeft: Radius.circular(BorderRadiusBuso.value),
                ),
                child: Image.asset(
                  widget.listImage[0],
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
            Column(
              children: [
                SizedBox(
                  width: (MediaQuery.of(context).size.width -
                          (LayoutSize.paddingHorizontalScreen * 2 +
                              LayoutSize.sizeAvatar +
                              (widget.sizeOther ?? 0) +
                              4)) /
                      2,
                  height: (MediaQuery.of(context).size.width -
                          (LayoutSize.paddingHorizontalScreen * 2 +
                              LayoutSize.sizeAvatar +
                              (widget.sizeOther ?? 0) +
                              4 +
                              4)) /
                      2,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(BorderRadiusBuso.value),
                      // bottomRight: Radius.circular(BorderRadiusBuso.value),
                    ),
                    child: Image.asset(
                      widget.listImage[1],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                SizedBox(
                  width: (MediaQuery.of(context).size.width -
                          (LayoutSize.paddingHorizontalScreen * 2 +
                              LayoutSize.sizeAvatar +
                              (widget.sizeOther ?? 0) +
                              4)) /
                      2,
                  height: (MediaQuery.of(context).size.width -
                          (LayoutSize.paddingHorizontalScreen * 2 +
                              LayoutSize.sizeAvatar +
                              (widget.sizeOther ?? 0) +
                              4 +
                              4)) /
                      2,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      // topRight: Radius.circular(BorderRadiusBuso.value),
                      bottomRight: Radius.circular(BorderRadiusBuso.value),
                    ),
                    child: Image.asset(
                      widget.listImage[2],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    } else if (widget.listImage.length >= 4) {
      return SizedBox(
        width: MediaQuery.of(context).size.width -
            (LayoutSize.paddingHorizontalScreen * 2 +
                LayoutSize.sizeAvatar +
                (widget.sizeOther ?? 0)),
        child: Row(
          children: [
            Column(
              children: [
                SizedBox(
                  width: (MediaQuery.of(context).size.width -
                          (LayoutSize.paddingHorizontalScreen * 2 +
                              LayoutSize.sizeAvatar +
                              (widget.sizeOther ?? 0) +
                              4)) /
                      2,
                  height: (MediaQuery.of(context).size.width -
                          (LayoutSize.paddingHorizontalScreen * 2 +
                              LayoutSize.sizeAvatar +
                              (widget.sizeOther ?? 0) +
                              4 +
                              4)) /
                      2,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(BorderRadiusBuso.value),
                      // bottomRight: Radius.circular(BorderRadiusBuso.value),
                    ),
                    child: Image.asset(
                      widget.listImage[0],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                SizedBox(
                  width: (MediaQuery.of(context).size.width -
                          (LayoutSize.paddingHorizontalScreen * 2 +
                              LayoutSize.sizeAvatar +
                              (widget.sizeOther ?? 0) +
                              4)) /
                      2,
                  height: (MediaQuery.of(context).size.width -
                          (LayoutSize.paddingHorizontalScreen * 2 +
                              LayoutSize.sizeAvatar +
                              (widget.sizeOther ?? 0) +
                              4 +
                              4)) /
                      2,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      // topRight: Radius.circular(BorderRadiusBuso.value),
                      bottomLeft: Radius.circular(BorderRadiusBuso.value),
                    ),
                    child: Image.asset(
                      widget.listImage[1],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
            Column(
              children: [
                SizedBox(
                  width: (MediaQuery.of(context).size.width -
                          (LayoutSize.paddingHorizontalScreen * 2 +
                              LayoutSize.sizeAvatar +
                              (widget.sizeOther ?? 0) +
                              4)) /
                      2,
                  height: (MediaQuery.of(context).size.width -
                          (LayoutSize.paddingHorizontalScreen * 2 +
                              LayoutSize.sizeAvatar +
                              (widget.sizeOther ?? 0) +
                              4 +
                              4)) /
                      2,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(BorderRadiusBuso.value),
                      // bottomRight: Radius.circular(BorderRadiusBuso.value),
                    ),
                    child: Image.asset(
                      widget.listImage[2],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                Stack(
                  children: [
                    SizedBox(
                      width: (MediaQuery.of(context).size.width -
                              (LayoutSize.paddingHorizontalScreen * 2 +
                                  LayoutSize.sizeAvatar +
                                  (widget.sizeOther ?? 0) +
                                  4)) /
                          2,
                      height: (MediaQuery.of(context).size.width -
                              (LayoutSize.paddingHorizontalScreen * 2 +
                                  LayoutSize.sizeAvatar +
                                  (widget.sizeOther ?? 0) +
                                  4 +
                                  4)) /
                          2,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          // topRight: Radius.circular(BorderRadiusBuso.value),
                          bottomRight: Radius.circular(BorderRadiusBuso.value),
                        ),
                        child: Image.asset(
                          widget.listImage[3],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    widget.listImage.length > 4
                        ? Container(
                            width: (MediaQuery.of(context).size.width -
                                    (LayoutSize.paddingHorizontalScreen * 2 +
                                        LayoutSize.sizeAvatar +
                                        (widget.sizeOther ?? 0) +
                                        4)) /
                                2,
                            height: (MediaQuery.of(context).size.width -
                                    (LayoutSize.paddingHorizontalScreen * 2 +
                                        LayoutSize.sizeAvatar +
                                        (widget.sizeOther ?? 0) +
                                        4 +
                                        4)) /
                                2,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(16),
                              ),
                              color: Colors.black12.withOpacity(0.6),
                            ),
                          )
                        : Container(),
                    widget.listImage.length > 4
                        ? SizedBox(
                            width: (MediaQuery.of(context).size.width -
                                    (LayoutSize.paddingHorizontalScreen * 2 +
                                        LayoutSize.sizeAvatar +
                                        (widget.sizeOther ?? 0) +
                                        4)) /
                                2,
                            height: (MediaQuery.of(context).size.width -
                                    (LayoutSize.paddingHorizontalScreen * 2 +
                                        LayoutSize.sizeAvatar +
                                        (widget.sizeOther ?? 0) +
                                        4 +
                                        4)) /
                                2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/Add_round.svg',
                                  // ignore: deprecated_member_use
                                  color: Colors.white,
                                  width: 28,
                                ),
                                Text(
                                  '${widget.listImage.length - 4}',
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          )
                        : Container()
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }
    return SizedBox(
      width: MediaQuery.of(context).size.width -
          (LayoutSize.paddingHorizontalScreen * 2 +
              LayoutSize.sizeAvatar +
              (widget.sizeOther ?? 0)),
      height: MediaQuery.of(context).size.width -
          (LayoutSize.paddingHorizontalScreen * 2 +
              LayoutSize.sizeAvatar +
              (widget.sizeOther ?? 0)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(BorderRadiusBuso.value),
        child: Image.asset(
          widget.listImage[0],
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
