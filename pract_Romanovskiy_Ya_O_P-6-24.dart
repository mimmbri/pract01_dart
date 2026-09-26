import 'package:flutter/material.dart';

void main() {
  runApp(const MyWeeklyTasksApp());
}

class MyWeeklyTasksApp extends StatelessWidget {
  const MyWeeklyTasksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWeeklyTasksPage(),
    );
  }
}

class MyWeeklyTasksPage extends StatelessWidget {
  const MyWeeklyTasksPage({super.key});

  static const Color bg = Color(0xFFF7F7F7);
  static const Color navy = Color(0xFF071A35);
  static const Color grey = Color(0xFF8B929A);
  static const Color line = Color(0xFFE2E2E2);
  static const Color blue = Color(0xFF587AF5);
  static const Color orange = Color(0xFFFFAA50);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: SizedBox(
            width: 428,
            height: 926,
            child: Stack(
              children: [
                Positioned.fill(child: Container(color: bg)),

                const Positioned(
                  left: 30,
                  top: 18,
                  child: Text(
                    '10:01',
                    style: TextStyle(
                      color: navy,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                const Positioned(
                  right: 67,
                  top: 20,
                  child: Icon(Icons.signal_cellular_alt, size: 15, color: navy),
                ),

                const Positioned(
                  right: 42,
                  top: 18,
                  child: Icon(Icons.wifi, size: 18, color: navy),
                ),

                const Positioned(
                  right: 18,
                  top: 17,
                  child: Icon(Icons.battery_full, size: 21, color: navy),
                ),

                Positioned(
                  left: 30,
                  top: 68,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/dan_smith.png',
                      width: 45,
                      height: 45,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const Positioned(
                  left: 83,
                  top: 69,
                  child: Text(
                    'Good Evening!',
                    style: TextStyle(
                      fontSize: 11,
                      color: grey,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),

                const Positioned(
                  left: 83,
                  top: 89,
                  child: Text(
                    'Dan Smith',
                    style: TextStyle(
                      fontSize: 20,
                      color: navy,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

                const Positioned(
                  left: 263,
                  top: 65,
                  child: HeaderButton(icon: Icons.search),
                ),

                Positioned(
                  left: 315,
                  top: 65,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const HeaderButton(icon: Icons.notifications_none),
                      Positioned(
                        right: 5,
                        top: 6,
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                            color: orange,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const Positioned(
                  left: 30,
                  top: 139,
                  child: Text(
                    'My Weekly Tasks',
                    style: TextStyle(
                      fontSize: 18,
                      color: navy,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

                const Positioned(
                  left: 30,
                  top: 164,
                  child: Text(
                    '18 Tasks Pending',
                    style: TextStyle(fontSize: 10, color: grey),
                  ),
                ),

                const Positioned(left: 274, top: 141, child: FilterIcon()),

                Positioned(
                  left: 337,
                  top: 137,
                  child: Container(width: 1, height: 44, color: line),
                ),

                const Positioned(
                  left: 365,
                  top: 142,
                  child: Icon(Icons.add, size: 28, color: navy),
                ),

                const Positioned(
                  left: 20,
                  top: 204,
                  child: WeeklyCard(
                    category: 'UI/UX Design',
                    categoryColor: Color(0xFF875BF3),
                    categoryBg: Color(0xFFF0E8FF),
                    priority: 'High',
                    priorityColor: Color(0xFFFF7070),
                    priorityBg: Color(0xFFFFEDED),
                    title1: 'Create a',
                    title2: 'Landing Page',
                    date: 'Mon, 12 July 2022',
                    firstAvatar: 'assets/images/landing_avatar_1.png',
                    secondAvatar: 'assets/images/landing_avatar_2.png',
                    counter: '3+',
                  ),
                ),

                const Positioned(
                  left: 228,
                  top: 204,
                  child: WeeklyCard(
                    category: 'Development',
                    categoryColor: Color(0xFFFF9824),
                    categoryBg: Color(0xFFFFF0D9),
                    priority: 'Low',
                    priorityColor: Color(0xFF42C86B),
                    priorityBg: Color(0xFFE5F8EA),
                    title1: 'Develop a',
                    title2: 'Website',
                    date: 'Mon, 30 July 2022',
                    firstAvatar: 'assets/images/website_avatar_1.png',
                    secondAvatar: 'assets/images/website_avatar_2.png',
                    counter: '2+',
                  ),
                ),

                const Positioned(
                  left: 30,
                  top: 422,
                  child: Text(
                    'Today’s Tasks',
                    style: TextStyle(
                      fontSize: 18,
                      color: navy,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

                const Positioned(
                  left: 30,
                  top: 448,
                  child: Text(
                    '18 Tasks Pending',
                    style: TextStyle(fontSize: 10, color: grey),
                  ),
                ),

                const Positioned(left: 274, top: 425, child: FilterIcon()),

                Positioned(
                  left: 337,
                  top: 420,
                  child: Container(width: 1, height: 44, color: line),
                ),

                const Positioned(
                  left: 365,
                  top: 426,
                  child: Icon(Icons.add, size: 28, color: navy),
                ),

                const Positioned(
                  left: 20,
                  top: 513,
                  child: TodayCard(
                    title: 'Design 2 App Screens',
                    subtitle: 'Crypto Wallet App',
                    date: 'Mon, 10 July 2022',
                    completed: true,
                    firstAvatar: 'assets/images/today_avatar_1.png',
                    secondAvatar: 'assets/images/today_avatar_2.png',
                  ),
                ),

                const Positioned(
                  left: 20,
                  top: 667,
                  child: TodayCard(
                    title: 'Design Homepage',
                    subtitle: 'Water Company Website',
                    date: '',
                    completed: false,
                    firstAvatar: '',
                    secondAvatar: '',
                  ),
                ),

                const Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: BottomNavigation(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HeaderButton extends StatelessWidget {
  final IconData icon;

  const HeaderButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: const Color(0xFFE0E0E0), width: 1),
      ),
      child: Icon(icon, size: 23, color: const Color(0xFF071A35)),
    );
  }
}

class FilterIcon extends StatelessWidget {
  const FilterIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 25,
      height: 25,
      child: CustomPaint(painter: FilterPainter()),
    );
  }
}

class FilterPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF071A35)
      ..strokeWidth = 1.7
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(const Offset(2, 5), const Offset(23, 5), paint);

    canvas.drawLine(const Offset(2, 12), const Offset(23, 12), paint);

    canvas.drawLine(const Offset(2, 19), const Offset(23, 19), paint);

    final fill = Paint()
      ..color = const Color(0xFF071A35)
      ..style = PaintingStyle.fill;

    canvas.drawCircle(const Offset(8, 5), 2.5, fill);

    canvas.drawCircle(const Offset(17, 12), 2.5, fill);

    canvas.drawCircle(const Offset(10, 19), 2.5, fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class WeeklyCard extends StatelessWidget {
  final String category;
  final Color categoryColor;
  final Color categoryBg;
  final String priority;
  final Color priorityColor;
  final Color priorityBg;
  final String title1;
  final String title2;
  final String date;
  final String firstAvatar;
  final String secondAvatar;
  final String counter;

  const WeeklyCard({
    super.key,
    required this.category,
    required this.categoryColor,
    required this.categoryBg,
    required this.priority,
    required this.priorityColor,
    required this.priorityBg,
    required this.title1,
    required this.title2,
    required this.date,
    required this.firstAvatar,
    required this.secondAvatar,
    required this.counter,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      height: 205,
      padding: const EdgeInsets.fromLTRB(14, 16, 12, 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 28,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: categoryBg,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  category,
                  style: TextStyle(
                    fontSize: 9,
                    color: categoryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                height: 28,
                padding: const EdgeInsets.symmetric(horizontal: 13),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: priorityBg,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  priority,
                  style: TextStyle(
                    fontSize: 9,
                    color: priorityColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 28),
          Text(
            title1,
            style: const TextStyle(
              fontSize: 17,
              height: 1.0,
              color: Color(0xFF071A35),
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            title2,
            style: const TextStyle(
              fontSize: 17,
              height: 1.0,
              color: Color(0xFF071A35),
              fontWeight: FontWeight.w700,
            ),
          ),
          const Spacer(),
          Row(
            children: [
              ImageAvatar(path: firstAvatar, size: 34),
              Transform.translate(
                offset: const Offset(-7, 0),
                child: ImageAvatar(path: secondAvatar, size: 34),
              ),
              Transform.translate(
                offset: const Offset(-4, 0),
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFAD51),
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    counter,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              const Icon(
                Icons.calendar_today_outlined,
                size: 20,
                color: Colors.black,
              ),
              const SizedBox(width: 9),
              Expanded(
                child: Text(
                  date,
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                  style: const TextStyle(
                    fontSize: 10,
                    color: Color(0xFF858B93),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String path;
  final double size;

  const ImageAvatar({super.key, required this.path, required this.size});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: ClipOval(
        child: Image.asset(path, width: size, height: size, fit: BoxFit.cover),
      ),
    );
  }
}

class TodayCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String date;
  final bool completed;
  final String firstAvatar;
  final String secondAvatar;

  const TodayCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.date,
    required this.completed,
    required this.firstAvatar,
    required this.secondAvatar,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 388,
      height: 136,
      padding: const EdgeInsets.fromLTRB(20, 18, 20, 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 48,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color(0xFF071A35),
                        fontWeight: FontWeight.w700,
                        decoration: completed
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                        decorationThickness: 2,
                      ),
                    ),
                  ),
                ),
                if (completed)
                  Container(
                    width: 58,
                    height: 58,
                    decoration: const BoxDecoration(
                      color: Color(0xFF587AF5),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 31,
                    ),
                  ),
              ],
            ),
          ),
          Text(
            subtitle,
            style: const TextStyle(fontSize: 10, color: Color(0xFF858B93)),
          ),
          const SizedBox(height: 9),
          Container(height: 1, color: const Color(0xFFE1E1E1)),
          const SizedBox(height: 8),
          if (date.isNotEmpty)
            SizedBox(
              height: 30,
              child: Row(
                children: [
                  const Icon(
                    Icons.calendar_today_outlined,
                    size: 21,
                    color: Colors.black,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    date,
                    style: const TextStyle(
                      fontSize: 10,
                      color: Color(0xFF858B93),
                    ),
                  ),
                  const Spacer(),
                  ImageAvatar(path: firstAvatar, size: 32),
                  Transform.translate(
                    offset: const Offset(-7, 0),
                    child: ImageAvatar(path: secondAvatar, size: 32),
                  ),
                  Transform.translate(
                    offset: const Offset(-4, 0),
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: const BoxDecoration(
                        color: Color(0xFFFFAD51),
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        '1+',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 93,
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Color(0xFFE2E2E2), width: 1)),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomItem(icon: Icons.home_outlined, title: 'Home', active: true),
          BottomItem(icon: Icons.assignment_outlined, title: 'Projects'),
          BottomItem(icon: Icons.calendar_today_outlined, title: 'Calendar'),
          BottomItem(
            icon: Icons.chat_bubble_outline,
            title: 'Messages',
            notification: true,
          ),
          BottomItem(icon: Icons.groups_outlined, title: 'Members'),
        ],
      ),
    );
  }
}

class BottomItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool active;
  final bool notification;

  const BottomItem({
    super.key,
    required this.icon,
    required this.title,
    this.active = false,
    this.notification = false,
  });

  @override
  Widget build(BuildContext context) {
    final color = active ? const Color(0xFF557AFF) : const Color(0xFF858A91);

    return SizedBox(
      width: 68,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Icon(icon, size: 26, color: color),
              if (notification)
                Positioned(
                  right: -3,
                  top: -4,
                  child: Container(
                    width: 9,
                    height: 9,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFA84D),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 7),
          Text(
            title,
            style: TextStyle(
              fontSize: 9,
              color: color,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
