
import haxe.io.Path;
import sys.io.File;
import sys.FileSystem;

using StringTools;

typedef CFuncDecl = {
    var name:String;
    var retType:String;
    var argTypes:Array<String>;
    var argNames:Array<String>;
};
typedef CStructDecl = {
    var name:String;
    var memberTypes:Array<String>;
    var memberNames:Array<String>;
    var memberArrayCount:Array<Int>;
}

typedef Binding = {
    var cppFunc:String;
    var cppPrime:String;
    var cffiFunc:String;
    var hxDef:String;
    var hxFunc:String;
}
var box3dPath = "../../project/lib/box3d/include/box3d/";
var filesToCheck:Array<String> = ["base.h", "types.h", "id.h", "box3d.h", "collision.h", "math_functions.h"];
//var filesToCheck:Array<String> = ["math_functions.h"];
var box3dFuncIdentifier:String = "\nB3_API";
var box3dInlineFuncIdentifier:String = "\nB3_INLINE";
var box3dStructIdentifier:String = "\ntypedef struct";

var ndllName = "box3d";
var cppFuncPrefix = "box3d";
var mainHxClassName = "Box3D";
var haxedef = "lime_box3d";
var defineMap:Map<String, Int> = [
    "B3_CONTACT_MANIFOLD_COUNT_BUCKETS" => 8,
    "B3_MAX_COMPOUND_MESH_MATERIALS" => 4,
    "B3_MAX_MANIFOLD_POINTS" => 4
];
var ignoredFuncs:Array<String> = [
    "b3SetAllocator",
    "b3SetAssertFcn",
    "b3InternalAssert",
    "b3SetLogFcn",
    "b3GetMillisecondsAndReset",
    "b3Hash",

    "b3GetAxisAngle",

    "b3GetGraphColor",
    "b3DefaultDebugDraw",
    "b3MakeDebugColor",

    "b3World_Draw",

    "b3World_DumpShapeBounds",

    "b3RecPlayer_GetKeyframeBudget",
    "b3RecPlayer_GetKeyframeBytes",
];
var ignoredStructs:Array<String> = [
    "b3DebugDraw", 
    "b3MeshNode",

    "b3Vec3",
    "b3Transform",
    "b3Pos", 
    "b3WorldTransform", 
    "b3Matrix3",
    "b3CastOutput",
    "b3WorldCastOutput", 
];
var ignoredStructMembers:Map<String, Array<String>> = [
    "b3ContactData" => ["manifolds"]
];
var manualFuncs:Array<CFuncDecl> = [

];
var manualStructs:Array<CStructDecl> = [
    {name: "b3Vec3", memberTypes: ["float", "float", "float"], memberNames: ["x", "y", "z"], memberArrayCount: [1,1,1]},
    {name: "b3Transform", memberTypes: ["b3Pos", "b3Quat"], memberNames: ["p", "q"], memberArrayCount: [1,1]},
    {name: "b3Pos", memberTypes: ["float", "float", "float"], memberNames: ["x", "y", "z"], memberArrayCount: [1,1,1]},
    {name: "b3WorldTransform", memberTypes: ["b3Pos", "b3Quat"], memberNames: ["p", "q"], memberArrayCount: [1,1]},
    {name: "b3Matrix3", memberTypes: ["b3Vec3", "b3Vec3", "b3Vec3"], memberNames: ["cx", "cy", "cz"], memberArrayCount: [1,1,1]},
    {name: "b3WorldCastOutput", memberTypes: ["b3Vec3", "b3Vec3", "float", "int", "int", "int", "int", "bool"], memberNames: ["normal", "point", "fraction", "iterations", "triangleIndex", "childIndex", "materialIndex", "hit"], memberArrayCount: [1, 1, 1, 1, 1, 1, 1, 1]},
    {name: "b3CastOutput", memberTypes: ["b3Vec3", "b3Vec3", "float", "int", "int", "int", "int", "bool"], memberNames: ["normal", "point", "fraction", "iterations", "triangleIndex", "childIndex", "materialIndex", "hit"], memberArrayCount: [1, 1, 1, 1, 1, 1, 1, 1]},
];

