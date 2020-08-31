# Description
This is a test for unstructured grid adaptation focusing mainly on coarsening operations.

It corresponds to the numerical solution (at one time step) of a spherical blast problem [1].

# adap.met.7.meshb adap.met.7.solb
* Vertices: 821373 item
* Triangles: 122880 item
* Tetrahedra: 4767431 item

Metric complexity of 49013

# ./scaled/tetgrid_1.9M.meshb ./scaled/tetgrid_1.9M.meshb
* Vertices: 1944000 item
* Triangles: 212652 item
* Tetrahedra: 11342514 item

Metric complexity of 49013


# References
[1] [A. Loseille, F. Alauzet, and V. Menier, "Unique cavity-based operator and hierarchical domain partitioning for fast parallel generation of anisotropic meshes", Computer-Aided Design, vol. 85, pp. 53–67, Apr. 2017.](http://www.sciencedirect.com/science/article/pii/S0010448516301142)

