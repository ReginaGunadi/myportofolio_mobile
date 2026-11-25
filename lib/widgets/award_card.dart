import 'package:material_ui/material_ui.dart';
import 'package:myportofolio_mobile/screens/award_form.dart';
import 'package:myportofolio_mobile/screens/award_list_screen.dart';
import 'package:myportofolio_mobile/screens/experience_form.dart';
import 'package:myportofolio_mobile/widgets/auth_guard.dart';
import 'package:myportofolio_mobile/services/auth_state.dart';
import 'package:provider/provider.dart';

final List<ItemHomepage> items = [
  ItemHomepage("Lihat Penghargaan", Icons.folder, Colors.indigo),
  ItemHomepage("Tambah Penghargaan", Icons.add_circle, Colors.indigoAccent),
  ItemHomepage("Tambah Pengalaman", Icons.add_circle, Colors.lightBlue),
  ItemHomepage("Logout", Icons.logout, Colors.lightBlueAccent),
];

class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color;

  ItemHomepage(this.name, this.icon, this.color);
}

class ItemCard extends StatelessWidget {
  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      // Menggunakan warna sekunder dari skema tema aplikasi.
      color: item.color,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        // Aksi ketika kartu ditekan oleh pengguna.
        onTap: () async {
          final messenger = ScaffoldMessenger.of(context);

          // Menampilkan SnackBar dengan pesan interaktif.
          messenger
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!"),
              ),
            );

          if (item.name == "Lihat Penghargaan") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AwardListScreen()),
            );
          } else if (item.name == "Tambah Penghargaan") {
            final ok = await ensureLoggedIn(context);
            if (!context.mounted) return;
            if (ok) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AwardFormPage()),
              );
            }
          } else if (item.name == "Tambah Pengalaman") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ExperienceFormPage(),
              ),
            );
          } else if (item.name == "Logout") {
            final auth = context.read<AuthState>();
            final wasLoggedIn = auth.isLoggedIn;

            if (wasLoggedIn) {
              await auth.logout();
            }

            messenger
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Text(
                    wasLoggedIn ? "Kamu berhasil logout." : "Kamu belum login.",
                  ),
                ),
              );
          }
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(item.icon, color: Colors.white, size: 30.0),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
