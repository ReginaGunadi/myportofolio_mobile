import 'package:material_ui/material_ui.dart';
import 'package:myportofolio_mobile/models/award.dart';
import 'package:myportofolio_mobile/screens/award_detail_screen.dart';
import 'package:myportofolio_mobile/services/api_client.dart';
import 'package:myportofolio_mobile/widgets/left_drawer.dart';
import 'package:provider/provider.dart';

class AwardListScreen extends StatefulWidget {
  const AwardListScreen({super.key});

  @override
  State<AwardListScreen> createState() => _AwardListScreenState();
}

class _AwardListScreenState extends State<AwardListScreen> {
  late Future<List<Award>> _awardsFuture;

  @override
  void initState() {
    super.initState();
    _awardsFuture = context.read<ApiClient>().getAwards();
  }

  Future<void> _reload() async {
    final future = context.read<ApiClient>().getAwards();
    setState(() {
      _awardsFuture = future;
    });
    await future;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Achievements: Awards')),
      drawer: const LeftDrawer(),
      body: FutureBuilder<List<Award>>(
        future: _awardsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Failed to load awards: ${snapshot.error}',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton.icon(
                      onPressed: _reload,
                      icon: const Icon(Icons.refresh),
                      label: const Text('Retry'),
                    ),
                  ],
                ),
              ),
            );
          }

          final awards = snapshot.data ?? const <Award>[];

          if (awards.isEmpty) {
            return RefreshIndicator(
              onRefresh: _reload,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: const Center(child: Text('No awards found.')),
                ),
              ),
            );
          }

          return RefreshIndicator(
            onRefresh: _reload,
            child: ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(8),
              itemCount: awards.length,
              itemBuilder: (context, index) {
                final award = awards[index];
                return Card(
                  child: ListTile(
                    title: Text(award.title),
                    subtitle: Text(
                      '${award.category}\n${award.description}',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    isThreeLine: true,
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => AwardDetailScreen(award: award),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
