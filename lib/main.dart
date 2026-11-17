import 'package:flutter/material.dart';

void main() {
  runApp(const HefMobileApp());
}

class HefMobileApp extends StatelessWidget {
  const HefMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    const forest = Color(0xFF245B43);
    return MaterialApp(
      title: 'HEF Mobile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: forest,
          primary: forest,
          surface: const Color(0xFFF7F8F3),
        ),
        scaffoldBackgroundColor: const Color(0xFFF7F8F3),
        useMaterial3: true,
      ),
      home: const ModuleNavigation(),
    );
  }
}

class HefModule {
  const HefModule({
    required this.title,
    required this.shortTitle,
    required this.description,
    required this.icon,
    required this.accent,
    required this.tagline,
  });

  final String title;
  final String shortTitle;
  final String description;
  final IconData icon;
  final Color accent;
  final String tagline;
}

const modules = [
  HefModule(
    title: 'Pencarian Produk & Eco/Nutri-Score',
    shortTitle: 'Produk',
    description:
        'Cari produk makanan atau pindai barcode untuk melihat informasi nutrisi dan dampak lingkungannya.',
    icon: Icons.qr_code_scanner_rounded,
    accent: Color(0xFF34785A),
    tagline: 'Pilih lebih bijak, mulai dari labelnya.',
  ),
  HefModule(
    title: 'Perbandingan Produk',
    shortTitle: 'Bandingkan',
    description:
        'Bandingkan 2–3 produk berdasarkan Eco-Score dan Nutrition Score dalam satu tampilan.',
    icon: Icons.compare_arrows_rounded,
    accent: Color(0xFF587C4D),
    tagline: 'Temukan pilihan yang paling sesuai untukmu.',
  ),
  HefModule(
    title: 'Pencarian & Analisis Resep',
    shortTitle: 'Resep',
    description:
        'Jelajahi ide resep dan lihat informasi nutrisi serta keberlanjutan setiap hidangan.',
    icon: Icons.soup_kitchen_rounded,
    accent: Color(0xFFC17A36),
    tagline: 'Inspirasi hidangan baik untukmu dan bumi.',
  ),
  HefModule(
    title: 'Inventaris Bahan Makanan',
    shortTitle: 'Inventaris',
    description:
        'Catat bahan makanan di rumah dan pantau tanggal kedaluwarsa untuk membantu mengurangi food waste.',
    icon: Icons.kitchen_rounded,
    accent: Color(0xFF4F8290),
    tagline: 'Kelola stok, kurangi makanan terbuang.',
  ),
  HefModule(
    title: 'Login & Otentikasi Akun',
    shortTitle: 'Akun',
    description:
        'Masuk atau buat akun HEF untuk menyimpan preferensi dan mengakses data pribadimu.',
    icon: Icons.person_outline_rounded,
    accent: Color(0xFF806A9D),
    tagline: 'Satu akun untuk perjalanan hidup lebih sehat.',
  ),
];

class ModuleNavigation extends StatefulWidget {
  const ModuleNavigation({super.key});

  @override
  State<ModuleNavigation> createState() => _ModuleNavigationState();
}

class _ModuleNavigationState extends State<ModuleNavigation> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final module = modules[_selectedIndex];

    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.eco_rounded, size: 23),
            SizedBox(width: 9),
            Text('HEF Mobile', style: TextStyle(fontWeight: FontWeight.w700)),
          ],
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SafeArea(
        top: false,
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 220),
          child: ModulePage(key: ValueKey(_selectedIndex), module: module),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) =>
            setState(() => _selectedIndex = index),
        destinations: [
          for (final item in modules)
            NavigationDestination(
              icon: Icon(item.icon),
              selectedIcon: Icon(item.icon),
              label: item.shortTitle,
            ),
        ],
      ),
    );
  }
}

class ModulePage extends StatelessWidget {
  const ModulePage({super.key, required this.module});

  final HefModule module;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(22, 12, 22, 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(26),
            decoration: BoxDecoration(
              color: module.accent,
              borderRadius: BorderRadius.circular(28),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.18),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Icon(module.icon, color: Colors.white, size: 30),
                ),
                const SizedBox(height: 28),
                Text(
                  module.title,
                  style: textTheme.headlineSmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    height: 1.15,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  module.tagline,
                  style: textTheme.bodyLarge?.copyWith(
                    color: Colors.white.withValues(alpha: 0.9),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Text('Tentang modul', style: textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w700,
          )),
          const SizedBox(height: 10),
          Text(
            module.description,
            style: textTheme.bodyLarge?.copyWith(
              color: const Color(0xFF60675F),
              height: 1.55,
            ),
          ),
          const SizedBox(height: 25),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: const Color(0xFFE8EBE3)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.construction_rounded, color: module.accent),
                const SizedBox(width: 13),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Modul dalam pengembangan',
                        style: textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Fitur ${module.shortTitle.toLowerCase()} akan diimplementasikan di sini.',
                        style: textTheme.bodyMedium?.copyWith(
                          color: const Color(0xFF72786F),
                          height: 1.4,
                        ),
                      ),
                    ],
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
