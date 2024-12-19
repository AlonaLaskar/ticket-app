import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/styles/app_styles.dart';
import 'package:ticket_app/core/utils/all_json.dart';

class HotelDetail extends StatefulWidget {
  const HotelDetail({super.key});

  @override
  State<HotelDetail> createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  late int index = 0;

  @override
  void didChangeDependencies() {
    if (ModalRoute.of(context)!.settings.arguments != null) {
      final args = ModalRoute.of(context)!.settings.arguments as Map;
      index = args['index'];
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            floating: false,
            pinned: true,
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      "assets/images/${hotelList[index]["image"]}",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 40,
                    right: 20,
                    child: Text(
                      hotelList[index]["place"],
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ExpandedTextWidget(
                    text: hotelList[index]['detail'],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "More Images",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 250.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: hotelList[index]["images"].length,
                    itemBuilder: (context, imagesIndex) {
                      return Container(
                        margin: const EdgeInsets.all(16),
                        child: Image.asset(
                          "assets/images/${hotelList[index]["images"][imagesIndex]}",
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ExpandedTextWidget extends StatefulWidget {
  const ExpandedTextWidget({super.key, required this.text});
  final String text;

  @override
  State<ExpandedTextWidget> createState() => _ExpandedTextWidgetState();
}

class _ExpandedTextWidgetState extends State<ExpandedTextWidget> {
  bool isExpanded = false;
  _toogleExpantion() {
    setState(() {
      isExpanded = !isExpanded;
    });
    print("The value of isExpanded is $isExpanded");
  }

  @override
  Widget build(BuildContext context) {
    var textWidget = Text(
      widget.text,
      maxLines: isExpanded ? null : 6,
      overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textWidget,
        GestureDetector(
          onTap: () {
            _toogleExpantion();
          },
          child: Text(isExpanded ? "Read Less" : "Read More",
              style: AppStyles.textStyle.copyWith(
                color: AppStyles.primaryColor,
              )),
        )
      ],
    );
  }
}
