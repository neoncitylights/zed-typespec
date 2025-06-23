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

; query is very specific to only capture model properties
; within model statements, as model_property is also marked as a node
; within operation statements too
(
	(model_statement
		(model_expression
			(model_body
				(model_property
					(annotation_list)? @annotation
					name: (_) @name
					("?"? ":") @context.extra
					type: (_) @context.extra
				) @item
			)
		)
	)
)

(union_statement
	(annotation_list)? @annotation
	"union" @context
	name: (_) @name
	(template_parameters)? @context.extra
) @item

(union_variant
	(annotation_list)? @annotation
	(identifier) @name
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

(interface_member
	(annotation_list)? @annotation
	"op"? @context
	name: (_) @name
	[
		(operation_signature_declaration)
		(operation_signature_reference)
	] @context.extra
) @item

(enum_statement
	(annotation_list)? @annotation
	"enum" @context
	name: (_) @name
) @item

(enum_spread_member
	"..." @context
	_ @name
) @item

(enum_member
	(annotation_list)? @annotation
	name: (_) @name
	(enum_member_value)? @context.extra
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

(operation_statement
	(annotation_list)? @annotation
	"op" @context
	name: (_) @name
	(template_parameters)? @context.extra
	[
		(operation_signature_declaration)
		(operation_signature_reference)
	] @context.extra
) @item
