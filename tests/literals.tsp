alias Str = """
	This is a multi line string
	 - opt 1
	 - opt 2
	""";

model MultiLineContainer {
	prop1: """
	  one
	  two
	  """;

	// Lines are indented at the same level as closing """"
	prop2: """
	  one
	  two
	  """;

	prop3: """
	  one
	  two
	  """;
}

alias hello = "bonjour";
alias Single = "${hello} world!";

alias Multi = """
  ${hello}
  world!
  """;

alias Kilo = 1000;
alias PI = 3.14;

alias InTypeSpec = true;
alias Cheater = false;
