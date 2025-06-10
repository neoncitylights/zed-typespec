(model_statement
	"model" @context
	name: (identifier) @name
	(template_parameters)? @context.extra
	(model_is_heritage)? @context.extra
	) @item
