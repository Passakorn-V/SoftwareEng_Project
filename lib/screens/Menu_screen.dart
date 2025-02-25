import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

List<String> items = [
  "เนื้อสัตว์1",
  "เนื้อสัตว์1",
  "เนื้อสัตว์1",
  "เนื้อสัตว์1",
  "เนื้อสัตว์1",
  "ผัก1",
  "ผัก1",
  "ผัก1",
  "ผัก1",
  "ผัก1",
  "อื่นๆ1",
  "อื่นๆ1",
  "อื่นๆ1",
  "อื่นๆ1",
  "อื่นๆ1",
];
int current = 0;

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          toolbarHeight: 90,
          leading: IconButton(
            onPressed: () {},
            icon: IconButton(
              icon: const Icon(
                Icons.menu,
                size: 30,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
          backgroundColor: const Color(0xff3C696F),
          title: const Text(
            "Menu",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: DefaultTabController(
          length: 3,
            child: Column(
              children: [
                Material(
                  child: Container(
                    height: 80,
                    color: Colors.white,
                    child: TabBar(
                      physics: const ClampingScrollPhysics(),
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 10, right: 10, left: 10),
                      unselectedLabelColor:
                          const Color.fromARGB(255, 69, 141, 94),
                      indicatorSize: TabBarIndicatorSize.label,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromARGB(255, 69, 141, 94)),
                      tabs: [
                        Tab(
                          child: Container(
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 69, 141, 94),
                                    width: 1)),
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "เนื้อสัตว์",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: Colors.black),
                                )),
                          ),
                        ),
                        Tab(
                          child: Container(
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 69, 141, 94),
                                    width: 1)),
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "ผัก",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: Colors.black),
                                )),
                          ),
                        ),
                        Tab(
                          child: Container(
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 69, 141, 94),
                                    width: 1)),
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "อื่นๆ",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: Colors.black),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      ListView.separated(
                        padding: const EdgeInsets.all(15),
                        itemCount: items.length,
                        separatorBuilder: (BuildContext context, index) =>
                            const Divider(),
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Image.network(
                              'https://picsum.photos/seed/611/600',
                              width: 77,
                              height: 263,
                              fit: BoxFit.fill,
                            ),
                            onTap: () {},
                            title: Text(
                              items[index],
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 28,
                                  color: Colors.black),
                            ),
                            subtitle: Text("30000 ฿",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 18,
                                    color: Colors.black)),
                                    trailing: const Icon(Icons.add_box),
                          );
                        },
                      ),
                      ListView.separated(
                        padding: const EdgeInsets.all(15),
                        itemCount: items.length,
                        separatorBuilder: (BuildContext context, index) =>
                            const Divider(),
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Image.network(
                              'https://p16-capcut-sign-va.ibyteimg.com/tos-alisg-v-643f9f/ooekOepHAubzAIdEME4JFzDPAegbADGS2Zydsi~tplv-nhvfeczskr-1:250:0.webp?lk3s=44acef4b&x-expires=1735754518&x-signature=0sq9HBmvaZugYVXsgXWrdenvabk%3D',
                              width: 77,
                              height: 263,
                              fit: BoxFit.fill,
                            ),
                            onTap: () {},
                            title: Text(
                              items[index],
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 28,
                                  color: Colors.black),
                            ),
                            subtitle: Text("-100 ฿",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 18,
                                    color: Colors.black)),
                                    trailing: const Icon(Icons.add_box),
                          );
                        },
                      ),
                      ListView.separated(
                        padding: const EdgeInsets.all(15),
                        itemCount: items.length,
                        separatorBuilder: (BuildContext context, index) =>
                            const Divider(),
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Image.network(
                              'https://static.thairath.co.th/media/dFQROr7oWzulq5Fa5LJPy5B4qNdayFGtRrSsdJInLYWvwGnX9BVjkAUMd0O7l7CLSTW.jpg',
                              width: 77,
                              height: 263,
                              fit: BoxFit.fill,
                            ),
                            onTap: () {},
                            title: Text(
                              items[index],
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 28,
                                  color: Colors.black),
                            ),
                            subtitle: Text("3 ฿",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 18,
                                    color: Colors.black)),
                                    trailing: const Icon(Icons.add_box),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
        ), 
    );
  }
}