var enumList:Array<String> = [
    "b3TriangleFeature",
    "b3SeparatingFeature",
    "b3HexColor",
    "b3DebugMaterial",
    "b3BodyType",
    "b3ShapeType",
    "b3JointType",
    "b3TOIState",
    "b3TreeNodeFlags",
    "b3MeshEdgeFlags",
    "b3RecQueryType",
];

var cppHeader:String = "";
var cppFuncOutput:String = "";
var cppStructOutput:String = "";
var haxeHeader:String = "";
var haxeStructOutput:String = "";
var haxeFuncOutput:String = "";

function main() {
    haxeFuncOutput += '\nclass $mainHxClassName\n{';

    for (struct in manualStructs) {
        var binding = generateBindingsForStruct(struct);
        cppStructOutput += "\n" + binding.cppFunc + "\n" + binding.cppPrime;
        haxeStructOutput += "\n" + binding.hxDef;
    }
    if (manualFuncs.length > 0) {
        var binding = generateBindingsForFunctions(manualFuncs);
        cppFuncOutput += "\n" + binding.cppFunc + "\n" + binding.cppPrime;
        haxeFuncOutput += "\n" + binding.hxDef;
    }

    for (name in filesToCheck) {
        var code:String = File.getContent(box3dPath + name);
        var funcs = gatherFunctionsInCode(code, box3dFuncIdentifier);
        funcs = funcs.concat(gatherFunctionsInCode(code, box3dInlineFuncIdentifier));
        var structs = gatherStructsInCode(code);
        for (struct in structs) {
            //trace(struct.name);
            //for (i in 0...struct.memberTypes.length) {
            //    trace("\t" + struct.memberTypes[i] + " " + struct.memberNames[i] + "(" + struct.memberArrayCount[i] + ")");
            //}
            var binding = generateBindingsForStruct(struct);
            cppStructOutput += "\n" + binding.cppFunc + "\n" + binding.cppPrime;
            haxeStructOutput += "\n" + binding.hxDef;
        }
        var binding = generateBindingsForFunctions(funcs);
        cppFuncOutput += "\n" + binding.cppFunc + "\n" + binding.cppPrime;
        haxeFuncOutput += "\n" + binding.hxDef;
    }
    haxeFuncOutput += "\n}";

    File.saveContent("../output.cpp", cppHeader + cppStructOutput + cppFuncOutput);
    File.saveContent("../output.hx", haxeHeader + haxeStructOutput + haxeFuncOutput);
}

function gatherFunctionsInCode(code:String, ident:String):Array<CFuncDecl> {

    var funcs:Array<CFuncDecl> = [];
    
    var nextFuncSearchIndex:Int = 0;
    while(code.indexOf(ident, nextFuncSearchIndex) != -1) {
        var curFuncSearchIndex = code.indexOf(ident, nextFuncSearchIndex);
        
        var retTypeStart:Int = advanceCharIndexUntil(code, curFuncSearchIndex, " ")+1;
        var funcNameStart:Int = advanceCharIndexUntil(code, retTypeStart, " ")+1;
        var argsStart:Int = advanceCharIndexUntil(code, funcNameStart, "(")+1;
        var argsEnd:Int = advanceCharIndexUntil(code, argsStart, ")")+1;
        
        var retType:String = code.substring(retTypeStart, funcNameStart-1);
        var funcName:String = code.substring(funcNameStart, argsStart-1);
        var argsRaw:String = code.substring(argsStart, argsEnd-1);

        if (ignoredFuncs.contains(funcName) || (retType != "const char*" && retType.endsWith("*")) || retType == "const") {
            haxeHeader += "\n// Skipped Function: " + funcName;
            nextFuncSearchIndex = curFuncSearchIndex+1;
            continue;
        }

        var decl:CFuncDecl = {
            name: funcName,
            retType: retType,
            argNames: [],
            argTypes: []
        };

        

        var argsSplit = argsRaw.split(",");
        for (arg in argsSplit) {
            var formatted = arg.trim();
            if (formatted == "void" || formatted == "") continue;
            
            var lastSpace:Int = formatted.lastIndexOf(" ");
            var type:String = formatted.substring(0, lastSpace);
            var name:String = formatted.substring(lastSpace+1);
            decl.argTypes.push(type);
            decl.argNames.push(name);
        }
        funcs.push(decl);
        nextFuncSearchIndex = curFuncSearchIndex+1;
    }

    return funcs;
}

