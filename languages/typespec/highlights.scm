[
	(single_line_comment)
	(multi_line_comment)
] @comment

[
	(builtin_type)
	"alias"
	"const"
	"dec"
	"enum"
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

(identifier) @identifier

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
