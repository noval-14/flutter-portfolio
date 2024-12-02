import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              iconTheme: const IconThemeData(color: Colors.white),
              backgroundColor: Colors.pink.shade400,
              centerTitle: true,
              title: const Text(
                'PORTOFOLIO',
                style: TextStyle(color: Colors.white),
              ),
            ),
            endDrawer: Drawer(
              child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UserAccountsDrawerHeader(
                      accountName: const Text(
                        'Novaldy Brayn Rumteh',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      accountEmail: const Text(
                        'noval@gmail.com',
                        style: TextStyle(color: Colors.white70),
                      ),
                      currentAccountPicture: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: ClipOval(
                          child: Image.asset(
                            'assets/ALTEREGO.jpg',
                            fit: BoxFit.cover,
                            width: 90,
                            height: 90,
                          ),
                        ),
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.cyan,
                        image: DecorationImage(
                          image: AssetImage('assets/icha.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        padding: EdgeInsets.zero,
                        children: [
                          ListTile(
                            leading: const Icon(FontAwesomeIcons.house,
                                color: Colors.blueAccent),
                            title: const Text(
                              'HOME',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          const Divider(),
                          ListTile(
                            leading: const Icon(Icons.calendar_today,
                                color: Colors.orange),
                            title: const Text(
                              'Habit Tracker',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HabitTrackerPage()),
                              );
                            },
                          ),
                          const Divider(),
                          ListTile(
                            leading: const Icon(FontAwesomeIcons.whatsapp,
                                color: Colors.green),
                            title: const Text(
                              'WhatsApp',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            onTap: () async {
                              final Uri url = Uri.parse(
                                  'https://wa.me/6281248943835?text=Hello');
                              if (await canLaunchUrl(url)) {
                                await launchUrl(url,
                                    mode: LaunchMode.externalApplication);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                          ),
                          ListTile(
                            leading: const Icon(FontAwesomeIcons.instagram,
                                color: Colors.purple),
                            title: const Text(
                              'Instagram',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            onTap: () async {
                              final Uri url = Uri.parse(
                                  'https://www.instagram.com/novalrumteh_?igsh=Ymc1eHBha2lpMDRp');
                              if (await canLaunchUrl(url)) {
                                await launchUrl(url,
                                    mode: LaunchMode.externalApplication);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                          ),
                          const Divider(),
                          ListTile(
                            leading:
                                const Icon(Icons.movie, color: Colors.blue),
                            title: const Text(
                              'Daftar Film/Buku',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MovieBookListPage()),
                              );
                            },
                          ),
                          const Divider(),
                          ListTile(
                            leading: const Icon(Icons.info, color: Colors.teal),
                            title: const Text(
                              'Informasi',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: const Text('Informasi'),
                                  content: const Text(
                                    'Novaldy Brayn Rumteh adalah pengembang aplikasi mobile yang bersemangat untuk terus belajar. Dalam waktu singkat, ia telah menyelesaikan berbagai proyek, menunjukkan kemampuan beradaptasi yang luar biasa.',
                                    textAlign: TextAlign.justify,
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('Close'),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                          const Divider(),
                          ListTile(
                            leading:
                                const Icon(Icons.logout, color: Colors.red),
                            title: const Text(
                              'Logout',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: const Text('Logout'),
                                  content: const Text(
                                      'Apakah Anda yakin ingin keluar?'),
                                  actions: [
                                    TextButton(
                                      child: const Text('Batal'),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    TextButton(
                                      child: const Text(
                                        'Keluar',
                                        style: TextStyle(color: Colors.red),
                                      ),
                                      onPressed: () {
                                        SystemNavigator.pop();
                                      },
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/ALTEREGO.jpg',
                      fit: BoxFit.cover,
                      width: 120,
                      height: 120,
                    ),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    'Novaldy Brayn Rumteh',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Mobile Application Engineer',
                    style: TextStyle(
                      fontSize: 17,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: SelectableText(
                      'Flutter developer that loves to learn new things.',
                      style: TextStyle(fontSize: 17),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Skills & Expertise',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  const SizedBox(height: 15),
                  Wrap(
                    spacing: 10.0,
                    runSpacing: 10.0,
                    children: const [
                      Chip(
                        label: Text('Flutter'),
                        backgroundColor: Colors.blue,
                      ),
                      Chip(
                        label: Text('Dart'),
                        backgroundColor: Colors.blueAccent,
                      ),
                      Chip(
                        label: Text('Firebase'),
                        backgroundColor: Colors.orange,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Habit {
  final String name;
  bool isCompleted;

  Habit({required this.name, required this.isCompleted});
}

// Halaman Habit Tracker
class HabitTrackerPage extends StatefulWidget {
  @override
  _HabitTrackerPageState createState() => _HabitTrackerPageState();
}

class _HabitTrackerPageState extends State<HabitTrackerPage> {
  List<Habit> habits = [
    Habit(name: 'Olahraga', isCompleted: false),
    Habit(name: 'Membaca', isCompleted: false),
    Habit(name: 'Meditasi', isCompleted: false),
    Habit(name: 'Minum Air', isCompleted: false),
  ];

  void _toggleHabit(int index) {
    setState(() {
      habits[index].isCompleted = !habits[index].isCompleted;
    });
  }

  void _addHabit(String name) {
    setState(() {
      habits.add(Habit(name: name, isCompleted: false));
    });
  }

  void _removeHabit(int index) {
    setState(() {
      habits.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Habit Tracker')),
      body: ListView.builder(
        itemCount: habits.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(habits[index].name),
            trailing: Checkbox(
              value: habits[index].isCompleted,
              onChanged: (bool? value) {
                _toggleHabit(index);
              },
            ),
            onLongPress: () {
              _removeHabit(index);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Tampilkan dialog untuk menambah habit baru
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MovieBookListPage extends StatelessWidget {
  final List<Map<String, dynamic>> movieList = [
    {
      'title': 'harry potter and the philosopher stone',
      'rating': 4.5,
      'image': 'assets/harry.jpg'
    },
    {
      'title': 'pride and prejudice',
      'rating': 4.7,
      'image': 'assets/pride.jpg'
    },
    {
      'title': 'sapiens a brief history of human kind',
      'rating': 5.0,
      'image': 'assets/sapiens.jpg'
    },
  ];

  final List<Map<String, dynamic>> bookList = [
    {'title': '1984', 'rating': 4.8, 'image': 'assets/images.jpg'},
    {'title': 'the great gatsby', 'rating': 4.6, 'image': 'assets/gatsby.jpg'},
    {
      'title': 'To Kill a Mockingbird',
      'rating': 4.9,
      'image': 'assets/mocking.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Film/Buku')),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Daftar Film:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ...movieList
              .map((movie) => Card(
                    margin: const EdgeInsets.all(8.0),
                    elevation: 5,
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(10),
                      leading: Image.asset(movie['image'], width: 50),
                      title: Text(movie['title']),
                      subtitle: Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow[700]),
                          Text(movie['rating'].toString())
                        ],
                      ),
                      onTap: () {
                        // Tambahkan aksi untuk film, jika ada
                      },
                    ),
                  ))
              .toList(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Daftar Buku:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ...bookList
              .map((book) => Card(
                    margin: const EdgeInsets.all(8.0),
                    elevation: 5,
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(10),
                      leading: Image.asset(book['image'], width: 50),
                      title: Text(book['title']),
                      subtitle: Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow[700]),
                          Text(book['rating'].toString())
                        ],
                      ),
                      onTap: () {
                        // Tambahkan aksi untuk buku, jika ada
                      },
                    ),
                  ))
              .toList(),
        ],
      ),
    );
  }
}

class ColiListDayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Coli List Day')),
      body: Center(
        child: const Text(
          'List of Coli Days will be displayed here.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
