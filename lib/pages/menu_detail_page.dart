import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/custom_text.dart';

class MenuDetailPage extends StatelessWidget {
  final String namaMenu;
  final int hargaMenu;

  const MenuDetailPage({
    super.key,
    required this.namaMenu,
    required this.hargaMenu,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFD84315),
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const CustomText(
          text: 'Detail Menu',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              elevation: 4,
              shadowColor: Colors.deepOrange.withOpacity(0.25),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
                side: BorderSide(color: Colors.orange.shade100, width: 1.5),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 36,
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        color: Color(0xFFFBE9E7),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.lunch_dining_rounded,
                        size: 64,
                        color: Color(0xFFD84315),
                      ),
                    ),
                    const SizedBox(height: 24),
                    const CustomText(
                      text: 'NAMA HIDANGAN',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                    const SizedBox(height: 6),
                    CustomText(
                      text: namaMenu,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF212121),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    const Divider(),
                    const SizedBox(height: 16),
                    const CustomText(
                      text: 'HARGA SATUAN',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                    const SizedBox(height: 6),
                    CustomText(
                      text: 'Rp $hargaMenu',
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                      color: const Color(0xFF2E7D32),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFD84315),
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              onPressed: () {
                // Kembali ke halaman daftar menggunakan Get.back()
                Get.back();
              },
              child: const CustomText(
                text: 'Kembali ke Daftar Menu',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}