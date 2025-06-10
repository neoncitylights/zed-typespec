const point = #{ x: 0, y: 0 };

const example = #{
  prop1: #{ nested: true }, // ok
  prop2: {
    nested: true,
  }, // error: values can't reference a type
  prop3: string, // error: values can't reference a type
};
