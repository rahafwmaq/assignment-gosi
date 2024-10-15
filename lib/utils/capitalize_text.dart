extension StringExtensions on String {
  // Capitalizes the first letter of each word in the string
  String capitalizeFirstLetterInSentence() {
    return split(' ').map((word) {
      if (word.isEmpty) return word;
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    }).join(' ');
  }

  // Capitalizes the first letter of the first sentence in the string
  String capitalizeFirstLetterInWord() {
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }

  // Converts all letters in the string to uppercase
  String capitalizeAllLetters() {
    return toUpperCase();
  }
}
