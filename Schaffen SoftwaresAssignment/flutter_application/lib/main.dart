import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isSearching = false;

  bool _isReading = false;

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: SizedBox(
                  height: 24, width: 24, child: Image.asset('asstes/link.png')),
              title: const Text(
                'Invite',
                style: TextStyle(
                  fontFamily: 'ProximaNova',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: SizedBox(
                height: 24,
                width: 24,
                child: Image.asset('asstes/user-add.png'),
              ),
              title: const Text(
                'Add member',
                style: TextStyle(
                  fontFamily: 'ProximaNova',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: SizedBox(
                height: 24,
                width: 24,
                child: Image.asset('asstes/user-add (1).png'),
              ),
              title: const Text(
                'Add Group',
                style: TextStyle(
                  fontFamily: 'ProximaNova',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
              onTap: () {},
            ),
          ],
        );
      },
    );
  }

  Text addText(int index) {
    if (index == 0) {
      return const Text(
        "Following",
        style: TextStyle(
          fontFamily: 'ProximaNova',
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
      );
    } else {
      return const Text(
        'Add',
        style: TextStyle(
          fontFamily: 'ProximaNova',
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          Visibility(
            child: SliverAppBar(
              pinned: true,
              forceMaterialTransparency: false,
              expandedHeight: 231.0,
              leadingWidth: 360,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.parallax,
                // title: !_isSearching
                //     ? const Text('The Weeknd')
                //     : const TextField(
                //         decoration: InputDecoration(
                //           hintText: 'Search member',
                //         ),
                //         style: TextStyle(color: Colors.white),
                //       ),
                background: Stack(
                  alignment: AlignmentDirectional.topStart,
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      'asstes/image 121.png',
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              actions: [
                GestureDetector(
                  onTap: _showBottomSheet,
                  child: Image.asset('asstes/Frame 2398.png'),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 360,
                          height: 88,
                          padding: const EdgeInsets.fromLTRB(20, 15, 30, 15),
                          color: const Color.fromRGBO(195, 36, 34, 1),
                          child: Container(
                            alignment: Alignment.center,
                            child: Row(
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'The weeknd',
                                      style: TextStyle(
                                        fontFamily: 'ProximaNova',
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                    ),
                                    Text(
                                      'Community • +11K Members',
                                      style: TextStyle(
                                        fontFamily: 'ProximaNova',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                  child: SizedBox(
                                    height: 64,
                                    width: 64,
                                    child: Image.asset('asstes/Frame 2526.png'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 16),
                              Column(
                                children: [
                                  RichText(
                                      text: TextSpan(children: [
                                    TextSpan(
                                      style: TextStyle(
                                        overflow: _isReading
                                            ? TextOverflow.clip
                                            : TextOverflow.ellipsis,
                                        fontFamily: 'ProximaNova',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: const Color.fromRGBO(0, 0, 0, 1),
                                      ),
                                      text:
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod vestibulum lacus, nec consequat nulla efficitur sit amet. Proin eu lorem libero. Sed id enim in urna tincidunt sodales. Vivamus vel semper ame...',
                                    ),
                                    const WidgetSpan(
                                        child: SizedBox(
                                      width: 19,
                                    )),
                                    WidgetSpan(
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _isReading = !_isReading;
                                          });
                                        },
                                        child: _isReading
                                            ? const Text(
                                                'Read Less',
                                                style: TextStyle(
                                                  fontFamily: 'ProximaNova',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color.fromRGBO(
                                                      239, 69, 111, 1),
                                                ),
                                              )
                                            : const Text(
                                                'Read More',
                                                style: TextStyle(
                                                  fontFamily: 'ProximaNova',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color.fromRGBO(
                                                      239, 69, 111, 1),
                                                ),
                                              ),
                                      ),
                                    ),
                                  ])),
                                  // Text(
                                  //   maxLines: _isReading ? 5 : 2,
                                  //   'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod vestibulum lacus, nec consequat nulla efficitur sit amet. Proin eu lorem libero. Sed id enim in urna tincidunt sodales. Vivamus vel semper ame......',
                                  //   style: TextStyle(
                                  //     overflow: _isReading
                                  //         ? TextOverflow.clip
                                  //         : TextOverflow.ellipsis,
                                  //     fontFamily: 'ProximaNova',
                                  //     fontSize: 16,
                                  //     fontWeight: FontWeight.w400,
                                  //     color: Color.fromRGBO(0, 0, 0, 1),
                                  //   ),
                                  // ),
                                  // GestureDetector(
                                  //   onTap: () {
                                  //     setState(() {
                                  //       _isReading = !_isReading;
                                  //     });
                                  //   },
                                  //   child: _isReading
                                  //       ? const Text('Read Less')
                                  //       : const Text('Read More'),
                                  // ),
                                  // (
                                  //   child: Text(
                                  //     'Read more',
                                  //     style: TextStyle(color: Colors.red),
                                  //   ),
                                  // ),
                                ],
                              ),
                              const SizedBox(height: 16),
                              Row(
                                children: [
                                  Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                    height: 18,
                                    width: 64,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 1,
                                          color: const Color.fromRGBO(
                                              239, 69, 111, 1),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Text(
                                      "Outdoor",
                                      style: TextStyle(
                                        fontFamily: 'ProximaNova',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(239, 69, 111, 1),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    height: 18,
                                    width: 64,
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 1,
                                          color: const Color.fromRGBO(
                                              239, 69, 111, 1),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Text(
                                      "Outdoor",
                                      style: TextStyle(
                                        fontFamily: 'ProximaNova',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(239, 69, 111, 1),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                    height: 18,
                                    width: 64,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 1,
                                          color: const Color.fromRGBO(
                                              239, 69, 111, 1),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Text(
                                      "Outdoor",
                                      style: TextStyle(
                                        fontFamily: 'ProximaNova',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(239, 69, 111, 1),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                    height: 18,
                                    width: 64,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 1,
                                          color: const Color.fromRGBO(
                                              239, 69, 111, 1),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Text(
                                      "Outdoor",
                                      style: TextStyle(
                                        fontFamily: 'ProximaNova',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(239, 69, 111, 1),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(7, 0, 3, 3),
                                    height: 18,
                                    width: 31,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 1,
                                          color: const Color.fromRGBO(
                                              239, 69, 111, 1),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Text(
                                      "+1",
                                      style: TextStyle(
                                        fontFamily: 'ProximaNova',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(239, 69, 111, 1),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                ],
                              ),
                              // Wrap(
                              //   spacing: 8,
                              //   children: [
                              //     Chip(label: Text('Outdoor')),
                              //     Chip(label: Text('Outdoor')),
                              //     Chip(label: Text('Outdoor')),
                              //     Chip(label: Text('Outdoor')),
                              //     Chip(label: Text('+1')),
                              //   ],
                              // ),
                              const SizedBox(height: 12),
                              const Text(
                                'Media, docs and links',
                                style: TextStyle(
                                  fontFamily: 'ProximaNova',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(13.95, 0, 16, 0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(4, (index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 0, 0, 0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Image.asset(
                                      'asstes/Frame 2517.png',
                                      width: 97,
                                      height: 97,
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
                          child: Row(
                            children: [
                              const Text(
                                'Mute notification',
                                style: TextStyle(
                                  fontFamily: 'ProximaNova',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                              const Spacer(),
                              SizedBox(
                                height: 25,
                                width: 47,
                                child: Image.asset('asstes/Frame 2455.png'),
                              ),
                            ],
                          ),
                        ),
                        ListTile(
                          leading: Image.asset(
                            'asstes/trash.png',
                            color: const Color.fromRGBO(0, 0, 0, 1),
                          ),
                          title: const Text(
                            'Clear chat',
                            style: TextStyle(
                              fontFamily: 'ProximaNova',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                          onTap: () {},
                        ),
                        ListTile(
                          leading:
                              Image.asset('asstes/iconamoon_lock-light.png'),
                          title: const Text(
                            'Encryption',
                            style: TextStyle(
                              fontFamily: 'ProximaNova',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Image.asset('asstes/logout.png'),
                          title: const Text(
                            'Exit community',
                            style: TextStyle(
                              fontFamily: 'ProximaNova',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(255, 48, 64, 1),
                            ),
                          ),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Image.asset('asstes/dislike.png'),
                          title: const Text(
                            'Report',
                            style: TextStyle(
                              fontFamily: 'ProximaNova',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(255, 48, 64, 1),
                            ),
                          ),
                          onTap: () {},
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Row(
                            children: [
                              const SizedBox(height: 16),
                              const Text(
                                'Members',
                                style: TextStyle(
                                  fontFamily: 'ProximaNova',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                              const Spacer(),
                              Image.asset('asstes/search-normal.png'),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Column(
                          children: List.generate(6, (index) {
                            return ListTile(
                              leading: const CircleAvatar(
                                backgroundImage:
                                    AssetImage('asstes/Mask group.png'),
                              ),
                              title: const Text(
                                'Yashika',
                                style: TextStyle(
                                  fontFamily: 'ProximaNova',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                              subtitle: const Text(
                                '29, India',
                                style: TextStyle(
                                  fontFamily: 'ProximaNova',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(73, 73, 73, 1),
                                ),
                              ),
                              trailing: GestureDetector(
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 120,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      color: index == 0
                                          ? const Color.fromRGBO(
                                              170, 171, 171, 1)
                                          : const Color.fromRGBO(
                                              239, 69, 111, 1),
                                      borderRadius: BorderRadius.circular(16)),
                                  child: addText(index),
                                ),
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
