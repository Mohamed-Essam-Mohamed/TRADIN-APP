import 'package:app/generated/l10n.dart';
import 'package:app/src/data/model/dataclass/data_class.dart';
import 'package:app/src/feature/feed/view/Widgets/my_cutom_text.dart';
import 'package:app/src/feature/feed/view/Widgets/my_tile_card.dart';
import 'package:flutter/material.dart';

class MarketsScreen extends StatefulWidget {
  final List<MarketModel> visibleMarkets;
  const MarketsScreen({super.key, required this.visibleMarkets});

  @override
  State<MarketsScreen> createState() => _MarketsScreenState();
}

class _MarketsScreenState extends State<MarketsScreen> {
  late List<MarketModel> _visibleMarkets;

  @override
  void initState() {
    super.initState();
    _visibleMarkets = widget.visibleMarkets;
  }

  void toggleVisibility(int index) {
    setState(() {
      _visibleMarkets[index].isHide = !_visibleMarkets[index].isHide;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 15),
              child: MyCustomText(
                text: S.of(context).Markets,
                fontSize: 31,
                fontWeight: FontWeight.w700,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, top: 8),
              child: MyCustomText(
                text: S.of(context).Add_up_to_four_different_markets,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: MyCustomText(
                text: S.of(context).to_your_daily_feed,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 25),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(_visibleMarkets.length, (index) {
                final market = _visibleMarkets[index];
                return Column(
                  children: [
                    MyTileCard(
                      name: market.name!,
                      percentage: market.percentage!,
                      price: market.price!,
                      onPressed: () => toggleVisibility(index),
                      buttonName: market.isHide
                          ? S.of(context).Show
                          : S.of(context).Hide,
                    ),
                    const SizedBox(height: 25),
                    if (!market.isHide)
                      const Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                  ],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
