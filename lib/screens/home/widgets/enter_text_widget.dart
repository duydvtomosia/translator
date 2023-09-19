part of '../../screens.dart';

class EnterTextWidget extends GetView<HomeController> {
  const EnterTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetX<HomeController>(builder: (controller) {
      if (controller.translationText.isEmpty) {
        return InkWell(
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: const BorderRadius.all(Radius.circular(12)),
            ),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            child: const Text(
              'Enter Text',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          onTap: () => Get.toNamed(Routes.translate),
        );
      } else {
        return Container();
      }
    });
  }
}
