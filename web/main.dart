//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

import 'dart:html';

// fields
InputElement task;
UListElement list;

void main() {
  task = querySelector('#task');
  list = querySelector('#list');
  // methods
  task.onChange.listen((event) => addItem());
}

void addItem() {
  var newTask = LIElement();
  newTask.text = task.value;
  task.value = '';
  list.children.add(newTask);
}
