@decorator
model Thing<T> {
  property: T;
}

model StringThing is Thing<string>;

// The StringThing declaration is equivalent to the following declaration:
@decorator
model StringThing {
  property: string;
}
