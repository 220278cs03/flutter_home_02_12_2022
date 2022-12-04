import 'package:flutter/material.dart';

import 'models.dart';

class Account extends StatelessWidget {
  String name;
  String email;
  String avatar;

  Account(
      {Key? key, required this.name, required this.email, required this.avatar})
      : super(key: key);

  List<AccountPage> list = [
    AccountPage(
        m_photo:
            'https://yt3.ggpht.com/ytc/AMLnZu9-LgELbaGCR96t3I8DaYUOi2YPzwPcTkfooMWb3Q=s900-c-k-c0x00ffffff-no-rj',
        title: 'Dont Smile At Me',
        singer: 'Billie Eilish',
        duration: '5:33'),
    AccountPage(
        m_photo:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTI7zliLwLzNzJoecrcuaW-QeDDkqgxu9oC5pUM4kW9V2bZnuhKV0jqvJI6ZPS7nTtEA-s&usqp=CAU',
        title: 'New Rules',
        singer: 'Dua Lipa',
        duration: '4:02'),
    AccountPage(
        m_photo:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrG5oSpD65mmC7PEtQreCOWxXF6NRxFY3seA&usqp=CAU',
        title: 'As It Was',
        singer: 'Harry Styles',
        duration: '3:03'),
    AccountPage(
        m_photo:
            'https://6.viki.io/image/a593a828d5514414a0e9081dc8e52c2b/dummy.jpeg?s=900x600&e=t',
        title: 'Dreamers',
        singer: 'Jungkook',
        duration: '03:15'),
    AccountPage(
        m_photo:
            'https://media.gq-magazine.co.uk/photos/5d139b6c2881cc72ff0a8700/3:4/w_876,h_1168,c_limit/image.jpg',
        title: 'Night Changes',
        singer: 'One Direction',
        duration: '4:23'),
    AccountPage(
        m_photo:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcRZglQjW-BhpaBiVpVNqbYqKO8zcfw5szBQ&usqp=CAU',
        title: 'So Good',
        singer: 'Halsey',
        duration: '2:56'),
    AccountPage(
        m_photo:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTE_ceP4pVFkWgKgR8Wb4VjKxot1U-hFIa2cg&usqp=CAU',
        title: '7 Rings',
        singer: 'Ariana Grande',
        duration: '5:16'),
    AccountPage(
        m_photo:
            'https://i.pinimg.com/originals/5f/97/7c/5f977cef4f20914ff580b00e4a047ace.jpg',
        title: 'Who Says',
        singer: 'Selena Gomez',
        duration: '3:45'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 318,
            padding: const EdgeInsets.all(30),
            decoration: const BoxDecoration(
                color: Color(0xff2C2B2B),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(66),
                    bottomLeft: Radius.circular(66)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 50, spreadRadius: 0, offset: Offset(0, 20))
                ]),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Container(
                        height: 32,
                        width: 32,
                        padding: const EdgeInsets.only(left: 4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xffFFFFFF).withOpacity(0.04),
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xffDDDDDD),
                          size: 12,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    const Text(
                      "Profile",
                      style: TextStyle(
                          color: Color(0xffE6E6E6),
                          fontWeight: FontWeight.w700,
                          fontSize: 17),
                    ),
                    Container(
                        height: 32,
                        width: 32,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: const Center(
                            child: Icon(Icons.more_vert,
                                color: Color(0xffA68C8C))))
                  ],
                ),
                Container(
                  height: 93,
                  width: 93,
                  margin: const EdgeInsets.only(top: 20, bottom: 11),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey)),
                  child: Image.asset(
                    avatar,
                  ),
                ),
                Text(
                  email,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffD8D4D4)),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffFFFFFF)),
                ),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: const [
                        Text(
                          "778",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        ),
                        Text(
                          "Followed",
                          style: TextStyle(
                              color: Color(0xffA1A1A1),
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 123,
                    ),
                    Column(
                      children: const [
                        Text(
                          "243",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        ),
                        Text(
                          "Followers",
                          style: TextStyle(
                              color: Color(0xffA1A1A1),
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
            child: Text(
              'Public playlists'.toUpperCase(),
              style: const TextStyle(
                  color: Color(0xffD6D6D6),
                  fontSize: 15,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 56,
                      margin: const EdgeInsets.only(bottom: 16),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(14))),
                      child: Row(
                        children: [
                          Container(
                            height: 58,
                            width: 58,
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(14)),
                                image: DecorationImage(
                                    image: NetworkImage(list[index].m_photo),
                                    fit: BoxFit.cover)),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                list[index].title,
                                style: const TextStyle(
                                    color: Color(0xffE3E3E3),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                list[index].singer,
                                style: const TextStyle(
                                    color: Color(0xffE3E3E3),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Text(
                            list[index].duration,
                            style: const TextStyle(
                                color: Color(0xffE3E3E3),
                                fontWeight: FontWeight.w400,
                                fontSize: 15),
                          ),
                          const SizedBox(
                            width: 37,
                          ),
                          const Icon(
                            Icons.more_horiz,
                            color: Color(0xffE4E4E4),
                          )
                        ],
                      ),
                    );
                  }))
        ],
      ),
    ));
  }
}
