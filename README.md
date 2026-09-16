# Lime Box3D

A [Lime](https://github.com/openfl/lime) extension that adds CFFI bindings for [Box3D](https://github.com/erincatto/box3d)

Work in progress, currently only works on cpp.

## Installation

Install haxelib:
```haxelib git lime-box3d https://github.com/TheZoroForce240/lime-box3d```

Build NDLL:
```lime rebuild lime-box3d windows/mac/linux```

In Project.xml
```xml
<haxelib name="lime-box3d" />
```

## Example Usage

```haxe
import box3d.Box3D;
import box3d.Box3DTypes;

class Test {
    static function main() {
        var version = Box3D.getVersion();
        trace("Box3D");
        trace(version.major, version.minor, version.revision);
  
        var worldDef:B3WorldDef = Box3D.defaultWorldDef();
        worldDef.gravity.y = -10;
        var worldId = Box3D.createWorld(worldDef);

        Box3D.destroyWorld(worldId);
    }
}
```
