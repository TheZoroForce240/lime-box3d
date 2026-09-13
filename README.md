# Lime Box3D

A [Lime](https://github.com/openfl/lime) extension that adds CFFI bindings for [Box3D](https://github.com/erincatto/box3d)

Work in progress, currently does not support 32 bit.

## Installation

Install haxelib:
```haxelib git lime-box3d https://github.com/TheZoroForce240/lime-box3d```

Build NDLL:
```lime rebuild lime-box3d windows/mac/linux```

In Project.xml
```xml
<haxelib name="lime-box3d" unless="32bit" />
```
