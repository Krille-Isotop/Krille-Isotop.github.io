import 'package:pizzashop/presentation/ui/pizza_card.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:flutter/material.dart';

class StoryBoard extends StatelessWidget {
  const StoryBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook(
      devices: const [
        Apple.iPhone11,
        Apple.iPhone12,
      ],
      lightTheme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      appInfo: AppInfo(
        name: 'Pizza Shop',
      ),
      categories: [
        WidgetbookCategory(
          name: 'Pizza widgets',
          widgets: [
            WidgetbookWidget(
              name: 'Pizza card',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => PizzaCard(),
                ),
              ],
            ),
          ],
          folders: [
            WidgetbookFolder(
              name: 'Texts',
              widgets: [
                WidgetbookWidget(
                  name: 'Normal Text',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => const Text(
                        'This is just the regular old material text',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
