makeDifferenceBySet(oldList, newList) {
  Set<int> oldSet = Set<int>.from(oldList);
  Set<int> newSet = Set<int>.from(newList);
  return oldSet.difference(newSet).toList();
}

// This is where the app starts executing.
void main() {
  List<int> list1 = [1, 2, 3, 4, 5];
  List<int> list2 = [3, 4, 5, 6, 7];
  print(makeDifferenceBySet(list1, list2));
}
