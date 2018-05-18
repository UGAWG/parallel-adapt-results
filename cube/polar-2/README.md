
This is a test case for unstructured grid adaptation in a unit cube.

## polar-2

```
   + cos(t) -sin(t)   0    ++ h_r^-2   0      0    ++ cos(t)  sin(t)   0    +
M =| sin(t)  cos(t)   0    ||   0    h_t^-2   0    ||-sin(t)  cos(t)   0    |
   +   0       0      1    ++   0      0    h_z^-2 ++   0       0      1    +

where

r=sqrt(x^2+y^2)
t=atan2(y,x)
h_z = 0.1
d = (0.6 - r) * 10
h_t = (d < 0) ? (0.1) : (d * (1 / 40) + (1 - d) * 0.1)
h_r = h0 + 2*(0.1-h0)*abs(r-0.5)
h0 = 0.001
# t is in the theta direction
# r is radial direction
```

# cube-7600.meshb cube-7600-metric.solb

- Vertices : 17767 item
- Triangles : 6722 item
- Tetrahedra : 91414 item

Metric complexity of 7623

