// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables

part of 'pages.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> with TickerProviderStateMixin {
  late TabController _tabController;

  List listTab = [
    'Dikirim',
    'Telah Diterima',
  ];
  @override
  Widget build(BuildContext context) {
    _tabController = new TabController(
      length: 2,
      vsync: this,
    );

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 26,
          ),
          DefaultTabController(
            length: 2,
            child: TabBar(
              indicatorColor: Colors.black,
              labelStyle: TextStyle(
                color: Colors.black,
              ),
              unselectedLabelStyle: TextStyle(
                color: Colors.black,
              ),
              onTap: (value) {
                _tabController.animateTo(value);
              },
              tabs: [
                Tab(
                  child: Text(
                    'Dikirim',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Telah diterima',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 360,
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ItemCard(
                      name: "Muti",
                      buku: "Si Putih",
                      alamat: "Jalan Perjuangan",
                      noHp: "01901",
                      type: "pengantaran",
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ItemCard(
                      name: "Muti",
                      buku: "Nebula",
                      alamat: "Jalan Perjuangan",
                      noHp: "01901",
                      type: "telah diterima",
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
