part of '../../screens.dart';

class TranslateWidget extends GetView<HomeController> {
  const TranslateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetX<HomeController>(builder: (controller) {
      if (controller.translationText.isEmpty) {
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
          height: MediaQuery.of(context).size.height * 0.4,
          child: TextField(
            controller: controller.textEditingController,
            maxLines: null,
            keyboardType: TextInputType.multiline,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter Text',
              hintStyle: TextStyle(color: Colors.white),
            ),
            onChanged: (value) {
              controller.translationText.value = value;
            },
          ),
        );
      } else {
        return Container();
      }
    });
  }
}
