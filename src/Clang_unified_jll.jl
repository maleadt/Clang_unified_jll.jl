# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule Clang_unified_jll
using Base
using Base: UUID
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("Clang_unified")
JLLWrappers.@generate_main_file("Clang_unified", UUID("ffc816e1-ba66-5fa9-9ecc-bcc5cb19bea1"))
end  # module Clang_unified_jll