inline function advanceCharIndexUntil(code:String, index:Int, val:String) {
    var ret:Int = code.length;
    while(true) {
        if (index > code.length-1) break;
        var char = code.charAt(index);
        if (char == val) {
            ret = index;
            break;
        }
        index++;
    }
    return ret;
}

function gatherStructsInCode(code:String):Array<CStructDecl> {

    var structs:Array<CStructDecl> = [];
    
    var nextSearchIndex:Int = 0;
    while(code.indexOf(box3dStructIdentifier, nextSearchIndex) != -1) {
        var curSearchIndex:Int = code.indexOf(box3dStructIdentifier, nextSearchIndex);

        var defEnd:Int = advanceCharIndexUntil(code, curSearchIndex+1, "\n")+1;
        var def:String = code.substring(curSearchIndex+1, defEnd-1);
        var defSplit = def.split(" ");

        if (defSplit.length == 3) {

        } else if (defSplit.length == 2) {

        } else {
            nextSearchIndex = curSearchIndex+1;
            continue;
        }
        var membersEnd = code.indexOf("\n}", defEnd+1);
        var membersRaw:String = code.substring(defEnd, membersEnd-2).trim();
        var membersSplit = membersRaw.split(";");
        var structName:String = "";
        if (defSplit.length == 2) {
            structName = code.substring(membersEnd+2, code.indexOf(";", membersEnd)).trim();
        } else {
            structName = defSplit[2].trim();
        }
        if (ignoredStructs.contains(structName)) {
            var logSkip = true;
            for (m in manualStructs) if (m.name == structName) logSkip = false;
            if (logSkip) haxeHeader += "\n// Skipped Struct: " + structName;
            nextSearchIndex = curSearchIndex+1;
            continue;
        }
        
        var decl:CStructDecl = {
            name: structName,
            memberTypes: [],
            memberNames: [],
            memberArrayCount: []
        };
        
        for (m in membersSplit) {
            if (!m.contains("\n")) continue;
            var splitNewLine = m.split("\n");
            var formatted = splitNewLine[splitNewLine.length-1].trim();
            if (formatted.startsWith("}") || formatted.startsWith("/")) continue;
            var lastSpace:Int = formatted.lastIndexOf(" ");
            var type:String = formatted.substring(0, lastSpace);
            var name:String = formatted.substring(lastSpace+1);
            var count:Int = 1;
            if (name.indexOf("[") != -1) { //arrays
                var countStr = name.substring(name.indexOf("[")+1, name.indexOf("]"));
                count = defineMap.exists(countStr) ? defineMap.get(countStr) : Std.parseInt(countStr);
                name = name.substring(0, name.indexOf("["));

                haxeHeader += "\n// Skipped Struct member: " + structName + "." + name;
                continue;
            }
            if (type != "const char*" && type.endsWith("*")) {
                haxeHeader += "\n// Skipped Struct member: " + structName + "." + name;
                continue;
            }

            decl.memberTypes.push(type);
            decl.memberNames.push(name);
            decl.memberArrayCount.push(count);
        }
        structs.push(decl);
        nextSearchIndex = curSearchIndex+1;
    }

    return structs;
}

