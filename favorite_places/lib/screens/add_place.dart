import 'package:favorite_places/providers/user_places.dart';
import 'package:flutter/material.dart';
import 'package:favorite_places/screens/places.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddPlaceScreen extends ConsumerStatefulWidget {
  const AddPlaceScreen({
    super.key,
  });

  @override
  ConsumerState<AddPlaceScreen> createState() {
    return _AddPlaceScreenState();
  }
}

class _AddPlaceScreenState extends ConsumerState<AddPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    final _titleController = TextEditingController();

    void _savePlace(){
      final _enteredTitle = _titleController.text;

      if(_enteredTitle.isEmpty){
        return;
      }

      ref.read(userPlacesProvidier.notifier).addPlace(_enteredTitle);
      Navigator.of(context).pop();

    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Place'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
              controller: _titleController,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.add),
              onPressed: _savePlace,
              label: const Text('Add Place'),
            ),
          ],
        ),
      ),
    );
  }
}
