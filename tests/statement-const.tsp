const point = #{ x: 0, y: 0 };
const points = #[#{ x: 0, y: 0 }, #{ x: 1, y: 1 }];
const exampleTags1: Tags = #["TypeSpec", "JSON"];

const stringValue: string = "hello";
//      ^-- type: string

const oneValue = 1;
//      ^-- type: 1

const objectValue = #{ x: 0, y: 0 };
//      ^-- type: { x: 0, y: 0 }

const example = #{
	prop1: #{
		nested: true
	},
};
