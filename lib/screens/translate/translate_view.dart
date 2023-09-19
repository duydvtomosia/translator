part of '../screens.dart';

class TranslateView extends GetView<TranslateController> {
  const TranslateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Translate'),
        backgroundColor: Colors.black,
        actions: [
          InkWell(
            child: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.primary,
              child: const Icon(Icons.settings),
            ),
          )
        ],
      ),
      body: GestureDetector(
        onTap: () {
          if (controller.textEditingController.value.text.isEmpty) {
            FocusManager.instance.primaryFocus?.unfocus();
          }
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LanguageWidget(),
              const SizedBox(height: 20),
              TextfieldWidget(controller: controller),
              const SizedBox(height: 20),
              TextfieldWidget(controller: controller, isInput: false),
              const SizedBox(height: 8),
              Row(
                children: [
                  const ReactWidget(isGood: true),
                  const SizedBox(width: 8),
                  const ReactWidget(),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.share,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.bookmark_outline,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
