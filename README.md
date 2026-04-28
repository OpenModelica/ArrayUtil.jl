[![CI](https://github.com/JKRT/ArrayUtil.jl/actions/workflows/ci.yml/badge.svg)](https://github.com/JKRT/ArrayUtil.jl/actions/workflows/ci.yml)
[![License: OSMC-PL](https://img.shields.io/badge/license-OSMC--PL-lightgrey.svg)](LICENSE.md)

# ArrayUtil.jl

Array utility helpers for the Julia port of the OpenModelica compiler.
A Julia translation of the MetaModelica `ArrayUtil` module: `map`, `fold`,
`select`, `findFirstOnTrue`, and friends, operating on Julia `Vector{T}`
with optional interop to `MetaModelica` linked lists.

This package is part of the [OM.jl](https://github.com/JKRT/OM.jl) suite.

## Installation

ArrayUtil.jl is registered in the
[OpenModelicaRegistry](https://github.com/OpenModelica/OpenModelicaRegistry).
Add it from a Julia REPL:

```julia
import Pkg
Pkg.Registry.add(Pkg.RegistrySpec(url = "https://github.com/OpenModelica/OpenModelicaRegistry.git"))
Pkg.add("ArrayUtil")
```

## License

Distributed under the OSMC Public License (OSMC-PL) v1.2 or GPL v3, at the
recipient's choice. See [LICENSE.md](LICENSE.md) for the full text.
