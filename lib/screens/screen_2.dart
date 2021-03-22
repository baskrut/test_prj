import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../constant/colors.dart';
import '../constant/strings.dart';
import '../providers/horizontal_items.dart';
import '../providers/vertical_items.dart';
import '../widgets/btn_close.dart';
import '../widgets/list_item.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key key}) : super(key: key);

  static const routeName = '/screen_2';

  @override
  Widget build(BuildContext context) {
    var horizontalItem = Provider.of<HorizontalItemsProvider>(context);
    var verticalItem = Provider.of<VerticalItemsProvider>(context);

    return CupertinoPageScaffold(
      backgroundColor: ProjectColor.white,
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 12,
                  right: 12,
                ),
                child: BtnClose(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '$section1 (${horizontalItem.itemsCount})',
                  style: const TextStyle(
                    fontSize: 24,
                    color: ProjectColor.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              height: 182,
              margin: const EdgeInsets.only(left: 24),
              child: ListView.builder(
                shrinkWrap: false,
                scrollDirection: Axis.horizontal,
                itemCount: horizontalItem.itemsCount,
                itemBuilder: (context, id) {
                  return ListItem(
                    itemBody: horizontalItem.itemAt(id),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                bottom: 16,
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '$section2 (${verticalItem.itemsCount})',
                  style: const TextStyle(
                    fontSize: 24,
                    color: ProjectColor.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 314,
              child: ListView.builder(
                shrinkWrap: false,
                itemCount: verticalItem.itemsCount,
                itemBuilder: (context, id) {
                  return ListItem(
                    itemBody: verticalItem.itemAt(id),
                    isHorizontal: false,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}