import Lake
open Lake DSL

package laakkonenParadox where
  -- add package config

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git"

@[default_target]
lean_lib «LaakkonenParadox» where
  globs := #[.submodules `LaakkonenParadox]
