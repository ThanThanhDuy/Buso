import 'package:buso/models/blog.dart';
import 'package:buso/models/comment.dart';
import 'package:buso/theme/colors.dart';
import 'package:buso/theme/layout_size.dart';
import 'package:buso/widgets/list_image.dart/list_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:readmore/readmore.dart';

class ListNews extends StatefulWidget {
  const ListNews({super.key});

  @override
  State<ListNews> createState() => _ListNewsState();
}

class _ListNewsState extends State<ListNews> {
  double paddingAvatarAndContent = 10;

  List<Blog> listBlogs = <Blog>[
    Blog(
      id: '1',
      avatarUrl: 'assets/avatar/avatar1.avif',
      userName: 'thanthanhduy',
      fullName: 'Thân Thanh Duy',
      content:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English.',
      createAt: DateTime.now(),
      totalLike: 12,
      listImage: [
        'assets/avatar/avatar1.avif',
      ],
      listComment: [
        Comment(
          id: '1',
          avatarUrl: 'assets/avatar/avatar1.avif',
          userName: 'quyen03',
          fullName: 'Thục Quyên',
          content: 'Hay quá ạ',
          userId: '2',
          replyId: null,
          createAt: DateTime.now(),
        )
      ],
      isLike: true,
      isSave: true,
      totalComment: 152,
      totalSave: 5,
    ),
    Blog(
      id: '1',
      avatarUrl: 'assets/avatar/avatar1.avif',
      userName: 'thanthanhduy',
      fullName: 'Thân Thanh Duy',
      content:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English.',
      createAt: DateTime.now(),
      totalLike: 84,
      listImage: [
        'assets/avatar/avatar2.avif',
        'assets/avatar/avatar3.avif',
      ],
      listComment: [
        Comment(
          id: '1',
          avatarUrl: 'assets/avatar/avatar1.avif',
          userName: 'quyen03',
          fullName: 'Thục Quyên',
          content: 'Hay quá ạ',
          userId: '2',
          replyId: null,
          createAt: DateTime.now(),
        )
      ],
      isLike: false,
      isSave: false,
      totalComment: 250,
      totalSave: 52,
    ),
    Blog(
      id: '1',
      avatarUrl: 'assets/avatar/avatar1.avif',
      userName: 'thanthanhduy',
      fullName: 'Thân Thanh Duy',
      content:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English.',
      createAt: DateTime.now(),
      totalLike: 98,
      listImage: [
        'assets/avatar/avatar3.avif',
        'assets/avatar/avatar4.avif',
        'assets/avatar/avatar5.avif',
      ],
      listComment: [
        Comment(
          id: '1',
          avatarUrl: 'assets/avatar/avatar1.avif',
          userName: 'quyen03',
          fullName: 'Thục Quyên',
          content: 'Hay quá ạ',
          userId: '2',
          replyId: null,
          createAt: DateTime.now(),
        )
      ],
      isLike: false,
      isSave: true,
      totalComment: 195,
      totalSave: 20,
    ),
    Blog(
      id: '1',
      avatarUrl: 'assets/avatar/avatar1.avif',
      userName: 'thanthanhduy',
      fullName: 'Thân Thanh Duy',
      content:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English.',
      createAt: DateTime.now(),
      totalLike: 17,
      listImage: [
        'assets/avatar/avatar3.avif',
        'assets/avatar/avatar4.avif',
        'assets/avatar/avatar5.avif',
        'assets/avatar/avatar6.avif',
      ],
      listComment: [
        Comment(
          id: '1',
          avatarUrl: 'assets/avatar/avatar1.avif',
          userName: 'quyen03',
          fullName: 'Thục Quyên',
          content: 'Hay quá ạ',
          userId: '2',
          replyId: null,
          createAt: DateTime.now(),
        ),
      ],
      isLike: false,
      isSave: false,
      totalComment: 637,
      totalSave: 98,
    ),
    Blog(
      id: '2',
      avatarUrl: 'assets/avatar/avatar7.avif',
      userName: 'thanthanhduy',
      fullName: 'Thân Thanh Duy',
      content:
          'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)',
      createAt: DateTime.now(),
      totalLike: 13,
      listImage: [
        'assets/avatar/avatar1.avif',
        'assets/avatar/avatar2.avif',
        'assets/avatar/avatar3.avif',
        'assets/avatar/avatar4.avif',
        'assets/avatar/avatar5.avif',
      ],
      listComment: [
        Comment(
          id: '1',
          avatarUrl: 'assets/avatar/avatar1.avif',
          userName: 'quyen03',
          fullName: 'Thục Quyên',
          content: 'Hay quá ạ',
          userId: '2',
          replyId: null,
          createAt: DateTime.now(),
        )
      ],
      isLike: true,
      isSave: true,
      totalComment: 87,
      totalSave: 36,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listBlogs.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 36),
            child: Column(
              children: [
                // user
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 22,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage(listBlogs[index].avatarUrl),
                          radius: 22,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: paddingAvatarAndContent),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              listBlogs[index].fullName,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(ColorThemeBuso.brown),
                              ),
                            ),
                            Text(
                              '@${listBlogs[index].userName}',
                              style: const TextStyle(
                                color: Color(ColorThemeBuso.brown_70),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                // content,
                Row(
                  children: [
                    const SizedBox(
                      width: LayoutSize.sizeAvatar,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: paddingAvatarAndContent),
                    ),
                    Flexible(
                      child: ReadMoreText(
                        listBlogs[index].content,
                        trimLines: 5,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'More',
                        trimExpandedText: 'Less',
                        moreStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        lessStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                // picture,
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: LayoutSize.sizeAvatar,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: paddingAvatarAndContent),
                        child: ListImage(
                          listImage: listBlogs[index].listImage,
                          sizeOther: paddingAvatarAndContent,
                        ),
                      ),
                    ],
                  ),
                ),
                // reaction,
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: LayoutSize.sizeAvatar,
                      ),
                      Expanded(
                        child: Padding(
                          padding:
                              EdgeInsets.only(left: paddingAvatarAndContent),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 80,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 24,
                                      height: 24,
                                      decoration: BoxDecoration(
                                        color: listBlogs[index].isLike
                                            ? const Color(ColorThemeBuso.red_35)
                                            : Colors.transparent,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(100)),
                                      ),
                                      child: Center(
                                        child: SvgPicture.asset(
                                          'assets/icons/Favorite_fill.svg',
                                          width: 18,
                                          height: 18,
                                          // ignore: deprecated_member_use
                                          color: listBlogs[index].isLike
                                              ? const Color(ColorThemeBuso.red)
                                              : const Color(
                                                  ColorThemeBuso.brown),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 4),
                                      child: Text(
                                        listBlogs[index].totalLike.toString(),
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Color(ColorThemeBuso.brown),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: SizedBox(
                                  width: 80,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        decoration: const BoxDecoration(
                                          // color:
                                          //     Color(ColorThemeBuso.blue_35),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                        ),
                                        child: Center(
                                          child: SvgPicture.asset(
                                            'assets/icons/Chat_alt_3_fill.svg',
                                            width: 20,
                                            height: 20,
                                            // ignore: deprecated_member_use
                                            color: const Color(
                                                ColorThemeBuso.brown),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 4),
                                        child: Text(
                                          listBlogs[index]
                                              .totalComment
                                              .toString(),
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color(ColorThemeBuso.brown),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: SizedBox(
                                  width: 80,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        decoration: BoxDecoration(
                                          color: listBlogs[index].isSave
                                              ? const Color(
                                                  ColorThemeBuso.yellow_35)
                                              : Colors.transparent,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(100)),
                                        ),
                                        child: Center(
                                          child: SvgPicture.asset(
                                            'assets/icons/Bookmark_fill.svg',
                                            width: 14,
                                            height: 14,
                                            // ignore: deprecated_member_use
                                            color: listBlogs[index].isSave
                                                ? const Color(
                                                    ColorThemeBuso.yellow)
                                                : const Color(
                                                    ColorThemeBuso.brown),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 4),
                                        child: Text(
                                          listBlogs[index].totalSave.toString(),
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color(ColorThemeBuso.brown),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: SvgPicture.asset(
                                        'assets/icons/Meatballs_menu.svg',
                                        width: 30,
                                        // ignore: deprecated_member_use
                                        color:
                                            const Color(ColorThemeBuso.primary),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}
