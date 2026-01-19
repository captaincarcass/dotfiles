((call_expression
  function: (identifier) @function
  (#match? @function "gl.*\\|glfw.*")) @function)

;; Highlight OpenGL/GLFW/GLAD types / typedefs
((type_identifier) @type
 (#match? @type "GL.*\\|GLFW.*")) @type

((identifier) @constant
 (#match? @constant "GL_.*")) @constant
