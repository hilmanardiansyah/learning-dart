void main() {
  if (showWidget()) {
    myWidget();
  } else if (showOtherWidget()) {
    myOtherWidget();
  } else {
    normalWidget();
  }
}

bool showWidget() {
  return true;
}

bool showOtherWidget() => false;
void myWidget() {
  print('This is my widget');
}

void myOtherWidget() {
  return print('This is my other widget');
}

void normalWidget() => print('This is normal widget');
