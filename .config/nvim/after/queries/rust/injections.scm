; extends

(macro_invocation
  macro: [
    (identifier) @_macro
    (scoped_identifier name: (identifier) @_macro)
  ]
  (#match? @_macro "^query")
  (token_tree
    [
    (string_literal
      ((string_content) @injection.content))
    (raw_string_literal
      ((string_content) @injection.content))
    ])
  (#set! injection.language "sql")
)
