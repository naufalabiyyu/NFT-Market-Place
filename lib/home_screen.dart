import 'package:flutter/material.dart';
import 'package:nft_marketplace/models/product_model.dart';

import '/detail_screen.dart';
import '/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //* List of Tab Bar Item
  List<String> items = ["Trending", "Art", "Photography", "Sports"];

  List<IconData> icons = [
    Icons.home,
    Icons.explore,
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFBFD),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(18),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/icon_menu.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/icons/icon_search.png',
                            color: greyColor,
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/icons/icon_notification.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Row(
                children: [
                  Text(
                    'Discover the Rare\ncollections of NFTs',
                    style: primaryTextStyle.copyWith(
                        fontSize: 28, fontWeight: bold),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            margin: const EdgeInsets.all(5),
                            width: 100,
                            height: 45,
                            decoration: BoxDecoration(
                              color: current == index
                                  ? primaryColor
                                  : Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(28),
                            ),
                            child: Center(
                              child: Text(
                                items[index],
                                style: primaryTextStyle.copyWith(
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Visibility(
                          visible: current == index,
                          child: Container(
                            width: 12,
                            height: 3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              if (current == 0) ...[
                Expanded(
                  child: ListView.builder(
                    itemCount: productList.length,
                    itemBuilder: (context, index) {
                      final ProductModel product = productList[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                  product: product,
                                ),
                              ));
                        },
                        child: product.category == 'Art' &&
                                product.trending == true
                            ? CardList(
                                product: product,
                                title: product.title,
                                author: product.author,
                                price: product.price,
                                imageUrl: product.imageAsset,
                              )
                            : const SizedBox(),
                      );
                    },
                  ),
                ),
              ] else if (current == 1) ...[
                Expanded(
                  child: ListView.builder(
                    itemCount: productList.length,
                    itemBuilder: (context, index) {
                      final ProductModel product = productList[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                  product: product,
                                ),
                              ));
                        },
                        child: product.category == 'Art'
                            ? CardList(
                                product: product,
                                title: product.title,
                                author: product.author,
                                price: product.price,
                                imageUrl: product.imageAsset,
                              )
                            : const SizedBox(),
                      );
                    },
                  ),
                ),
              ] else if (current == 2) ...[
                Expanded(
                  child: ListView.builder(
                    itemCount: productList.length,
                    itemBuilder: (context, index) {
                      final ProductModel product = productList[index];

                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                  product: product,
                                ),
                              ));
                        },
                        child: product.category == 'Photography'
                            ? CardList(
                                product: product,
                                title: product.title,
                                author: product.author,
                                price: product.price,
                                imageUrl: product.imageAsset,
                              )
                            : const SizedBox(),
                      );
                    },
                  ),
                ),
              ] else if (current == 3) ...[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sorry, Not Found',
                        style: secondaryTextStyle,
                      ),
                    ],
                  ),
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}

class CardList extends StatelessWidget {
  final ProductModel product;
  final String title;
  final String imageUrl;
  final String author;
  final String price;

  const CardList(
      {Key? key,
      required this.product,
      required this.title,
      required this.imageUrl,
      required this.author,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(
                product: product,
              ),
            ));
      },
      child: Card(
        margin: const EdgeInsets.only(top: 12),
        elevation: 0.3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 150,
                    fit: BoxFit.fitHeight,
                  )),
            ),
            const SizedBox(width: 4),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      title,
                      style: primaryTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: semiBold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Container(
                          width: 36,
                          height: 40,
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: lightColor,
                          ),
                          child: Image.asset(
                            'assets/icons/icon_user.png',
                            width: 12,
                            color: primaryColor,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Author',
                              style: secondaryTextStyle.copyWith(fontSize: 12),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              author,
                              style:
                                  primaryTextStyle.copyWith(fontWeight: bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Container(
                          width: 36,
                          height: 40,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: lightColor,
                          ),
                          child: Image.asset(
                            'assets/icons/icon_eth.png',
                            width: 12,
                            color: primaryColor,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Price',
                              style: secondaryTextStyle.copyWith(fontSize: 12),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '${price} ETH',
                              style:
                                  primaryTextStyle.copyWith(fontWeight: bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
