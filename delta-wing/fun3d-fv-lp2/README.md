# Delta Wing

This 3D Laminar Delta Wing case was used in the first three
High-Order Workshops.[1]
Adaptive results where originally presented by
Leicht and Hartmann.[2]
The geometry is composted of planar surfaces, which makes
it a good test case for evaluating 3D grid adaptation tools. [3]

# Simulation Conditions

- 0.3 Mach number
- 12.5 degrees angle of attack
- 4000 Reynolds number based on root chord
- 1 grid unit length root chord
- 0.133974596 grid unit squared reference area

# delta50k.meshb delta50k-metric.solb

- Vertices : 104305 item
- Triangles : 11304 item
- Tetrahedra : 581196 item

Mach number computed by FUN3D
- scripts avialable integrated-adaptation/delta-wing/50k
- Lp (p=2) Mach metric
- gradation limited to 1.5
- k-exact Hessian recovery 
- target complexity 50000

# References

[1] Wang, Z. J., Fidkowski, K., Abgrall, R., Bassi, F., Caraeni, D., Cary, A., Deconinck, H., Hartmann, R., Hillewaert, K.,
Huynh, H. T., Kroll, N., May, G., Persson, P.-O., van Leer, B., and Visbal, M., "High-Order CFD Methods: Current Status and Perspective," International Journal for Numerical Methods in Fluids, Vol. 72, No. 8, July 2013, pp. 811-845.

[2] Leicht, T. and Hartmann, R., "Error Estimation and Anisotropic Mesh Refinement for 3D Laminar Aerodynamic Flow Simulations," Journal of Computational Physics, Vol. 229, No. 19, 2010, pp. 7344-7366.

[3] M. A. Park, A. Loseille, J. A. Krakos, T. Michal, "Comparing Anisotropic Output-Based Grid Adaptation Methods by Decomposition," AIAA
Paper 2015–2292, 2015.