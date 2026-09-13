package box3d;

enum abstract B3BodyType(Int) from Int to Int
{
	var staticBody = 0;
	var kinematicBody;
	var dynamicBody;
	var bodyTypeCount;
}

enum abstract B3ShapeType(Int) from Int to Int
{
	var capsuleShape = 0;
	var compoundShape;
	var heightShape;
	var hullShape;
	var meshShape;
	var sphereShape;
	var shapeTypeCount;
}

enum abstract B3JointType(Int) from Int to Int
{
	var parallelJoint = 0;
	var distanceJoint;
	var filterJoint;
	var motorJoint;
	var prismaticJoint;
	var revoluteJoint;
	var sphericalJoint;
	var weldJoint;
	var wheelJoint;
}

enum abstract B3TOIState(Int) from Int to Int
{
	var toiStateUnknown = 0;
	var toiStateFailed;
	var toiStateOverlapped;
	var toiStateHit;
	var toiStateSeparated;
}

enum abstract B3TreeNodeFlags(Int) from Int to Int
{
	var allocatedNode = 0x0001;
	var enlargedNode = 0x0002;
	var leafNode = 0x0004;
}

enum abstract B3MeshEdgeFlags(Int) from Int to Int
{
	var concaveEdge1 = 0x01;
	var concaveEdge2 = 0x02;
	var concaveEdge3 = 0x04;

	var inverseConcaveEdge1 = 0x10;
	var inverseConcaveEdge2 = 0x20;
	var inverseConcaveEdge3 = 0x40;

	var allConcaveEdges = concaveEdge1 | concaveEdge2 | concaveEdge3;

	var flatEdge1 = concaveEdge1 | inverseConcaveEdge1;
	var flatEdge2 = concaveEdge2 | inverseConcaveEdge2;
	var flatEdge3 = concaveEdge3 | inverseConcaveEdge3;

	var allFlatEdges = flatEdge1 | flatEdge2 | flatEdge3;
}

enum abstract B3SeparatingFeature(Int) from Int to Int
{
	var invalidAxis = 0;
	var backsideAxis;
	var faceAxisA;
	var faceAxisB;
	var edgePairAxis;
	var closestPointsAxis;
	var manualFaceAxisA;
	var manualFaceAxisB;
	var manualEdgePairAxis;
}

enum abstract B3TriangleFeature(Int) from Int to Int
{
	var featureNone = 0;
	var featureTriangleFace;
	var featureHullFace;
	var featureEdge1;
	var featureEdge2;
	var featureEdge3;
	var featureVertex1;
	var featureVertex2;
	var featureVertex3;
}


