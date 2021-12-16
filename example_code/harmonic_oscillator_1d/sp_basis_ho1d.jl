#===============================================================================

    sp_basis_ho1d.jl - LR, November 2020

    Provides some useful structure for the HO.

===============================================================================#
using SpecialPolynomials
include("ho_typedefs.jl")


# This is the abstract type for all HO orbitals, irrespective of the dimension
# (all dimension-speficic types should be s subtype).
abstract type HOOrbital <: Orbital end

# Specific 1D orbital.
struct HOOrbital1D <: HOOrbital
    m::DType # Mass.
    omega::DType # Trap frequency.
end

# Callable that returns the energy.
(orb::HOOrbital1D)(i::T) where {T<:Integer} = begin
    return i-0.5
end

# Callable that returns the spatial wavefunction.
(orb::HOOrbital1D)(i::Integer, x::T) where {T<:Number}= begin
    n = big(i-1) # Formulas are typically zero-based, Julia is one-based.
    xi_inv = sqrt(orb.m*orb.omega) # Inverse of HO length.
    return Float64((xi_inv^2/pi)^0.25 / sqrt(2.0^n * factorial(n)) * exp(-0.5*xi_inv^2*x^2) * basis(Hermite, Int64(n))(Float64.(x*xi_inv)))
end
