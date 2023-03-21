let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.15.7-20230320/packages.dhall
        sha256:6f2a4b50b793f304d3a64fd25d631de990de280981c73b0683a090e4fa499f0d

in  upstream
  with yjs =
    { dependencies =
      [ "console"
      , "effect"
      , "foreign"
      , "functions"
      , "newtype"
      , "prelude"
      , "web-dom"
      ]
    , repo = "https://github.com/rowtype-yoga/purescript-yjs.git"
    , version = "fc233e7"
    }
  with supabase =
    { dependencies =
      [ "aff"
      , "aff-promise"
      , "console"
      , "datetime"
      , "effect"
      , "either"
      , "fetch"
      , "fetch-core"
      , "foldable-traversable"
      , "foreign"
      , "functions"
      , "lists"
      , "maybe"
      , "nullable"
      , "prelude"
      , "react-basic-hooks"
      , "record"
      , "record-studio"
      , "transformers"
      , "tuples"
      , "typelevel-prelude"
      , "web-file"
      , "yoga-json"
      ]
    , version = "6d02a8e"
    , repo = "https://github.com/rowtype-yoga/purescript-supabase.git"
    }
