part of '../screens.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Theme.of(context).colorScheme.secondary,
          child: Row(
            children: [
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.camera),
                color: Colors.white,
                iconSize: 32,
                onPressed: () {},
              ),
              const Spacer(flex: 2),
              IconButton(
                icon: const Icon(Icons.forum),
                color: Colors.white,
                iconSize: 32,
                onPressed: () {},
              ),
              const Spacer(),
            ],
          ),
        ),
        floatingActionButton: SizedBox(
          width: 72,
          height: 72,
          child: FittedBox(
            child: FloatingActionButton(
              onPressed: () {
                Get.toNamed(Routes.record);
              },
              child: const Icon(Icons.mic),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
          title: const Text('Translator'),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.account_circle_outlined),
            ),
          ],
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: Column(
            children: <Widget>[
              const Text(
                'What do you want to translate today?',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const EnterTextWidget(),
              const SizedBox(height: 20),
              LanguageWidget(),
            ],
          ),
        ),
      );
    });
  }
}
