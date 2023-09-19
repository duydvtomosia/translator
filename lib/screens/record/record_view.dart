part of '../screens.dart';

class RecordView extends GetView<RecordController> {
  const RecordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Listening'),
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.primary,
                child: const Icon(Icons.settings),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).colorScheme.background,
        child: GestureDetector(
          onTap: () {
            if (controller.isRecording.value) {
              controller.stopRecording();
            } else {
              controller.startRecording();
            }
          },
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Theme.of(context).colorScheme.secondary,
            child: CircleAvatar(
              radius: 36,
              backgroundColor: Theme.of(context).colorScheme.primary,
              child: ObxValue(
                (isRecording) {
                  return Icon(
                    isRecording.value ? Icons.square : Icons.mic,
                    color: Theme.of(context).colorScheme.surface,
                    size: 30,
                  );
                },
                controller.isRecording,
              ),
            ),
          ),
        ),
      ),
      body: Container(
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
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                readOnly: true,
                controller: controller.editingController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Tap mic button to record',
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.surface,
                  ),
                ),
                style: TextStyle(
                  color: Theme.of(context).colorScheme.surface,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