function generateBindingsForStruct(struct:CStructDecl) {
    var binding:Binding = {
        cppFunc: "",
        cppPrime: "",
        cffiFunc: "",
        hxDef: "",
        hxFunc: ""
    };

    var gcFuncName = '${cppFuncPrefix}_${struct.name}_gc';
    var cppGc = 'static void $gcFuncName (value handle) {';
    cppGc += '\n\t${struct.name}* ptr = (${struct.name}*)val_data(handle);';
    cppGc += "\n\tdelete ptr;";
    cppGc += '\n}';

    var newFuncName = '${cppFuncPrefix}_${struct.name}_new';
    var cppNew = 'static value $newFuncName () {';
    cppNew += '\n\t${struct.name}* ptr = new ${struct.name}();';
    cppNew += '\n\tvalue retVal = cffi::alloc_pointer(ptr);';
    cppNew += '\n\tval_gc(retVal, $gcFuncName);';
    cppNew += '\n\treturn retVal;';
    cppNew += '\n}';

    binding.cppFunc += "\n" + cppGc + "\n" + cppNew;
    binding.cppPrime += '\nDEFINE_PRIME0 ($newFuncName);';
    binding.cffiFunc += '\n\tprivate static var $newFuncName = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("$ndllName", "$newFuncName", "o", false));';

    var hxClassName = getHxName(struct.name);
    binding.hxDef += '\nabstract $hxClassName(CFFIPointer) from CFFIPointer to CFFIPointer';
    binding.hxDef += "\n{";

    for (i in 0...struct.memberTypes.length) {
        var type = struct.memberTypes[i];
        var name = struct.memberNames[i];

        var getFuncName = '${cppFuncPrefix}_${struct.name}_${name}_get';
        var setFuncName = '${cppFuncPrefix}_${struct.name}_${name}_set';
        var retType:String = getCppArgType(type);

        var cppGet = 'static $retType $getFuncName ( value handle ) {';
        var cppSet = 'static $retType $setFuncName ( value handle, $retType v ) {';
        
        switch(retType) {
            case "value":
                cppGet += '\n\t${struct.name}* ptr = (${struct.name}*)val_data(handle);';
                cppGet += '\n\treturn cffi::alloc_pointer(&ptr->$name);';
                cppGet += '\n}';

                cppSet += '\n\t${struct.name}* ptr = (${struct.name}*)val_data(handle);';
                cppSet += '\n\tmemcpy(&ptr->$name, (void*)val_data(v), sizeof($type));';
                cppSet += '\n\treturn cffi::alloc_pointer(&ptr->$name);';
                cppSet += '\n}';
            case "HxString":
                cppGet += '\n\t${struct.name}* ptr = (${struct.name}*)val_data(handle);';
                cppGet += '\n\treturn HxString(ptr->$name);';
                cppGet += '\n}';

                cppSet += '\n\t${struct.name}* ptr = (${struct.name}*)val_data(handle);';
                cppSet += '\n\treturn HxString(ptr->$name = v.__s);';
                cppSet += '\n}';
            default:

                var castPrefix:String = "";
                if (enumList.contains(type)) castPrefix = '($type)';

                cppGet += '\n\t${struct.name}* ptr = (${struct.name}*)val_data(handle);';
                cppGet += '\n\treturn ptr->$name;';
                cppGet += '\n}';

                cppSet += '\n\t${struct.name}* ptr = (${struct.name}*)val_data(handle);';
                cppSet += '\n\treturn ptr->$name = ${castPrefix}v;';
                cppSet += '\n}';
        }

        binding.cppFunc += "\n" + cppGet + "\n" + cppSet;

        binding.cppPrime += '\nDEFINE_PRIME1 ($getFuncName);';
        binding.cppPrime += '\nDEFINE_PRIME2 ($setFuncName);';

        var cffiType = getCfiiArgType(type, true);
        var cffiSig = getCfiiSignatureType(type, true);

        binding.cffiFunc += '\n\tprivate static var $getFuncName = new cpp.Callable<cpp.Object->$cffiType>(cpp.Prime._loadPrime("$ndllName", "$getFuncName", "o$cffiSig", false));';
        binding.cffiFunc += '\n\tprivate static var $setFuncName = new cpp.Callable<cpp.Object->$cffiType->$cffiType>(cpp.Prime._loadPrime("$ndllName", "$setFuncName", "o$cffiSig$cffiSig", false));';

        var hxType:String = getHxArgType(type);
        binding.hxDef += '\n\tpublic var $name(get, set):$hxType;';

        binding.hxFunc += '\n\tprivate inline function get_$name():$hxType {';
        binding.hxFunc += '\n\t\t#if $haxedef';
        binding.hxFunc += '\n\t\treturn $getFuncName(this);';
        binding.hxFunc += "\n\t\t#else";
        binding.hxFunc += '\n\t\treturn ${getDefaultForType(type)};';
        binding.hxFunc += "\n\t\t#end";
        binding.hxFunc += "\n\t}";

        binding.hxFunc += '\n\tprivate inline function set_$name(v:$hxType):$hxType {';
        binding.hxFunc += '\n\t\t#if $haxedef';
        binding.hxFunc += '\n\t\treturn $setFuncName(this, v);';
        binding.hxFunc += "\n\t\t#else";
        binding.hxFunc += '\n\t\treturn ${getDefaultForType(type)};';
        binding.hxFunc += "\n\t\t#end";
        binding.hxFunc += "\n\t}";
    }
    binding.hxDef += "\n\tpublic function new() {";
    binding.hxDef += '\n\t\t#if $haxedef';
    binding.hxDef += '\n\t\tthis = $newFuncName();';
    binding.hxDef += "\n\t\t#else";
    binding.hxDef += "\n\t\tthis = null;";
    binding.hxDef += "\n\t\t#end";
    binding.hxDef += "\n\t}";

    binding.hxDef += binding.hxFunc;

    binding.hxDef += '\n\t#if $haxedef';
    binding.hxDef += binding.cffiFunc;
    binding.hxDef += "\n\t#end";

    binding.hxDef += "\n}";
    return binding;
}

