(single_line_comment) @comment
(multi_line_comment) @comment.doc

(builtin_type) @type.builtin

[
	"alias"
	"const"
	"dec"
	"enum"
	"extern"
	"fn"
	"import"
	"interface"
	"model"
	"namespace"
	"op"
	"scalar"
	"union"
	"using"
	"@@"
] @keyword

[
	"is"
	"extends"
	"valueof"
	"typeof"
] @operator

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
]  @punctuation.bracket

(boolean_literal) @boolean

[
	(decimal_literal)
	(hex_integer_literal)
	(binary_integer_literal)
] @number

[
	(quoted_string_literal)
	(triple_quoted_string_literal)
] @string

(escape_sequence) @string.escape

(namespace_statement
	name: (_) @type
	)

(using_statement
	module: (_) @type
	)

(enum_statement
	name: (identifier) @type
	) @enum

(model_statement
	name: (identifier) @type
	)

(interface_statement
	name: (identifier) @type
	)

(const_statement
	name: (identifier) @type
	) @const
