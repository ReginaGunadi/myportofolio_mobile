import 'package:material_ui/material_ui.dart';
import 'package:myportofolio_mobile/models/award.dart';

class AwardDetailScreen extends StatelessWidget {
  const AwardDetailScreen({super.key, required this.award});

  final Award award;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(award.title)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Kategori: ${award.category}'),
            const SizedBox(height: 8),
            Text(award.description),
          ],
        ),
      ),
    );
  }
}