function generateBindingsForFunctions(funcs:Array<CFuncDecl>) {
    var binding:Binding = {
        cppFunc: "",
        cppPrime: "",
        cffiFunc: "",
        hxDef: "",
        hxFunc: ""
    };

    //binding.hxDef += '\nclass $mainHxClassName';
    //binding.hxDef += "\n{";

    for (func in funcs) {
        
        var cppFuncName = '${cppFuncPrefix}_${func.name}';
        var cppRetType:String = getCppArgType(func.retType);

        var cppArgs:String = "";
        var cppArgsInner:String = "";
        var cffiArgs = "";
        var cffiSignature = "";
        if (func.argTypes.length == 0) {
            cffiArgs += "Void->";
        }
        var hxArgs:String = "";
        var hxArgsInner:String = "";
        for (i in 0...func.argTypes.length) {
            var argType = func.argTypes[i];
            var argName = func.argNames[i];

            var suffix:String = i < func.argTypes.length-1 ? ", " : "";

            cppArgs += '${getCppArgType(argType)} $argName$suffix';
            cppArgsInner += getCppArgInner(getCppArgType(argType), argName, argType) + suffix;
            cffiArgs += getCfiiArgType(argType, false) + "->";
            cffiSignature += getCfiiSignatureType(argType, false);

            hxArgs += '$argName:${getHxArgType(argType)}$suffix';
            hxArgsInner += '$argName$suffix';
        }
        cffiArgs += getCfiiArgType(cppRetType, true);
        cffiSignature += getCfiiSignatureType(cppRetType, true);

        binding.cppFunc += '\nstatic $cppRetType $cppFuncName ($cppArgs) {';
        if (cppRetType == "value") {

            switch(func.retType) {
                case "uint64_t":
                    binding.cppFunc += '\n\treturn nullptr;';
                default:
                    var newFuncName = '${cppFuncPrefix}_${func.retType}_new';
                    binding.cppFunc += '\n\t${func.retType} ret = ${func.name}($cppArgsInner);';
                    binding.cppFunc += '\n\tvalue retVal = $newFuncName();';
                    binding.cppFunc += '\n\tmemcpy((void*)val_data(retVal), &ret, sizeof(${func.retType}));';
                    binding.cppFunc += '\n\treturn retVal;';
            }

        } else {
            binding.cppFunc += cppRetType == "void" ? "\n\t" : "\n\treturn ";
            binding.cppFunc += '${func.name}($cppArgsInner);';
        }
        binding.cppFunc += "\n}";
        
        var primeSuffix = cppRetType == "void" ? "v" : "";
        binding.cppPrime += '\nDEFINE_PRIME${func.argTypes.length}$primeSuffix ($cppFuncName);';

        var hxFuncName = getHxFuncName(func.name);
        var hxType:String = getHxArgType(func.retType);

        var hxRet = cppRetType == "void" ? "" : "return ";
        binding.cffiFunc += '\n\tprivate static var $cppFuncName = new cpp.Callable<$cffiArgs>(cpp.Prime._loadPrime("$ndllName", "$cppFuncName", "$cffiSignature", false));';
        binding.hxFunc += '\n\tpublic static function $hxFuncName($hxArgs):$hxType {';
        binding.hxFunc += '\n\t\t#if $haxedef';
        binding.hxFunc += '\n\t\t$hxRet$cppFuncName($hxArgsInner);';
        if (cppRetType != "void") {
            binding.hxFunc += "\n\t\t#else";
            binding.hxFunc += '\n\t\t$hxRet${getDefaultForType(func.retType)};';
        }
        binding.hxFunc += "\n\t\t#end";
        binding.hxFunc += "\n\t}";
    }

    binding.hxDef += binding.hxFunc;
    binding.hxDef += '\n\t#if $haxedef';
    binding.hxDef += binding.cffiFunc;
    binding.hxDef += "\n\t#end";
    //binding.hxDef += "\n}";
    return binding;
}

