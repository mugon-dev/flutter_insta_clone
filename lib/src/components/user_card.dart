import 'package:flutter/material.dart';
import 'package:insta_clone/src/components/avatar_widget.dart';

class UserCard extends StatelessWidget {
  const UserCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      width: 150,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        border: Border.all(color: Colors.black12),
      ),
      child: Stack(
        children: [
          // 전체 영역
          Positioned(
            left: 15,
            right: 15,
            top: 0,
            bottom: 0,
            child: Column(
              children: [
                const SizedBox(height: 20),
                AvatarWidget(
                  thumbPath:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcVe7PJgGQDXAaOAVJ3ljGq-_7uis6VMQwQQ&usqp=CAU',
                  type: AvatarType.TYPE2,
                  size: 80,
                ),
                const Text(
                  'Conny1',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
                const Text(
                  'Conny1이 팔로우 합니다.',
                  style: TextStyle(fontSize: 13),
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(onPressed: () {}, child: Text('Follow')),
              ],
            ),
          ),
          Positioned(
            right: 5,
            top: 5,
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.close,
                size: 12,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
