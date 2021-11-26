import 'package:pizzashop/presentation/ui/pizza_card.dart';
import 'package:pizzashop/presentation/ui/text.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:flutter/material.dart';

class StoryBoard extends StatelessWidget {
  const StoryBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook(
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
                  builder: (context) => const PizzaCard(
                    type: "Vesuvio",
                    price: 29,
                  ),
                ),
              ],
            ),
          ],
          folders: [
            WidgetbookFolder(
              name: 'Text variants',
              widgets: [
                WidgetbookWidget(
                  name: 'Paragraph',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => const Paragraph(
                        'Campagnola, fiuggirola, quattro stagioni, marinara, capricciosa, kan inte låta bli',
                      ),
                    ),
                    WidgetbookUseCase(
                      name: 'Italic',
                      builder: (context) => const Paragraph(
                        'Campagnola, fiuggirola, quattro stagioni, marinara, capricciosa, kan inte låta bli',
                        italic: true,
                      ),
                    ),
                    WidgetbookUseCase(
                      name: 'Upside down',
                      builder: (context) => const Paragraph(
                        'Campagnola, fiuggirola, quattro stagioni, marinara, capricciosa, kan inte låta bli',
                        upsideDown: true,
                      ),
                    ),
                  ],
                ),
                WidgetbookWidget(
                  name: 'Heading',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => const Heading(
                        'Canneloni macaroni',
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