function getCppArgType(t:String) {
    switch(t) {
        case "void": return "void";
        case "bool": return "bool";
        case "int" | "uint8_t" | "int16_t" | "int32_t" | "uint16_t" | "uint32_t": return "int";
        case "float": return "float";
        case "double": return "double";
        case "const char*": return "HxString";
    }
    if (enumList.contains(t)) return "int";
    return "value";
}
function getCfiiArgType(t:String, isReturn:Bool) {
    switch(t) {
        case "void": return isReturn ? "cpp.Void" : "Void";
        case "bool": return "Bool";
        case "int" | "uint8_t" | "int16_t" | "int32_t" | "uint16_t" | "uint32_t": return "Int";
        case "float": return "Float32";
        case "double": return "Float";
        case "const char*": return "String";
    }
    if (enumList.contains(t)) return "Int";
    return "cpp.Object";
}
function getCfiiSignatureType(t:String, isReturn:Bool) {
    switch(t) {
        case "void": return isReturn ? "v" : "";
        case "bool": return "b";
        case "int" | "uint8_t" | "int16_t" | "int32_t" | "uint16_t" | "uint32_t": return "i";
        case "float": return "f";
        case "double": return "d";
        case "const char*": return "s";
    }
    if (enumList.contains(t)) return "i";
    return "o";
}
function getHxArgType(t:String) {
    switch(t) {
        case "void": return "Void";
        case "bool": return "Bool";
        case "int" | "int32_t" | "int16_t": return "Int";
        case "float": return "Float";
        case "double": return "Float";
        case "const char*": return "String";
        case "uint8_t" | "uint16_t" | "uint32_t": return "UInt";
        case "uint64_t": return "UInt64";
        case "size_t": return "Int64";
        case "void*": return "CFFIPointer";
    }
    //if (enumList.contains(t)) return "Int";
    if (t.startsWith("const ") && t.endsWith("*")) {
        return getHxName(t.substring(6, t.length-1));
    } else if (t.startsWith("const ")) {
        return getHxName(t.substring(6, t.length));
    } else if (t.endsWith("*")) {
        return getHxName(t.substring(0, t.length-1));
    }
    return getHxName(t);
}
function getDefaultForType(t:String) {
    switch(t) {
        case "bool": return "false";
        case "int" | "uint8_t" | "int16_t" | "int32_t" | "uint16_t" | "uint32_t": return "0";
        case "float": return "0.0";
        case "double": return "0.0";
    }
    if (enumList.contains(t)) return "0";
    return "null";
}
function getCppArgInner(t:String, n:String, originalType:String) {
    if (enumList.contains(originalType)) return '($originalType)$n';
    switch(t) {
        case "value":
            var prefix:String = originalType.endsWith("*") ? "" : "*";
            if (originalType.startsWith("const ") && originalType.endsWith("*")) originalType = originalType.substring(6, originalType.length-1);
            if (originalType.endsWith("*")) originalType = originalType.substring(0, originalType.length-1);
            return '$prefix($originalType*)val_data($n)';
        case "HxString":
            return '$n.__s';
    }
    return n;
}

function getHxName(cppName:String) {
    var str:String = "";
    for (i in 0...cppName.length) {
        var char:String = cppName.charAt(i);
        if (i == 0) {
            str += char.toUpperCase();
        } else {
            str += char;
        }
    }
    return str;
}

function getHxFuncName(cppName:String) {
    var str:String = "";
    for (i in 0...cppName.length) {
        var char:String = cppName.charAt(i);
        if (i < 2) {
            //str += char.toUpperCase();
        } else if (i == 2) {
            str += char.toLowerCase();
        } else {
            str += char;
        }
    }
    return str;
}