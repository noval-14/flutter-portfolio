import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
            // Menerapkan Drawer di dalam Scaffold
            endDrawer: Drawer(
              child: Container(
                color: Colors.white, // Warna latar belakang drawer
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
                    // ListTile untuk menu
                    Expanded(
                      child: ListView(
                        padding: EdgeInsets.zero,
                        children: [
                          ListTile(
                            leading: const Icon(Icons.home,
                                color: Colors.blueAccent),
                            title: const Text(
                              'HOME',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          const Divider(), // Pembatas antar menu
                          ListTile(
                            leading: const Icon(Icons.phone_android_outlined,
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
                            leading: const Icon(Icons.camera_alt_outlined,
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
                          const Divider(), // Pembatas antar menu
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
                      width: 90, // Tentukan lebar gambar
                      height: 90, // Tentukan tinggi gambar
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'Novaldy Brayn Rumteh',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Mobile Application Engineer',
                    style: TextStyle(
                      fontSize: 17,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: SelectableText(
                      'Flutter developer that loves to learn new things. I am currently working as a Flutter developer at Kompas Gramedia.',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 30),

                  // Menambahkan ikon dan informasi Experience dan Projects
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Experience
                      Column(
                        children: [
                          const Icon(Icons.access_time,
                              size: 40, color: Colors.blue),
                          const SizedBox(height: 8),
                          const Text(
                            '2 weeks ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(width: 40), // Jarak antar kolom
                      // Projects
                      Column(
                        children: [
                          const Icon(Icons.code,
                              size: 40, color: Colors.purple),
                          const SizedBox(height: 8),
                          const Text(
                            '2 Projects',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  // Menambahkan bagian Skills & Expertise
                  const Text(
                    'Skills & Expertise',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple),
                  ),
                  const SizedBox(height: 15),
                  Wrap(
                    spacing: 10.0, // Spasi antar chip
                    runSpacing: 10.0, // Spasi antar baris chip
                    children: const [
                      Chip(
                        label: Text('Flutter'),
                        backgroundColor: Colors.blueAccent,
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                      Chip(
                        label: Text('Dart'),
                        backgroundColor: Colors.blue,
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                      Chip(
                        label: Text('Laravel'),
                        backgroundColor: Colors.green,
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                      Chip(
                        label: Text('Git'),
                        backgroundColor: Colors.pink,
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                      Chip(
                        label: Text('UI/UX'),
                        backgroundColor: Colors.purple,
                        labelStyle: TextStyle(color: Colors.white),
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
