part of '../../screens.dart';

class LanguageWidget extends StatelessWidget {
  LanguageWidget({
    super.key,
  });

  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: SelectLanguageWidget(
                controller: controller,
                type: LanguageType.source,
              ),
            ),
            Flexible(
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_right_alt_outlined,
                  color: Colors.white,
                ),
              ),
            ),
            Flexible(
              child: SelectLanguageWidget(
                controller: controller,
                type: LanguageType.target,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SelectLanguageWidget extends StatelessWidget {
  const SelectLanguageWidget({
    super.key,
    required this.controller,
    required this.type,
  });

  final HomeController controller;
  final LanguageType type;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: DropdownButton(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            icon: const Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            ),
            style: const TextStyle(
              color: Colors.white,
            ),
            underline: const SizedBox(),
            dropdownColor: Theme.of(context).colorScheme.primary,
            isExpanded: true,
            value: type == LanguageType.source
                ? controller.sourceLanguage.value
                : controller.targetLanguage.value,
            items: controller.listLanguages.isNotEmpty
                ? controller.listLanguages
                    .map(
                      (element) => DropdownMenuItem(
                        alignment: Alignment.center,
                        value: element.name,
                        child: Text(
                          element.name,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                    .toList()
                : null,
            onChanged: (value) {
              if (value != null) {
                controller.didSelectLanguage(type, value);
              }
            }),
      ),
    );
  }
}
