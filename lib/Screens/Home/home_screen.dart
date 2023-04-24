import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:studify_remaster/Components/task_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = PageController();

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF647AFF),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 20,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Buenos días",
                            style: TextStyle(
                              color: Colors.white60,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "Jordy Pinos",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 180,
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: ListView(
                      controller: _controller,
                      scrollDirection: Axis.horizontal,
                      physics: const PageScrollPhysics(),
                      children: const [
                        TaskHomeCard(),
                        TaskHomeCard(),
                        TaskHomeCard(),
                        TaskHomeCard()
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 4,
                    effect: const ExpandingDotsEffect(
                      activeDotColor: Colors.white,
                      dotColor: Colors.white,
                      dotHeight: 10,
                      dotWidth: 10,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF2758DC),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex = 0;
                        });
                      },
                      child: TaskTab(
                        selectedIndex: selectedIndex,
                        text: "Todas las Tareas",
                        index: 0,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex = 1;
                        });
                      },
                      child: TaskTab(
                        selectedIndex: selectedIndex,
                        text: "En Progreso",
                        index: 1,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex = 2;
                        });
                      },
                      child: TaskTab(
                        selectedIndex: selectedIndex,
                        text: "Completadas",
                        index: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: ListView(
              children: const [
                TaskCard(),
                TaskCard(),
                TaskCard(),
                TaskCard(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, .2),
                    blurRadius: 10,
                    offset: Offset(1.1, 1.1),
                  )
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Expanded(
                          child: Text(
                            "Hacer una maqueta del sistema solar",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Icon(Icons.more_horiz),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Hacer una maqueta del sistema solar en el que aparezca cada planeta y mostrar informacion de cada planeta",
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFf2f7fa),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF647AFF).withOpacity(.5),
                            offset: const Offset(-3, 0),
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time,
                                  size: 16,
                                  color: Colors.grey[600],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "10:00 AM",
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 3,
                                  horizontal: 3,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "Completed",
                                      style: TextStyle(
                                        color: Colors.green[600],
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 5,
                                      ),
                                      child: Icon(
                                        Icons.check_circle_rounded,
                                        size: 16,
                                        color: Colors.green[600],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TaskTab extends StatelessWidget {
  const TaskTab({
    super.key,
    required this.selectedIndex,
    required this.text,
    required this.index,
  });

  final int selectedIndex;
  final String text;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: selectedIndex == index
              ? const BorderSide(
                  color: Colors.white,
                  width: 2,
                )
              : BorderSide.none,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight:
                selectedIndex == index ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