enum abstract B3HexColor(Int) from Int to Int
{
	var colorAliceBlue = 0xF0F8FF;
	var colorAntiqueWhite = 0xFAEBD7;
	var colorAqua = 0x00FFFF;
	var colorAquamarine = 0x7FFFD4;
	var colorAzure = 0xF0FFFF;
	var colorBeige = 0xF5F5DC;
	var colorBisque = 0xFFE4C4;
	var colorBlack = 0x000000;
	var colorBlanchedAlmond = 0xFFEBCD;
	var colorBlue = 0x0000FF;
	var colorBlueViolet = 0x8A2BE2;
	var colorBrown = 0xA52A2A;
	var colorBurlywood = 0xDEB887;
	var colorCadetBlue = 0x5F9EA0;
	var colorChartreuse = 0x7FFF00;
	var colorChocolate = 0xD2691E;
	var colorCoral = 0xFF7F50;
	var colorCornflowerBlue = 0x6495ED;
	var colorCornsilk = 0xFFF8DC;
	var colorCrimson = 0xDC143C;
	var colorCyan = 0x00FFFF;
	var colorDarkBlue = 0x00008B;
	var colorDarkCyan = 0x008B8B;
	var colorDarkGoldenRod = 0xB8860B;
	var colorDarkGray = 0xA9A9A9;
	var colorDarkGreen = 0x006400;
	var colorDarkKhaki = 0xBDB76B;
	var colorDarkMagenta = 0x8B008B;
	var colorDarkOliveGreen = 0x556B2F;
	var colorDarkOrange = 0xFF8C00;
	var colorDarkOrchid = 0x9932CC;
	var colorDarkRed = 0x8B0000;
	var colorDarkSalmon = 0xE9967A;
	var colorDarkSeaGreen = 0x8FBC8F;
	var colorDarkSlateBlue = 0x483D8B;
	var colorDarkSlateGray = 0x2F4F4F;
	var colorDarkTurquoise = 0x00CED1;
	var colorDarkViolet = 0x9400D3;
	var colorDeepPink = 0xFF1493;
	var colorDeepSkyBlue = 0x00BFFF;
	var colorDimGray = 0x696969;
	var colorDodgerBlue = 0x1E90FF;
	var colorFireBrick = 0xB22222;
	var colorFloralWhite = 0xFFFAF0;
	var colorForestGreen = 0x228B22;
	var colorFuchsia = 0xFF00FF;
	var colorGainsboro = 0xDCDCDC;
	var colorGhostWhite = 0xF8F8FF;
	var colorGold = 0xFFD700;
	var colorGoldenRod = 0xDAA520;
	var colorGray = 0x808080;
	var colorGreen = 0x008000;
	var colorGreenYellow = 0xADFF2F;
	var colorHoneyDew = 0xF0FFF0;
	var colorHotPink = 0xFF69B4;
	var colorIndianRed = 0xCD5C5C;
	var colorIndigo = 0x4B0082;
	var colorIvory = 0xFFFFF0;
	var colorKhaki = 0xF0E68C;
	var colorLavender = 0xE6E6FA;
	var colorLavenderBlush = 0xFFF0F5;
	var colorLawnGreen = 0x7CFC00;
	var colorLemonChiffon = 0xFFFACD;
	var colorLightBlue = 0xADD8E6;
	var colorLightCoral = 0xF08080;
	var colorLightCyan = 0xE0FFFF;
	var colorLightGoldenRodYellow = 0xFAFAD2;
	var colorLightGray = 0xD3D3D3;
	var colorLightGreen = 0x90EE90;
	var colorLightPink = 0xFFB6C1;
	var colorLightSalmon = 0xFFA07A;
	var colorLightSeaGreen = 0x20B2AA;
	var colorLightSkyBlue = 0x87CEFA;
	var colorLightSlateGray = 0x778899;
	var colorLightSteelBlue = 0xB0C4DE;
	var colorLightYellow = 0xFFFFE0;
	var colorLime = 0x00FF00;
	var colorLimeGreen = 0x32CD32;
	var colorLinen = 0xFAF0E6;
	var colorMagenta = 0xFF00FF;
	var colorMaroon = 0x800000;
	var colorMediumAquaMarine = 0x66CDAA;
	var colorMediumBlue = 0x0000CD;
	var colorMediumOrchid = 0xBA55D3;
	var colorMediumPurple = 0x9370DB;
	var colorMediumSeaGreen = 0x3CB371;
	var colorMediumSlateBlue = 0x7B68EE;
	var colorMediumSpringGreen = 0x00FA9A;
	var colorMediumTurquoise = 0x48D1CC;
	var colorMediumVioletRed = 0xC71585;
	var colorMidnightBlue = 0x191970;
	var colorMintCream = 0xF5FFFA;
	var colorMistyRose = 0xFFE4E1;
	var colorMoccasin = 0xFFE4B5;
	var colorNavajoWhite = 0xFFDEAD;
	var colorNavy = 0x000080;
	var colorOldLace = 0xFDF5E6;
	var colorOlive = 0x808000;
	var colorOliveDrab = 0x6B8E23;
	var colorOrange = 0xFFA500;
	var colorOrangeRed = 0xFF4500;
	var colorOrchid = 0xDA70D6;
	var colorPaleGoldenRod = 0xEEE8AA;
	var colorPaleGreen = 0x98FB98;
	var colorPaleTurquoise = 0xAFEEEE;
	var colorPaleVioletRed = 0xDB7093;
	var colorPapayaWhip = 0xFFEFD5;
	var colorPeachPuff = 0xFFDAB9;
	var colorPeru = 0xCD853F;
	var colorPink = 0xFFC0CB;
	var colorPlum = 0xDDA0DD;
	var colorPowderBlue = 0xB0E0E6;
	var colorPurple = 0x800080;
	var colorRebeccaPurple = 0x663399;
	var colorRed = 0xFF0000;
	var colorRosyBrown = 0xBC8F8F;
	var colorRoyalBlue = 0x4169E1;
	var colorSaddleBrown = 0x8B4513;
	var colorSalmon = 0xFA8072;
	var colorSandyBrown = 0xF4A460;
	var colorSeaGreen = 0x2E8B57;
	var colorSeaShell = 0xFFF5EE;
	var colorSienna = 0xA0522D;
	var colorSilver = 0xC0C0C0;
	var colorSkyBlue = 0x87CEEB;
	var colorSlateBlue = 0x6A5ACD;
	var colorSlateGray = 0x708090;
	var colorSnow = 0xFFFAFA;
	var colorSpringGreen = 0x00FF7F;
	var colorSteelBlue = 0x4682B4;
	var colorTan = 0xD2B48C;
	var colorTeal = 0x008080;
	var colorThistle = 0xD8BFD8;
	var colorTomato = 0xFF6347;
	var colorTurquoise = 0x40E0D0;
	var colorViolet = 0xEE82EE;
	var colorWheat = 0xF5DEB3;
	var colorWhite = 0xFFFFFF;
	var colorWhiteSmoke = 0xF5F5F5;
	var colorYellow = 0xFFFF00;
	var colorYellowGreen = 0x9ACD32;
	var colorBox2DRed = 0xDC3132;
	var colorBox2DBlue = 0x30AEBF;
	var colorBox2DGreen = 0x8CC924;
	var colorBox2DYellow = 0xFFEE8C;
}

enum abstract B3DebugMaterial(Int) from Int to Int
{
	var debugMaterialDefault = 0;
	var debugMaterialMatte;
	var debugMaterialSoft;
	var debugMaterialDead;
	var debugMaterialGlossy;
	var debugMaterialMetallic;
}

enum abstract B3RecQueryType(Int) from Int to Int
{
	var recQueryOverlapAABB = 0;
	var recQueryOverlapShape;
	var recQueryCastRay;
	var recQueryCastShape;
	var recQueryCastRayClosest;
	var recQueryCastMover;
	var recQueryCollideMover;
}