part of '../../screens.dart';

class ReactWidget extends StatelessWidget {
  final bool isGood;

  const ReactWidget({
    super.key,
    this.isGood = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(
        isGood ? Icons.thumb_up_outlined : Icons.thumb_down_outlined,
        size: 18,
      ),
      label: Text(isGood ? 'Good' : 'Bad'),
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.outline,
      ),
    );
  }
}
