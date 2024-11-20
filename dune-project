(lang dune 3.16)

(name reverse_polish_notation)

(generate_opam_files true)

(source
 (github username/reponame))

(authors "Braden Everson")

(maintainers "Braden Everson")

(license LICENSE)

(documentation https://url/to/documentation)

(package
 (name reverse_polish_notation)
 (synopsis "A simple RPN calculator to learn OCaml more")
 (description "A simple RPN interpretter that reads input until '=' has been entered")
 (depends ocaml dune)
)
; See the complete stanza docs at https://dune.readthedocs.io/en/stable/reference/dune-project/index.html
