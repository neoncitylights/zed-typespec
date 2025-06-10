# zed-typespec
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=flat-square)](https://opensource.org/licenses/MIT)

[TypeSpec](https://typespec.io) syntax highlighting support for [Zed](https://github.com/zed-industries/zed). This extension is currently a work-in-progress.

- Tree-sitter: [neoncitylights/tree-sitter-typespec](https://github.com/neoncitylights/tree-sitter-typespec/)

## Developing
1. Clone repository
2. Open Zed editor
3. Open Command Palette (<kbd>Cmd</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd> on MacOS, <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd> on Linux)
4. Type "zed: install dev extension" and press <kbd>enter</kbd>
5. Select this repository directory, then start testing

### Tips
- To rebuild your extension, press "Rebuild" on the page from "zed: extensions" (Command Palette)
- To make it easier to debug, you can open "dev: open syntax tree view" (Command Palette) to see the generated Tree-Sitter Query AST.
- You can test syntax highlighting with files in the `tests` directory. These test files are borrowed from the typespec.io website, such as the homepage and playground.

## License
This software is licensed under the MIT license ([`LICENSE`](./LICENSE) or <https://opensource.org/license/mit/>).

### Contribution
Unless you explicitly state otherwise, any contribution intentionally submitted for inclusion in the work by you, as defined in the MIT license, shall be licensed as above, without any additional terms or conditions.
