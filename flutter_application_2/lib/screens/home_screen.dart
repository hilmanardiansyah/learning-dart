import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final nowPlaying = [
      'https://media.themoviedb.org/t/p/w300_and_h450_bestv2/8cdWjvZQUExUUTzyp4t6EDMubfO.jpg',
      'https://image.tmdb.org/t/p/w500/vBZ0qvaRxqEhZwl6LWmruJqWE8Z.jpg',
      'https://image.tmdb.org/t/p/w500/aosm8NMQ3UyoBVpSxyimorCQykC.jpg',
    ];

    final trending = [
      'https://media.themoviedb.org/t/p/w220_and_h330_face/AiJ8L90ftPAwVf3SDx7Fj9IMZoy.jpg',
      'https://media.themoviedb.org/t/p/w220_and_h330_face/jbFEESMVbpJU8IjZBjiWGJdEsxR.jpg',
      'https://media.themoviedb.org/t/p/w220_and_h330_face/jNBxGBNeXbG8WBKqBHtC5HjizB0.jpg',
      'https://media.themoviedb.org/t/p/w220_and_h330_face/pvMHRi09ur2L1drXh2dXFtuMFgl.jpg',
      'https://media.themoviedb.org/t/p/w220_and_h330_face/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg',
    ];

    final popular = [
      'https://media.themoviedb.org/t/p/w220_and_h330_face/9akij7PqZ1g6zl42DQQTtL9CTSb.jpg',
      'https://media.themoviedb.org/t/p/w220_and_h330_face/k6LX0rJOYeF4fNzfVlCGxWPTmE5.jpg',
      'https://media.themoviedb.org/t/p/w220_and_h330_face/AjlRXTpRLAIiuofNqKcqrpUfPCZ.jpg',
      'https://media.themoviedb.org/t/p/w220_and_h330_face/dT10AxJIXVvRwFAew4tt2RhzJrD.jpg',
      'https://media.themoviedb.org/t/p/w220_and_h330_face/rOYLWCdAifpUtPlTf1WHxyaxeMt.jpg',
    ];

    final topRated = [
      'https://media.themoviedb.org/t/p/w220_and_h330_face/pPfsEXzfk2URkQ1OxhUShAXdxMr.jpg',
      'https://media.themoviedb.org/t/p/w220_and_h330_face/v3youHDLigrtIis1NqTjlY8Sk38.jpg',
      'https://media.themoviedb.org/t/p/w220_and_h330_face/l1Q7YzanazjJescEkSfcRuIj1hR.jpg',
      'https://media.themoviedb.org/t/p/w220_and_h330_face/tEv842Nd5uMSavURG4aQO1pNtst.jpg',
      'https://media.themoviedb.org/t/p/w220_and_h330_face/vW0BW5OiQufPnCyWhi4czVL3nhf.jpg',
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _sectionTitle('Now Playing'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: CarouselSlider(
                    items: nowPlaying
                        .map(
                          (img) => Image.network(
                            img,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        )
                        .toList(),
                    options: CarouselOptions(
                      height: 300,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      viewportFraction: 0.9,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),

              _horizontalSection(title: 'Trending', items: trending),
              const SizedBox(height: 12),

              _horizontalSection(title: 'Popular', items: popular),
              const SizedBox(height: 12),

              _horizontalSection(title: 'Top Rated', items: topRated),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _sectionTitle(String text) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
    child: Row(
      children: [
        Container(width: 4, height: 18, color: Colors.redAccent),
        const SizedBox(width: 8),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    ),
  );
}

Widget _horizontalSection({
  required String title,
  required List<String> items,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              'More',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 165,
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          separatorBuilder: (_, __) => const SizedBox(width: 10),
          itemBuilder: (context, i) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: AspectRatio(
                aspectRatio: 2 / 3, // rasio poster
                child: Image.network(items[i], fit: BoxFit.cover),
              ),
            );
          },
        ),
      ),
    ],
  );
}
