import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // ...existing code...

  // Widget bintang (rating stars)
  static final stars = Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.star, color: Colors.green[500]),
      Icon(Icons.star, color: Colors.green[500]),
      Icon(Icons.star, color: Colors.green[500]),
      const Icon(Icons.star, color: Colors.black),
      const Icon(Icons.star, color: Colors.black),
    ],
  );

  // Widget untuk rating + jumlah review
  static final ratings = Container(
    padding: const EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        stars,
        const Text(
          '170 Reviews',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontFamily: 'Roboto',
            letterSpacing: 0.5,
            fontSize: 20,
          ),
        ),
      ],
    ),
  );

  static const descTextStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w800,
    fontFamily: 'Roboto',
    letterSpacing: 0.5,
    fontSize: 18,
    height: 2,
  );

  static Widget get iconList => DefaultTextStyle.merge(
    style: descTextStyle,
    child: Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(Icons.terrain, color: Colors.green[500]),
              const Text('TINGGI'),
              const Text('2.329 mdpl'),
            ],
          ),
          Column(
            children: [
              Icon(Icons.wb_sunny, color: Colors.orange[600]),
              const Text('SUNRISE'),
              const Text('04.30 - 06.00'),
            ],
          ),
          Column(
            children: [
              Icon(Icons.directions_car, color: Colors.blue[500]),
              const Text('AKSES'),
              const Text('Jeep / Trail'),
            ],
          ),
        ],
      ),
    ),
  );

  static const titleText = Text(
    'Wisata Alam Gunung Bromo',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 24,
      letterSpacing: 0.5,
      color: Colors.black,
    ),
  );

  static const subTitle = Text(
    'Menikmati keindahan alam Indonesia',
    style: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: Colors.black54,
    ),
  );

  final leftColumn = Container(
    padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [titleText, subTitle, ratings, iconList],
    ),
  );

  static final mainImage = Image.asset(
    'img/bromo.png',
    fit: BoxFit.cover,
    width: 400,
    height: 600,
  );

  Widget _buildImageColumn() {
    return Container(
      decoration: const BoxDecoration(color: Colors.black26),
      child: Column(children: [_buildImageRow(1), _buildImageRow(3)]),
    );
  }

  Widget _buildDecoratedImage(int imageIndex) => Expanded(
    child: Container(
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.black38),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: SizedBox(
        height: 150,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset('img/pic$imageIndex.png', fit: BoxFit.cover),
        ),
      ),
    ),
  );

  Widget _buildImageRow(int imageIndex) => Row(
    children: [
      _buildDecoratedImage(imageIndex),
      _buildDecoratedImage(imageIndex + 1),
    ],
  );

  Widget _buildGrid() => GridView.extent(
    maxCrossAxisExtent: 150,
    padding: const EdgeInsets.all(4),
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    children: _buildGridTileList(30),
  );

  List<Widget> _buildGridTileList(int count) {
    return List.generate(count, (i) {
      final idx = (i % 10) + 1;
      return Image.asset('img/pic$idx.png', fit: BoxFit.cover);
    });
  }

  Widget _buildList() {
    return ListView(
      children: [
        _tile('Gunung Bromo', 'Probolinggo, Jawa Timur', Icons.landscape),
        _tile('Raja Ampat', 'Papua Barat', Icons.landscape),
        _tile('Danau Toba', 'Sumatera Utara', Icons.landscape),
        _tile('Taman Nasional Komodo', 'Nusa Tenggara Timur', Icons.landscape),
        _tile('Kawah Ijen', 'Banyuwangi, Jawa Timur', Icons.landscape),
        _tile('Pantai Parangtritis', 'Yogyakarta', Icons.landscape),
        const Divider(),
        _tile('Ngarai Sianok', 'Bukittinggi, Sumatera Barat', Icons.landscape),
        _tile(
          'Air Terjun Tumpak Sewu',
          'Lumajang, Jawa Timur',
          Icons.landscape,
        ),
        _tile('Pantai Kuta', 'Bali', Icons.landscape),
        _tile('Wakatobi', 'Sulawesi Tenggara', Icons.landscape),
      ],
    );
  }

  ListTile _tile(String title, String subtitle, IconData icon) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
      ),
      subtitle: Text(subtitle),
      leading: Icon(icon, color: Colors.green[500]),
    );
  }

  Widget _buildCard() {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'img/bromo.png',
            height: 180,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          ListTile(
            title: const Text(
              'Gunung Bromo',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
            subtitle: const Text(
              'Taman Nasional Bromo Tengger Semeru, Jawa Timur',
            ),
            leading: Icon(Icons.landscape, color: Colors.green),
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Lokasi: Probolinggo, Pasuruan, Lumajang, Malang',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            leading: Icon(Icons.location_on, color: Colors.red),
          ),
          ListTile(
            title: const Text(
              'Info: bromo.bbtns.id',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            leading: Icon(Icons.public, color: Colors.blue),
          ),
          ListTile(
            title: const Text('Email: info@bromo.id'),
            leading: Icon(Icons.email, color: Colors.orange),
          ),
        ],
      ),
    );
  }

  Widget buildRatingsTab() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Gunung Bromo',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              letterSpacing: 0.5,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          ratings,
          const SizedBox(height: 10),
          const Text(
            'Destinasi wisata alam ikonik di Jawa Timur.\n'
            'Terkenal dengan keindahan sunrise dan lautan pasir.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Demo Layout Flutter'),
            bottom: const TabBar(
              isScrollable: true,
              tabs: [
                Tab(text: 'Home'),
                Tab(text: 'Image Column'),
                Tab(text: 'Grid'),
                Tab(text: 'List'),
                Tab(text: 'Card'),
                Tab(text: 'Ratings'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              // Home Tab
              SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      const Text(
                        'Hello World',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(fontSize: 32, color: Colors.black87),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(child: Image.asset('img/bromo.png')),
                          Expanded(
                            flex: 2,
                            child: Image.asset('img/pantai.png'),
                          ),
                          Expanded(child: Image.asset('img/curug.png')),
                        ],
                      ),
                      ratings,
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
                        height: 600,
                        child: Card(
                          elevation: 4,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(width: 440, child: leftColumn),
                              mainImage,
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Image Column Tab
              SingleChildScrollView(
                child: SizedBox(height: 400, child: _buildImageColumn()),
              ),
              // Grid Tab
              SizedBox(height: 400, child: _buildGrid()),
              // List Tab
              SizedBox(height: 400, child: _buildList()),
              // Card Tab
              Center(child: _buildCard()),
              // Ratings Tab
              Center(child: buildRatingsTab()),
            ],
          ),
        ),
      ),
    );
  }
}
