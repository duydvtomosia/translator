part of '../screens.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _textEditingController = TextEditingController();

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
            title: Text('Translator'),
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
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: TextField(
                    controller: _textEditingController,
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
                  ),
                ),
                const SizedBox(height: 20),
                const LanguageWidget(),
              ],
            ),
          ),
        ),
      );
    });
  }
}

class LanguageWidget extends StatefulWidget {
  const LanguageWidget({
    super.key,
  });

  @override
  State<LanguageWidget> createState() => _LanguageWidgetState();
}

class _LanguageWidgetState extends State<LanguageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Flexible(
              child: SelectLanguageWidget(title: 'Detect language'),
            ),
            Flexible(
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.swap_horiz),
              ),
            ),
            const Flexible(
              child: SelectLanguageWidget(title: 'Vietnamese'),
            ),
          ],
        ),
      ),
    );
  }
}

class SelectLanguageWidget extends StatelessWidget {
  final String title;
  const SelectLanguageWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      alignment: Alignment.center,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
