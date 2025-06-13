scalar ternary;

scalar Password extends string;

@doc(Type)
scalar Unreal<Type extends valueof string>;

scalar ipv4 extends string {
  init fromInt(value: uint32);
}

const homeIp = ipv4.fromInt(2130706433);
