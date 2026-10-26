import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/custom_text.dart';
import 'add_menu_page.dart';
import 'menu_detail_page.dart';

class MenuListPage extends StatefulWidget {
  const MenuListPage({super.key});

  @override
  State<MenuListPage> createState() => _MenuListPageState();
}

class _MenuListPageState extends State<MenuListPage> {
  // Data menu disimpan dalam List biasa di dalam State (minimal 5 data awal)
  final List<Map<String, dynamic>> _daftarMenu = [
    {'nama': 'Nasi Goreng Spesial Kampus', 'harga': 15000},
    {'nama': 'Mie Ayam Baksourat', 'harga': 13000},
    {'nama': 'Ayam Geprek Sambal Korek', 'harga': 16000},
    {'nama': 'Soto Ayam Lamongan', 'harga': 14000},
    {'nama': 'Es Teh Manis Jumbo', 'harga': 5000},
    {'nama': 'Jus Alpukat Cokelat', 'harga': 10000},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFD84315),
        elevation: 2,
        centerTitle: true,
        title: const CustomText(
          text: 'Kantin Fakultas Teknik',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: const CustomText(
              text: 'Daftar Menu Tersedia Hari Ini',
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xFFBF360C),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              itemCount: _daftarMenu.length,
              itemBuilder: (context, index) {
                final item = _daftarMenu[index];
                return Card(
                  elevation: 2.5,
                  shadowColor: Colors.deepOrange.withOpacity(0.2),
                  color: Colors.white,
                  margin: const EdgeInsets.only(bottom: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                    side: BorderSide(
                      color: Colors.orange.shade100,
                      width: 1,
                    ),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 8,
                    ),
                    leading: const Icon(
                      Icons.restaurant_menu_rounded,
                      color: Color(0xFFD84315),
                      size: 32,
                    ),
                    title: CustomText(
                      text: item['nama'],
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF212121),
                    ),
                    subtitle: CustomText(
                      text: 'Rp ${item['harga']}',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF2E7D32),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color(0xFFFF8F00),
                      size: 18,
                    ),
                    onTap: () {
                      // Navigasi ke halaman detail dengan Get.to()
                      Get.to(
                        () => MenuDetailPage(
                          namaMenu: item['nama'],
                          hargaMenu: item['harga'],
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFD84315),
        foregroundColor: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        onPressed: () async {
          // Membuka halaman tambah menu dan menunggu kiriman data baru
          final hasilMenuBaru = await Get.to(() => const AddMenuPage());
          if (hasilMenuBaru != null && hasilMenuBaru is Map<String, dynamic>) {
            setState(() {
              _daftarMenu.add(hasilMenuBaru);
            });
          }
        },
        child: const Icon(Icons.add_rounded, size: 28),
      ),
    );
  }
}