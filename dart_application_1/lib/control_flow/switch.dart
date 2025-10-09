void main() {
  var type = 'File';

  switch (type) {
    case 'File':
      print('The type is a File');

    case 'Directory':
      print('The type is a Directory');

    case 'Image':
      print('The type is an Image');

    default:
      print('Unknown type');
  }
}
