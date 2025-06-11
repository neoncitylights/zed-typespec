(single_line_comment) @comment
(multi_line_comment) @comment.doc
(identifier) @type
(builtin_type) @type.builtin

[
	"alias"
	"const"
	"dec"
	"enum"
	"extern"
	"extends"
	"fn"
	"import"
	"interface"
	"model"
	"namespace"
	"scalar"
	"union"
	"using"
	"@@"
] @keyword

[
	"is"
	"valueof"
	"typeof"
	"..."
] @operator

[
	"("
	")"
	"["
	"]"
	"{"
	"}"
] @punctuation.bracket

[
	","
	":"
	";"
	"."
	"|"
] @punctuation.delimiter

[
	"@"
] @punctuation.special

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

(using_statement
	module: (_) @type
	)
(enum_statement) @enum
(const_statement) @const
(model_property
	name: (_) @property
	)
