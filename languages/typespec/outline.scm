(namespace_statement
	(annotation_list)? @annotation
	"namespace" @context
	name: (_) @name
) @item

(model_statement
	(annotation_list)? @annotation
	"model" @context
	name: (identifier) @name
	(template_parameters)? @context.extra
	; TODO: model_heritage should be public like interface_heritage
	[
		(model_is_heritage)
		(model_extends_heritage)
	]? @context.extra
) @item

(union_statement
	(annotation_list)? @annotation
	"union" @context
	name: (_) @name
	(template_parameters)? @context.extra
) @item

(scalar_statement
	(annotation_list)? @annotation
	"scalar" @context
	name: (_) @name
	(template_parameters)? @context.extra
	(scalar_extends)? @context.extra
) @item

(interface_statement
	(annotation_list)? @annotation
	"interface" @context
	name: (_) @name
	(template_parameters)? @context.extra
	(interface_heritage)? @context.extra
) @item

(enum_statement
	(annotation_list)? @annotation
	"enum" @context
	name: (_) @name
) @item

(alias_statement
	"alias" @context
	name: (_) @name
	(template_parameters)? @context.extra
) @item

(const_statement
	"const" @context
	name: (_) @name
) @item
