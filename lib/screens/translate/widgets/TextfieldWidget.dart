part of '../../screens.dart';

class TextfieldWidget extends StatelessWidget {
  const TextfieldWidget({
    super.key,
    required this.controller,
    this.isInput = true,
  });

  final TranslateController controller;
  final bool isInput;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          TextField(
            enabled: isInput,
            autofocus: isInput,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: isInput ? 'Enter Text' : '',
              hintStyle:
                  TextStyle(color: Theme.of(context).colorScheme.surface),
            ),
            style: TextStyle(
              fontSize: 20,
              color: Theme.of(context).colorScheme.surface,
            ),
            controller: isInput
                ? controller.textEditingController
                : controller.resultTextEditingController,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.outline,
                child: IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.volume_mute,
                    color: Theme.of(context).colorScheme.surface,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.outline,
                child: IconButton(
                  onPressed: null,
                  icon: Icon(
                    isInput ? Icons.mic : Icons.paste_outlined,
                    color: Theme.of(context).colorScheme.surface,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
