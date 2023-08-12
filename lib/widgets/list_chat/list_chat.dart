import 'package:buso/models/message.dart';
import 'package:buso/models/room.dart';
import 'package:buso/models/user.dart';
import 'package:buso/theme/colors.dart';
import 'package:flutter/material.dart';

class ListChat extends StatefulWidget {
  const ListChat({super.key});

  @override
  State<ListChat> createState() => _ListChatState();
}

class _ListChatState extends State<ListChat> {
  User me = User(
    id: '1',
    avatarUrl: 'assets/avatar/avatar2.avif',
    userName: '@duytt',
    fullName: 'Thân Thanh Duy',
    phone: '0123456789',
    email: 'asd@asd',
    roleId: '1',
  );
  List<Message> listMessages = [
    Message(
      id: '1',
      content:
          'Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello',
      room: Room(id: '1', name: '', listMember: [
        User(
          id: '1',
          avatarUrl: 'assets/avatar/avatar2.avif',
          userName: '@duytt',
          fullName: 'Thân Thanh Duy',
          phone: '0123456789',
          email: 'asd@asd',
          roleId: '1',
        ),
        User(
          id: '2',
          avatarUrl: 'assets/avatar/avatar7.avif',
          userName: '@quyenndtt',
          fullName: 'Nguyễn Đoan Thùy Thục Quyên',
          phone: '0123456789',
          email: 'asd@asd',
          roleId: '1',
        ),
      ]),
      userSendLast: User(
        id: '1',
        avatarUrl: 'assets/avatar/avatar2.avif',
        userName: '@thanthanhduy',
        fullName: 'Thân Thanh Duy',
        phone: '0123456789',
        email: 'asd@asd',
        roleId: '1',
      ),
      timeSend: DateTime.now(),
    ),
    Message(
      id: '2',
      content: 'Alo 123',
      room: Room(id: '2', name: '', listMember: [
        User(
          id: '1',
          avatarUrl: 'assets/avatar/avatar2.avif',
          userName: '@duytt',
          fullName: 'Thân Thanh Duy',
          phone: '0123456789',
          email: 'asd@asd',
          roleId: '1',
        ),
        User(
          id: '3',
          avatarUrl: 'assets/avatar/avatar4.avif',
          userName: '@nhithp',
          fullName: 'Thân Huyền Phương Nhi',
          phone: '0123456789',
          email: 'asd@asd',
          roleId: '1',
        ),
      ]),
      userSendLast: User(
        id: '3',
        avatarUrl: 'assets/avatar/avatar4.avif',
        userName: '@nhithp',
        fullName: 'Thân Huyền Phương Nhi',
        phone: '0123456789',
        email: 'asd@asd',
        roleId: '1',
      ),
      timeSend: DateTime.now(),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: listMessages
          .map(
            (e) => Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 28,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        e.room.listMember
                            .firstWhere((element) => element.id != me.id)
                            .avatarUrl,
                      ),
                      radius: 28,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          e.room.name.isNotEmpty
                              ? e.room.name
                              : e.room.listMember
                                  .firstWhere((element) => element.id != me.id)
                                  .fullName,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(ColorThemeBuso.brown),
                          ),
                        ),
                        Text(
                          e.content,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(ColorThemeBuso.brown_70),
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
