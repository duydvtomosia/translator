part of '../screens.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          bottomNavigationBar: BottomAppBar(
            color: Theme.of(context).colorScheme.background,
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
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.mic),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text('Translator'),
            leading: IconButton(
              icon: const Icon(Icons.star),
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
                Text(
                  'What do you want to translate today?',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                TranslateWidget(),
                SizedBox(height: 20),
                LanguageWidget(),
              ],
            ),
          ),
        ),
      );
    });
  }
}
