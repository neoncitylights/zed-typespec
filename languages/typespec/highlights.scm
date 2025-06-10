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

(enum_statement
  name: (identifier) @enum)

[
	(identifier)
	(plain_identifier)
] @identifier

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
