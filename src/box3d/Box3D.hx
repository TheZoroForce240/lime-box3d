package box3d;

import box3d.Box3DTypes;
import haxe.Int64;
import lime.system.CFFI;
import lime.system.CFFIPointer;
#if (cpp && !cppia)
import cpp.Float32;
import cpp.UInt64;
#else
typedef Float32 = Float;
#end

// Skipped Function: b3SetAllocator
// Skipped Function: b3SetAssertFcn
// Skipped Function: b3InternalAssert
// Skipped Function: b3SetLogFcn
// Skipped Function: b3GetMillisecondsAndReset
// Skipped Function: b3Hash
// Skipped Function: b3GetGraphColor
// Skipped Function: b3DefaultDebugDraw
// Skipped Function: b3MakeDebugColor
// Skipped Struct member: b3WorldDef.frictionCallback
// Skipped Struct member: b3WorldDef.restitutionCallback
// Skipped Struct member: b3WorldDef.enqueueTask
// Skipped Struct member: b3WorldDef.finishTask
// Skipped Struct member: b3WorldDef.userTaskContext
// Skipped Struct member: b3WorldDef.userData
// Skipped Struct member: b3WorldDef.createDebugShape
// Skipped Struct member: b3WorldDef.destroyDebugShape
// Skipped Struct member: b3WorldDef.userDebugShapeContext
// Skipped Struct member: b3BodyDef.userData
// Skipped Struct member: b3ShapeDef.userData
// Skipped Struct member: b3ShapeDef.materials
// Skipped Struct member: b3Counters.colorCounts
// Skipped Struct member: b3Counters.manifoldCounts
// Skipped Struct member: b3JointDef.userData
// Skipped Struct member: b3SensorEvents.beginEvents
// Skipped Struct member: b3SensorEvents.endEvents
// Skipped Struct member: b3ContactEvents.beginEvents
// Skipped Struct member: b3ContactEvents.endEvents
// Skipped Struct member: b3ContactEvents.hitEvents
// Skipped Struct member: b3BodyMoveEvent.userData
// Skipped Struct member: b3BodyEvents.moveEvents
// Skipped Struct member: b3JointEvent.userData
// Skipped Struct member: b3JointEvents.jointEvents
// Skipped Struct member: b3ContactData.manifolds
// Skipped Struct member: b3ShapeProxy.points
// Skipped Struct member: b3SimplexCache.indexA
// Skipped Struct member: b3SimplexCache.indexB
// Skipped Struct member: b3Simplex.vertices
// Skipped Struct member: b3DynamicTree.nodes
// Skipped Struct member: b3DynamicTree.leafIndices
// Skipped Struct member: b3DynamicTree.leafBoxes
// Skipped Struct member: b3DynamicTree.leafCenters
// Skipped Struct member: b3DynamicTree.binIndices
// Skipped Struct member: b3BoxHull.boxVertices
// Skipped Struct member: b3BoxHull.boxPoints
// Skipped Struct member: b3BoxHull.boxEdges
// Skipped Struct member: b3BoxHull.boxPlanes
// Skipped Struct member: b3BoxHull.boxFaces
// Skipped Struct member: b3BoxHull.padding
// Skipped Struct member: b3BoxHull.vx
// Skipped Struct member: b3BoxHull.vy
// Skipped Struct member: b3BoxHull.vz
// Skipped Struct member: b3BoxHull.nx
// Skipped Struct member: b3BoxHull.ny
// Skipped Struct member: b3BoxHull.nz
// Skipped Struct member: b3MeshDef.vertices
// Skipped Struct member: b3MeshDef.indices
// Skipped Struct member: b3MeshDef.materialIndices
// Skipped Struct: b3MeshNode
// Skipped Struct member: b3Mesh.data
// Skipped Struct member: b3HeightFieldDef.heights
// Skipped Struct member: b3HeightFieldDef.materialIndices
// Skipped Struct member: b3HeightFieldData.padding
// Skipped Struct member: b3CompoundHullDef.hull
// Skipped Struct member: b3CompoundMeshDef.meshData
// Skipped Struct member: b3CompoundMeshDef.materials
// Skipped Struct member: b3CompoundDef.capsules
// Skipped Struct member: b3CompoundDef.hulls
// Skipped Struct member: b3CompoundDef.meshes
// Skipped Struct member: b3CompoundDef.spheres
// Skipped Struct member: b3CompoundHull.hull
// Skipped Struct member: b3CompoundMesh.meshData
// Skipped Struct member: b3CompoundMesh.materialIndices
// Skipped Struct member: b3ChildShape.hull
// Skipped Struct member: b3ChildShape.materialIndices
// Skipped Struct member: b3Manifold.points
// Skipped Struct member: b3LocalManifold.points
// Skipped Struct member: b3DebugShape.capsule
// Skipped Struct member: b3DebugShape.compound
// Skipped Struct member: b3DebugShape.heightField
// Skipped Struct member: b3DebugShape.hull
// Skipped Struct member: b3DebugShape.mesh
// Skipped Struct member: b3DebugShape.sphere
// Skipped Struct: b3DebugDraw
// Skipped Function: b3World_Draw
// Skipped Function: b3World_GetUserData
// Skipped Function: b3World_DumpShapeBounds
// Skipped Function: b3CreateRecording
// Skipped Function: uint8_t* b3Recording_GetData
// Skipped Function: b3LoadRecordingFromFile
// Skipped Function: b3CreatePlayer
// Skipped Function: b3RecPlayer_GetKeyframeBudget
// Skipped Function: b3RecPlayer_GetKeyframeBytes
// Skipped Function: char* b3Body_GetName
// Skipped Function: b3Body_GetUserData
// Skipped Function: char* b3Shape_GetName
// Skipped Function: b3Shape_GetUserData
// Skipped Function: b3HullData* b3Shape_GetHull
// Skipped Function: b3HeightFieldData* b3Shape_GetHeightField
// Skipped Function: b3Joint_GetUserData
// Skipped Function: b3CreateCylinder
// Skipped Function: b3CreateCone
// Skipped Function: b3CreateRock
// Skipped Function: b3CreateHull
// Skipped Function: b3CloneHull
// Skipped Function: b3CloneAndTransformHull
// Skipped Function: b3CreateGridMesh
// Skipped Function: b3CreateWaveMesh
// Skipped Function: b3CreateTorusMesh
// Skipped Function: b3CreateBoxMesh
// Skipped Function: b3CreateHollowBoxMesh
// Skipped Function: b3CreatePlatformMesh
// Skipped Function: b3CreateMesh
// Skipped Function: b3CreateHeightField
// Skipped Function: b3CreateGrid
// Skipped Function: b3CreateWave
// Skipped Function: b3LoadHeightField
// Skipped Function: b3SurfaceMaterial* b3GetCompoundMaterials
// Skipped Function: b3CreateCompound
// Skipped Function: b3ConvertCompoundToBytes
// Skipped Function: b3ConvertBytesToCompound
// Skipped Function: b3HullVertex* b3GetHullVertices
// Skipped Function: b3Vec3* b3GetHullPoints
// Skipped Function: b3HullHalfEdge* b3GetHullEdges
// Skipped Function: b3Plane* b3GetHullPlanes
// Skipped Function: b3HullFace* b3GetHullFaces
// Skipped Function: float* b3GetHullSoaVertices
// Skipped Function: float* b3GetHullSoaNormals
// Skipped Function: b3MeshNode* b3GetMeshNodes
// Skipped Function: b3Vec3* b3GetMeshVertices
// Skipped Function: b3MeshTriangle* b3GetMeshTriangles
// Skipped Function: uint8_t* b3GetMeshMaterialIndices
// Skipped Function: uint8_t* b3GetMeshFlags
// Skipped Function: uint16_t* b3GetHeightFieldCompressedHeights
// Skipped Function: uint8_t* b3GetHeightFieldMaterialIndices
// Skipped Function: uint8_t* b3GetHeightFieldFlags
// Skipped Function: b3GetAxisAngle

typedef B3TaskCallback = CFFIPointer;
typedef B3EnqueueTaskCallback = CFFIPointer;
typedef B3FinishTaskCallback = CFFIPointer;
typedef B3CreateDebugShapeCallback = CFFIPointer;
typedef B3DestroyDebugShapeCallback = CFFIPointer;
typedef B3FrictionCallback = CFFIPointer;
typedef B3RestitutionCallback = CFFIPointer;
typedef B3CustomFilterFcn = CFFIPointer;
typedef B3PreSolveFcn = CFFIPointer;
typedef B3OverlapResultFcn = CFFIPointer;
typedef B3CastResultFcn = CFFIPointer;
typedef B3TreeQueryCallbackFcn = CFFIPointer;
typedef B3TreeQueryClosestCallbackFcn = CFFIPointer;
typedef B3TreeBoxCastCallbackFcn = CFFIPointer;
typedef B3TreeRayCastCallbackFcn = CFFIPointer;
typedef B3PlaneResultFcn = CFFIPointer;
typedef B3MoverFilterFcn = CFFIPointer;
typedef B3CompoundQueryFcn = CFFIPointer;
typedef B3MeshQueryFcn = CFFIPointer;

typedef B3Recording = CFFIPointer;
typedef B3RecPlayer = CFFIPointer;
typedef B3DebugDraw = CFFIPointer;

class Box3D {
	
        public static function getByteCount():Int {
		#if lime_box3d
		return box3d_b3GetByteCount();
		#else
		return 0;
		#end
	}
	public static function getVersion():B3Version {
		#if lime_box3d
		return box3d_b3GetVersion();
		#else
		return null;
		#end
	}
	public static function isDoublePrecision():Bool {
		#if lime_box3d
		return box3d_b3IsDoublePrecision();
		#else
		return false;
		#end
	}
	public static function getTicks():UInt64 {
		#if lime_box3d
		return box3d_b3GetTicks();
		#else
		return null;
		#end
	}
	public static function getMilliseconds(ticks:UInt64):Float {
		#if lime_box3d
		return box3d_b3GetMilliseconds(ticks);
		#else
		return 0.0;
		#end
	}
	public static function yield():Void {
		#if lime_box3d
		box3d_b3Yield();
		#end
	}
	public static function sleep(milliseconds:Int):Void {
		#if lime_box3d
		box3d_b3Sleep(milliseconds);
		#end
	}
	#if lime_box3d
	private static var box3d_b3GetByteCount = new cpp.Callable<Void->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3GetByteCount", "i", false));
	private static var box3d_b3GetVersion = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3GetVersion", "o", false));
	private static var box3d_b3IsDoublePrecision = new cpp.Callable<Void->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3IsDoublePrecision", "b", false));
	private static var box3d_b3GetTicks = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3GetTicks", "o", false));
	private static var box3d_b3GetMilliseconds = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3GetMilliseconds", "of", false));
	private static var box3d_b3Yield = new cpp.Callable<Void->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Yield", "v", false));
	private static var box3d_b3Sleep = new cpp.Callable<Int->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Sleep", "iv", false));
	#end

	public static function defaultWorldDef():B3WorldDef {
		#if lime_box3d
		return box3d_b3DefaultWorldDef();
		#else
		return null;
		#end
	}
	public static function defaultBodyDef():B3BodyDef {
		#if lime_box3d
		return box3d_b3DefaultBodyDef();
		#else
		return null;
		#end
	}
	public static function defaultFilter():B3Filter {
		#if lime_box3d
		return box3d_b3DefaultFilter();
		#else
		return null;
		#end
	}
	public static function defaultSurfaceMaterial():B3SurfaceMaterial {
		#if lime_box3d
		return box3d_b3DefaultSurfaceMaterial();
		#else
		return null;
		#end
	}
	public static function defaultShapeDef():B3ShapeDef {
		#if lime_box3d
		return box3d_b3DefaultShapeDef();
		#else
		return null;
		#end
	}
	public static function defaultDistanceJointDef():B3DistanceJointDef {
		#if lime_box3d
		return box3d_b3DefaultDistanceJointDef();
		#else
		return null;
		#end
	}
	public static function defaultMotorJointDef():B3MotorJointDef {
		#if lime_box3d
		return box3d_b3DefaultMotorJointDef();
		#else
		return null;
		#end
	}
	public static function defaultFilterJointDef():B3FilterJointDef {
		#if lime_box3d
		return box3d_b3DefaultFilterJointDef();
		#else
		return null;
		#end
	}
	public static function defaultParallelJointDef():B3ParallelJointDef {
		#if lime_box3d
		return box3d_b3DefaultParallelJointDef();
		#else
		return null;
		#end
	}
	public static function defaultPrismaticJointDef():B3PrismaticJointDef {
		#if lime_box3d
		return box3d_b3DefaultPrismaticJointDef();
		#else
		return null;
		#end
	}
	public static function defaultRevoluteJointDef():B3RevoluteJointDef {
		#if lime_box3d
		return box3d_b3DefaultRevoluteJointDef();
		#else
		return null;
		#end
	}
	public static function defaultSphericalJointDef():B3SphericalJointDef {
		#if lime_box3d
		return box3d_b3DefaultSphericalJointDef();
		#else
		return null;
		#end
	}
	public static function defaultWeldJointDef():B3WeldJointDef {
		#if lime_box3d
		return box3d_b3DefaultWeldJointDef();
		#else
		return null;
		#end
	}
	public static function defaultWheelJointDef():B3WheelJointDef {
		#if lime_box3d
		return box3d_b3DefaultWheelJointDef();
		#else
		return null;
		#end
	}
	public static function defaultExplosionDef():B3ExplosionDef {
		#if lime_box3d
		return box3d_b3DefaultExplosionDef();
		#else
		return null;
		#end
	}
	public static function defaultQueryFilter():B3QueryFilter {
		#if lime_box3d
		return box3d_b3DefaultQueryFilter();
		#else
		return null;
		#end
	}
	#if lime_box3d
	private static var box3d_b3DefaultWorldDef = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DefaultWorldDef", "o", false));
	private static var box3d_b3DefaultBodyDef = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DefaultBodyDef", "o", false));
	private static var box3d_b3DefaultFilter = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DefaultFilter", "o", false));
	private static var box3d_b3DefaultSurfaceMaterial = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DefaultSurfaceMaterial", "o", false));
	private static var box3d_b3DefaultShapeDef = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DefaultShapeDef", "o", false));
	private static var box3d_b3DefaultDistanceJointDef = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DefaultDistanceJointDef", "o", false));
	private static var box3d_b3DefaultMotorJointDef = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DefaultMotorJointDef", "o", false));
	private static var box3d_b3DefaultFilterJointDef = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DefaultFilterJointDef", "o", false));
	private static var box3d_b3DefaultParallelJointDef = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DefaultParallelJointDef", "o", false));
	private static var box3d_b3DefaultPrismaticJointDef = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DefaultPrismaticJointDef", "o", false));
	private static var box3d_b3DefaultRevoluteJointDef = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DefaultRevoluteJointDef", "o", false));
	private static var box3d_b3DefaultSphericalJointDef = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DefaultSphericalJointDef", "o", false));
	private static var box3d_b3DefaultWeldJointDef = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DefaultWeldJointDef", "o", false));
	private static var box3d_b3DefaultWheelJointDef = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DefaultWheelJointDef", "o", false));
	private static var box3d_b3DefaultExplosionDef = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DefaultExplosionDef", "o", false));
	private static var box3d_b3DefaultQueryFilter = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DefaultQueryFilter", "o", false));
	#end

	#if lime_box3d
	#end

	public static function createWorld(def:B3WorldDef):B3WorldId {
		#if lime_box3d
		return box3d_b3CreateWorld(def);
		#else
		return null;
		#end
	}
	public static function destroyWorld(worldId:B3WorldId):Void {
		#if lime_box3d
		box3d_b3DestroyWorld(worldId);
		#end
	}
	public static function getWorldCount():Int {
		#if lime_box3d
		return box3d_b3GetWorldCount();
		#else
		return 0;
		#end
	}
	public static function getMaxWorldCount():Int {
		#if lime_box3d
		return box3d_b3GetMaxWorldCount();
		#else
		return 0;
		#end
	}
	public static function world_IsValid(id:B3WorldId):Bool {
		#if lime_box3d
		return box3d_b3World_IsValid(id);
		#else
		return false;
		#end
	}
	public static function world_Step(worldId:B3WorldId, timeStep:Float, subStepCount:Int):Void {
		#if lime_box3d
		box3d_b3World_Step(worldId, timeStep, subStepCount);
		#end
	}
	public static function world_GetBounds(worldId:B3WorldId):B3AABB {
		#if lime_box3d
		return box3d_b3World_GetBounds(worldId);
		#else
		return null;
		#end
	}
	public static function world_GetBodyEvents(worldId:B3WorldId):B3BodyEvents {
		#if lime_box3d
		return box3d_b3World_GetBodyEvents(worldId);
		#else
		return null;
		#end
	}
	public static function world_GetSensorEvents(worldId:B3WorldId):B3SensorEvents {
		#if lime_box3d
		return box3d_b3World_GetSensorEvents(worldId);
		#else
		return null;
		#end
	}
	public static function world_GetContactEvents(worldId:B3WorldId):B3ContactEvents {
		#if lime_box3d
		return box3d_b3World_GetContactEvents(worldId);
		#else
		return null;
		#end
	}
	public static function world_GetJointEvents(worldId:B3WorldId):B3JointEvents {
		#if lime_box3d
		return box3d_b3World_GetJointEvents(worldId);
		#else
		return null;
		#end
	}
	public static function world_OverlapAABB(worldId:B3WorldId, aabb:B3AABB, filter:B3QueryFilter, fcn:B3OverlapResultFcn, context:CFFIPointer):B3TreeStats {
		#if lime_box3d
		return box3d_b3World_OverlapAABB(worldId, aabb, filter, fcn, context);
		#else
		return null;
		#end
	}
	public static function world_OverlapShape(worldId:B3WorldId, origin:B3Pos, proxy:B3ShapeProxy, filter:B3QueryFilter, fcn:B3OverlapResultFcn, context:CFFIPointer):B3TreeStats {
		#if lime_box3d
		return box3d_b3World_OverlapShape(worldId, origin, proxy, filter, fcn, context);
		#else
		return null;
		#end
	}
	public static function world_CastRay(worldId:B3WorldId, origin:B3Pos, translation:B3Vec3, filter:B3QueryFilter, fcn:B3CastResultFcn, context:CFFIPointer):B3TreeStats {
		#if lime_box3d
		return box3d_b3World_CastRay(worldId, origin, translation, filter, fcn, context);
		#else
		return null;
		#end
	}
	public static function world_CastRayClosest(worldId:B3WorldId, origin:B3Pos, translation:B3Vec3, filter:B3QueryFilter):B3RayResult {
		#if lime_box3d
		return box3d_b3World_CastRayClosest(worldId, origin, translation, filter);
		#else
		return null;
		#end
	}
	public static function world_CastShape(worldId:B3WorldId, origin:B3Pos, proxy:B3ShapeProxy, translation:B3Vec3, filter:B3QueryFilter, fcn:B3CastResultFcn, context:CFFIPointer):B3TreeStats {
		#if lime_box3d
		return box3d_b3World_CastShape(worldId, origin, proxy, translation, filter, fcn, context);
		#else
		return null;
		#end
	}
	public static function world_CastMover(worldId:B3WorldId, origin:B3Pos, mover:B3Capsule, translation:B3Vec3, filter:B3QueryFilter, fcn:B3MoverFilterFcn, context:CFFIPointer):Float {
		#if lime_box3d
		return box3d_b3World_CastMover(worldId, origin, mover, translation, filter, fcn, context);
		#else
		return 0.0;
		#end
	}
	public static function world_CollideMover(worldId:B3WorldId, origin:B3Pos, mover:B3Capsule, filter:B3QueryFilter, fcn:B3PlaneResultFcn, context:CFFIPointer):Void {
		#if lime_box3d
		box3d_b3World_CollideMover(worldId, origin, mover, filter, fcn, context);
		#end
	}
	public static function world_EnableSleeping(worldId:B3WorldId, flag:Bool):Void {
		#if lime_box3d
		box3d_b3World_EnableSleeping(worldId, flag);
		#end
	}
	public static function world_IsSleepingEnabled(worldId:B3WorldId):Bool {
		#if lime_box3d
		return box3d_b3World_IsSleepingEnabled(worldId);
		#else
		return false;
		#end
	}
	public static function world_EnableContinuous(worldId:B3WorldId, flag:Bool):Void {
		#if lime_box3d
		box3d_b3World_EnableContinuous(worldId, flag);
		#end
	}
	public static function world_IsContinuousEnabled(worldId:B3WorldId):Bool {
		#if lime_box3d
		return box3d_b3World_IsContinuousEnabled(worldId);
		#else
		return false;
		#end
	}
	public static function world_SetRestitutionThreshold(worldId:B3WorldId, value:Float):Void {
		#if lime_box3d
		box3d_b3World_SetRestitutionThreshold(worldId, value);
		#end
	}
	public static function world_GetRestitutionThreshold(worldId:B3WorldId):Float {
		#if lime_box3d
		return box3d_b3World_GetRestitutionThreshold(worldId);
		#else
		return 0.0;
		#end
	}
	public static function world_SetHitEventThreshold(worldId:B3WorldId, value:Float):Void {
		#if lime_box3d
		box3d_b3World_SetHitEventThreshold(worldId, value);
		#end
	}
	public static function world_GetHitEventThreshold(worldId:B3WorldId):Float {
		#if lime_box3d
		return box3d_b3World_GetHitEventThreshold(worldId);
		#else
		return 0.0;
		#end
	}
	public static function world_SetCustomFilterCallback(worldId:B3WorldId, fcn:B3CustomFilterFcn, context:CFFIPointer):Void {
		#if lime_box3d
		box3d_b3World_SetCustomFilterCallback(worldId, fcn, context);
		#end
	}
	public static function world_SetPreSolveCallback(worldId:B3WorldId, fcn:B3PreSolveFcn, context:CFFIPointer):Void {
		#if lime_box3d
		box3d_b3World_SetPreSolveCallback(worldId, fcn, context);
		#end
	}
	public static function world_SetGravity(worldId:B3WorldId, gravity:B3Vec3):Void {
		#if lime_box3d
		box3d_b3World_SetGravity(worldId, gravity);
		#end
	}
	public static function world_GetGravity(worldId:B3WorldId):B3Vec3 {
		#if lime_box3d
		return box3d_b3World_GetGravity(worldId);
		#else
		return null;
		#end
	}
	public static function world_Explode(worldId:B3WorldId, explosionDef:B3ExplosionDef):Void {
		#if lime_box3d
		box3d_b3World_Explode(worldId, explosionDef);
		#end
	}
	public static function world_SetContactTuning(worldId:B3WorldId, hertz:Float, dampingRatio:Float, contactSpeed:Float):Void {
		#if lime_box3d
		box3d_b3World_SetContactTuning(worldId, hertz, dampingRatio, contactSpeed);
		#end
	}
	public static function world_SetContactRecycleDistance(worldId:B3WorldId, recycleDistance:Float):Void {
		#if lime_box3d
		box3d_b3World_SetContactRecycleDistance(worldId, recycleDistance);
		#end
	}
	public static function world_GetContactRecycleDistance(worldId:B3WorldId):Float {
		#if lime_box3d
		return box3d_b3World_GetContactRecycleDistance(worldId);
		#else
		return 0.0;
		#end
	}
	public static function world_SetMaximumLinearSpeed(worldId:B3WorldId, maximumLinearSpeed:Float):Void {
		#if lime_box3d
		box3d_b3World_SetMaximumLinearSpeed(worldId, maximumLinearSpeed);
		#end
	}
	public static function world_GetMaximumLinearSpeed(worldId:B3WorldId):Float {
		#if lime_box3d
		return box3d_b3World_GetMaximumLinearSpeed(worldId);
		#else
		return 0.0;
		#end
	}
	public static function world_EnableWarmStarting(worldId:B3WorldId, flag:Bool):Void {
		#if lime_box3d
		box3d_b3World_EnableWarmStarting(worldId, flag);
		#end
	}
	public static function world_IsWarmStartingEnabled(worldId:B3WorldId):Bool {
		#if lime_box3d
		return box3d_b3World_IsWarmStartingEnabled(worldId);
		#else
		return false;
		#end
	}
	public static function world_GetAwakeBodyCount(worldId:B3WorldId):Int {
		#if lime_box3d
		return box3d_b3World_GetAwakeBodyCount(worldId);
		#else
		return 0;
		#end
	}
	public static function world_GetProfile(worldId:B3WorldId):B3Profile {
		#if lime_box3d
		return box3d_b3World_GetProfile(worldId);
		#else
		return null;
		#end
	}
	public static function world_GetCounters(worldId:B3WorldId):B3Counters {
		#if lime_box3d
		return box3d_b3World_GetCounters(worldId);
		#else
		return null;
		#end
	}
	public static function world_GetMaxCapacity(worldId:B3WorldId):B3Capacity {
		#if lime_box3d
		return box3d_b3World_GetMaxCapacity(worldId);
		#else
		return null;
		#end
	}
	public static function world_SetUserData(worldId:B3WorldId, userData:CFFIPointer):Void {
		#if lime_box3d
		box3d_b3World_SetUserData(worldId, userData);
		#end
	}
	public static function world_SetFrictionCallback(worldId:B3WorldId, callback:B3FrictionCallback):Void {
		#if lime_box3d
		box3d_b3World_SetFrictionCallback(worldId, callback);
		#end
	}
	public static function world_SetRestitutionCallback(worldId:B3WorldId, callback:B3RestitutionCallback):Void {
		#if lime_box3d
		box3d_b3World_SetRestitutionCallback(worldId, callback);
		#end
	}
	public static function world_SetWorkerCount(worldId:B3WorldId, count:Int):Void {
		#if lime_box3d
		box3d_b3World_SetWorkerCount(worldId, count);
		#end
	}
	public static function world_GetWorkerCount(worldId:B3WorldId):Int {
		#if lime_box3d
		return box3d_b3World_GetWorkerCount(worldId);
		#else
		return 0;
		#end
	}
	public static function world_DumpMemoryStats(worldId:B3WorldId):Void {
		#if lime_box3d
		box3d_b3World_DumpMemoryStats(worldId);
		#end
	}
	public static function world_RebuildStaticTree(worldId:B3WorldId):Void {
		#if lime_box3d
		box3d_b3World_RebuildStaticTree(worldId);
		#end
	}
	public static function world_EnableSpeculative(worldId:B3WorldId, flag:Bool):Void {
		#if lime_box3d
		box3d_b3World_EnableSpeculative(worldId, flag);
		#end
	}
	public static function destroyRecording(recording:B3Recording):Void {
		#if lime_box3d
		box3d_b3DestroyRecording(recording);
		#end
	}
	public static function recording_GetSize(recording:B3Recording):Int {
		#if lime_box3d
		return box3d_b3Recording_GetSize(recording);
		#else
		return 0;
		#end
	}
	public static function world_StartRecording(worldId:B3WorldId, recording:B3Recording):Void {
		#if lime_box3d
		box3d_b3World_StartRecording(worldId, recording);
		#end
	}
	public static function world_StopRecording(worldId:B3WorldId):Void {
		#if lime_box3d
		box3d_b3World_StopRecording(worldId);
		#end
	}
	public static function saveRecordingToFile(recording:B3Recording, path:String):Bool {
		#if lime_box3d
		return box3d_b3SaveRecordingToFile(recording, path);
		#else
		return false;
		#end
	}
	public static function validateReplay(data:CFFIPointer, size:Int, workerCount:Int):Bool {
		#if lime_box3d
		return box3d_b3ValidateReplay(data, size, workerCount);
		#else
		return false;
		#end
	}
	public static function destroyPlayer(player:B3RecPlayer):Void {
		#if lime_box3d
		box3d_b3DestroyPlayer(player);
		#end
	}
	public static function recPlayer_StepFrame(player:B3RecPlayer):Bool {
		#if lime_box3d
		return box3d_b3RecPlayer_StepFrame(player);
		#else
		return false;
		#end
	}
	public static function recPlayer_SubStepFrame(player:B3RecPlayer):Void {
		#if lime_box3d
		box3d_b3RecPlayer_SubStepFrame(player);
		#end
	}
	public static function recPlayer_Restart(player:B3RecPlayer):Void {
		#if lime_box3d
		box3d_b3RecPlayer_Restart(player);
		#end
	}
	public static function recPlayer_SeekFrame(player:B3RecPlayer, targetFrame:Int):Void {
		#if lime_box3d
		box3d_b3RecPlayer_SeekFrame(player, targetFrame);
		#end
	}
	public static function recPlayer_GetWorldId(player:B3RecPlayer):B3WorldId {
		#if lime_box3d
		return box3d_b3RecPlayer_GetWorldId(player);
		#else
		return null;
		#end
	}
	public static function recPlayer_GetFrame(player:B3RecPlayer):Int {
		#if lime_box3d
		return box3d_b3RecPlayer_GetFrame(player);
		#else
		return 0;
		#end
	}
	public static function recPlayer_GetFrameCount(player:B3RecPlayer):Int {
		#if lime_box3d
		return box3d_b3RecPlayer_GetFrameCount(player);
		#else
		return 0;
		#end
	}
	public static function recPlayer_IsAtEnd(player:B3RecPlayer):Bool {
		#if lime_box3d
		return box3d_b3RecPlayer_IsAtEnd(player);
		#else
		return false;
		#end
	}
	public static function recPlayer_IsAtPreStep(player:B3RecPlayer):Bool {
		#if lime_box3d
		return box3d_b3RecPlayer_IsAtPreStep(player);
		#else
		return false;
		#end
	}
	public static function recPlayer_HasDiverged(player:B3RecPlayer):Bool {
		#if lime_box3d
		return box3d_b3RecPlayer_HasDiverged(player);
		#else
		return false;
		#end
	}
	public static function recPlayer_GetInfo(player:B3RecPlayer):B3RecPlayerInfo {
		#if lime_box3d
		return box3d_b3RecPlayer_GetInfo(player);
		#else
		return null;
		#end
	}
	public static function recPlayer_GetDivergeFrame(player:B3RecPlayer):Int {
		#if lime_box3d
		return box3d_b3RecPlayer_GetDivergeFrame(player);
		#else
		return 0;
		#end
	}
	public static function recPlayer_SetWorkerCount(player:B3RecPlayer, count:Int):Void {
		#if lime_box3d
		box3d_b3RecPlayer_SetWorkerCount(player, count);
		#end
	}
	public static function recPlayer_SetKeyframePolicy(player:B3RecPlayer, budgetBytes:Int64, minIntervalFrames:Int):Void {
		#if lime_box3d
		box3d_b3RecPlayer_SetKeyframePolicy(player, budgetBytes, minIntervalFrames);
		#end
	}
	public static function recPlayer_GetKeyframeMinInterval(player:B3RecPlayer):Int {
		#if lime_box3d
		return box3d_b3RecPlayer_GetKeyframeMinInterval(player);
		#else
		return 0;
		#end
	}
	public static function recPlayer_GetKeyframeInterval(player:B3RecPlayer):Int {
		#if lime_box3d
		return box3d_b3RecPlayer_GetKeyframeInterval(player);
		#else
		return 0;
		#end
	}
	public static function recPlayer_GetBodyCount(player:B3RecPlayer):Int {
		#if lime_box3d
		return box3d_b3RecPlayer_GetBodyCount(player);
		#else
		return 0;
		#end
	}
	public static function recPlayer_GetBodyId(player:B3RecPlayer, index:Int):B3BodyId {
		#if lime_box3d
		return box3d_b3RecPlayer_GetBodyId(player, index);
		#else
		return null;
		#end
	}
	public static function recPlayer_SetDebugShapeCallbacks(player:B3RecPlayer, createDebugShape:B3CreateDebugShapeCallback, destroyDebugShape:B3DestroyDebugShapeCallback, context:CFFIPointer):Void {
		#if lime_box3d
		box3d_b3RecPlayer_SetDebugShapeCallbacks(player, createDebugShape, destroyDebugShape, context);
		#end
	}
	public static function recPlayer_DrawFrameQueries(player:B3RecPlayer, draw:B3DebugDraw, queryIndex:Int, selectedIndex:Int):Void {
		#if lime_box3d
		box3d_b3RecPlayer_DrawFrameQueries(player, draw, queryIndex, selectedIndex);
		#end
	}
	public static function recPlayer_GetFrameQueryCount(player:B3RecPlayer):Int {
		#if lime_box3d
		return box3d_b3RecPlayer_GetFrameQueryCount(player);
		#else
		return 0;
		#end
	}
	public static function recPlayer_GetFrameQuery(player:B3RecPlayer, index:Int):B3RecQueryInfo {
		#if lime_box3d
		return box3d_b3RecPlayer_GetFrameQuery(player, index);
		#else
		return null;
		#end
	}
	public static function recPlayer_GetFrameQueryHit(player:B3RecPlayer, queryIndex:Int, hitIndex:Int):B3RecQueryHit {
		#if lime_box3d
		return box3d_b3RecPlayer_GetFrameQueryHit(player, queryIndex, hitIndex);
		#else
		return null;
		#end
	}
	public static function createBody(worldId:B3WorldId, def:B3BodyDef):B3BodyId {
		#if lime_box3d
		return box3d_b3CreateBody(worldId, def);
		#else
		return null;
		#end
	}
	public static function destroyBody(bodyId:B3BodyId):Void {
		#if lime_box3d
		box3d_b3DestroyBody(bodyId);
		#end
	}
	public static function body_IsValid(id:B3BodyId):Bool {
		#if lime_box3d
		return box3d_b3Body_IsValid(id);
		#else
		return false;
		#end
	}
	public static function body_GetType(bodyId:B3BodyId):Int {
		#if lime_box3d
		return box3d_b3Body_GetType(bodyId);
		#else
		return 0;
		#end
	}
	public static function body_SetType(bodyId:B3BodyId, type:Int):Void {
		#if lime_box3d
		box3d_b3Body_SetType(bodyId, type);
		#end
	}
	public static function body_SetName(bodyId:B3BodyId, name:String):Void {
		#if lime_box3d
		box3d_b3Body_SetName(bodyId, name);
		#end
	}
	public static function body_SetUserData(bodyId:B3BodyId, userData:CFFIPointer):Void {
		#if lime_box3d
		box3d_b3Body_SetUserData(bodyId, userData);
		#end
	}
	public static function body_GetPosition(bodyId:B3BodyId):B3Pos {
		#if lime_box3d
		return box3d_b3Body_GetPosition(bodyId);
		#else
		return null;
		#end
	}
	public static function body_GetRotation(bodyId:B3BodyId):B3Quat {
		#if lime_box3d
		return box3d_b3Body_GetRotation(bodyId);
		#else
		return null;
		#end
	}
	public static function body_GetTransform(bodyId:B3BodyId):B3WorldTransform {
		#if lime_box3d
		return box3d_b3Body_GetTransform(bodyId);
		#else
		return null;
		#end
	}
	public static function body_SetTransform(bodyId:B3BodyId, position:B3Pos, rotation:B3Quat):Void {
		#if lime_box3d
		box3d_b3Body_SetTransform(bodyId, position, rotation);
		#end
	}
	public static function body_GetLocalPoint(bodyId:B3BodyId, worldPoint:B3Pos):B3Vec3 {
		#if lime_box3d
		return box3d_b3Body_GetLocalPoint(bodyId, worldPoint);
		#else
		return null;
		#end
	}
	public static function body_GetWorldPoint(bodyId:B3BodyId, localPoint:B3Vec3):B3Pos {
		#if lime_box3d
		return box3d_b3Body_GetWorldPoint(bodyId, localPoint);
		#else
		return null;
		#end
	}
	public static function body_GetLocalVector(bodyId:B3BodyId, worldVector:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3Body_GetLocalVector(bodyId, worldVector);
		#else
		return null;
		#end
	}
	public static function body_GetWorldVector(bodyId:B3BodyId, localVector:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3Body_GetWorldVector(bodyId, localVector);
		#else
		return null;
		#end
	}
	public static function body_GetLinearVelocity(bodyId:B3BodyId):B3Vec3 {
		#if lime_box3d
		return box3d_b3Body_GetLinearVelocity(bodyId);
		#else
		return null;
		#end
	}
	public static function body_GetAngularVelocity(bodyId:B3BodyId):B3Vec3 {
		#if lime_box3d
		return box3d_b3Body_GetAngularVelocity(bodyId);
		#else
		return null;
		#end
	}
	public static function body_SetLinearVelocity(bodyId:B3BodyId, linearVelocity:B3Vec3):Void {
		#if lime_box3d
		box3d_b3Body_SetLinearVelocity(bodyId, linearVelocity);
		#end
	}
	public static function body_SetAngularVelocity(bodyId:B3BodyId, angularVelocity:B3Vec3):Void {
		#if lime_box3d
		box3d_b3Body_SetAngularVelocity(bodyId, angularVelocity);
		#end
	}
	public static function body_SetTargetTransform(bodyId:B3BodyId, target:B3WorldTransform, timeStep:Float, wake:Bool):Void {
		#if lime_box3d
		box3d_b3Body_SetTargetTransform(bodyId, target, timeStep, wake);
		#end
	}
	public static function body_GetLocalPointVelocity(bodyId:B3BodyId, localPoint:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3Body_GetLocalPointVelocity(bodyId, localPoint);
		#else
		return null;
		#end
	}
	public static function body_GetWorldPointVelocity(bodyId:B3BodyId, worldPoint:B3Pos):B3Vec3 {
		#if lime_box3d
		return box3d_b3Body_GetWorldPointVelocity(bodyId, worldPoint);
		#else
		return null;
		#end
	}
	public static function body_ApplyForce(bodyId:B3BodyId, force:B3Vec3, point:B3Pos, wake:Bool):Void {
		#if lime_box3d
		box3d_b3Body_ApplyForce(bodyId, force, point, wake);
		#end
	}
	public static function body_ApplyForceToCenter(bodyId:B3BodyId, force:B3Vec3, wake:Bool):Void {
		#if lime_box3d
		box3d_b3Body_ApplyForceToCenter(bodyId, force, wake);
		#end
	}
	public static function body_ApplyTorque(bodyId:B3BodyId, torque:B3Vec3, wake:Bool):Void {
		#if lime_box3d
		box3d_b3Body_ApplyTorque(bodyId, torque, wake);
		#end
	}
	public static function body_ApplyLinearImpulse(bodyId:B3BodyId, impulse:B3Vec3, point:B3Pos, wake:Bool):Void {
		#if lime_box3d
		box3d_b3Body_ApplyLinearImpulse(bodyId, impulse, point, wake);
		#end
	}
	public static function body_ApplyLinearImpulseToCenter(bodyId:B3BodyId, impulse:B3Vec3, wake:Bool):Void {
		#if lime_box3d
		box3d_b3Body_ApplyLinearImpulseToCenter(bodyId, impulse, wake);
		#end
	}
	public static function body_ApplyAngularImpulse(bodyId:B3BodyId, impulse:B3Vec3, wake:Bool):Void {
		#if lime_box3d
		box3d_b3Body_ApplyAngularImpulse(bodyId, impulse, wake);
		#end
	}
	public static function body_GetMass(bodyId:B3BodyId):Float {
		#if lime_box3d
		return box3d_b3Body_GetMass(bodyId);
		#else
		return 0.0;
		#end
	}
	public static function body_GetLocalRotationalInertia(bodyId:B3BodyId):B3Matrix3 {
		#if lime_box3d
		return box3d_b3Body_GetLocalRotationalInertia(bodyId);
		#else
		return null;
		#end
	}
	public static function body_GetInverseMass(bodyId:B3BodyId):Float {
		#if lime_box3d
		return box3d_b3Body_GetInverseMass(bodyId);
		#else
		return 0.0;
		#end
	}
	public static function body_GetWorldInverseRotationalInertia(bodyId:B3BodyId):B3Matrix3 {
		#if lime_box3d
		return box3d_b3Body_GetWorldInverseRotationalInertia(bodyId);
		#else
		return null;
		#end
	}
	public static function body_GetLocalCenter(bodyId:B3BodyId):B3Vec3 {
		#if lime_box3d
		return box3d_b3Body_GetLocalCenter(bodyId);
		#else
		return null;
		#end
	}
	public static function body_GetWorldCenter(bodyId:B3BodyId):B3Pos {
		#if lime_box3d
		return box3d_b3Body_GetWorldCenter(bodyId);
		#else
		return null;
		#end
	}
	public static function body_SetMassData(bodyId:B3BodyId, massData:B3MassData):Void {
		#if lime_box3d
		box3d_b3Body_SetMassData(bodyId, massData);
		#end
	}
	public static function body_GetMassData(bodyId:B3BodyId):B3MassData {
		#if lime_box3d
		return box3d_b3Body_GetMassData(bodyId);
		#else
		return null;
		#end
	}
	public static function body_ApplyMassFromShapes(bodyId:B3BodyId):Void {
		#if lime_box3d
		box3d_b3Body_ApplyMassFromShapes(bodyId);
		#end
	}
	public static function body_SetLinearDamping(bodyId:B3BodyId, linearDamping:Float):Void {
		#if lime_box3d
		box3d_b3Body_SetLinearDamping(bodyId, linearDamping);
		#end
	}
	public static function body_GetLinearDamping(bodyId:B3BodyId):Float {
		#if lime_box3d
		return box3d_b3Body_GetLinearDamping(bodyId);
		#else
		return 0.0;
		#end
	}
	public static function body_SetAngularDamping(bodyId:B3BodyId, angularDamping:Float):Void {
		#if lime_box3d
		box3d_b3Body_SetAngularDamping(bodyId, angularDamping);
		#end
	}
	public static function body_GetAngularDamping(bodyId:B3BodyId):Float {
		#if lime_box3d
		return box3d_b3Body_GetAngularDamping(bodyId);
		#else
		return 0.0;
		#end
	}
	public static function body_SetGravityScale(bodyId:B3BodyId, gravityScale:Float):Void {
		#if lime_box3d
		box3d_b3Body_SetGravityScale(bodyId, gravityScale);
		#end
	}
	public static function body_GetGravityScale(bodyId:B3BodyId):Float {
		#if lime_box3d
		return box3d_b3Body_GetGravityScale(bodyId);
		#else
		return 0.0;
		#end
	}
	public static function body_IsAwake(bodyId:B3BodyId):Bool {
		#if lime_box3d
		return box3d_b3Body_IsAwake(bodyId);
		#else
		return false;
		#end
	}
	public static function body_SetAwake(bodyId:B3BodyId, awake:Bool):Void {
		#if lime_box3d
		box3d_b3Body_SetAwake(bodyId, awake);
		#end
	}
	public static function body_EnableSleep(bodyId:B3BodyId, enableSleep:Bool):Void {
		#if lime_box3d
		box3d_b3Body_EnableSleep(bodyId, enableSleep);
		#end
	}
	public static function body_IsSleepEnabled(bodyId:B3BodyId):Bool {
		#if lime_box3d
		return box3d_b3Body_IsSleepEnabled(bodyId);
		#else
		return false;
		#end
	}
	public static function body_SetSleepThreshold(bodyId:B3BodyId, sleepThreshold:Float):Void {
		#if lime_box3d
		box3d_b3Body_SetSleepThreshold(bodyId, sleepThreshold);
		#end
	}
	public static function body_GetSleepThreshold(bodyId:B3BodyId):Float {
		#if lime_box3d
		return box3d_b3Body_GetSleepThreshold(bodyId);
		#else
		return 0.0;
		#end
	}
	public static function body_IsEnabled(bodyId:B3BodyId):Bool {
		#if lime_box3d
		return box3d_b3Body_IsEnabled(bodyId);
		#else
		return false;
		#end
	}
	public static function body_Disable(bodyId:B3BodyId):Void {
		#if lime_box3d
		box3d_b3Body_Disable(bodyId);
		#end
	}
	public static function body_Enable(bodyId:B3BodyId):Void {
		#if lime_box3d
		box3d_b3Body_Enable(bodyId);
		#end
	}
	public static function body_SetMotionLocks(bodyId:B3BodyId, locks:B3MotionLocks):Void {
		#if lime_box3d
		box3d_b3Body_SetMotionLocks(bodyId, locks);
		#end
	}
	public static function body_GetMotionLocks(bodyId:B3BodyId):B3MotionLocks {
		#if lime_box3d
		return box3d_b3Body_GetMotionLocks(bodyId);
		#else
		return null;
		#end
	}
	public static function body_SetBullet(bodyId:B3BodyId, flag:Bool):Void {
		#if lime_box3d
		box3d_b3Body_SetBullet(bodyId, flag);
		#end
	}
	public static function body_IsBullet(bodyId:B3BodyId):Bool {
		#if lime_box3d
		return box3d_b3Body_IsBullet(bodyId);
		#else
		return false;
		#end
	}
	public static function body_AllowFastRotation(bodyId:B3BodyId, flag:Bool):Void {
		#if lime_box3d
		box3d_b3Body_AllowFastRotation(bodyId, flag);
		#end
	}
	public static function body_IsFastRotationAllowed(bodyId:B3BodyId):Bool {
		#if lime_box3d
		return box3d_b3Body_IsFastRotationAllowed(bodyId);
		#else
		return false;
		#end
	}
	public static function body_EnableContactRecycling(bodyId:B3BodyId, flag:Bool):Void {
		#if lime_box3d
		box3d_b3Body_EnableContactRecycling(bodyId, flag);
		#end
	}
	public static function body_IsContactRecyclingEnabled(bodyId:B3BodyId):Bool {
		#if lime_box3d
		return box3d_b3Body_IsContactRecyclingEnabled(bodyId);
		#else
		return false;
		#end
	}
	public static function body_EnableHitEvents(bodyId:B3BodyId, flag:Bool):Void {
		#if lime_box3d
		box3d_b3Body_EnableHitEvents(bodyId, flag);
		#end
	}
	public static function body_GetWorld(bodyId:B3BodyId):B3WorldId {
		#if lime_box3d
		return box3d_b3Body_GetWorld(bodyId);
		#else
		return null;
		#end
	}
	public static function body_GetShapeCount(bodyId:B3BodyId):Int {
		#if lime_box3d
		return box3d_b3Body_GetShapeCount(bodyId);
		#else
		return 0;
		#end
	}
	public static function body_GetShapes(bodyId:B3BodyId, shapeArray:B3ShapeId, capacity:Int):Int {
		#if lime_box3d
		return box3d_b3Body_GetShapes(bodyId, shapeArray, capacity);
		#else
		return 0;
		#end
	}
	public static function body_GetJointCount(bodyId:B3BodyId):Int {
		#if lime_box3d
		return box3d_b3Body_GetJointCount(bodyId);
		#else
		return 0;
		#end
	}
	public static function body_GetJoints(bodyId:B3BodyId, jointArray:B3JointId, capacity:Int):Int {
		#if lime_box3d
		return box3d_b3Body_GetJoints(bodyId, jointArray, capacity);
		#else
		return 0;
		#end
	}
	public static function body_GetContactCapacity(bodyId:B3BodyId):Int {
		#if lime_box3d
		return box3d_b3Body_GetContactCapacity(bodyId);
		#else
		return 0;
		#end
	}
	public static function body_GetContactData(bodyId:B3BodyId, contactData:B3ContactData, capacity:Int):Int {
		#if lime_box3d
		return box3d_b3Body_GetContactData(bodyId, contactData, capacity);
		#else
		return 0;
		#end
	}
	public static function body_ComputeAABB(bodyId:B3BodyId):B3AABB {
		#if lime_box3d
		return box3d_b3Body_ComputeAABB(bodyId);
		#else
		return null;
		#end
	}
	public static function body_GetMinExtent(bodyId:B3BodyId):Float {
		#if lime_box3d
		return box3d_b3Body_GetMinExtent(bodyId);
		#else
		return 0.0;
		#end
	}
	public static function body_GetMaxExtent(bodyId:B3BodyId):B3Vec3 {
		#if lime_box3d
		return box3d_b3Body_GetMaxExtent(bodyId);
		#else
		return null;
		#end
	}
	public static function body_GetMaxExtentOrigin(bodyId:B3BodyId):B3Vec3 {
		#if lime_box3d
		return box3d_b3Body_GetMaxExtentOrigin(bodyId);
		#else
		return null;
		#end
	}
	public static function body_GetClosestPoint(bodyId:B3BodyId, result:B3Vec3, target:B3Vec3):Float {
		#if lime_box3d
		return box3d_b3Body_GetClosestPoint(bodyId, result, target);
		#else
		return 0.0;
		#end
	}
	public static function body_CastRay(bodyId:B3BodyId, origin:B3Pos, translation:B3Vec3, filter:B3QueryFilter, maxFraction:Float, bodyTransform:B3WorldTransform):B3BodyCastResult {
		#if lime_box3d
		return box3d_b3Body_CastRay(bodyId, origin, translation, filter, maxFraction, bodyTransform);
		#else
		return null;
		#end
	}
	public static function body_CastShape(bodyId:B3BodyId, origin:B3Pos, proxy:B3ShapeProxy, translation:B3Vec3, filter:B3QueryFilter, maxFraction:Float, canEncroach:Bool, bodyTransform:B3WorldTransform):B3BodyCastResult {
		#if lime_box3d
		return box3d_b3Body_CastShape(bodyId, origin, proxy, translation, filter, maxFraction, canEncroach, bodyTransform);
		#else
		return null;
		#end
	}
	public static function body_OverlapShape(bodyId:B3BodyId, origin:B3Pos, proxy:B3ShapeProxy, filter:B3QueryFilter, bodyTransform:B3WorldTransform):Bool {
		#if lime_box3d
		return box3d_b3Body_OverlapShape(bodyId, origin, proxy, filter, bodyTransform);
		#else
		return false;
		#end
	}
	public static function body_CollideMover(bodyId:B3BodyId, bodyPlanes:B3BodyPlaneResult, planeCapacity:Int, origin:B3Pos, mover:B3Capsule, filter:B3QueryFilter, bodyTransform:B3WorldTransform):Int {
		#if lime_box3d
		return box3d_b3Body_CollideMover(bodyId, bodyPlanes, planeCapacity, origin, mover, filter, bodyTransform);
		#else
		return 0;
		#end
	}
	public static function body_TimeOfImpactMover(bodyId:B3BodyId, origin:B3Pos, mover:B3Capsule, moverTranslation:B3Vec3, filter:B3QueryFilter, bodyTransform1:B3WorldTransform, bodyTransform2:B3WorldTransform):B3BodyTOIResult {
		#if lime_box3d
		return box3d_b3Body_TimeOfImpactMover(bodyId, origin, mover, moverTranslation, filter, bodyTransform1, bodyTransform2);
		#else
		return null;
		#end
	}
	public static function createSphereShape(bodyId:B3BodyId, def:B3ShapeDef, sphere:B3Sphere):B3ShapeId {
		#if lime_box3d
		return box3d_b3CreateSphereShape(bodyId, def, sphere);
		#else
		return null;
		#end
	}
	public static function createCapsuleShape(bodyId:B3BodyId, def:B3ShapeDef, capsule:B3Capsule):B3ShapeId {
		#if lime_box3d
		return box3d_b3CreateCapsuleShape(bodyId, def, capsule);
		#else
		return null;
		#end
	}
	public static function createHullShape(bodyId:B3BodyId, def:B3ShapeDef, hull:B3HullData):B3ShapeId {
		#if lime_box3d
		return box3d_b3CreateHullShape(bodyId, def, hull);
		#else
		return null;
		#end
	}
	public static function createTransformedHullShape(bodyId:B3BodyId, def:B3ShapeDef, hull:B3HullData, transform:B3Transform, scale:B3Vec3):B3ShapeId {
		#if lime_box3d
		return box3d_b3CreateTransformedHullShape(bodyId, def, hull, transform, scale);
		#else
		return null;
		#end
	}
	public static function createMeshShape(bodyId:B3BodyId, def:B3ShapeDef, mesh:B3MeshData, scale:B3Vec3):B3ShapeId {
		#if lime_box3d
		return box3d_b3CreateMeshShape(bodyId, def, mesh, scale);
		#else
		return null;
		#end
	}
	public static function createHeightFieldShape(bodyId:B3BodyId, def:B3ShapeDef, heightField:B3HeightFieldData):B3ShapeId {
		#if lime_box3d
		return box3d_b3CreateHeightFieldShape(bodyId, def, heightField);
		#else
		return null;
		#end
	}
	public static function createBakedCompoundShape(bodyId:B3BodyId, def:B3ShapeDef, compound:B3CompoundData):B3ShapeId {
		#if lime_box3d
		return box3d_b3CreateBakedCompoundShape(bodyId, def, compound);
		#else
		return null;
		#end
	}
	public static function destroyShape(shapeId:B3ShapeId, updateBodyMass:Bool):Void {
		#if lime_box3d
		box3d_b3DestroyShape(shapeId, updateBodyMass);
		#end
	}
	public static function shape_IsValid(id:B3ShapeId):Bool {
		#if lime_box3d
		return box3d_b3Shape_IsValid(id);
		#else
		return false;
		#end
	}
	public static function shape_GetType(shapeId:B3ShapeId):Int {
		#if lime_box3d
		return box3d_b3Shape_GetType(shapeId);
		#else
		return 0;
		#end
	}
	public static function shape_GetBody(shapeId:B3ShapeId):B3BodyId {
		#if lime_box3d
		return box3d_b3Shape_GetBody(shapeId);
		#else
		return null;
		#end
	}
	public static function shape_GetWorld(shapeId:B3ShapeId):B3WorldId {
		#if lime_box3d
		return box3d_b3Shape_GetWorld(shapeId);
		#else
		return null;
		#end
	}
	public static function shape_IsSensor(shapeId:B3ShapeId):Bool {
		#if lime_box3d
		return box3d_b3Shape_IsSensor(shapeId);
		#else
		return false;
		#end
	}
	public static function shape_SetName(shapeId:B3ShapeId, name:String):Void {
		#if lime_box3d
		box3d_b3Shape_SetName(shapeId, name);
		#end
	}
	public static function shape_SetUserData(shapeId:B3ShapeId, userData:CFFIPointer):Void {
		#if lime_box3d
		box3d_b3Shape_SetUserData(shapeId, userData);
		#end
	}
	public static function shape_SetDensity(shapeId:B3ShapeId, density:Float, updateBodyMass:Bool):Void {
		#if lime_box3d
		box3d_b3Shape_SetDensity(shapeId, density, updateBodyMass);
		#end
	}
	public static function shape_GetDensity(shapeId:B3ShapeId):Float {
		#if lime_box3d
		return box3d_b3Shape_GetDensity(shapeId);
		#else
		return 0.0;
		#end
	}
	public static function shape_SetFriction(shapeId:B3ShapeId, friction:Float):Void {
		#if lime_box3d
		box3d_b3Shape_SetFriction(shapeId, friction);
		#end
	}
	public static function shape_GetFriction(shapeId:B3ShapeId):Float {
		#if lime_box3d
		return box3d_b3Shape_GetFriction(shapeId);
		#else
		return 0.0;
		#end
	}
	public static function shape_SetRestitution(shapeId:B3ShapeId, restitution:Float):Void {
		#if lime_box3d
		box3d_b3Shape_SetRestitution(shapeId, restitution);
		#end
	}
	public static function shape_GetRestitution(shapeId:B3ShapeId):Float {
		#if lime_box3d
		return box3d_b3Shape_GetRestitution(shapeId);
		#else
		return 0.0;
		#end
	}
	public static function shape_SetSurfaceMaterial(shapeId:B3ShapeId, surfaceMaterial:B3SurfaceMaterial):Void {
		#if lime_box3d
		box3d_b3Shape_SetSurfaceMaterial(shapeId, surfaceMaterial);
		#end
	}
	public static function shape_GetSurfaceMaterial(shapeId:B3ShapeId):B3SurfaceMaterial {
		#if lime_box3d
		return box3d_b3Shape_GetSurfaceMaterial(shapeId);
		#else
		return null;
		#end
	}
	public static function shape_GetMeshMaterialCount(shapeId:B3ShapeId):Int {
		#if lime_box3d
		return box3d_b3Shape_GetMeshMaterialCount(shapeId);
		#else
		return 0;
		#end
	}
	public static function shape_SetMeshMaterial(shapeId:B3ShapeId, surfaceMaterial:B3SurfaceMaterial, index:Int):Void {
		#if lime_box3d
		box3d_b3Shape_SetMeshMaterial(shapeId, surfaceMaterial, index);
		#end
	}
	public static function shape_GetMeshSurfaceMaterial(shapeId:B3ShapeId, index:Int):B3SurfaceMaterial {
		#if lime_box3d
		return box3d_b3Shape_GetMeshSurfaceMaterial(shapeId, index);
		#else
		return null;
		#end
	}
	public static function shape_GetFilter(shapeId:B3ShapeId):B3Filter {
		#if lime_box3d
		return box3d_b3Shape_GetFilter(shapeId);
		#else
		return null;
		#end
	}
	public static function shape_SetFilter(shapeId:B3ShapeId, filter:B3Filter, invokeContacts:Bool):Void {
		#if lime_box3d
		box3d_b3Shape_SetFilter(shapeId, filter, invokeContacts);
		#end
	}
	public static function shape_EnableSensorEvents(shapeId:B3ShapeId, flag:Bool):Void {
		#if lime_box3d
		box3d_b3Shape_EnableSensorEvents(shapeId, flag);
		#end
	}
	public static function shape_AreSensorEventsEnabled(shapeId:B3ShapeId):Bool {
		#if lime_box3d
		return box3d_b3Shape_AreSensorEventsEnabled(shapeId);
		#else
		return false;
		#end
	}
	public static function shape_EnableContactEvents(shapeId:B3ShapeId, flag:Bool):Void {
		#if lime_box3d
		box3d_b3Shape_EnableContactEvents(shapeId, flag);
		#end
	}
	public static function shape_AreContactEventsEnabled(shapeId:B3ShapeId):Bool {
		#if lime_box3d
		return box3d_b3Shape_AreContactEventsEnabled(shapeId);
		#else
		return false;
		#end
	}
	public static function shape_EnablePreSolveEvents(shapeId:B3ShapeId, flag:Bool):Void {
		#if lime_box3d
		box3d_b3Shape_EnablePreSolveEvents(shapeId, flag);
		#end
	}
	public static function shape_ArePreSolveEventsEnabled(shapeId:B3ShapeId):Bool {
		#if lime_box3d
		return box3d_b3Shape_ArePreSolveEventsEnabled(shapeId);
		#else
		return false;
		#end
	}
	public static function shape_EnableHitEvents(shapeId:B3ShapeId, flag:Bool):Void {
		#if lime_box3d
		box3d_b3Shape_EnableHitEvents(shapeId, flag);
		#end
	}
	public static function shape_AreHitEventsEnabled(shapeId:B3ShapeId):Bool {
		#if lime_box3d
		return box3d_b3Shape_AreHitEventsEnabled(shapeId);
		#else
		return false;
		#end
	}
	public static function shape_RayCast(shapeId:B3ShapeId, origin:B3Pos, translation:B3Vec3):B3WorldCastOutput {
		#if lime_box3d
		return box3d_b3Shape_RayCast(shapeId, origin, translation);
		#else
		return null;
		#end
	}
	public static function shape_GetSphere(shapeId:B3ShapeId):B3Sphere {
		#if lime_box3d
		return box3d_b3Shape_GetSphere(shapeId);
		#else
		return null;
		#end
	}
	public static function shape_GetCapsule(shapeId:B3ShapeId):B3Capsule {
		#if lime_box3d
		return box3d_b3Shape_GetCapsule(shapeId);
		#else
		return null;
		#end
	}
	public static function shape_GetMesh(shapeId:B3ShapeId):B3Mesh {
		#if lime_box3d
		return box3d_b3Shape_GetMesh(shapeId);
		#else
		return null;
		#end
	}
	public static function shape_SetSphere(shapeId:B3ShapeId, sphere:B3Sphere):Void {
		#if lime_box3d
		box3d_b3Shape_SetSphere(shapeId, sphere);
		#end
	}
	public static function shape_SetCapsule(shapeId:B3ShapeId, capsule:B3Capsule):Void {
		#if lime_box3d
		box3d_b3Shape_SetCapsule(shapeId, capsule);
		#end
	}
	public static function shape_SetHull(shapeId:B3ShapeId, hull:B3HullData):Void {
		#if lime_box3d
		box3d_b3Shape_SetHull(shapeId, hull);
		#end
	}
	public static function shape_SetMesh(shapeId:B3ShapeId, meshData:B3MeshData, scale:B3Vec3):Void {
		#if lime_box3d
		box3d_b3Shape_SetMesh(shapeId, meshData, scale);
		#end
	}
	public static function shape_GetContactCapacity(shapeId:B3ShapeId):Int {
		#if lime_box3d
		return box3d_b3Shape_GetContactCapacity(shapeId);
		#else
		return 0;
		#end
	}
	public static function shape_GetContactData(shapeId:B3ShapeId, contactData:B3ContactData, capacity:Int):Int {
		#if lime_box3d
		return box3d_b3Shape_GetContactData(shapeId, contactData, capacity);
		#else
		return 0;
		#end
	}
	public static function shape_GetSensorCapacity(shapeId:B3ShapeId):Int {
		#if lime_box3d
		return box3d_b3Shape_GetSensorCapacity(shapeId);
		#else
		return 0;
		#end
	}
	public static function shape_GetSensorData(shapeId:B3ShapeId, visitorIds:B3ShapeId, capacity:Int):Int {
		#if lime_box3d
		return box3d_b3Shape_GetSensorData(shapeId, visitorIds, capacity);
		#else
		return 0;
		#end
	}
	public static function shape_GetAABB(shapeId:B3ShapeId):B3AABB {
		#if lime_box3d
		return box3d_b3Shape_GetAABB(shapeId);
		#else
		return null;
		#end
	}
	public static function shape_ComputeMassData(shapeId:B3ShapeId):B3MassData {
		#if lime_box3d
		return box3d_b3Shape_ComputeMassData(shapeId);
		#else
		return null;
		#end
	}
	public static function shape_GetClosestPoint(shapeId:B3ShapeId, target:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3Shape_GetClosestPoint(shapeId, target);
		#else
		return null;
		#end
	}
	public static function shape_ApplyWind(shapeId:B3ShapeId, wind:B3Vec3, drag:Float, lift:Float, maxSpeed:Float, wake:Bool):Void {
		#if lime_box3d
		box3d_b3Shape_ApplyWind(shapeId, wind, drag, lift, maxSpeed, wake);
		#end
	}
	public static function destroyJoint(jointId:B3JointId, wakeAttached:Bool):Void {
		#if lime_box3d
		box3d_b3DestroyJoint(jointId, wakeAttached);
		#end
	}
	public static function joint_IsValid(id:B3JointId):Bool {
		#if lime_box3d
		return box3d_b3Joint_IsValid(id);
		#else
		return false;
		#end
	}
	public static function joint_GetType(jointId:B3JointId):Int {
		#if lime_box3d
		return box3d_b3Joint_GetType(jointId);
		#else
		return 0;
		#end
	}
	public static function joint_GetBodyA(jointId:B3JointId):B3BodyId {
		#if lime_box3d
		return box3d_b3Joint_GetBodyA(jointId);
		#else
		return null;
		#end
	}
	public static function joint_GetBodyB(jointId:B3JointId):B3BodyId {
		#if lime_box3d
		return box3d_b3Joint_GetBodyB(jointId);
		#else
		return null;
		#end
	}
	public static function joint_GetWorld(jointId:B3JointId):B3WorldId {
		#if lime_box3d
		return box3d_b3Joint_GetWorld(jointId);
		#else
		return null;
		#end
	}
	public static function joint_SetLocalFrameA(jointId:B3JointId, localFrame:B3Transform):Void {
		#if lime_box3d
		box3d_b3Joint_SetLocalFrameA(jointId, localFrame);
		#end
	}
	public static function joint_GetLocalFrameA(jointId:B3JointId):B3Transform {
		#if lime_box3d
		return box3d_b3Joint_GetLocalFrameA(jointId);
		#else
		return null;
		#end
	}
	public static function joint_SetLocalFrameB(jointId:B3JointId, localFrame:B3Transform):Void {
		#if lime_box3d
		box3d_b3Joint_SetLocalFrameB(jointId, localFrame);
		#end
	}
	public static function joint_GetLocalFrameB(jointId:B3JointId):B3Transform {
		#if lime_box3d
		return box3d_b3Joint_GetLocalFrameB(jointId);
		#else
		return null;
		#end
	}
	public static function joint_SetCollideConnected(jointId:B3JointId, shouldCollide:Bool):Void {
		#if lime_box3d
		box3d_b3Joint_SetCollideConnected(jointId, shouldCollide);
		#end
	}
	public static function joint_GetCollideConnected(jointId:B3JointId):Bool {
		#if lime_box3d
		return box3d_b3Joint_GetCollideConnected(jointId);
		#else
		return false;
		#end
	}
	public static function joint_SetUserData(jointId:B3JointId, userData:CFFIPointer):Void {
		#if lime_box3d
		box3d_b3Joint_SetUserData(jointId, userData);
		#end
	}
	public static function joint_WakeBodies(jointId:B3JointId):Void {
		#if lime_box3d
		box3d_b3Joint_WakeBodies(jointId);
		#end
	}
	public static function joint_IsAwake(jointId:B3JointId):Bool {
		#if lime_box3d
		return box3d_b3Joint_IsAwake(jointId);
		#else
		return false;
		#end
	}
	public static function joint_GetConstraintForce(jointId:B3JointId):B3Vec3 {
		#if lime_box3d
		return box3d_b3Joint_GetConstraintForce(jointId);
		#else
		return null;
		#end
	}
	public static function joint_GetConstraintTorque(jointId:B3JointId):B3Vec3 {
		#if lime_box3d
		return box3d_b3Joint_GetConstraintTorque(jointId);
		#else
		return null;
		#end
	}
	public static function joint_GetLinearSeparation(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3Joint_GetLinearSeparation(jointId);
		#else
		return 0.0;
		#end
	}
	public static function joint_GetAngularSeparation(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3Joint_GetAngularSeparation(jointId);
		#else
		return 0.0;
		#end
	}
	public static function joint_SetConstraintTuning(jointId:B3JointId, hertz:Float, dampingRatio:Float):Void {
		#if lime_box3d
		box3d_b3Joint_SetConstraintTuning(jointId, hertz, dampingRatio);
		#end
	}
	public static function joint_GetConstraintTuning(jointId:B3JointId, hertz:Float, dampingRatio:Float):Void {
		#if lime_box3d
		box3d_b3Joint_GetConstraintTuning(jointId, hertz, dampingRatio);
		#end
	}
	public static function joint_SetForceThreshold(jointId:B3JointId, threshold:Float):Void {
		#if lime_box3d
		box3d_b3Joint_SetForceThreshold(jointId, threshold);
		#end
	}
	public static function joint_GetForceThreshold(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3Joint_GetForceThreshold(jointId);
		#else
		return 0.0;
		#end
	}
	public static function joint_SetTorqueThreshold(jointId:B3JointId, threshold:Float):Void {
		#if lime_box3d
		box3d_b3Joint_SetTorqueThreshold(jointId, threshold);
		#end
	}
	public static function joint_GetTorqueThreshold(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3Joint_GetTorqueThreshold(jointId);
		#else
		return 0.0;
		#end
	}
	public static function createParallelJoint(worldId:B3WorldId, def:B3ParallelJointDef):B3JointId {
		#if lime_box3d
		return box3d_b3CreateParallelJoint(worldId, def);
		#else
		return null;
		#end
	}
	public static function parallelJoint_SetSpringHertz(jointId:B3JointId, hertz:Float):Void {
		#if lime_box3d
		box3d_b3ParallelJoint_SetSpringHertz(jointId, hertz);
		#end
	}
	public static function parallelJoint_SetSpringDampingRatio(jointId:B3JointId, dampingRatio:Float):Void {
		#if lime_box3d
		box3d_b3ParallelJoint_SetSpringDampingRatio(jointId, dampingRatio);
		#end
	}
	public static function parallelJoint_GetSpringHertz(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3ParallelJoint_GetSpringHertz(jointId);
		#else
		return 0.0;
		#end
	}
	public static function parallelJoint_GetSpringDampingRatio(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3ParallelJoint_GetSpringDampingRatio(jointId);
		#else
		return 0.0;
		#end
	}
	public static function parallelJoint_SetMaxTorque(jointId:B3JointId, force:Float):Void {
		#if lime_box3d
		box3d_b3ParallelJoint_SetMaxTorque(jointId, force);
		#end
	}
	public static function parallelJoint_GetMaxTorque(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3ParallelJoint_GetMaxTorque(jointId);
		#else
		return 0.0;
		#end
	}
	public static function createDistanceJoint(worldId:B3WorldId, def:B3DistanceJointDef):B3JointId {
		#if lime_box3d
		return box3d_b3CreateDistanceJoint(worldId, def);
		#else
		return null;
		#end
	}
	public static function distanceJoint_SetLength(jointId:B3JointId, length:Float):Void {
		#if lime_box3d
		box3d_b3DistanceJoint_SetLength(jointId, length);
		#end
	}
	public static function distanceJoint_GetLength(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3DistanceJoint_GetLength(jointId);
		#else
		return 0.0;
		#end
	}
	public static function distanceJoint_EnableSpring(jointId:B3JointId, enableSpring:Bool):Void {
		#if lime_box3d
		box3d_b3DistanceJoint_EnableSpring(jointId, enableSpring);
		#end
	}
	public static function distanceJoint_IsSpringEnabled(jointId:B3JointId):Bool {
		#if lime_box3d
		return box3d_b3DistanceJoint_IsSpringEnabled(jointId);
		#else
		return false;
		#end
	}
	public static function distanceJoint_SetSpringForceRange(jointId:B3JointId, lowerForce:Float, upperForce:Float):Void {
		#if lime_box3d
		box3d_b3DistanceJoint_SetSpringForceRange(jointId, lowerForce, upperForce);
		#end
	}
	public static function distanceJoint_GetSpringForceRange(jointId:B3JointId, lowerForce:Float, upperForce:Float):Void {
		#if lime_box3d
		box3d_b3DistanceJoint_GetSpringForceRange(jointId, lowerForce, upperForce);
		#end
	}
	public static function distanceJoint_SetSpringHertz(jointId:B3JointId, hertz:Float):Void {
		#if lime_box3d
		box3d_b3DistanceJoint_SetSpringHertz(jointId, hertz);
		#end
	}
	public static function distanceJoint_SetSpringDampingRatio(jointId:B3JointId, dampingRatio:Float):Void {
		#if lime_box3d
		box3d_b3DistanceJoint_SetSpringDampingRatio(jointId, dampingRatio);
		#end
	}
	public static function distanceJoint_GetSpringHertz(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3DistanceJoint_GetSpringHertz(jointId);
		#else
		return 0.0;
		#end
	}
	public static function distanceJoint_GetSpringDampingRatio(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3DistanceJoint_GetSpringDampingRatio(jointId);
		#else
		return 0.0;
		#end
	}
	public static function distanceJoint_EnableLimit(jointId:B3JointId, enableLimit:Bool):Void {
		#if lime_box3d
		box3d_b3DistanceJoint_EnableLimit(jointId, enableLimit);
		#end
	}
	public static function distanceJoint_IsLimitEnabled(jointId:B3JointId):Bool {
		#if lime_box3d
		return box3d_b3DistanceJoint_IsLimitEnabled(jointId);
		#else
		return false;
		#end
	}
	public static function distanceJoint_SetLengthRange(jointId:B3JointId, minLength:Float, maxLength:Float):Void {
		#if lime_box3d
		box3d_b3DistanceJoint_SetLengthRange(jointId, minLength, maxLength);
		#end
	}
	public static function distanceJoint_GetMinLength(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3DistanceJoint_GetMinLength(jointId);
		#else
		return 0.0;
		#end
	}
	public static function distanceJoint_GetMaxLength(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3DistanceJoint_GetMaxLength(jointId);
		#else
		return 0.0;
		#end
	}
	public static function distanceJoint_GetCurrentLength(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3DistanceJoint_GetCurrentLength(jointId);
		#else
		return 0.0;
		#end
	}
	public static function distanceJoint_EnableMotor(jointId:B3JointId, enableMotor:Bool):Void {
		#if lime_box3d
		box3d_b3DistanceJoint_EnableMotor(jointId, enableMotor);
		#end
	}
	public static function distanceJoint_IsMotorEnabled(jointId:B3JointId):Bool {
		#if lime_box3d
		return box3d_b3DistanceJoint_IsMotorEnabled(jointId);
		#else
		return false;
		#end
	}
	public static function distanceJoint_SetMotorSpeed(jointId:B3JointId, motorSpeed:Float):Void {
		#if lime_box3d
		box3d_b3DistanceJoint_SetMotorSpeed(jointId, motorSpeed);
		#end
	}
	public static function distanceJoint_GetMotorSpeed(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3DistanceJoint_GetMotorSpeed(jointId);
		#else
		return 0.0;
		#end
	}
	public static function distanceJoint_SetMaxMotorForce(jointId:B3JointId, force:Float):Void {
		#if lime_box3d
		box3d_b3DistanceJoint_SetMaxMotorForce(jointId, force);
		#end
	}
	public static function distanceJoint_GetMaxMotorForce(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3DistanceJoint_GetMaxMotorForce(jointId);
		#else
		return 0.0;
		#end
	}
	public static function distanceJoint_GetMotorForce(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3DistanceJoint_GetMotorForce(jointId);
		#else
		return 0.0;
		#end
	}
	public static function createMotorJoint(worldId:B3WorldId, def:B3MotorJointDef):B3JointId {
		#if lime_box3d
		return box3d_b3CreateMotorJoint(worldId, def);
		#else
		return null;
		#end
	}
	public static function motorJoint_SetLinearVelocity(jointId:B3JointId, velocity:B3Vec3):Void {
		#if lime_box3d
		box3d_b3MotorJoint_SetLinearVelocity(jointId, velocity);
		#end
	}
	public static function motorJoint_GetLinearVelocity(jointId:B3JointId):B3Vec3 {
		#if lime_box3d
		return box3d_b3MotorJoint_GetLinearVelocity(jointId);
		#else
		return null;
		#end
	}
	public static function motorJoint_SetAngularVelocity(jointId:B3JointId, velocity:B3Vec3):Void {
		#if lime_box3d
		box3d_b3MotorJoint_SetAngularVelocity(jointId, velocity);
		#end
	}
	public static function motorJoint_GetAngularVelocity(jointId:B3JointId):B3Vec3 {
		#if lime_box3d
		return box3d_b3MotorJoint_GetAngularVelocity(jointId);
		#else
		return null;
		#end
	}
	public static function motorJoint_SetMaxVelocityForce(jointId:B3JointId, maxForce:Float):Void {
		#if lime_box3d
		box3d_b3MotorJoint_SetMaxVelocityForce(jointId, maxForce);
		#end
	}
	public static function motorJoint_GetMaxVelocityForce(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3MotorJoint_GetMaxVelocityForce(jointId);
		#else
		return 0.0;
		#end
	}
	public static function motorJoint_SetMaxVelocityTorque(jointId:B3JointId, maxTorque:Float):Void {
		#if lime_box3d
		box3d_b3MotorJoint_SetMaxVelocityTorque(jointId, maxTorque);
		#end
	}
	public static function motorJoint_GetMaxVelocityTorque(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3MotorJoint_GetMaxVelocityTorque(jointId);
		#else
		return 0.0;
		#end
	}
	public static function motorJoint_SetLinearHertz(jointId:B3JointId, hertz:Float):Void {
		#if lime_box3d
		box3d_b3MotorJoint_SetLinearHertz(jointId, hertz);
		#end
	}
	public static function motorJoint_GetLinearHertz(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3MotorJoint_GetLinearHertz(jointId);
		#else
		return 0.0;
		#end
	}
	public static function motorJoint_SetLinearDampingRatio(jointId:B3JointId, damping:Float):Void {
		#if lime_box3d
		box3d_b3MotorJoint_SetLinearDampingRatio(jointId, damping);
		#end
	}
	public static function motorJoint_GetLinearDampingRatio(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3MotorJoint_GetLinearDampingRatio(jointId);
		#else
		return 0.0;
		#end
	}
	public static function motorJoint_SetAngularHertz(jointId:B3JointId, hertz:Float):Void {
		#if lime_box3d
		box3d_b3MotorJoint_SetAngularHertz(jointId, hertz);
		#end
	}
	public static function motorJoint_GetAngularHertz(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3MotorJoint_GetAngularHertz(jointId);
		#else
		return 0.0;
		#end
	}
	public static function motorJoint_SetAngularDampingRatio(jointId:B3JointId, damping:Float):Void {
		#if lime_box3d
		box3d_b3MotorJoint_SetAngularDampingRatio(jointId, damping);
		#end
	}
	public static function motorJoint_GetAngularDampingRatio(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3MotorJoint_GetAngularDampingRatio(jointId);
		#else
		return 0.0;
		#end
	}
	public static function motorJoint_SetMaxSpringForce(jointId:B3JointId, maxForce:Float):Void {
		#if lime_box3d
		box3d_b3MotorJoint_SetMaxSpringForce(jointId, maxForce);
		#end
	}
	public static function motorJoint_GetMaxSpringForce(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3MotorJoint_GetMaxSpringForce(jointId);
		#else
		return 0.0;
		#end
	}
	public static function motorJoint_SetMaxSpringTorque(jointId:B3JointId, maxTorque:Float):Void {
		#if lime_box3d
		box3d_b3MotorJoint_SetMaxSpringTorque(jointId, maxTorque);
		#end
	}
	public static function motorJoint_GetMaxSpringTorque(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3MotorJoint_GetMaxSpringTorque(jointId);
		#else
		return 0.0;
		#end
	}
	public static function createFilterJoint(worldId:B3WorldId, def:B3FilterJointDef):B3JointId {
		#if lime_box3d
		return box3d_b3CreateFilterJoint(worldId, def);
		#else
		return null;
		#end
	}
	public static function createPrismaticJoint(worldId:B3WorldId, def:B3PrismaticJointDef):B3JointId {
		#if lime_box3d
		return box3d_b3CreatePrismaticJoint(worldId, def);
		#else
		return null;
		#end
	}
	public static function prismaticJoint_EnableSpring(jointId:B3JointId, enableSpring:Bool):Void {
		#if lime_box3d
		box3d_b3PrismaticJoint_EnableSpring(jointId, enableSpring);
		#end
	}
	public static function prismaticJoint_IsSpringEnabled(jointId:B3JointId):Bool {
		#if lime_box3d
		return box3d_b3PrismaticJoint_IsSpringEnabled(jointId);
		#else
		return false;
		#end
	}
	public static function prismaticJoint_SetSpringHertz(jointId:B3JointId, hertz:Float):Void {
		#if lime_box3d
		box3d_b3PrismaticJoint_SetSpringHertz(jointId, hertz);
		#end
	}
	public static function prismaticJoint_GetSpringHertz(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3PrismaticJoint_GetSpringHertz(jointId);
		#else
		return 0.0;
		#end
	}
	public static function prismaticJoint_SetSpringDampingRatio(jointId:B3JointId, dampingRatio:Float):Void {
		#if lime_box3d
		box3d_b3PrismaticJoint_SetSpringDampingRatio(jointId, dampingRatio);
		#end
	}
	public static function prismaticJoint_GetSpringDampingRatio(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3PrismaticJoint_GetSpringDampingRatio(jointId);
		#else
		return 0.0;
		#end
	}
	public static function prismaticJoint_SetTargetTranslation(jointId:B3JointId, targetTranslation:Float):Void {
		#if lime_box3d
		box3d_b3PrismaticJoint_SetTargetTranslation(jointId, targetTranslation);
		#end
	}
	public static function prismaticJoint_GetTargetTranslation(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3PrismaticJoint_GetTargetTranslation(jointId);
		#else
		return 0.0;
		#end
	}
	public static function prismaticJoint_EnableLimit(jointId:B3JointId, enableLimit:Bool):Void {
		#if lime_box3d
		box3d_b3PrismaticJoint_EnableLimit(jointId, enableLimit);
		#end
	}
	public static function prismaticJoint_IsLimitEnabled(jointId:B3JointId):Bool {
		#if lime_box3d
		return box3d_b3PrismaticJoint_IsLimitEnabled(jointId);
		#else
		return false;
		#end
	}
	public static function prismaticJoint_GetLowerLimit(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3PrismaticJoint_GetLowerLimit(jointId);
		#else
		return 0.0;
		#end
	}
	public static function prismaticJoint_GetUpperLimit(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3PrismaticJoint_GetUpperLimit(jointId);
		#else
		return 0.0;
		#end
	}
	public static function prismaticJoint_SetLimits(jointId:B3JointId, lower:Float, upper:Float):Void {
		#if lime_box3d
		box3d_b3PrismaticJoint_SetLimits(jointId, lower, upper);
		#end
	}
	public static function prismaticJoint_EnableMotor(jointId:B3JointId, enableMotor:Bool):Void {
		#if lime_box3d
		box3d_b3PrismaticJoint_EnableMotor(jointId, enableMotor);
		#end
	}
	public static function prismaticJoint_IsMotorEnabled(jointId:B3JointId):Bool {
		#if lime_box3d
		return box3d_b3PrismaticJoint_IsMotorEnabled(jointId);
		#else
		return false;
		#end
	}
	public static function prismaticJoint_SetMotorSpeed(jointId:B3JointId, motorSpeed:Float):Void {
		#if lime_box3d
		box3d_b3PrismaticJoint_SetMotorSpeed(jointId, motorSpeed);
		#end
	}
	public static function prismaticJoint_GetMotorSpeed(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3PrismaticJoint_GetMotorSpeed(jointId);
		#else
		return 0.0;
		#end
	}
	public static function prismaticJoint_SetMaxMotorForce(jointId:B3JointId, force:Float):Void {
		#if lime_box3d
		box3d_b3PrismaticJoint_SetMaxMotorForce(jointId, force);
		#end
	}
	public static function prismaticJoint_GetMaxMotorForce(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3PrismaticJoint_GetMaxMotorForce(jointId);
		#else
		return 0.0;
		#end
	}
	public static function prismaticJoint_GetMotorForce(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3PrismaticJoint_GetMotorForce(jointId);
		#else
		return 0.0;
		#end
	}
	public static function prismaticJoint_GetTranslation(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3PrismaticJoint_GetTranslation(jointId);
		#else
		return 0.0;
		#end
	}
	public static function prismaticJoint_GetSpeed(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3PrismaticJoint_GetSpeed(jointId);
		#else
		return 0.0;
		#end
	}
	public static function createRevoluteJoint(worldId:B3WorldId, def:B3RevoluteJointDef):B3JointId {
		#if lime_box3d
		return box3d_b3CreateRevoluteJoint(worldId, def);
		#else
		return null;
		#end
	}
	public static function revoluteJoint_EnableSpring(jointId:B3JointId, enableSpring:Bool):Void {
		#if lime_box3d
		box3d_b3RevoluteJoint_EnableSpring(jointId, enableSpring);
		#end
	}
	public static function revoluteJoint_IsSpringEnabled(jointId:B3JointId):Bool {
		#if lime_box3d
		return box3d_b3RevoluteJoint_IsSpringEnabled(jointId);
		#else
		return false;
		#end
	}
	public static function revoluteJoint_SetSpringHertz(jointId:B3JointId, hertz:Float):Void {
		#if lime_box3d
		box3d_b3RevoluteJoint_SetSpringHertz(jointId, hertz);
		#end
	}
	public static function revoluteJoint_GetSpringHertz(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3RevoluteJoint_GetSpringHertz(jointId);
		#else
		return 0.0;
		#end
	}
	public static function revoluteJoint_SetSpringDampingRatio(jointId:B3JointId, dampingRatio:Float):Void {
		#if lime_box3d
		box3d_b3RevoluteJoint_SetSpringDampingRatio(jointId, dampingRatio);
		#end
	}
	public static function revoluteJoint_GetSpringDampingRatio(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3RevoluteJoint_GetSpringDampingRatio(jointId);
		#else
		return 0.0;
		#end
	}
	public static function revoluteJoint_SetTargetAngle(jointId:B3JointId, targetRadians:Float):Void {
		#if lime_box3d
		box3d_b3RevoluteJoint_SetTargetAngle(jointId, targetRadians);
		#end
	}
	public static function revoluteJoint_GetTargetAngle(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3RevoluteJoint_GetTargetAngle(jointId);
		#else
		return 0.0;
		#end
	}
	public static function revoluteJoint_GetAngle(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3RevoluteJoint_GetAngle(jointId);
		#else
		return 0.0;
		#end
	}
	public static function revoluteJoint_EnableLimit(jointId:B3JointId, enableLimit:Bool):Void {
		#if lime_box3d
		box3d_b3RevoluteJoint_EnableLimit(jointId, enableLimit);
		#end
	}
	public static function revoluteJoint_IsLimitEnabled(jointId:B3JointId):Bool {
		#if lime_box3d
		return box3d_b3RevoluteJoint_IsLimitEnabled(jointId);
		#else
		return false;
		#end
	}
	public static function revoluteJoint_GetLowerLimit(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3RevoluteJoint_GetLowerLimit(jointId);
		#else
		return 0.0;
		#end
	}
	public static function revoluteJoint_GetUpperLimit(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3RevoluteJoint_GetUpperLimit(jointId);
		#else
		return 0.0;
		#end
	}
	public static function revoluteJoint_SetLimits(jointId:B3JointId, lowerLimitRadians:Float, upperLimitRadians:Float):Void {
		#if lime_box3d
		box3d_b3RevoluteJoint_SetLimits(jointId, lowerLimitRadians, upperLimitRadians);
		#end
	}
	public static function revoluteJoint_EnableMotor(jointId:B3JointId, enableMotor:Bool):Void {
		#if lime_box3d
		box3d_b3RevoluteJoint_EnableMotor(jointId, enableMotor);
		#end
	}
	public static function revoluteJoint_IsMotorEnabled(jointId:B3JointId):Bool {
		#if lime_box3d
		return box3d_b3RevoluteJoint_IsMotorEnabled(jointId);
		#else
		return false;
		#end
	}
	public static function revoluteJoint_SetMotorSpeed(jointId:B3JointId, motorSpeed:Float):Void {
		#if lime_box3d
		box3d_b3RevoluteJoint_SetMotorSpeed(jointId, motorSpeed);
		#end
	}
	public static function revoluteJoint_GetMotorSpeed(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3RevoluteJoint_GetMotorSpeed(jointId);
		#else
		return 0.0;
		#end
	}
	public static function revoluteJoint_GetMotorTorque(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3RevoluteJoint_GetMotorTorque(jointId);
		#else
		return 0.0;
		#end
	}
	public static function revoluteJoint_SetMaxMotorTorque(jointId:B3JointId, torque:Float):Void {
		#if lime_box3d
		box3d_b3RevoluteJoint_SetMaxMotorTorque(jointId, torque);
		#end
	}
	public static function revoluteJoint_GetMaxMotorTorque(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3RevoluteJoint_GetMaxMotorTorque(jointId);
		#else
		return 0.0;
		#end
	}
	public static function createSphericalJoint(worldId:B3WorldId, def:B3SphericalJointDef):B3JointId {
		#if lime_box3d
		return box3d_b3CreateSphericalJoint(worldId, def);
		#else
		return null;
		#end
	}
	public static function sphericalJoint_EnableConeLimit(jointId:B3JointId, enableLimit:Bool):Void {
		#if lime_box3d
		box3d_b3SphericalJoint_EnableConeLimit(jointId, enableLimit);
		#end
	}
	public static function sphericalJoint_IsConeLimitEnabled(jointId:B3JointId):Bool {
		#if lime_box3d
		return box3d_b3SphericalJoint_IsConeLimitEnabled(jointId);
		#else
		return false;
		#end
	}
	public static function sphericalJoint_GetConeLimit(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3SphericalJoint_GetConeLimit(jointId);
		#else
		return 0.0;
		#end
	}
	public static function sphericalJoint_SetConeLimit(jointId:B3JointId, angleRadians:Float):Void {
		#if lime_box3d
		box3d_b3SphericalJoint_SetConeLimit(jointId, angleRadians);
		#end
	}
	public static function sphericalJoint_GetConeAngle(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3SphericalJoint_GetConeAngle(jointId);
		#else
		return 0.0;
		#end
	}
	public static function sphericalJoint_EnableTwistLimit(jointId:B3JointId, enableLimit:Bool):Void {
		#if lime_box3d
		box3d_b3SphericalJoint_EnableTwistLimit(jointId, enableLimit);
		#end
	}
	public static function sphericalJoint_IsTwistLimitEnabled(jointId:B3JointId):Bool {
		#if lime_box3d
		return box3d_b3SphericalJoint_IsTwistLimitEnabled(jointId);
		#else
		return false;
		#end
	}
	public static function sphericalJoint_GetLowerTwistLimit(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3SphericalJoint_GetLowerTwistLimit(jointId);
		#else
		return 0.0;
		#end
	}
	public static function sphericalJoint_GetUpperTwistLimit(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3SphericalJoint_GetUpperTwistLimit(jointId);
		#else
		return 0.0;
		#end
	}
	public static function sphericalJoint_SetTwistLimits(jointId:B3JointId, lowerLimitRadians:Float, upperLimitRadians:Float):Void {
		#if lime_box3d
		box3d_b3SphericalJoint_SetTwistLimits(jointId, lowerLimitRadians, upperLimitRadians);
		#end
	}
	public static function sphericalJoint_GetTwistAngle(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3SphericalJoint_GetTwistAngle(jointId);
		#else
		return 0.0;
		#end
	}
	public static function sphericalJoint_EnableSpring(jointId:B3JointId, enableSpring:Bool):Void {
		#if lime_box3d
		box3d_b3SphericalJoint_EnableSpring(jointId, enableSpring);
		#end
	}
	public static function sphericalJoint_IsSpringEnabled(jointId:B3JointId):Bool {
		#if lime_box3d
		return box3d_b3SphericalJoint_IsSpringEnabled(jointId);
		#else
		return false;
		#end
	}
	public static function sphericalJoint_SetSpringHertz(jointId:B3JointId, hertz:Float):Void {
		#if lime_box3d
		box3d_b3SphericalJoint_SetSpringHertz(jointId, hertz);
		#end
	}
	public static function sphericalJoint_GetSpringHertz(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3SphericalJoint_GetSpringHertz(jointId);
		#else
		return 0.0;
		#end
	}
	public static function sphericalJoint_SetSpringDampingRatio(jointId:B3JointId, dampingRatio:Float):Void {
		#if lime_box3d
		box3d_b3SphericalJoint_SetSpringDampingRatio(jointId, dampingRatio);
		#end
	}
	public static function sphericalJoint_GetSpringDampingRatio(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3SphericalJoint_GetSpringDampingRatio(jointId);
		#else
		return 0.0;
		#end
	}
	public static function sphericalJoint_SetTargetRotation(jointId:B3JointId, targetRotation:B3Quat):Void {
		#if lime_box3d
		box3d_b3SphericalJoint_SetTargetRotation(jointId, targetRotation);
		#end
	}
	public static function sphericalJoint_GetTargetRotation(jointId:B3JointId):B3Quat {
		#if lime_box3d
		return box3d_b3SphericalJoint_GetTargetRotation(jointId);
		#else
		return null;
		#end
	}
	public static function sphericalJoint_EnableMotor(jointId:B3JointId, enableMotor:Bool):Void {
		#if lime_box3d
		box3d_b3SphericalJoint_EnableMotor(jointId, enableMotor);
		#end
	}
	public static function sphericalJoint_IsMotorEnabled(jointId:B3JointId):Bool {
		#if lime_box3d
		return box3d_b3SphericalJoint_IsMotorEnabled(jointId);
		#else
		return false;
		#end
	}
	public static function sphericalJoint_SetMotorVelocity(jointId:B3JointId, motorVelocity:B3Vec3):Void {
		#if lime_box3d
		box3d_b3SphericalJoint_SetMotorVelocity(jointId, motorVelocity);
		#end
	}
	public static function sphericalJoint_GetMotorVelocity(jointId:B3JointId):B3Vec3 {
		#if lime_box3d
		return box3d_b3SphericalJoint_GetMotorVelocity(jointId);
		#else
		return null;
		#end
	}
	public static function sphericalJoint_GetMotorTorque(jointId:B3JointId):B3Vec3 {
		#if lime_box3d
		return box3d_b3SphericalJoint_GetMotorTorque(jointId);
		#else
		return null;
		#end
	}
	public static function sphericalJoint_SetMaxMotorTorque(jointId:B3JointId, torque:Float):Void {
		#if lime_box3d
		box3d_b3SphericalJoint_SetMaxMotorTorque(jointId, torque);
		#end
	}
	public static function sphericalJoint_GetMaxMotorTorque(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3SphericalJoint_GetMaxMotorTorque(jointId);
		#else
		return 0.0;
		#end
	}
	public static function createWeldJoint(worldId:B3WorldId, def:B3WeldJointDef):B3JointId {
		#if lime_box3d
		return box3d_b3CreateWeldJoint(worldId, def);
		#else
		return null;
		#end
	}
	public static function weldJoint_SetLinearHertz(jointId:B3JointId, hertz:Float):Void {
		#if lime_box3d
		box3d_b3WeldJoint_SetLinearHertz(jointId, hertz);
		#end
	}
	public static function weldJoint_GetLinearHertz(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3WeldJoint_GetLinearHertz(jointId);
		#else
		return 0.0;
		#end
	}
	public static function weldJoint_SetLinearDampingRatio(jointId:B3JointId, dampingRatio:Float):Void {
		#if lime_box3d
		box3d_b3WeldJoint_SetLinearDampingRatio(jointId, dampingRatio);
		#end
	}
	public static function weldJoint_GetLinearDampingRatio(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3WeldJoint_GetLinearDampingRatio(jointId);
		#else
		return 0.0;
		#end
	}
	public static function weldJoint_SetAngularHertz(jointId:B3JointId, hertz:Float):Void {
		#if lime_box3d
		box3d_b3WeldJoint_SetAngularHertz(jointId, hertz);
		#end
	}
	public static function weldJoint_GetAngularHertz(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3WeldJoint_GetAngularHertz(jointId);
		#else
		return 0.0;
		#end
	}
	public static function weldJoint_SetAngularDampingRatio(jointId:B3JointId, dampingRatio:Float):Void {
		#if lime_box3d
		box3d_b3WeldJoint_SetAngularDampingRatio(jointId, dampingRatio);
		#end
	}
	public static function weldJoint_GetAngularDampingRatio(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3WeldJoint_GetAngularDampingRatio(jointId);
		#else
		return 0.0;
		#end
	}
	public static function createWheelJoint(worldId:B3WorldId, def:B3WheelJointDef):B3JointId {
		#if lime_box3d
		return box3d_b3CreateWheelJoint(worldId, def);
		#else
		return null;
		#end
	}
	public static function wheelJoint_EnableSuspension(jointId:B3JointId, flag:Bool):Void {
		#if lime_box3d
		box3d_b3WheelJoint_EnableSuspension(jointId, flag);
		#end
	}
	public static function wheelJoint_IsSuspensionEnabled(jointId:B3JointId):Bool {
		#if lime_box3d
		return box3d_b3WheelJoint_IsSuspensionEnabled(jointId);
		#else
		return false;
		#end
	}
	public static function wheelJoint_SetSuspensionHertz(jointId:B3JointId, hertz:Float):Void {
		#if lime_box3d
		box3d_b3WheelJoint_SetSuspensionHertz(jointId, hertz);
		#end
	}
	public static function wheelJoint_GetSuspensionHertz(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3WheelJoint_GetSuspensionHertz(jointId);
		#else
		return 0.0;
		#end
	}
	public static function wheelJoint_SetSuspensionDampingRatio(jointId:B3JointId, dampingRatio:Float):Void {
		#if lime_box3d
		box3d_b3WheelJoint_SetSuspensionDampingRatio(jointId, dampingRatio);
		#end
	}
	public static function wheelJoint_GetSuspensionDampingRatio(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3WheelJoint_GetSuspensionDampingRatio(jointId);
		#else
		return 0.0;
		#end
	}
	public static function wheelJoint_EnableSuspensionLimit(jointId:B3JointId, flag:Bool):Void {
		#if lime_box3d
		box3d_b3WheelJoint_EnableSuspensionLimit(jointId, flag);
		#end
	}
	public static function wheelJoint_IsSuspensionLimitEnabled(jointId:B3JointId):Bool {
		#if lime_box3d
		return box3d_b3WheelJoint_IsSuspensionLimitEnabled(jointId);
		#else
		return false;
		#end
	}
	public static function wheelJoint_GetLowerSuspensionLimit(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3WheelJoint_GetLowerSuspensionLimit(jointId);
		#else
		return 0.0;
		#end
	}
	public static function wheelJoint_GetUpperSuspensionLimit(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3WheelJoint_GetUpperSuspensionLimit(jointId);
		#else
		return 0.0;
		#end
	}
	public static function wheelJoint_SetSuspensionLimits(jointId:B3JointId, lower:Float, upper:Float):Void {
		#if lime_box3d
		box3d_b3WheelJoint_SetSuspensionLimits(jointId, lower, upper);
		#end
	}
	public static function wheelJoint_EnableSpinMotor(jointId:B3JointId, flag:Bool):Void {
		#if lime_box3d
		box3d_b3WheelJoint_EnableSpinMotor(jointId, flag);
		#end
	}
	public static function wheelJoint_IsSpinMotorEnabled(jointId:B3JointId):Bool {
		#if lime_box3d
		return box3d_b3WheelJoint_IsSpinMotorEnabled(jointId);
		#else
		return false;
		#end
	}
	public static function wheelJoint_SetSpinMotorSpeed(jointId:B3JointId, speed:Float):Void {
		#if lime_box3d
		box3d_b3WheelJoint_SetSpinMotorSpeed(jointId, speed);
		#end
	}
	public static function wheelJoint_GetSpinMotorSpeed(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3WheelJoint_GetSpinMotorSpeed(jointId);
		#else
		return 0.0;
		#end
	}
	public static function wheelJoint_SetMaxSpinTorque(jointId:B3JointId, torque:Float):Void {
		#if lime_box3d
		box3d_b3WheelJoint_SetMaxSpinTorque(jointId, torque);
		#end
	}
	public static function wheelJoint_GetMaxSpinTorque(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3WheelJoint_GetMaxSpinTorque(jointId);
		#else
		return 0.0;
		#end
	}
	public static function wheelJoint_GetSpinSpeed(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3WheelJoint_GetSpinSpeed(jointId);
		#else
		return 0.0;
		#end
	}
	public static function wheelJoint_GetSpinTorque(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3WheelJoint_GetSpinTorque(jointId);
		#else
		return 0.0;
		#end
	}
	public static function wheelJoint_EnableSteering(jointId:B3JointId, flag:Bool):Void {
		#if lime_box3d
		box3d_b3WheelJoint_EnableSteering(jointId, flag);
		#end
	}
	public static function wheelJoint_IsSteeringEnabled(jointId:B3JointId):Bool {
		#if lime_box3d
		return box3d_b3WheelJoint_IsSteeringEnabled(jointId);
		#else
		return false;
		#end
	}
	public static function wheelJoint_SetSteeringHertz(jointId:B3JointId, hertz:Float):Void {
		#if lime_box3d
		box3d_b3WheelJoint_SetSteeringHertz(jointId, hertz);
		#end
	}
	public static function wheelJoint_GetSteeringHertz(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3WheelJoint_GetSteeringHertz(jointId);
		#else
		return 0.0;
		#end
	}
	public static function wheelJoint_SetSteeringDampingRatio(jointId:B3JointId, dampingRatio:Float):Void {
		#if lime_box3d
		box3d_b3WheelJoint_SetSteeringDampingRatio(jointId, dampingRatio);
		#end
	}
	public static function wheelJoint_GetSteeringDampingRatio(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3WheelJoint_GetSteeringDampingRatio(jointId);
		#else
		return 0.0;
		#end
	}
	public static function wheelJoint_SetMaxSteeringTorque(jointId:B3JointId, torque:Float):Void {
		#if lime_box3d
		box3d_b3WheelJoint_SetMaxSteeringTorque(jointId, torque);
		#end
	}
	public static function wheelJoint_GetMaxSteeringTorque(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3WheelJoint_GetMaxSteeringTorque(jointId);
		#else
		return 0.0;
		#end
	}
	public static function wheelJoint_EnableSteeringLimit(jointId:B3JointId, flag:Bool):Void {
		#if lime_box3d
		box3d_b3WheelJoint_EnableSteeringLimit(jointId, flag);
		#end
	}
	public static function wheelJoint_IsSteeringLimitEnabled(jointId:B3JointId):Bool {
		#if lime_box3d
		return box3d_b3WheelJoint_IsSteeringLimitEnabled(jointId);
		#else
		return false;
		#end
	}
	public static function wheelJoint_GetLowerSteeringLimit(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3WheelJoint_GetLowerSteeringLimit(jointId);
		#else
		return 0.0;
		#end
	}
	public static function wheelJoint_GetUpperSteeringLimit(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3WheelJoint_GetUpperSteeringLimit(jointId);
		#else
		return 0.0;
		#end
	}
	public static function wheelJoint_SetSteeringLimits(jointId:B3JointId, lowerRadians:Float, upperRadians:Float):Void {
		#if lime_box3d
		box3d_b3WheelJoint_SetSteeringLimits(jointId, lowerRadians, upperRadians);
		#end
	}
	public static function wheelJoint_SetTargetSteeringAngle(jointId:B3JointId, radians:Float):Void {
		#if lime_box3d
		box3d_b3WheelJoint_SetTargetSteeringAngle(jointId, radians);
		#end
	}
	public static function wheelJoint_GetTargetSteeringAngle(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3WheelJoint_GetTargetSteeringAngle(jointId);
		#else
		return 0.0;
		#end
	}
	public static function wheelJoint_GetSteeringAngle(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3WheelJoint_GetSteeringAngle(jointId);
		#else
		return 0.0;
		#end
	}
	public static function wheelJoint_GetSteeringTorque(jointId:B3JointId):Float {
		#if lime_box3d
		return box3d_b3WheelJoint_GetSteeringTorque(jointId);
		#else
		return 0.0;
		#end
	}
	public static function contact_IsValid(id:B3ContactId):Bool {
		#if lime_box3d
		return box3d_b3Contact_IsValid(id);
		#else
		return false;
		#end
	}
	public static function contact_GetData(contactId:B3ContactId):B3ContactData {
		#if lime_box3d
		return box3d_b3Contact_GetData(contactId);
		#else
		return null;
		#end
	}
	#if lime_box3d
	private static var box3d_b3CreateWorld = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CreateWorld", "oo", false));
	private static var box3d_b3DestroyWorld = new cpp.Callable<cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3DestroyWorld", "ov", false));
	private static var box3d_b3GetWorldCount = new cpp.Callable<Void->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3GetWorldCount", "i", false));
	private static var box3d_b3GetMaxWorldCount = new cpp.Callable<Void->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3GetMaxWorldCount", "i", false));
	private static var box3d_b3World_IsValid = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3World_IsValid", "ob", false));
	private static var box3d_b3World_Step = new cpp.Callable<cpp.Object->Float32->Int->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3World_Step", "ofiv", false));
	private static var box3d_b3World_GetBounds = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3World_GetBounds", "oo", false));
	private static var box3d_b3World_GetBodyEvents = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3World_GetBodyEvents", "oo", false));
	private static var box3d_b3World_GetSensorEvents = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3World_GetSensorEvents", "oo", false));
	private static var box3d_b3World_GetContactEvents = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3World_GetContactEvents", "oo", false));
	private static var box3d_b3World_GetJointEvents = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3World_GetJointEvents", "oo", false));
	private static var box3d_b3World_OverlapAABB = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3World_OverlapAABB", "oooooo", false));
	private static var box3d_b3World_OverlapShape = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3World_OverlapShape", "ooooooo", false));
	private static var box3d_b3World_CastRay = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3World_CastRay", "ooooooo", false));
	private static var box3d_b3World_CastRayClosest = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3World_CastRayClosest", "ooooo", false));
	private static var box3d_b3World_CastShape = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3World_CastShape", "oooooooo", false));
	private static var box3d_b3World_CastMover = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3World_CastMover", "ooooooof", false));
	private static var box3d_b3World_CollideMover = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3World_CollideMover", "oooooov", false));
	private static var box3d_b3World_EnableSleeping = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3World_EnableSleeping", "obv", false));
	private static var box3d_b3World_IsSleepingEnabled = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3World_IsSleepingEnabled", "ob", false));
	private static var box3d_b3World_EnableContinuous = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3World_EnableContinuous", "obv", false));
	private static var box3d_b3World_IsContinuousEnabled = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3World_IsContinuousEnabled", "ob", false));
	private static var box3d_b3World_SetRestitutionThreshold = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3World_SetRestitutionThreshold", "ofv", false));
	private static var box3d_b3World_GetRestitutionThreshold = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3World_GetRestitutionThreshold", "of", false));
	private static var box3d_b3World_SetHitEventThreshold = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3World_SetHitEventThreshold", "ofv", false));
	private static var box3d_b3World_GetHitEventThreshold = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3World_GetHitEventThreshold", "of", false));
	private static var box3d_b3World_SetCustomFilterCallback = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3World_SetCustomFilterCallback", "ooov", false));
	private static var box3d_b3World_SetPreSolveCallback = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3World_SetPreSolveCallback", "ooov", false));
	private static var box3d_b3World_SetGravity = new cpp.Callable<cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3World_SetGravity", "oov", false));
	private static var box3d_b3World_GetGravity = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3World_GetGravity", "oo", false));
	private static var box3d_b3World_Explode = new cpp.Callable<cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3World_Explode", "oov", false));
	private static var box3d_b3World_SetContactTuning = new cpp.Callable<cpp.Object->Float32->Float32->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3World_SetContactTuning", "offfv", false));
	private static var box3d_b3World_SetContactRecycleDistance = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3World_SetContactRecycleDistance", "ofv", false));
	private static var box3d_b3World_GetContactRecycleDistance = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3World_GetContactRecycleDistance", "of", false));
	private static var box3d_b3World_SetMaximumLinearSpeed = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3World_SetMaximumLinearSpeed", "ofv", false));
	private static var box3d_b3World_GetMaximumLinearSpeed = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3World_GetMaximumLinearSpeed", "of", false));
	private static var box3d_b3World_EnableWarmStarting = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3World_EnableWarmStarting", "obv", false));
	private static var box3d_b3World_IsWarmStartingEnabled = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3World_IsWarmStartingEnabled", "ob", false));
	private static var box3d_b3World_GetAwakeBodyCount = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3World_GetAwakeBodyCount", "oi", false));
	private static var box3d_b3World_GetProfile = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3World_GetProfile", "oo", false));
	private static var box3d_b3World_GetCounters = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3World_GetCounters", "oo", false));
	private static var box3d_b3World_GetMaxCapacity = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3World_GetMaxCapacity", "oo", false));
	private static var box3d_b3World_SetUserData = new cpp.Callable<cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3World_SetUserData", "oov", false));
	private static var box3d_b3World_SetFrictionCallback = new cpp.Callable<cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3World_SetFrictionCallback", "oov", false));
	private static var box3d_b3World_SetRestitutionCallback = new cpp.Callable<cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3World_SetRestitutionCallback", "oov", false));
	private static var box3d_b3World_SetWorkerCount = new cpp.Callable<cpp.Object->Int->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3World_SetWorkerCount", "oiv", false));
	private static var box3d_b3World_GetWorkerCount = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3World_GetWorkerCount", "oi", false));
	private static var box3d_b3World_DumpMemoryStats = new cpp.Callable<cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3World_DumpMemoryStats", "ov", false));
	private static var box3d_b3World_RebuildStaticTree = new cpp.Callable<cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3World_RebuildStaticTree", "ov", false));
	private static var box3d_b3World_EnableSpeculative = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3World_EnableSpeculative", "obv", false));
	private static var box3d_b3DestroyRecording = new cpp.Callable<cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3DestroyRecording", "ov", false));
	private static var box3d_b3Recording_GetSize = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Recording_GetSize", "oi", false));
	private static var box3d_b3World_StartRecording = new cpp.Callable<cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3World_StartRecording", "oov", false));
	private static var box3d_b3World_StopRecording = new cpp.Callable<cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3World_StopRecording", "ov", false));
	private static var box3d_b3SaveRecordingToFile = new cpp.Callable<cpp.Object->String->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3SaveRecordingToFile", "osb", false));
	private static var box3d_b3ValidateReplay = new cpp.Callable<cpp.Object->Int->Int->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3ValidateReplay", "oiib", false));
	private static var box3d_b3DestroyPlayer = new cpp.Callable<cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3DestroyPlayer", "ov", false));
	private static var box3d_b3RecPlayer_StepFrame = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayer_StepFrame", "ob", false));
	private static var box3d_b3RecPlayer_SubStepFrame = new cpp.Callable<cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayer_SubStepFrame", "ov", false));
	private static var box3d_b3RecPlayer_Restart = new cpp.Callable<cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayer_Restart", "ov", false));
	private static var box3d_b3RecPlayer_SeekFrame = new cpp.Callable<cpp.Object->Int->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayer_SeekFrame", "oiv", false));
	private static var box3d_b3RecPlayer_GetWorldId = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayer_GetWorldId", "oo", false));
	private static var box3d_b3RecPlayer_GetFrame = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayer_GetFrame", "oi", false));
	private static var box3d_b3RecPlayer_GetFrameCount = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayer_GetFrameCount", "oi", false));
	private static var box3d_b3RecPlayer_IsAtEnd = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayer_IsAtEnd", "ob", false));
	private static var box3d_b3RecPlayer_IsAtPreStep = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayer_IsAtPreStep", "ob", false));
	private static var box3d_b3RecPlayer_HasDiverged = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayer_HasDiverged", "ob", false));
	private static var box3d_b3RecPlayer_GetInfo = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayer_GetInfo", "oo", false));
	private static var box3d_b3RecPlayer_GetDivergeFrame = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayer_GetDivergeFrame", "oi", false));
	private static var box3d_b3RecPlayer_SetWorkerCount = new cpp.Callable<cpp.Object->Int->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayer_SetWorkerCount", "oiv", false));
	private static var box3d_b3RecPlayer_SetKeyframePolicy = new cpp.Callable<cpp.Object->cpp.Object->Int->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayer_SetKeyframePolicy", "ooiv", false));
	private static var box3d_b3RecPlayer_GetKeyframeMinInterval = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayer_GetKeyframeMinInterval", "oi", false));
	private static var box3d_b3RecPlayer_GetKeyframeInterval = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayer_GetKeyframeInterval", "oi", false));
	private static var box3d_b3RecPlayer_GetBodyCount = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayer_GetBodyCount", "oi", false));
	private static var box3d_b3RecPlayer_GetBodyId = new cpp.Callable<cpp.Object->Int->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayer_GetBodyId", "oio", false));
	private static var box3d_b3RecPlayer_SetDebugShapeCallbacks = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayer_SetDebugShapeCallbacks", "oooov", false));
	private static var box3d_b3RecPlayer_DrawFrameQueries = new cpp.Callable<cpp.Object->cpp.Object->Int->Int->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayer_DrawFrameQueries", "ooiiv", false));
	private static var box3d_b3RecPlayer_GetFrameQueryCount = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayer_GetFrameQueryCount", "oi", false));
	private static var box3d_b3RecPlayer_GetFrameQuery = new cpp.Callable<cpp.Object->Int->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayer_GetFrameQuery", "oio", false));
	private static var box3d_b3RecPlayer_GetFrameQueryHit = new cpp.Callable<cpp.Object->Int->Int->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayer_GetFrameQueryHit", "oiio", false));
	private static var box3d_b3CreateBody = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CreateBody", "ooo", false));
	private static var box3d_b3DestroyBody = new cpp.Callable<cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3DestroyBody", "ov", false));
	private static var box3d_b3Body_IsValid = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_IsValid", "ob", false));
	private static var box3d_b3Body_GetType = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetType", "oi", false));
	private static var box3d_b3Body_SetType = new cpp.Callable<cpp.Object->Int->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_SetType", "oiv", false));
	private static var box3d_b3Body_SetName = new cpp.Callable<cpp.Object->String->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_SetName", "osv", false));
	private static var box3d_b3Body_SetUserData = new cpp.Callable<cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_SetUserData", "oov", false));
	private static var box3d_b3Body_GetPosition = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetPosition", "oo", false));
	private static var box3d_b3Body_GetRotation = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetRotation", "oo", false));
	private static var box3d_b3Body_GetTransform = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetTransform", "oo", false));
	private static var box3d_b3Body_SetTransform = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_SetTransform", "ooov", false));
	private static var box3d_b3Body_GetLocalPoint = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetLocalPoint", "ooo", false));
	private static var box3d_b3Body_GetWorldPoint = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetWorldPoint", "ooo", false));
	private static var box3d_b3Body_GetLocalVector = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetLocalVector", "ooo", false));
	private static var box3d_b3Body_GetWorldVector = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetWorldVector", "ooo", false));
	private static var box3d_b3Body_GetLinearVelocity = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetLinearVelocity", "oo", false));
	private static var box3d_b3Body_GetAngularVelocity = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetAngularVelocity", "oo", false));
	private static var box3d_b3Body_SetLinearVelocity = new cpp.Callable<cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_SetLinearVelocity", "oov", false));
	private static var box3d_b3Body_SetAngularVelocity = new cpp.Callable<cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_SetAngularVelocity", "oov", false));
	private static var box3d_b3Body_SetTargetTransform = new cpp.Callable<cpp.Object->cpp.Object->Float32->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_SetTargetTransform", "oofbv", false));
	private static var box3d_b3Body_GetLocalPointVelocity = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetLocalPointVelocity", "ooo", false));
	private static var box3d_b3Body_GetWorldPointVelocity = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetWorldPointVelocity", "ooo", false));
	private static var box3d_b3Body_ApplyForce = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_ApplyForce", "ooobv", false));
	private static var box3d_b3Body_ApplyForceToCenter = new cpp.Callable<cpp.Object->cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_ApplyForceToCenter", "oobv", false));
	private static var box3d_b3Body_ApplyTorque = new cpp.Callable<cpp.Object->cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_ApplyTorque", "oobv", false));
	private static var box3d_b3Body_ApplyLinearImpulse = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_ApplyLinearImpulse", "ooobv", false));
	private static var box3d_b3Body_ApplyLinearImpulseToCenter = new cpp.Callable<cpp.Object->cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_ApplyLinearImpulseToCenter", "oobv", false));
	private static var box3d_b3Body_ApplyAngularImpulse = new cpp.Callable<cpp.Object->cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_ApplyAngularImpulse", "oobv", false));
	private static var box3d_b3Body_GetMass = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetMass", "of", false));
	private static var box3d_b3Body_GetLocalRotationalInertia = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetLocalRotationalInertia", "oo", false));
	private static var box3d_b3Body_GetInverseMass = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetInverseMass", "of", false));
	private static var box3d_b3Body_GetWorldInverseRotationalInertia = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetWorldInverseRotationalInertia", "oo", false));
	private static var box3d_b3Body_GetLocalCenter = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetLocalCenter", "oo", false));
	private static var box3d_b3Body_GetWorldCenter = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetWorldCenter", "oo", false));
	private static var box3d_b3Body_SetMassData = new cpp.Callable<cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_SetMassData", "oov", false));
	private static var box3d_b3Body_GetMassData = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetMassData", "oo", false));
	private static var box3d_b3Body_ApplyMassFromShapes = new cpp.Callable<cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_ApplyMassFromShapes", "ov", false));
	private static var box3d_b3Body_SetLinearDamping = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_SetLinearDamping", "ofv", false));
	private static var box3d_b3Body_GetLinearDamping = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetLinearDamping", "of", false));
	private static var box3d_b3Body_SetAngularDamping = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_SetAngularDamping", "ofv", false));
	private static var box3d_b3Body_GetAngularDamping = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetAngularDamping", "of", false));
	private static var box3d_b3Body_SetGravityScale = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_SetGravityScale", "ofv", false));
	private static var box3d_b3Body_GetGravityScale = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetGravityScale", "of", false));
	private static var box3d_b3Body_IsAwake = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_IsAwake", "ob", false));
	private static var box3d_b3Body_SetAwake = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_SetAwake", "obv", false));
	private static var box3d_b3Body_EnableSleep = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_EnableSleep", "obv", false));
	private static var box3d_b3Body_IsSleepEnabled = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_IsSleepEnabled", "ob", false));
	private static var box3d_b3Body_SetSleepThreshold = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_SetSleepThreshold", "ofv", false));
	private static var box3d_b3Body_GetSleepThreshold = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetSleepThreshold", "of", false));
	private static var box3d_b3Body_IsEnabled = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_IsEnabled", "ob", false));
	private static var box3d_b3Body_Disable = new cpp.Callable<cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_Disable", "ov", false));
	private static var box3d_b3Body_Enable = new cpp.Callable<cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_Enable", "ov", false));
	private static var box3d_b3Body_SetMotionLocks = new cpp.Callable<cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_SetMotionLocks", "oov", false));
	private static var box3d_b3Body_GetMotionLocks = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetMotionLocks", "oo", false));
	private static var box3d_b3Body_SetBullet = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_SetBullet", "obv", false));
	private static var box3d_b3Body_IsBullet = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_IsBullet", "ob", false));
	private static var box3d_b3Body_AllowFastRotation = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_AllowFastRotation", "obv", false));
	private static var box3d_b3Body_IsFastRotationAllowed = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_IsFastRotationAllowed", "ob", false));
	private static var box3d_b3Body_EnableContactRecycling = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_EnableContactRecycling", "obv", false));
	private static var box3d_b3Body_IsContactRecyclingEnabled = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_IsContactRecyclingEnabled", "ob", false));
	private static var box3d_b3Body_EnableHitEvents = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_EnableHitEvents", "obv", false));
	private static var box3d_b3Body_GetWorld = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetWorld", "oo", false));
	private static var box3d_b3Body_GetShapeCount = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetShapeCount", "oi", false));
	private static var box3d_b3Body_GetShapes = new cpp.Callable<cpp.Object->cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetShapes", "ooii", false));
	private static var box3d_b3Body_GetJointCount = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetJointCount", "oi", false));
	private static var box3d_b3Body_GetJoints = new cpp.Callable<cpp.Object->cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetJoints", "ooii", false));
	private static var box3d_b3Body_GetContactCapacity = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetContactCapacity", "oi", false));
	private static var box3d_b3Body_GetContactData = new cpp.Callable<cpp.Object->cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetContactData", "ooii", false));
	private static var box3d_b3Body_ComputeAABB = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_ComputeAABB", "oo", false));
	private static var box3d_b3Body_GetMinExtent = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetMinExtent", "of", false));
	private static var box3d_b3Body_GetMaxExtent = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetMaxExtent", "oo", false));
	private static var box3d_b3Body_GetMaxExtentOrigin = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetMaxExtentOrigin", "oo", false));
	private static var box3d_b3Body_GetClosestPoint = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_GetClosestPoint", "ooof", false));
	private static var box3d_b3Body_CastRay = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Object->Float32->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_CastRay", "oooofoo", false));
	private static var box3d_b3Body_CastShape = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Object->Float32->Bool->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_CastShape", "ooooofboo", false));
	private static var box3d_b3Body_OverlapShape = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_OverlapShape", "ooooob", false));
	private static var box3d_b3Body_CollideMover = new cpp.Callable<cpp.Object->cpp.Object->Int->cpp.Object->cpp.Object->cpp.Object->cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_CollideMover", "ooiooooi", false));
	private static var box3d_b3Body_TimeOfImpactMover = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Body_TimeOfImpactMover", "oooooooo", false));
	private static var box3d_b3CreateSphereShape = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CreateSphereShape", "oooo", false));
	private static var box3d_b3CreateCapsuleShape = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CreateCapsuleShape", "oooo", false));
	private static var box3d_b3CreateHullShape = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CreateHullShape", "oooo", false));
	private static var box3d_b3CreateTransformedHullShape = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CreateTransformedHullShape", "oooooo", false));
	private static var box3d_b3CreateMeshShape = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CreateMeshShape", "ooooo", false));
	private static var box3d_b3CreateHeightFieldShape = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CreateHeightFieldShape", "oooo", false));
	private static var box3d_b3CreateBakedCompoundShape = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CreateBakedCompoundShape", "oooo", false));
	private static var box3d_b3DestroyShape = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3DestroyShape", "obv", false));
	private static var box3d_b3Shape_IsValid = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_IsValid", "ob", false));
	private static var box3d_b3Shape_GetType = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_GetType", "oi", false));
	private static var box3d_b3Shape_GetBody = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_GetBody", "oo", false));
	private static var box3d_b3Shape_GetWorld = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_GetWorld", "oo", false));
	private static var box3d_b3Shape_IsSensor = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_IsSensor", "ob", false));
	private static var box3d_b3Shape_SetName = new cpp.Callable<cpp.Object->String->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_SetName", "osv", false));
	private static var box3d_b3Shape_SetUserData = new cpp.Callable<cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_SetUserData", "oov", false));
	private static var box3d_b3Shape_SetDensity = new cpp.Callable<cpp.Object->Float32->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_SetDensity", "ofbv", false));
	private static var box3d_b3Shape_GetDensity = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_GetDensity", "of", false));
	private static var box3d_b3Shape_SetFriction = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_SetFriction", "ofv", false));
	private static var box3d_b3Shape_GetFriction = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_GetFriction", "of", false));
	private static var box3d_b3Shape_SetRestitution = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_SetRestitution", "ofv", false));
	private static var box3d_b3Shape_GetRestitution = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_GetRestitution", "of", false));
	private static var box3d_b3Shape_SetSurfaceMaterial = new cpp.Callable<cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_SetSurfaceMaterial", "oov", false));
	private static var box3d_b3Shape_GetSurfaceMaterial = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_GetSurfaceMaterial", "oo", false));
	private static var box3d_b3Shape_GetMeshMaterialCount = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_GetMeshMaterialCount", "oi", false));
	private static var box3d_b3Shape_SetMeshMaterial = new cpp.Callable<cpp.Object->cpp.Object->Int->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_SetMeshMaterial", "ooiv", false));
	private static var box3d_b3Shape_GetMeshSurfaceMaterial = new cpp.Callable<cpp.Object->Int->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_GetMeshSurfaceMaterial", "oio", false));
	private static var box3d_b3Shape_GetFilter = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_GetFilter", "oo", false));
	private static var box3d_b3Shape_SetFilter = new cpp.Callable<cpp.Object->cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_SetFilter", "oobv", false));
	private static var box3d_b3Shape_EnableSensorEvents = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_EnableSensorEvents", "obv", false));
	private static var box3d_b3Shape_AreSensorEventsEnabled = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_AreSensorEventsEnabled", "ob", false));
	private static var box3d_b3Shape_EnableContactEvents = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_EnableContactEvents", "obv", false));
	private static var box3d_b3Shape_AreContactEventsEnabled = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_AreContactEventsEnabled", "ob", false));
	private static var box3d_b3Shape_EnablePreSolveEvents = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_EnablePreSolveEvents", "obv", false));
	private static var box3d_b3Shape_ArePreSolveEventsEnabled = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_ArePreSolveEventsEnabled", "ob", false));
	private static var box3d_b3Shape_EnableHitEvents = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_EnableHitEvents", "obv", false));
	private static var box3d_b3Shape_AreHitEventsEnabled = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_AreHitEventsEnabled", "ob", false));
	private static var box3d_b3Shape_RayCast = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_RayCast", "oooo", false));
	private static var box3d_b3Shape_GetSphere = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_GetSphere", "oo", false));
	private static var box3d_b3Shape_GetCapsule = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_GetCapsule", "oo", false));
	private static var box3d_b3Shape_GetMesh = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_GetMesh", "oo", false));
	private static var box3d_b3Shape_SetSphere = new cpp.Callable<cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_SetSphere", "oov", false));
	private static var box3d_b3Shape_SetCapsule = new cpp.Callable<cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_SetCapsule", "oov", false));
	private static var box3d_b3Shape_SetHull = new cpp.Callable<cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_SetHull", "oov", false));
	private static var box3d_b3Shape_SetMesh = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_SetMesh", "ooov", false));
	private static var box3d_b3Shape_GetContactCapacity = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_GetContactCapacity", "oi", false));
	private static var box3d_b3Shape_GetContactData = new cpp.Callable<cpp.Object->cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_GetContactData", "ooii", false));
	private static var box3d_b3Shape_GetSensorCapacity = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_GetSensorCapacity", "oi", false));
	private static var box3d_b3Shape_GetSensorData = new cpp.Callable<cpp.Object->cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_GetSensorData", "ooii", false));
	private static var box3d_b3Shape_GetAABB = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_GetAABB", "oo", false));
	private static var box3d_b3Shape_ComputeMassData = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_ComputeMassData", "oo", false));
	private static var box3d_b3Shape_GetClosestPoint = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_GetClosestPoint", "ooo", false));
	private static var box3d_b3Shape_ApplyWind = new cpp.Callable<cpp.Object->cpp.Object->Float32->Float32->Float32->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Shape_ApplyWind", "oofffbv", false));
	private static var box3d_b3DestroyJoint = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3DestroyJoint", "obv", false));
	private static var box3d_b3Joint_IsValid = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3Joint_IsValid", "ob", false));
	private static var box3d_b3Joint_GetType = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Joint_GetType", "oi", false));
	private static var box3d_b3Joint_GetBodyA = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Joint_GetBodyA", "oo", false));
	private static var box3d_b3Joint_GetBodyB = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Joint_GetBodyB", "oo", false));
	private static var box3d_b3Joint_GetWorld = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Joint_GetWorld", "oo", false));
	private static var box3d_b3Joint_SetLocalFrameA = new cpp.Callable<cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Joint_SetLocalFrameA", "oov", false));
	private static var box3d_b3Joint_GetLocalFrameA = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Joint_GetLocalFrameA", "oo", false));
	private static var box3d_b3Joint_SetLocalFrameB = new cpp.Callable<cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Joint_SetLocalFrameB", "oov", false));
	private static var box3d_b3Joint_GetLocalFrameB = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Joint_GetLocalFrameB", "oo", false));
	private static var box3d_b3Joint_SetCollideConnected = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Joint_SetCollideConnected", "obv", false));
	private static var box3d_b3Joint_GetCollideConnected = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3Joint_GetCollideConnected", "ob", false));
	private static var box3d_b3Joint_SetUserData = new cpp.Callable<cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Joint_SetUserData", "oov", false));
	private static var box3d_b3Joint_WakeBodies = new cpp.Callable<cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Joint_WakeBodies", "ov", false));
	private static var box3d_b3Joint_IsAwake = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3Joint_IsAwake", "ob", false));
	private static var box3d_b3Joint_GetConstraintForce = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Joint_GetConstraintForce", "oo", false));
	private static var box3d_b3Joint_GetConstraintTorque = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Joint_GetConstraintTorque", "oo", false));
	private static var box3d_b3Joint_GetLinearSeparation = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Joint_GetLinearSeparation", "of", false));
	private static var box3d_b3Joint_GetAngularSeparation = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Joint_GetAngularSeparation", "of", false));
	private static var box3d_b3Joint_SetConstraintTuning = new cpp.Callable<cpp.Object->Float32->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Joint_SetConstraintTuning", "offv", false));
	private static var box3d_b3Joint_GetConstraintTuning = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Joint_GetConstraintTuning", "ooov", false));
	private static var box3d_b3Joint_SetForceThreshold = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Joint_SetForceThreshold", "ofv", false));
	private static var box3d_b3Joint_GetForceThreshold = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Joint_GetForceThreshold", "of", false));
	private static var box3d_b3Joint_SetTorqueThreshold = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3Joint_SetTorqueThreshold", "ofv", false));
	private static var box3d_b3Joint_GetTorqueThreshold = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Joint_GetTorqueThreshold", "of", false));
	private static var box3d_b3CreateParallelJoint = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CreateParallelJoint", "ooo", false));
	private static var box3d_b3ParallelJoint_SetSpringHertz = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3ParallelJoint_SetSpringHertz", "ofv", false));
	private static var box3d_b3ParallelJoint_SetSpringDampingRatio = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3ParallelJoint_SetSpringDampingRatio", "ofv", false));
	private static var box3d_b3ParallelJoint_GetSpringHertz = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ParallelJoint_GetSpringHertz", "of", false));
	private static var box3d_b3ParallelJoint_GetSpringDampingRatio = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ParallelJoint_GetSpringDampingRatio", "of", false));
	private static var box3d_b3ParallelJoint_SetMaxTorque = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3ParallelJoint_SetMaxTorque", "ofv", false));
	private static var box3d_b3ParallelJoint_GetMaxTorque = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ParallelJoint_GetMaxTorque", "of", false));
	private static var box3d_b3CreateDistanceJoint = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CreateDistanceJoint", "ooo", false));
	private static var box3d_b3DistanceJoint_SetLength = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJoint_SetLength", "ofv", false));
	private static var box3d_b3DistanceJoint_GetLength = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJoint_GetLength", "of", false));
	private static var box3d_b3DistanceJoint_EnableSpring = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJoint_EnableSpring", "obv", false));
	private static var box3d_b3DistanceJoint_IsSpringEnabled = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJoint_IsSpringEnabled", "ob", false));
	private static var box3d_b3DistanceJoint_SetSpringForceRange = new cpp.Callable<cpp.Object->Float32->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJoint_SetSpringForceRange", "offv", false));
	private static var box3d_b3DistanceJoint_GetSpringForceRange = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJoint_GetSpringForceRange", "ooov", false));
	private static var box3d_b3DistanceJoint_SetSpringHertz = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJoint_SetSpringHertz", "ofv", false));
	private static var box3d_b3DistanceJoint_SetSpringDampingRatio = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJoint_SetSpringDampingRatio", "ofv", false));
	private static var box3d_b3DistanceJoint_GetSpringHertz = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJoint_GetSpringHertz", "of", false));
	private static var box3d_b3DistanceJoint_GetSpringDampingRatio = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJoint_GetSpringDampingRatio", "of", false));
	private static var box3d_b3DistanceJoint_EnableLimit = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJoint_EnableLimit", "obv", false));
	private static var box3d_b3DistanceJoint_IsLimitEnabled = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJoint_IsLimitEnabled", "ob", false));
	private static var box3d_b3DistanceJoint_SetLengthRange = new cpp.Callable<cpp.Object->Float32->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJoint_SetLengthRange", "offv", false));
	private static var box3d_b3DistanceJoint_GetMinLength = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJoint_GetMinLength", "of", false));
	private static var box3d_b3DistanceJoint_GetMaxLength = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJoint_GetMaxLength", "of", false));
	private static var box3d_b3DistanceJoint_GetCurrentLength = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJoint_GetCurrentLength", "of", false));
	private static var box3d_b3DistanceJoint_EnableMotor = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJoint_EnableMotor", "obv", false));
	private static var box3d_b3DistanceJoint_IsMotorEnabled = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJoint_IsMotorEnabled", "ob", false));
	private static var box3d_b3DistanceJoint_SetMotorSpeed = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJoint_SetMotorSpeed", "ofv", false));
	private static var box3d_b3DistanceJoint_GetMotorSpeed = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJoint_GetMotorSpeed", "of", false));
	private static var box3d_b3DistanceJoint_SetMaxMotorForce = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJoint_SetMaxMotorForce", "ofv", false));
	private static var box3d_b3DistanceJoint_GetMaxMotorForce = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJoint_GetMaxMotorForce", "of", false));
	private static var box3d_b3DistanceJoint_GetMotorForce = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJoint_GetMotorForce", "of", false));
	private static var box3d_b3CreateMotorJoint = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CreateMotorJoint", "ooo", false));
	private static var box3d_b3MotorJoint_SetLinearVelocity = new cpp.Callable<cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJoint_SetLinearVelocity", "oov", false));
	private static var box3d_b3MotorJoint_GetLinearVelocity = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJoint_GetLinearVelocity", "oo", false));
	private static var box3d_b3MotorJoint_SetAngularVelocity = new cpp.Callable<cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJoint_SetAngularVelocity", "oov", false));
	private static var box3d_b3MotorJoint_GetAngularVelocity = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJoint_GetAngularVelocity", "oo", false));
	private static var box3d_b3MotorJoint_SetMaxVelocityForce = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJoint_SetMaxVelocityForce", "ofv", false));
	private static var box3d_b3MotorJoint_GetMaxVelocityForce = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJoint_GetMaxVelocityForce", "of", false));
	private static var box3d_b3MotorJoint_SetMaxVelocityTorque = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJoint_SetMaxVelocityTorque", "ofv", false));
	private static var box3d_b3MotorJoint_GetMaxVelocityTorque = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJoint_GetMaxVelocityTorque", "of", false));
	private static var box3d_b3MotorJoint_SetLinearHertz = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJoint_SetLinearHertz", "ofv", false));
	private static var box3d_b3MotorJoint_GetLinearHertz = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJoint_GetLinearHertz", "of", false));
	private static var box3d_b3MotorJoint_SetLinearDampingRatio = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJoint_SetLinearDampingRatio", "ofv", false));
	private static var box3d_b3MotorJoint_GetLinearDampingRatio = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJoint_GetLinearDampingRatio", "of", false));
	private static var box3d_b3MotorJoint_SetAngularHertz = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJoint_SetAngularHertz", "ofv", false));
	private static var box3d_b3MotorJoint_GetAngularHertz = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJoint_GetAngularHertz", "of", false));
	private static var box3d_b3MotorJoint_SetAngularDampingRatio = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJoint_SetAngularDampingRatio", "ofv", false));
	private static var box3d_b3MotorJoint_GetAngularDampingRatio = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJoint_GetAngularDampingRatio", "of", false));
	private static var box3d_b3MotorJoint_SetMaxSpringForce = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJoint_SetMaxSpringForce", "ofv", false));
	private static var box3d_b3MotorJoint_GetMaxSpringForce = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJoint_GetMaxSpringForce", "of", false));
	private static var box3d_b3MotorJoint_SetMaxSpringTorque = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJoint_SetMaxSpringTorque", "ofv", false));
	private static var box3d_b3MotorJoint_GetMaxSpringTorque = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJoint_GetMaxSpringTorque", "of", false));
	private static var box3d_b3CreateFilterJoint = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CreateFilterJoint", "ooo", false));
	private static var box3d_b3CreatePrismaticJoint = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CreatePrismaticJoint", "ooo", false));
	private static var box3d_b3PrismaticJoint_EnableSpring = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJoint_EnableSpring", "obv", false));
	private static var box3d_b3PrismaticJoint_IsSpringEnabled = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJoint_IsSpringEnabled", "ob", false));
	private static var box3d_b3PrismaticJoint_SetSpringHertz = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJoint_SetSpringHertz", "ofv", false));
	private static var box3d_b3PrismaticJoint_GetSpringHertz = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJoint_GetSpringHertz", "of", false));
	private static var box3d_b3PrismaticJoint_SetSpringDampingRatio = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJoint_SetSpringDampingRatio", "ofv", false));
	private static var box3d_b3PrismaticJoint_GetSpringDampingRatio = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJoint_GetSpringDampingRatio", "of", false));
	private static var box3d_b3PrismaticJoint_SetTargetTranslation = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJoint_SetTargetTranslation", "ofv", false));
	private static var box3d_b3PrismaticJoint_GetTargetTranslation = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJoint_GetTargetTranslation", "of", false));
	private static var box3d_b3PrismaticJoint_EnableLimit = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJoint_EnableLimit", "obv", false));
	private static var box3d_b3PrismaticJoint_IsLimitEnabled = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJoint_IsLimitEnabled", "ob", false));
	private static var box3d_b3PrismaticJoint_GetLowerLimit = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJoint_GetLowerLimit", "of", false));
	private static var box3d_b3PrismaticJoint_GetUpperLimit = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJoint_GetUpperLimit", "of", false));
	private static var box3d_b3PrismaticJoint_SetLimits = new cpp.Callable<cpp.Object->Float32->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJoint_SetLimits", "offv", false));
	private static var box3d_b3PrismaticJoint_EnableMotor = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJoint_EnableMotor", "obv", false));
	private static var box3d_b3PrismaticJoint_IsMotorEnabled = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJoint_IsMotorEnabled", "ob", false));
	private static var box3d_b3PrismaticJoint_SetMotorSpeed = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJoint_SetMotorSpeed", "ofv", false));
	private static var box3d_b3PrismaticJoint_GetMotorSpeed = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJoint_GetMotorSpeed", "of", false));
	private static var box3d_b3PrismaticJoint_SetMaxMotorForce = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJoint_SetMaxMotorForce", "ofv", false));
	private static var box3d_b3PrismaticJoint_GetMaxMotorForce = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJoint_GetMaxMotorForce", "of", false));
	private static var box3d_b3PrismaticJoint_GetMotorForce = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJoint_GetMotorForce", "of", false));
	private static var box3d_b3PrismaticJoint_GetTranslation = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJoint_GetTranslation", "of", false));
	private static var box3d_b3PrismaticJoint_GetSpeed = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJoint_GetSpeed", "of", false));
	private static var box3d_b3CreateRevoluteJoint = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CreateRevoluteJoint", "ooo", false));
	private static var box3d_b3RevoluteJoint_EnableSpring = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJoint_EnableSpring", "obv", false));
	private static var box3d_b3RevoluteJoint_IsSpringEnabled = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJoint_IsSpringEnabled", "ob", false));
	private static var box3d_b3RevoluteJoint_SetSpringHertz = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJoint_SetSpringHertz", "ofv", false));
	private static var box3d_b3RevoluteJoint_GetSpringHertz = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJoint_GetSpringHertz", "of", false));
	private static var box3d_b3RevoluteJoint_SetSpringDampingRatio = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJoint_SetSpringDampingRatio", "ofv", false));
	private static var box3d_b3RevoluteJoint_GetSpringDampingRatio = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJoint_GetSpringDampingRatio", "of", false));
	private static var box3d_b3RevoluteJoint_SetTargetAngle = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJoint_SetTargetAngle", "ofv", false));
	private static var box3d_b3RevoluteJoint_GetTargetAngle = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJoint_GetTargetAngle", "of", false));
	private static var box3d_b3RevoluteJoint_GetAngle = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJoint_GetAngle", "of", false));
	private static var box3d_b3RevoluteJoint_EnableLimit = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJoint_EnableLimit", "obv", false));
	private static var box3d_b3RevoluteJoint_IsLimitEnabled = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJoint_IsLimitEnabled", "ob", false));
	private static var box3d_b3RevoluteJoint_GetLowerLimit = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJoint_GetLowerLimit", "of", false));
	private static var box3d_b3RevoluteJoint_GetUpperLimit = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJoint_GetUpperLimit", "of", false));
	private static var box3d_b3RevoluteJoint_SetLimits = new cpp.Callable<cpp.Object->Float32->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJoint_SetLimits", "offv", false));
	private static var box3d_b3RevoluteJoint_EnableMotor = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJoint_EnableMotor", "obv", false));
	private static var box3d_b3RevoluteJoint_IsMotorEnabled = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJoint_IsMotorEnabled", "ob", false));
	private static var box3d_b3RevoluteJoint_SetMotorSpeed = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJoint_SetMotorSpeed", "ofv", false));
	private static var box3d_b3RevoluteJoint_GetMotorSpeed = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJoint_GetMotorSpeed", "of", false));
	private static var box3d_b3RevoluteJoint_GetMotorTorque = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJoint_GetMotorTorque", "of", false));
	private static var box3d_b3RevoluteJoint_SetMaxMotorTorque = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJoint_SetMaxMotorTorque", "ofv", false));
	private static var box3d_b3RevoluteJoint_GetMaxMotorTorque = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJoint_GetMaxMotorTorque", "of", false));
	private static var box3d_b3CreateSphericalJoint = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CreateSphericalJoint", "ooo", false));
	private static var box3d_b3SphericalJoint_EnableConeLimit = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJoint_EnableConeLimit", "obv", false));
	private static var box3d_b3SphericalJoint_IsConeLimitEnabled = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJoint_IsConeLimitEnabled", "ob", false));
	private static var box3d_b3SphericalJoint_GetConeLimit = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJoint_GetConeLimit", "of", false));
	private static var box3d_b3SphericalJoint_SetConeLimit = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJoint_SetConeLimit", "ofv", false));
	private static var box3d_b3SphericalJoint_GetConeAngle = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJoint_GetConeAngle", "of", false));
	private static var box3d_b3SphericalJoint_EnableTwistLimit = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJoint_EnableTwistLimit", "obv", false));
	private static var box3d_b3SphericalJoint_IsTwistLimitEnabled = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJoint_IsTwistLimitEnabled", "ob", false));
	private static var box3d_b3SphericalJoint_GetLowerTwistLimit = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJoint_GetLowerTwistLimit", "of", false));
	private static var box3d_b3SphericalJoint_GetUpperTwistLimit = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJoint_GetUpperTwistLimit", "of", false));
	private static var box3d_b3SphericalJoint_SetTwistLimits = new cpp.Callable<cpp.Object->Float32->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJoint_SetTwistLimits", "offv", false));
	private static var box3d_b3SphericalJoint_GetTwistAngle = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJoint_GetTwistAngle", "of", false));
	private static var box3d_b3SphericalJoint_EnableSpring = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJoint_EnableSpring", "obv", false));
	private static var box3d_b3SphericalJoint_IsSpringEnabled = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJoint_IsSpringEnabled", "ob", false));
	private static var box3d_b3SphericalJoint_SetSpringHertz = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJoint_SetSpringHertz", "ofv", false));
	private static var box3d_b3SphericalJoint_GetSpringHertz = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJoint_GetSpringHertz", "of", false));
	private static var box3d_b3SphericalJoint_SetSpringDampingRatio = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJoint_SetSpringDampingRatio", "ofv", false));
	private static var box3d_b3SphericalJoint_GetSpringDampingRatio = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJoint_GetSpringDampingRatio", "of", false));
	private static var box3d_b3SphericalJoint_SetTargetRotation = new cpp.Callable<cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJoint_SetTargetRotation", "oov", false));
	private static var box3d_b3SphericalJoint_GetTargetRotation = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJoint_GetTargetRotation", "oo", false));
	private static var box3d_b3SphericalJoint_EnableMotor = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJoint_EnableMotor", "obv", false));
	private static var box3d_b3SphericalJoint_IsMotorEnabled = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJoint_IsMotorEnabled", "ob", false));
	private static var box3d_b3SphericalJoint_SetMotorVelocity = new cpp.Callable<cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJoint_SetMotorVelocity", "oov", false));
	private static var box3d_b3SphericalJoint_GetMotorVelocity = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJoint_GetMotorVelocity", "oo", false));
	private static var box3d_b3SphericalJoint_GetMotorTorque = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJoint_GetMotorTorque", "oo", false));
	private static var box3d_b3SphericalJoint_SetMaxMotorTorque = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJoint_SetMaxMotorTorque", "ofv", false));
	private static var box3d_b3SphericalJoint_GetMaxMotorTorque = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJoint_GetMaxMotorTorque", "of", false));
	private static var box3d_b3CreateWeldJoint = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CreateWeldJoint", "ooo", false));
	private static var box3d_b3WeldJoint_SetLinearHertz = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3WeldJoint_SetLinearHertz", "ofv", false));
	private static var box3d_b3WeldJoint_GetLinearHertz = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WeldJoint_GetLinearHertz", "of", false));
	private static var box3d_b3WeldJoint_SetLinearDampingRatio = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3WeldJoint_SetLinearDampingRatio", "ofv", false));
	private static var box3d_b3WeldJoint_GetLinearDampingRatio = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WeldJoint_GetLinearDampingRatio", "of", false));
	private static var box3d_b3WeldJoint_SetAngularHertz = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3WeldJoint_SetAngularHertz", "ofv", false));
	private static var box3d_b3WeldJoint_GetAngularHertz = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WeldJoint_GetAngularHertz", "of", false));
	private static var box3d_b3WeldJoint_SetAngularDampingRatio = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3WeldJoint_SetAngularDampingRatio", "ofv", false));
	private static var box3d_b3WeldJoint_GetAngularDampingRatio = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WeldJoint_GetAngularDampingRatio", "of", false));
	private static var box3d_b3CreateWheelJoint = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CreateWheelJoint", "ooo", false));
	private static var box3d_b3WheelJoint_EnableSuspension = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_EnableSuspension", "obv", false));
	private static var box3d_b3WheelJoint_IsSuspensionEnabled = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_IsSuspensionEnabled", "ob", false));
	private static var box3d_b3WheelJoint_SetSuspensionHertz = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_SetSuspensionHertz", "ofv", false));
	private static var box3d_b3WheelJoint_GetSuspensionHertz = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_GetSuspensionHertz", "of", false));
	private static var box3d_b3WheelJoint_SetSuspensionDampingRatio = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_SetSuspensionDampingRatio", "ofv", false));
	private static var box3d_b3WheelJoint_GetSuspensionDampingRatio = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_GetSuspensionDampingRatio", "of", false));
	private static var box3d_b3WheelJoint_EnableSuspensionLimit = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_EnableSuspensionLimit", "obv", false));
	private static var box3d_b3WheelJoint_IsSuspensionLimitEnabled = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_IsSuspensionLimitEnabled", "ob", false));
	private static var box3d_b3WheelJoint_GetLowerSuspensionLimit = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_GetLowerSuspensionLimit", "of", false));
	private static var box3d_b3WheelJoint_GetUpperSuspensionLimit = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_GetUpperSuspensionLimit", "of", false));
	private static var box3d_b3WheelJoint_SetSuspensionLimits = new cpp.Callable<cpp.Object->Float32->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_SetSuspensionLimits", "offv", false));
	private static var box3d_b3WheelJoint_EnableSpinMotor = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_EnableSpinMotor", "obv", false));
	private static var box3d_b3WheelJoint_IsSpinMotorEnabled = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_IsSpinMotorEnabled", "ob", false));
	private static var box3d_b3WheelJoint_SetSpinMotorSpeed = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_SetSpinMotorSpeed", "ofv", false));
	private static var box3d_b3WheelJoint_GetSpinMotorSpeed = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_GetSpinMotorSpeed", "of", false));
	private static var box3d_b3WheelJoint_SetMaxSpinTorque = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_SetMaxSpinTorque", "ofv", false));
	private static var box3d_b3WheelJoint_GetMaxSpinTorque = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_GetMaxSpinTorque", "of", false));
	private static var box3d_b3WheelJoint_GetSpinSpeed = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_GetSpinSpeed", "of", false));
	private static var box3d_b3WheelJoint_GetSpinTorque = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_GetSpinTorque", "of", false));
	private static var box3d_b3WheelJoint_EnableSteering = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_EnableSteering", "obv", false));
	private static var box3d_b3WheelJoint_IsSteeringEnabled = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_IsSteeringEnabled", "ob", false));
	private static var box3d_b3WheelJoint_SetSteeringHertz = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_SetSteeringHertz", "ofv", false));
	private static var box3d_b3WheelJoint_GetSteeringHertz = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_GetSteeringHertz", "of", false));
	private static var box3d_b3WheelJoint_SetSteeringDampingRatio = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_SetSteeringDampingRatio", "ofv", false));
	private static var box3d_b3WheelJoint_GetSteeringDampingRatio = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_GetSteeringDampingRatio", "of", false));
	private static var box3d_b3WheelJoint_SetMaxSteeringTorque = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_SetMaxSteeringTorque", "ofv", false));
	private static var box3d_b3WheelJoint_GetMaxSteeringTorque = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_GetMaxSteeringTorque", "of", false));
	private static var box3d_b3WheelJoint_EnableSteeringLimit = new cpp.Callable<cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_EnableSteeringLimit", "obv", false));
	private static var box3d_b3WheelJoint_IsSteeringLimitEnabled = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_IsSteeringLimitEnabled", "ob", false));
	private static var box3d_b3WheelJoint_GetLowerSteeringLimit = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_GetLowerSteeringLimit", "of", false));
	private static var box3d_b3WheelJoint_GetUpperSteeringLimit = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_GetUpperSteeringLimit", "of", false));
	private static var box3d_b3WheelJoint_SetSteeringLimits = new cpp.Callable<cpp.Object->Float32->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_SetSteeringLimits", "offv", false));
	private static var box3d_b3WheelJoint_SetTargetSteeringAngle = new cpp.Callable<cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_SetTargetSteeringAngle", "ofv", false));
	private static var box3d_b3WheelJoint_GetTargetSteeringAngle = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_GetTargetSteeringAngle", "of", false));
	private static var box3d_b3WheelJoint_GetSteeringAngle = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_GetSteeringAngle", "of", false));
	private static var box3d_b3WheelJoint_GetSteeringTorque = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJoint_GetSteeringTorque", "of", false));
	private static var box3d_b3Contact_IsValid = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3Contact_IsValid", "ob", false));
	private static var box3d_b3Contact_GetData = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Contact_GetData", "oo", false));
	#end

	public static function dynamicTree_Create(proxyCapacity:Int):B3DynamicTree {
		#if lime_box3d
		return box3d_b3DynamicTree_Create(proxyCapacity);
		#else
		return null;
		#end
	}
	public static function dynamicTree_Destroy(tree:B3DynamicTree):Void {
		#if lime_box3d
		box3d_b3DynamicTree_Destroy(tree);
		#end
	}
	public static function dynamicTree_CreateProxy(tree:B3DynamicTree, aabb:B3AABB, categoryBits:UInt64, userData:UInt64):Int {
		#if lime_box3d
		return box3d_b3DynamicTree_CreateProxy(tree, aabb, categoryBits, userData);
		#else
		return 0;
		#end
	}
	public static function dynamicTree_DestroyProxy(tree:B3DynamicTree, proxyId:Int):Void {
		#if lime_box3d
		box3d_b3DynamicTree_DestroyProxy(tree, proxyId);
		#end
	}
	public static function dynamicTree_MoveProxy(tree:B3DynamicTree, proxyId:Int, aabb:B3AABB):Void {
		#if lime_box3d
		box3d_b3DynamicTree_MoveProxy(tree, proxyId, aabb);
		#end
	}
	public static function dynamicTree_EnlargeProxy(tree:B3DynamicTree, proxyId:Int, aabb:B3AABB):Void {
		#if lime_box3d
		box3d_b3DynamicTree_EnlargeProxy(tree, proxyId, aabb);
		#end
	}
	public static function dynamicTree_SetCategoryBits(tree:B3DynamicTree, proxyId:Int, categoryBits:UInt64):Void {
		#if lime_box3d
		box3d_b3DynamicTree_SetCategoryBits(tree, proxyId, categoryBits);
		#end
	}
	public static function dynamicTree_GetCategoryBits(tree:B3DynamicTree, proxyId:Int):UInt64 {
		#if lime_box3d
		return box3d_b3DynamicTree_GetCategoryBits(tree, proxyId);
		#else
		return null;
		#end
	}
	public static function dynamicTree_Query(tree:B3DynamicTree, aabb:B3AABB, maskBits:UInt64, requireAllBits:Bool, callback:B3TreeQueryCallbackFcn, context:CFFIPointer):B3TreeStats {
		#if lime_box3d
		return box3d_b3DynamicTree_Query(tree, aabb, maskBits, requireAllBits, callback, context);
		#else
		return null;
		#end
	}
	public static function dynamicTree_QueryClosest(tree:B3DynamicTree, point:B3Vec3, maskBits:UInt64, requireAllBits:Bool, callback:B3TreeQueryClosestCallbackFcn, context:CFFIPointer, minDistanceSqr:Float):B3TreeStats {
		#if lime_box3d
		return box3d_b3DynamicTree_QueryClosest(tree, point, maskBits, requireAllBits, callback, context, minDistanceSqr);
		#else
		return null;
		#end
	}
	public static function dynamicTree_RayCast(tree:B3DynamicTree, input:B3RayCastInput, maskBits:UInt64, requireAllBits:Bool, callback:B3TreeRayCastCallbackFcn, context:CFFIPointer):B3TreeStats {
		#if lime_box3d
		return box3d_b3DynamicTree_RayCast(tree, input, maskBits, requireAllBits, callback, context);
		#else
		return null;
		#end
	}
	public static function dynamicTree_BoxCast(tree:B3DynamicTree, input:B3BoxCastInput, maskBits:UInt64, requireAllBits:Bool, callback:B3TreeBoxCastCallbackFcn, context:CFFIPointer):B3TreeStats {
		#if lime_box3d
		return box3d_b3DynamicTree_BoxCast(tree, input, maskBits, requireAllBits, callback, context);
		#else
		return null;
		#end
	}
	public static function dynamicTree_GetHeight(tree:B3DynamicTree):Int {
		#if lime_box3d
		return box3d_b3DynamicTree_GetHeight(tree);
		#else
		return 0;
		#end
	}
	public static function dynamicTree_GetAreaRatio(tree:B3DynamicTree):Float {
		#if lime_box3d
		return box3d_b3DynamicTree_GetAreaRatio(tree);
		#else
		return 0.0;
		#end
	}
	public static function dynamicTree_GetRootBounds(tree:B3DynamicTree):B3AABB {
		#if lime_box3d
		return box3d_b3DynamicTree_GetRootBounds(tree);
		#else
		return null;
		#end
	}
	public static function dynamicTree_GetProxyCount(tree:B3DynamicTree):Int {
		#if lime_box3d
		return box3d_b3DynamicTree_GetProxyCount(tree);
		#else
		return 0;
		#end
	}
	public static function dynamicTree_Rebuild(tree:B3DynamicTree, fullBuild:Bool):Int {
		#if lime_box3d
		return box3d_b3DynamicTree_Rebuild(tree, fullBuild);
		#else
		return 0;
		#end
	}
	public static function dynamicTree_GetByteCount(tree:B3DynamicTree):Int {
		#if lime_box3d
		return box3d_b3DynamicTree_GetByteCount(tree);
		#else
		return 0;
		#end
	}
	public static function dynamicTree_Validate(tree:B3DynamicTree):Void {
		#if lime_box3d
		box3d_b3DynamicTree_Validate(tree);
		#end
	}
	public static function dynamicTree_ValidateNoEnlarged(tree:B3DynamicTree):Void {
		#if lime_box3d
		box3d_b3DynamicTree_ValidateNoEnlarged(tree);
		#end
	}
	public static function dynamicTree_Save(tree:B3DynamicTree, fileName:String):Void {
		#if lime_box3d
		box3d_b3DynamicTree_Save(tree, fileName);
		#end
	}
	public static function dynamicTree_Load(fileName:String, scale:Float):B3DynamicTree {
		#if lime_box3d
		return box3d_b3DynamicTree_Load(fileName, scale);
		#else
		return null;
		#end
	}
	public static function destroyHull(hull:B3HullData):Void {
		#if lime_box3d
		box3d_b3DestroyHull(hull);
		#end
	}
	public static function makeCubeHull(halfWidth:Float):B3BoxHull {
		#if lime_box3d
		return box3d_b3MakeCubeHull(halfWidth);
		#else
		return null;
		#end
	}
	public static function makeBoxHull(hx:Float, hy:Float, hz:Float):B3BoxHull {
		#if lime_box3d
		return box3d_b3MakeBoxHull(hx, hy, hz);
		#else
		return null;
		#end
	}
	public static function makeOffsetBoxHull(hx:Float, hy:Float, hz:Float, offset:B3Vec3):B3BoxHull {
		#if lime_box3d
		return box3d_b3MakeOffsetBoxHull(hx, hy, hz, offset);
		#else
		return null;
		#end
	}
	public static function makeTransformedBoxHull(hx:Float, hy:Float, hz:Float, transform:B3Transform):B3BoxHull {
		#if lime_box3d
		return box3d_b3MakeTransformedBoxHull(hx, hy, hz, transform);
		#else
		return null;
		#end
	}
	public static function makeScaledBoxHull(halfWidths:B3Vec3, transform:B3Transform, postScale:B3Vec3):B3BoxHull {
		#if lime_box3d
		return box3d_b3MakeScaledBoxHull(halfWidths, transform, postScale);
		#else
		return null;
		#end
	}
	public static function scaleBox(halfWidths:B3Vec3, transform:B3Transform, postScale:B3Vec3, minHalfWidth:Float):Void {
		#if lime_box3d
		box3d_b3ScaleBox(halfWidths, transform, postScale, minHalfWidth);
		#end
	}
	public static function destroyMesh(mesh:B3MeshData):Void {
		#if lime_box3d
		box3d_b3DestroyMesh(mesh);
		#end
	}
	public static function getHeight(mesh:B3MeshData):Int {
		#if lime_box3d
		return box3d_b3GetHeight(mesh);
		#else
		return 0;
		#end
	}
	public static function destroyHeightField(heightField:B3HeightFieldData):Void {
		#if lime_box3d
		box3d_b3DestroyHeightField(heightField);
		#end
	}
	public static function dumpHeightData(data:B3HeightFieldDef, fileName:String):Void {
		#if lime_box3d
		box3d_b3DumpHeightData(data, fileName);
		#end
	}
	public static function getCompoundChild(compound:B3CompoundData, childIndex:Int):B3ChildShape {
		#if lime_box3d
		return box3d_b3GetCompoundChild(compound, childIndex);
		#else
		return null;
		#end
	}
	public static function queryCompound(compound:B3CompoundData, aabb:B3AABB, fcn:B3CompoundQueryFcn, context:CFFIPointer):Void {
		#if lime_box3d
		box3d_b3QueryCompound(compound, aabb, fcn, context);
		#end
	}
	public static function getCompoundCapsule(compound:B3CompoundData, index:Int):B3CompoundCapsule {
		#if lime_box3d
		return box3d_b3GetCompoundCapsule(compound, index);
		#else
		return null;
		#end
	}
	public static function getCompoundHull(compound:B3CompoundData, index:Int):B3CompoundHull {
		#if lime_box3d
		return box3d_b3GetCompoundHull(compound, index);
		#else
		return null;
		#end
	}
	public static function getCompoundMesh(compound:B3CompoundData, index:Int):B3CompoundMesh {
		#if lime_box3d
		return box3d_b3GetCompoundMesh(compound, index);
		#else
		return null;
		#end
	}
	public static function getCompoundSphere(compound:B3CompoundData, index:Int):B3CompoundSphere {
		#if lime_box3d
		return box3d_b3GetCompoundSphere(compound, index);
		#else
		return null;
		#end
	}
	public static function destroyCompound(compound:B3CompoundData):Void {
		#if lime_box3d
		box3d_b3DestroyCompound(compound);
		#end
	}
	public static function computeSphereMass(shape:B3Sphere, density:Float):B3MassData {
		#if lime_box3d
		return box3d_b3ComputeSphereMass(shape, density);
		#else
		return null;
		#end
	}
	public static function computeCapsuleMass(shape:B3Capsule, density:Float):B3MassData {
		#if lime_box3d
		return box3d_b3ComputeCapsuleMass(shape, density);
		#else
		return null;
		#end
	}
	public static function computeHullMass(shape:B3HullData, density:Float):B3MassData {
		#if lime_box3d
		return box3d_b3ComputeHullMass(shape, density);
		#else
		return null;
		#end
	}
	public static function computeSphereAABB(shape:B3Sphere, transform:B3Transform):B3AABB {
		#if lime_box3d
		return box3d_b3ComputeSphereAABB(shape, transform);
		#else
		return null;
		#end
	}
	public static function computeCapsuleAABB(shape:B3Capsule, transform:B3Transform):B3AABB {
		#if lime_box3d
		return box3d_b3ComputeCapsuleAABB(shape, transform);
		#else
		return null;
		#end
	}
	public static function computeHullAABB(shape:B3HullData, transform:B3Transform):B3AABB {
		#if lime_box3d
		return box3d_b3ComputeHullAABB(shape, transform);
		#else
		return null;
		#end
	}
	public static function computeMeshAABB(shape:B3MeshData, transform:B3Transform, scale:B3Vec3):B3AABB {
		#if lime_box3d
		return box3d_b3ComputeMeshAABB(shape, transform, scale);
		#else
		return null;
		#end
	}
	public static function computeHeightFieldAABB(shape:B3HeightFieldData, transform:B3Transform):B3AABB {
		#if lime_box3d
		return box3d_b3ComputeHeightFieldAABB(shape, transform);
		#else
		return null;
		#end
	}
	public static function computeCompoundAABB(shape:B3CompoundData, transform:B3Transform):B3AABB {
		#if lime_box3d
		return box3d_b3ComputeCompoundAABB(shape, transform);
		#else
		return null;
		#end
	}
	public static function isValidRay(input:B3RayCastInput):Bool {
		#if lime_box3d
		return box3d_b3IsValidRay(input);
		#else
		return false;
		#end
	}
	public static function overlapCapsule(shape:B3Capsule, shapeTransform:B3Transform, proxy:B3ShapeProxy):Bool {
		#if lime_box3d
		return box3d_b3OverlapCapsule(shape, shapeTransform, proxy);
		#else
		return false;
		#end
	}
	public static function overlapCompound(shape:B3CompoundData, shapeTransform:B3Transform, proxy:B3ShapeProxy):Bool {
		#if lime_box3d
		return box3d_b3OverlapCompound(shape, shapeTransform, proxy);
		#else
		return false;
		#end
	}
	public static function overlapHeightField(shape:B3HeightFieldData, shapeTransform:B3Transform, proxy:B3ShapeProxy):Bool {
		#if lime_box3d
		return box3d_b3OverlapHeightField(shape, shapeTransform, proxy);
		#else
		return false;
		#end
	}
	public static function overlapHull(shape:B3HullData, shapeTransform:B3Transform, proxy:B3ShapeProxy):Bool {
		#if lime_box3d
		return box3d_b3OverlapHull(shape, shapeTransform, proxy);
		#else
		return false;
		#end
	}
	public static function overlapMesh(shape:B3Mesh, shapeTransform:B3Transform, proxy:B3ShapeProxy):Bool {
		#if lime_box3d
		return box3d_b3OverlapMesh(shape, shapeTransform, proxy);
		#else
		return false;
		#end
	}
	public static function overlapSphere(shape:B3Sphere, shapeTransform:B3Transform, proxy:B3ShapeProxy):Bool {
		#if lime_box3d
		return box3d_b3OverlapSphere(shape, shapeTransform, proxy);
		#else
		return false;
		#end
	}
	public static function rayCastSphere(shape:B3Sphere, input:B3RayCastInput):B3CastOutput {
		#if lime_box3d
		return box3d_b3RayCastSphere(shape, input);
		#else
		return null;
		#end
	}
	public static function rayCastHollowSphere(shape:B3Sphere, input:B3RayCastInput):B3CastOutput {
		#if lime_box3d
		return box3d_b3RayCastHollowSphere(shape, input);
		#else
		return null;
		#end
	}
	public static function rayCastCapsule(shape:B3Capsule, input:B3RayCastInput):B3CastOutput {
		#if lime_box3d
		return box3d_b3RayCastCapsule(shape, input);
		#else
		return null;
		#end
	}
	public static function rayCastCompound(shape:B3CompoundData, input:B3RayCastInput):B3CastOutput {
		#if lime_box3d
		return box3d_b3RayCastCompound(shape, input);
		#else
		return null;
		#end
	}
	public static function rayCastHull(shape:B3HullData, input:B3RayCastInput):B3CastOutput {
		#if lime_box3d
		return box3d_b3RayCastHull(shape, input);
		#else
		return null;
		#end
	}
	public static function rayCastMesh(shape:B3Mesh, input:B3RayCastInput):B3CastOutput {
		#if lime_box3d
		return box3d_b3RayCastMesh(shape, input);
		#else
		return null;
		#end
	}
	public static function rayCastHeightField(shape:B3HeightFieldData, input:B3RayCastInput):B3CastOutput {
		#if lime_box3d
		return box3d_b3RayCastHeightField(shape, input);
		#else
		return null;
		#end
	}
	public static function shapeCastSphere(shape:B3Sphere, input:B3ShapeCastInput):B3CastOutput {
		#if lime_box3d
		return box3d_b3ShapeCastSphere(shape, input);
		#else
		return null;
		#end
	}
	public static function shapeCastCapsule(shape:B3Capsule, input:B3ShapeCastInput):B3CastOutput {
		#if lime_box3d
		return box3d_b3ShapeCastCapsule(shape, input);
		#else
		return null;
		#end
	}
	public static function shapeCastCompound(shape:B3CompoundData, input:B3ShapeCastInput):B3CastOutput {
		#if lime_box3d
		return box3d_b3ShapeCastCompound(shape, input);
		#else
		return null;
		#end
	}
	public static function shapeCastHull(shape:B3HullData, input:B3ShapeCastInput):B3CastOutput {
		#if lime_box3d
		return box3d_b3ShapeCastHull(shape, input);
		#else
		return null;
		#end
	}
	public static function shapeCastMesh(shape:B3Mesh, input:B3ShapeCastInput):B3CastOutput {
		#if lime_box3d
		return box3d_b3ShapeCastMesh(shape, input);
		#else
		return null;
		#end
	}
	public static function shapeCastHeightField(shape:B3HeightFieldData, input:B3ShapeCastInput):B3CastOutput {
		#if lime_box3d
		return box3d_b3ShapeCastHeightField(shape, input);
		#else
		return null;
		#end
	}
	public static function queryMesh(mesh:B3Mesh, bounds:B3AABB, fcn:B3MeshQueryFcn, context:CFFIPointer):Void {
		#if lime_box3d
		box3d_b3QueryMesh(mesh, bounds, fcn, context);
		#end
	}
	public static function queryHeightField(heightField:B3HeightFieldData, bounds:B3AABB, fcn:B3MeshQueryFcn, context:CFFIPointer):Void {
		#if lime_box3d
		box3d_b3QueryHeightField(heightField, bounds, fcn, context);
		#end
	}
	public static function shapeDistance(input:B3DistanceInput, cache:B3SimplexCache, simplexes:B3Simplex, simplexCapacity:Int):B3DistanceOutput {
		#if lime_box3d
		return box3d_b3ShapeDistance(input, cache, simplexes, simplexCapacity);
		#else
		return null;
		#end
	}
	public static function shapeCast(input:B3ShapeCastPairInput):B3CastOutput {
		#if lime_box3d
		return box3d_b3ShapeCast(input);
		#else
		return null;
		#end
	}
	public static function getSweepTransform(sweep:B3Sweep, time:Float):B3Transform {
		#if lime_box3d
		return box3d_b3GetSweepTransform(sweep, time);
		#else
		return null;
		#end
	}
	public static function timeOfImpact(input:B3TOIInput):B3TOIOutput {
		#if lime_box3d
		return box3d_b3TimeOfImpact(input);
		#else
		return null;
		#end
	}
	public static function collideSpheres(manifold:B3LocalManifold, capacity:Int, sphereA:B3Sphere, sphereB:B3Sphere, transformBtoA:B3Transform):Void {
		#if lime_box3d
		box3d_b3CollideSpheres(manifold, capacity, sphereA, sphereB, transformBtoA);
		#end
	}
	public static function collideCapsuleAndSphere(manifold:B3LocalManifold, capacity:Int, capsuleA:B3Capsule, sphereB:B3Sphere, transformBtoA:B3Transform):Void {
		#if lime_box3d
		box3d_b3CollideCapsuleAndSphere(manifold, capacity, capsuleA, sphereB, transformBtoA);
		#end
	}
	public static function collideHullAndSphere(manifold:B3LocalManifold, capacity:Int, hullA:B3HullData, sphereB:B3Sphere, transformBtoA:B3Transform, cache:B3SimplexCache):Void {
		#if lime_box3d
		box3d_b3CollideHullAndSphere(manifold, capacity, hullA, sphereB, transformBtoA, cache);
		#end
	}
	public static function collideCapsules(manifold:B3LocalManifold, capacity:Int, capsuleA:B3Capsule, capsuleB:B3Capsule, transformBtoA:B3Transform):Void {
		#if lime_box3d
		box3d_b3CollideCapsules(manifold, capacity, capsuleA, capsuleB, transformBtoA);
		#end
	}
	public static function collideHullAndCapsule(manifold:B3LocalManifold, capacity:Int, hullA:B3HullData, capsuleB:B3Capsule, transformBtoA:B3Transform, cache:B3SimplexCache):Void {
		#if lime_box3d
		box3d_b3CollideHullAndCapsule(manifold, capacity, hullA, capsuleB, transformBtoA, cache);
		#end
	}
	public static function collideHulls(manifold:B3LocalManifold, capacity:Int, hullA:B3HullData, hullB:B3HullData, transformBtoA:B3Transform, cache:B3SATCache):Void {
		#if lime_box3d
		box3d_b3CollideHulls(manifold, capacity, hullA, hullB, transformBtoA, cache);
		#end
	}
	public static function collideTriangleAndCapsule(manifold:B3LocalManifold, capacity:Int, triangleA:B3Vec3, capsuleB:B3Capsule, cache:B3SimplexCache):Void {
		#if lime_box3d
		box3d_b3CollideTriangleAndCapsule(manifold, capacity, triangleA, capsuleB, cache);
		#end
	}
	public static function collideTriangleAndHull(manifold:B3LocalManifold, capacity:Int, v1:B3Vec3, v2:B3Vec3, v3:B3Vec3, triangleFlags:Int, hullB:B3HullData, cache:B3SATCache, enableSpeculative:Bool):Void {
		#if lime_box3d
		box3d_b3CollideTriangleAndHull(manifold, capacity, v1, v2, v3, triangleFlags, hullB, cache, enableSpeculative);
		#end
	}
	public static function collideTriangleAndSphere(manifold:B3LocalManifold, capacity:Int, triangleA:B3Vec3, sphereB:B3Sphere):Void {
		#if lime_box3d
		box3d_b3CollideTriangleAndSphere(manifold, capacity, triangleA, sphereB);
		#end
	}
	public static function solvePlanes(targetDelta:B3Vec3, planes:B3CollisionPlane, count:Int):B3PlaneSolverResult {
		#if lime_box3d
		return box3d_b3SolvePlanes(targetDelta, planes, count);
		#else
		return null;
		#end
	}
	public static function clipVector(vector:B3Vec3, planes:B3CollisionPlane, count:Int):B3Vec3 {
		#if lime_box3d
		return box3d_b3ClipVector(vector, planes, count);
		#else
		return null;
		#end
	}
	public static function dynamicTree_GetUserData(tree:B3DynamicTree, proxyId:Int):UInt64 {
		#if lime_box3d
		return box3d_b3DynamicTree_GetUserData(tree, proxyId);
		#else
		return null;
		#end
	}
	public static function dynamicTree_GetAABB(tree:B3DynamicTree, proxyId:Int):B3AABB {
		#if lime_box3d
		return box3d_b3DynamicTree_GetAABB(tree, proxyId);
		#else
		return null;
		#end
	}
	#if lime_box3d
	private static var box3d_b3DynamicTree_Create = new cpp.Callable<Int->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_Create", "io", false));
	private static var box3d_b3DynamicTree_Destroy = new cpp.Callable<cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_Destroy", "ov", false));
	private static var box3d_b3DynamicTree_CreateProxy = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_CreateProxy", "ooooi", false));
	private static var box3d_b3DynamicTree_DestroyProxy = new cpp.Callable<cpp.Object->Int->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_DestroyProxy", "oiv", false));
	private static var box3d_b3DynamicTree_MoveProxy = new cpp.Callable<cpp.Object->Int->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_MoveProxy", "oiov", false));
	private static var box3d_b3DynamicTree_EnlargeProxy = new cpp.Callable<cpp.Object->Int->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_EnlargeProxy", "oiov", false));
	private static var box3d_b3DynamicTree_SetCategoryBits = new cpp.Callable<cpp.Object->Int->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_SetCategoryBits", "oiov", false));
	private static var box3d_b3DynamicTree_GetCategoryBits = new cpp.Callable<cpp.Object->Int->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_GetCategoryBits", "oio", false));
	private static var box3d_b3DynamicTree_Query = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->Bool->cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_Query", "ooobooo", false));
	private static var box3d_b3DynamicTree_QueryClosest = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->Bool->cpp.Object->cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_QueryClosest", "oooboooo", false));
	private static var box3d_b3DynamicTree_RayCast = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->Bool->cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_RayCast", "ooobooo", false));
	private static var box3d_b3DynamicTree_BoxCast = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->Bool->cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_BoxCast", "ooobooo", false));
	private static var box3d_b3DynamicTree_GetHeight = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_GetHeight", "oi", false));
	private static var box3d_b3DynamicTree_GetAreaRatio = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_GetAreaRatio", "of", false));
	private static var box3d_b3DynamicTree_GetRootBounds = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_GetRootBounds", "oo", false));
	private static var box3d_b3DynamicTree_GetProxyCount = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_GetProxyCount", "oi", false));
	private static var box3d_b3DynamicTree_Rebuild = new cpp.Callable<cpp.Object->Bool->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_Rebuild", "obi", false));
	private static var box3d_b3DynamicTree_GetByteCount = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_GetByteCount", "oi", false));
	private static var box3d_b3DynamicTree_Validate = new cpp.Callable<cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_Validate", "ov", false));
	private static var box3d_b3DynamicTree_ValidateNoEnlarged = new cpp.Callable<cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_ValidateNoEnlarged", "ov", false));
	private static var box3d_b3DynamicTree_Save = new cpp.Callable<cpp.Object->String->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_Save", "osv", false));
	private static var box3d_b3DynamicTree_Load = new cpp.Callable<String->Float32->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_Load", "sfo", false));
	private static var box3d_b3DestroyHull = new cpp.Callable<cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3DestroyHull", "ov", false));
	private static var box3d_b3MakeCubeHull = new cpp.Callable<Float32->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MakeCubeHull", "fo", false));
	private static var box3d_b3MakeBoxHull = new cpp.Callable<Float32->Float32->Float32->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MakeBoxHull", "fffo", false));
	private static var box3d_b3MakeOffsetBoxHull = new cpp.Callable<Float32->Float32->Float32->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MakeOffsetBoxHull", "fffoo", false));
	private static var box3d_b3MakeTransformedBoxHull = new cpp.Callable<Float32->Float32->Float32->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MakeTransformedBoxHull", "fffoo", false));
	private static var box3d_b3MakeScaledBoxHull = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MakeScaledBoxHull", "oooo", false));
	private static var box3d_b3ScaleBox = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->Float32->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3ScaleBox", "ooofv", false));
	private static var box3d_b3DestroyMesh = new cpp.Callable<cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3DestroyMesh", "ov", false));
	private static var box3d_b3GetHeight = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3GetHeight", "oi", false));
	private static var box3d_b3DestroyHeightField = new cpp.Callable<cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3DestroyHeightField", "ov", false));
	private static var box3d_b3DumpHeightData = new cpp.Callable<cpp.Object->String->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3DumpHeightData", "osv", false));
	private static var box3d_b3GetCompoundChild = new cpp.Callable<cpp.Object->Int->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3GetCompoundChild", "oio", false));
	private static var box3d_b3QueryCompound = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3QueryCompound", "oooov", false));
	private static var box3d_b3GetCompoundCapsule = new cpp.Callable<cpp.Object->Int->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3GetCompoundCapsule", "oio", false));
	private static var box3d_b3GetCompoundHull = new cpp.Callable<cpp.Object->Int->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3GetCompoundHull", "oio", false));
	private static var box3d_b3GetCompoundMesh = new cpp.Callable<cpp.Object->Int->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3GetCompoundMesh", "oio", false));
	private static var box3d_b3GetCompoundSphere = new cpp.Callable<cpp.Object->Int->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3GetCompoundSphere", "oio", false));
	private static var box3d_b3DestroyCompound = new cpp.Callable<cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3DestroyCompound", "ov", false));
	private static var box3d_b3ComputeSphereMass = new cpp.Callable<cpp.Object->Float32->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ComputeSphereMass", "ofo", false));
	private static var box3d_b3ComputeCapsuleMass = new cpp.Callable<cpp.Object->Float32->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ComputeCapsuleMass", "ofo", false));
	private static var box3d_b3ComputeHullMass = new cpp.Callable<cpp.Object->Float32->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ComputeHullMass", "ofo", false));
	private static var box3d_b3ComputeSphereAABB = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ComputeSphereAABB", "ooo", false));
	private static var box3d_b3ComputeCapsuleAABB = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ComputeCapsuleAABB", "ooo", false));
	private static var box3d_b3ComputeHullAABB = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ComputeHullAABB", "ooo", false));
	private static var box3d_b3ComputeMeshAABB = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ComputeMeshAABB", "oooo", false));
	private static var box3d_b3ComputeHeightFieldAABB = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ComputeHeightFieldAABB", "ooo", false));
	private static var box3d_b3ComputeCompoundAABB = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ComputeCompoundAABB", "ooo", false));
	private static var box3d_b3IsValidRay = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3IsValidRay", "ob", false));
	private static var box3d_b3OverlapCapsule = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3OverlapCapsule", "ooob", false));
	private static var box3d_b3OverlapCompound = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3OverlapCompound", "ooob", false));
	private static var box3d_b3OverlapHeightField = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3OverlapHeightField", "ooob", false));
	private static var box3d_b3OverlapHull = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3OverlapHull", "ooob", false));
	private static var box3d_b3OverlapMesh = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3OverlapMesh", "ooob", false));
	private static var box3d_b3OverlapSphere = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3OverlapSphere", "ooob", false));
	private static var box3d_b3RayCastSphere = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RayCastSphere", "ooo", false));
	private static var box3d_b3RayCastHollowSphere = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RayCastHollowSphere", "ooo", false));
	private static var box3d_b3RayCastCapsule = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RayCastCapsule", "ooo", false));
	private static var box3d_b3RayCastCompound = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RayCastCompound", "ooo", false));
	private static var box3d_b3RayCastHull = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RayCastHull", "ooo", false));
	private static var box3d_b3RayCastMesh = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RayCastMesh", "ooo", false));
	private static var box3d_b3RayCastHeightField = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RayCastHeightField", "ooo", false));
	private static var box3d_b3ShapeCastSphere = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeCastSphere", "ooo", false));
	private static var box3d_b3ShapeCastCapsule = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeCastCapsule", "ooo", false));
	private static var box3d_b3ShapeCastCompound = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeCastCompound", "ooo", false));
	private static var box3d_b3ShapeCastHull = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeCastHull", "ooo", false));
	private static var box3d_b3ShapeCastMesh = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeCastMesh", "ooo", false));
	private static var box3d_b3ShapeCastHeightField = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeCastHeightField", "ooo", false));
	private static var box3d_b3QueryMesh = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3QueryMesh", "oooov", false));
	private static var box3d_b3QueryHeightField = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3QueryHeightField", "oooov", false));
	private static var box3d_b3ShapeDistance = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->Int->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDistance", "oooio", false));
	private static var box3d_b3ShapeCast = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeCast", "oo", false));
	private static var box3d_b3GetSweepTransform = new cpp.Callable<cpp.Object->Float32->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3GetSweepTransform", "ofo", false));
	private static var box3d_b3TimeOfImpact = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3TimeOfImpact", "oo", false));
	private static var box3d_b3CollideSpheres = new cpp.Callable<cpp.Object->Int->cpp.Object->cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3CollideSpheres", "oiooov", false));
	private static var box3d_b3CollideCapsuleAndSphere = new cpp.Callable<cpp.Object->Int->cpp.Object->cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3CollideCapsuleAndSphere", "oiooov", false));
	private static var box3d_b3CollideHullAndSphere = new cpp.Callable<cpp.Object->Int->cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3CollideHullAndSphere", "oioooov", false));
	private static var box3d_b3CollideCapsules = new cpp.Callable<cpp.Object->Int->cpp.Object->cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3CollideCapsules", "oiooov", false));
	private static var box3d_b3CollideHullAndCapsule = new cpp.Callable<cpp.Object->Int->cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3CollideHullAndCapsule", "oioooov", false));
	private static var box3d_b3CollideHulls = new cpp.Callable<cpp.Object->Int->cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3CollideHulls", "oioooov", false));
	private static var box3d_b3CollideTriangleAndCapsule = new cpp.Callable<cpp.Object->Int->cpp.Object->cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3CollideTriangleAndCapsule", "oiooov", false));
	private static var box3d_b3CollideTriangleAndHull = new cpp.Callable<cpp.Object->Int->cpp.Object->cpp.Object->cpp.Object->Int->cpp.Object->cpp.Object->Bool->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3CollideTriangleAndHull", "oioooioobv", false));
	private static var box3d_b3CollideTriangleAndSphere = new cpp.Callable<cpp.Object->Int->cpp.Object->cpp.Object->cpp.Void>(cpp.Prime._loadPrime("box3d", "box3d_b3CollideTriangleAndSphere", "oioov", false));
	private static var box3d_b3SolvePlanes = new cpp.Callable<cpp.Object->cpp.Object->Int->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SolvePlanes", "ooio", false));
	private static var box3d_b3ClipVector = new cpp.Callable<cpp.Object->cpp.Object->Int->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ClipVector", "ooio", false));
	private static var box3d_b3DynamicTree_GetUserData = new cpp.Callable<cpp.Object->Int->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_GetUserData", "oio", false));
	private static var box3d_b3DynamicTree_GetAABB = new cpp.Callable<cpp.Object->Int->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_GetAABB", "oio", false));
	#end

	public static function atan2(y:Float, x:Float):Float {
		#if lime_box3d
		return box3d_b3Atan2(y, x);
		#else
		return 0.0;
		#end
	}
	public static function computeCosSin(radians:Float):B3CosSin {
		#if lime_box3d
		return box3d_b3ComputeCosSin(radians);
		#else
		return null;
		#end
	}
	public static function makeQuatFromMatrix(m:B3Matrix3):B3Quat {
		#if lime_box3d
		return box3d_b3MakeQuatFromMatrix(m);
		#else
		return null;
		#end
	}
	public static function computeQuatBetweenUnitVectors(v1:B3Vec3, v2:B3Vec3):B3Quat {
		#if lime_box3d
		return box3d_b3ComputeQuatBetweenUnitVectors(v1, v2);
		#else
		return null;
		#end
	}
	public static function steiner(mass:Float, origin:B3Vec3):B3Matrix3 {
		#if lime_box3d
		return box3d_b3Steiner(mass, origin);
		#else
		return null;
		#end
	}
	public static function pointToSegmentDistance(a:B3Vec3, b:B3Vec3, q:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3PointToSegmentDistance(a, b, q);
		#else
		return null;
		#end
	}
	public static function lineDistance(p1:B3Vec3, d1:B3Vec3, p2:B3Vec3, d2:B3Vec3):B3SegmentDistanceResult {
		#if lime_box3d
		return box3d_b3LineDistance(p1, d1, p2, d2);
		#else
		return null;
		#end
	}
	public static function segmentDistance(p1:B3Vec3, q1:B3Vec3, p2:B3Vec3, q2:B3Vec3):B3SegmentDistanceResult {
		#if lime_box3d
		return box3d_b3SegmentDistance(p1, q1, p2, q2);
		#else
		return null;
		#end
	}
	public static function isValidFloat(a:Float):Bool {
		#if lime_box3d
		return box3d_b3IsValidFloat(a);
		#else
		return false;
		#end
	}
	public static function isValidVec3(a:B3Vec3):Bool {
		#if lime_box3d
		return box3d_b3IsValidVec3(a);
		#else
		return false;
		#end
	}
	public static function isValidQuat(q:B3Quat):Bool {
		#if lime_box3d
		return box3d_b3IsValidQuat(q);
		#else
		return false;
		#end
	}
	public static function isValidTransform(a:B3Transform):Bool {
		#if lime_box3d
		return box3d_b3IsValidTransform(a);
		#else
		return false;
		#end
	}
	public static function isValidMatrix3(a:B3Matrix3):Bool {
		#if lime_box3d
		return box3d_b3IsValidMatrix3(a);
		#else
		return false;
		#end
	}
	public static function isValidAABB(a:B3AABB):Bool {
		#if lime_box3d
		return box3d_b3IsValidAABB(a);
		#else
		return false;
		#end
	}
	public static function isBoundedAABB(a:B3AABB):Bool {
		#if lime_box3d
		return box3d_b3IsBoundedAABB(a);
		#else
		return false;
		#end
	}
	public static function isSaneAABB(a:B3AABB):Bool {
		#if lime_box3d
		return box3d_b3IsSaneAABB(a);
		#else
		return false;
		#end
	}
	public static function isValidPlane(a:B3Plane):Bool {
		#if lime_box3d
		return box3d_b3IsValidPlane(a);
		#else
		return false;
		#end
	}
	public static function isValidPosition(p:B3Pos):Bool {
		#if lime_box3d
		return box3d_b3IsValidPosition(p);
		#else
		return false;
		#end
	}
	public static function isValidWorldTransform(t:B3WorldTransform):Bool {
		#if lime_box3d
		return box3d_b3IsValidWorldTransform(t);
		#else
		return false;
		#end
	}
	public static function minInt(a:Int, b:Int):Int {
		#if lime_box3d
		return box3d_b3MinInt(a, b);
		#else
		return 0;
		#end
	}
	public static function maxInt(a:Int, b:Int):Int {
		#if lime_box3d
		return box3d_b3MaxInt(a, b);
		#else
		return 0;
		#end
	}
	public static function clampInt(a:Int, lower:Int, upper:Int):Int {
		#if lime_box3d
		return box3d_b3ClampInt(a, lower, upper);
		#else
		return 0;
		#end
	}
	public static function absFloat(a:Float):Float {
		#if lime_box3d
		return box3d_b3AbsFloat(a);
		#else
		return 0.0;
		#end
	}
	public static function minFloat(a:Float, b:Float):Float {
		#if lime_box3d
		return box3d_b3MinFloat(a, b);
		#else
		return 0.0;
		#end
	}
	public static function maxFloat(a:Float, b:Float):Float {
		#if lime_box3d
		return box3d_b3MaxFloat(a, b);
		#else
		return 0.0;
		#end
	}
	public static function clampFloat(a:Float, lower:Float, upper:Float):Float {
		#if lime_box3d
		return box3d_b3ClampFloat(a, lower, upper);
		#else
		return 0.0;
		#end
	}
	public static function lerpFloat(a:Float, b:Float, alpha:Float):Float {
		#if lime_box3d
		return box3d_b3LerpFloat(a, b, alpha);
		#else
		return 0.0;
		#end
	}
	public static function sin(radians:Float):Float {
		#if lime_box3d
		return box3d_b3Sin(radians);
		#else
		return 0.0;
		#end
	}
	public static function cos(radians:Float):Float {
		#if lime_box3d
		return box3d_b3Cos(radians);
		#else
		return 0.0;
		#end
	}
	public static function unwindAngle(radians:Float):Float {
		#if lime_box3d
		return box3d_b3UnwindAngle(radians);
		#else
		return 0.0;
		#end
	}
	public static function add(a:B3Vec3, b:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3Add(a, b);
		#else
		return null;
		#end
	}
	public static function sub(a:B3Vec3, b:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3Sub(a, b);
		#else
		return null;
		#end
	}
	public static function mul(a:B3Vec3, b:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3Mul(a, b);
		#else
		return null;
		#end
	}
	public static function neg(a:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3Neg(a);
		#else
		return null;
		#end
	}
	public static function dot(a:B3Vec3, b:B3Vec3):Float {
		#if lime_box3d
		return box3d_b3Dot(a, b);
		#else
		return 0.0;
		#end
	}
	public static function length(v:B3Vec3):Float {
		#if lime_box3d
		return box3d_b3Length(v);
		#else
		return 0.0;
		#end
	}
	public static function lengthSquared(a:B3Vec3):Float {
		#if lime_box3d
		return box3d_b3LengthSquared(a);
		#else
		return 0.0;
		#end
	}
	public static function distance(a:B3Vec3, b:B3Vec3):Float {
		#if lime_box3d
		return box3d_b3Distance(a, b);
		#else
		return 0.0;
		#end
	}
	public static function distanceSquared(a:B3Vec3, b:B3Vec3):Float {
		#if lime_box3d
		return box3d_b3DistanceSquared(a, b);
		#else
		return 0.0;
		#end
	}
	public static function getLengthAndNormalize(length:Float, a:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3GetLengthAndNormalize(length, a);
		#else
		return null;
		#end
	}
	public static function perp(a:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3Perp(a);
		#else
		return null;
		#end
	}
	public static function isNormalized(a:B3Vec3):Bool {
		#if lime_box3d
		return box3d_b3IsNormalized(a);
		#else
		return false;
		#end
	}
	public static function mulAdd(a:B3Vec3, s:Float, b:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3MulAdd(a, s, b);
		#else
		return null;
		#end
	}
	public static function mulSub(a:B3Vec3, s:Float, b:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3MulSub(a, s, b);
		#else
		return null;
		#end
	}
	public static function mulSV(s:Float, a:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3MulSV(s, a);
		#else
		return null;
		#end
	}
	public static function cross(a:B3Vec3, b:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3Cross(a, b);
		#else
		return null;
		#end
	}
	public static function lerp(a:B3Vec3, b:B3Vec3, alpha:Float):B3Vec3 {
		#if lime_box3d
		return box3d_b3Lerp(a, b, alpha);
		#else
		return null;
		#end
	}
	public static function blend2(s:Float, a:B3Vec3, t:Float, b:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3Blend2(s, a, t, b);
		#else
		return null;
		#end
	}
	public static function abs(a:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3Abs(a);
		#else
		return null;
		#end
	}
	public static function sign(a:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3Sign(a);
		#else
		return null;
		#end
	}
	public static function min(a:B3Vec3, b:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3Min(a, b);
		#else
		return null;
		#end
	}
	public static function max(a:B3Vec3, b:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3Max(a, b);
		#else
		return null;
		#end
	}
	public static function clamp(a:B3Vec3, lower:B3Vec3, upper:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3Clamp(a, lower, upper);
		#else
		return null;
		#end
	}
	public static function safeScale(a:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3SafeScale(a);
		#else
		return null;
		#end
	}
	public static function isNormalizedQuat(q:B3Quat):Bool {
		#if lime_box3d
		return box3d_b3IsNormalizedQuat(q);
		#else
		return false;
		#end
	}
	public static function rotateVector(q:B3Quat, v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3RotateVector(q, v);
		#else
		return null;
		#end
	}
	public static function invRotateVector(q:B3Quat, v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3InvRotateVector(q, v);
		#else
		return null;
		#end
	}
	public static function dotQuat(a:B3Quat, b:B3Quat):Float {
		#if lime_box3d
		return box3d_b3DotQuat(a, b);
		#else
		return 0.0;
		#end
	}
	public static function mulQuat(q1:B3Quat, q2:B3Quat):B3Quat {
		#if lime_box3d
		return box3d_b3MulQuat(q1, q2);
		#else
		return null;
		#end
	}
	public static function invMulQuat(q1:B3Quat, q2:B3Quat):B3Quat {
		#if lime_box3d
		return box3d_b3InvMulQuat(q1, q2);
		#else
		return null;
		#end
	}
	public static function conjugate(q:B3Quat):B3Quat {
		#if lime_box3d
		return box3d_b3Conjugate(q);
		#else
		return null;
		#end
	}
	public static function negateQuat(q:B3Quat):B3Quat {
		#if lime_box3d
		return box3d_b3NegateQuat(q);
		#else
		return null;
		#end
	}
	public static function normalizeQuat(q:B3Quat):B3Quat {
		#if lime_box3d
		return box3d_b3NormalizeQuat(q);
		#else
		return null;
		#end
	}
	public static function makeQuatFromAxisAngle(axis:B3Vec3, radians:Float):B3Quat {
		#if lime_box3d
		return box3d_b3MakeQuatFromAxisAngle(axis, radians);
		#else
		return null;
		#end
	}
	public static function getQuatAngle(q:B3Quat):Float {
		#if lime_box3d
		return box3d_b3GetQuatAngle(q);
		#else
		return 0.0;
		#end
	}
	public static function getTwistAngle(q:B3Quat):Float {
		#if lime_box3d
		return box3d_b3GetTwistAngle(q);
		#else
		return 0.0;
		#end
	}
	public static function nLerp(q1:B3Quat, q2:B3Quat, alpha:Float):B3Quat {
		#if lime_box3d
		return box3d_b3NLerp(q1, q2, alpha);
		#else
		return null;
		#end
	}
	public static function mulTransforms(a:B3Transform, b:B3Transform):B3Transform {
		#if lime_box3d
		return box3d_b3MulTransforms(a, b);
		#else
		return null;
		#end
	}
	public static function invertTransform(t:B3Transform):B3Transform {
		#if lime_box3d
		return box3d_b3InvertTransform(t);
		#else
		return null;
		#end
	}
	public static function invTransformPoint(t:B3Transform, v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3InvTransformPoint(t, v);
		#else
		return null;
		#end
	}
	public static function toPos(v:B3Vec3):B3Pos {
		#if lime_box3d
		return box3d_b3ToPos(v);
		#else
		return null;
		#end
	}
	public static function toVec3(p:B3Pos):B3Vec3 {
		#if lime_box3d
		return box3d_b3ToVec3(p);
		#else
		return null;
		#end
	}
	public static function roundDownFloat(x:Float):Float {
		#if lime_box3d
		return box3d_b3RoundDownFloat(x);
		#else
		return 0.0;
		#end
	}
	public static function roundUpFloat(x:Float):Float {
		#if lime_box3d
		return box3d_b3RoundUpFloat(x);
		#else
		return 0.0;
		#end
	}
	public static function subPos(a:B3Pos, b:B3Pos):B3Vec3 {
		#if lime_box3d
		return box3d_b3SubPos(a, b);
		#else
		return null;
		#end
	}
	public static function offsetPos(p:B3Pos, d:B3Vec3):B3Pos {
		#if lime_box3d
		return box3d_b3OffsetPos(p, d);
		#else
		return null;
		#end
	}
	public static function lerpPosition(a:B3Pos, b:B3Pos, t:Float):B3Pos {
		#if lime_box3d
		return box3d_b3LerpPosition(a, b, t);
		#else
		return null;
		#end
	}
	public static function transformWorldPoint(t:B3WorldTransform, p:B3Vec3):B3Pos {
		#if lime_box3d
		return box3d_b3TransformWorldPoint(t, p);
		#else
		return null;
		#end
	}
	public static function invTransformWorldPoint(t:B3WorldTransform, p:B3Pos):B3Vec3 {
		#if lime_box3d
		return box3d_b3InvTransformWorldPoint(t, p);
		#else
		return null;
		#end
	}
	public static function toRelativeTransform(t:B3WorldTransform, base:B3Pos):B3Transform {
		#if lime_box3d
		return box3d_b3ToRelativeTransform(t, base);
		#else
		return null;
		#end
	}
	public static function makeWorldTransform(t:B3Transform):B3WorldTransform {
		#if lime_box3d
		return box3d_b3MakeWorldTransform(t);
		#else
		return null;
		#end
	}
	public static function offsetAABB(localBox:B3AABB, origin:B3Pos):B3AABB {
		#if lime_box3d
		return box3d_b3OffsetAABB(localBox, origin);
		#else
		return null;
		#end
	}
	public static function det(m:B3Matrix3):Float {
		#if lime_box3d
		return box3d_b3Det(m);
		#else
		return 0.0;
		#end
	}
	public static function mulMV(m:B3Matrix3, a:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3MulMV(m, a);
		#else
		return null;
		#end
	}
	public static function negateMat3(a:B3Matrix3):B3Matrix3 {
		#if lime_box3d
		return box3d_b3NegateMat3(a);
		#else
		return null;
		#end
	}
	public static function addMM(a:B3Matrix3, b:B3Matrix3):B3Matrix3 {
		#if lime_box3d
		return box3d_b3AddMM(a, b);
		#else
		return null;
		#end
	}
	public static function subMM(a:B3Matrix3, b:B3Matrix3):B3Matrix3 {
		#if lime_box3d
		return box3d_b3SubMM(a, b);
		#else
		return null;
		#end
	}
	public static function mulSM(s:Float, a:B3Matrix3):B3Matrix3 {
		#if lime_box3d
		return box3d_b3MulSM(s, a);
		#else
		return null;
		#end
	}
	public static function mulMM(a:B3Matrix3, b:B3Matrix3):B3Matrix3 {
		#if lime_box3d
		return box3d_b3MulMM(a, b);
		#else
		return null;
		#end
	}
	public static function transpose(m:B3Matrix3):B3Matrix3 {
		#if lime_box3d
		return box3d_b3Transpose(m);
		#else
		return null;
		#end
	}
	public static function invertMatrix(m:B3Matrix3):B3Matrix3 {
		#if lime_box3d
		return box3d_b3InvertMatrix(m);
		#else
		return null;
		#end
	}
	public static function invertT(m:B3Matrix3):B3Matrix3 {
		#if lime_box3d
		return box3d_b3InvertT(m);
		#else
		return null;
		#end
	}
	public static function absMatrix3(m:B3Matrix3):B3Matrix3 {
		#if lime_box3d
		return box3d_b3AbsMatrix3(m);
		#else
		return null;
		#end
	}
	public static function makeAABB(points:B3Vec3, count:Int, radius:Float):B3AABB {
		#if lime_box3d
		return box3d_b3MakeAABB(points, count, radius);
		#else
		return null;
		#end
	}
	public static function aABB_Contains(a:B3AABB, b:B3AABB):Bool {
		#if lime_box3d
		return box3d_b3AABB_Contains(a, b);
		#else
		return false;
		#end
	}
	public static function aABB_Area(a:B3AABB):Float {
		#if lime_box3d
		return box3d_b3AABB_Area(a);
		#else
		return 0.0;
		#end
	}
	public static function aABB_Center(a:B3AABB):B3Vec3 {
		#if lime_box3d
		return box3d_b3AABB_Center(a);
		#else
		return null;
		#end
	}
	public static function aABB_Extents(a:B3AABB):B3Vec3 {
		#if lime_box3d
		return box3d_b3AABB_Extents(a);
		#else
		return null;
		#end
	}
	public static function aABB_Union(a:B3AABB, b:B3AABB):B3AABB {
		#if lime_box3d
		return box3d_b3AABB_Union(a, b);
		#else
		return null;
		#end
	}
	public static function aABB_Inflate(a:B3AABB, extension:Float):B3AABB {
		#if lime_box3d
		return box3d_b3AABB_Inflate(a, extension);
		#else
		return null;
		#end
	}
	public static function aABB_Overlaps(a:B3AABB, b:B3AABB):Bool {
		#if lime_box3d
		return box3d_b3AABB_Overlaps(a, b);
		#else
		return false;
		#end
	}
	public static function closestPointToAABB(point:B3Vec3, a:B3AABB):B3Vec3 {
		#if lime_box3d
		return box3d_b3ClosestPointToAABB(point, a);
		#else
		return null;
		#end
	}
	#if lime_box3d
	private static var box3d_b3Atan2 = new cpp.Callable<Float32->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Atan2", "fff", false));
	private static var box3d_b3ComputeCosSin = new cpp.Callable<Float32->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ComputeCosSin", "fo", false));
	private static var box3d_b3MakeQuatFromMatrix = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MakeQuatFromMatrix", "oo", false));
	private static var box3d_b3ComputeQuatBetweenUnitVectors = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ComputeQuatBetweenUnitVectors", "ooo", false));
	private static var box3d_b3Steiner = new cpp.Callable<Float32->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Steiner", "foo", false));
	private static var box3d_b3PointToSegmentDistance = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3PointToSegmentDistance", "oooo", false));
	private static var box3d_b3LineDistance = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3LineDistance", "ooooo", false));
	private static var box3d_b3SegmentDistance = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SegmentDistance", "ooooo", false));
	private static var box3d_b3IsValidFloat = new cpp.Callable<Float32->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3IsValidFloat", "fb", false));
	private static var box3d_b3IsValidVec3 = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3IsValidVec3", "ob", false));
	private static var box3d_b3IsValidQuat = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3IsValidQuat", "ob", false));
	private static var box3d_b3IsValidTransform = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3IsValidTransform", "ob", false));
	private static var box3d_b3IsValidMatrix3 = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3IsValidMatrix3", "ob", false));
	private static var box3d_b3IsValidAABB = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3IsValidAABB", "ob", false));
	private static var box3d_b3IsBoundedAABB = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3IsBoundedAABB", "ob", false));
	private static var box3d_b3IsSaneAABB = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3IsSaneAABB", "ob", false));
	private static var box3d_b3IsValidPlane = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3IsValidPlane", "ob", false));
	private static var box3d_b3IsValidPosition = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3IsValidPosition", "ob", false));
	private static var box3d_b3IsValidWorldTransform = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3IsValidWorldTransform", "ob", false));
	private static var box3d_b3MinInt = new cpp.Callable<Int->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MinInt", "iii", false));
	private static var box3d_b3MaxInt = new cpp.Callable<Int->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MaxInt", "iii", false));
	private static var box3d_b3ClampInt = new cpp.Callable<Int->Int->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ClampInt", "iiii", false));
	private static var box3d_b3AbsFloat = new cpp.Callable<Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3AbsFloat", "ff", false));
	private static var box3d_b3MinFloat = new cpp.Callable<Float32->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3MinFloat", "fff", false));
	private static var box3d_b3MaxFloat = new cpp.Callable<Float32->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3MaxFloat", "fff", false));
	private static var box3d_b3ClampFloat = new cpp.Callable<Float32->Float32->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ClampFloat", "ffff", false));
	private static var box3d_b3LerpFloat = new cpp.Callable<Float32->Float32->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3LerpFloat", "ffff", false));
	private static var box3d_b3Sin = new cpp.Callable<Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Sin", "ff", false));
	private static var box3d_b3Cos = new cpp.Callable<Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Cos", "ff", false));
	private static var box3d_b3UnwindAngle = new cpp.Callable<Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3UnwindAngle", "ff", false));
	private static var box3d_b3Add = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Add", "ooo", false));
	private static var box3d_b3Sub = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Sub", "ooo", false));
	private static var box3d_b3Mul = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Mul", "ooo", false));
	private static var box3d_b3Neg = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Neg", "oo", false));
	private static var box3d_b3Dot = new cpp.Callable<cpp.Object->cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Dot", "oof", false));
	private static var box3d_b3Length = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Length", "of", false));
	private static var box3d_b3LengthSquared = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3LengthSquared", "of", false));
	private static var box3d_b3Distance = new cpp.Callable<cpp.Object->cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Distance", "oof", false));
	private static var box3d_b3DistanceSquared = new cpp.Callable<cpp.Object->cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceSquared", "oof", false));
	private static var box3d_b3GetLengthAndNormalize = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3GetLengthAndNormalize", "ooo", false));
	private static var box3d_b3Perp = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Perp", "oo", false));
	private static var box3d_b3IsNormalized = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3IsNormalized", "ob", false));
	private static var box3d_b3MulAdd = new cpp.Callable<cpp.Object->Float32->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MulAdd", "ofoo", false));
	private static var box3d_b3MulSub = new cpp.Callable<cpp.Object->Float32->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MulSub", "ofoo", false));
	private static var box3d_b3MulSV = new cpp.Callable<Float32->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MulSV", "foo", false));
	private static var box3d_b3Cross = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Cross", "ooo", false));
	private static var box3d_b3Lerp = new cpp.Callable<cpp.Object->cpp.Object->Float32->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Lerp", "oofo", false));
	private static var box3d_b3Blend2 = new cpp.Callable<Float32->cpp.Object->Float32->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Blend2", "fofoo", false));
	private static var box3d_b3Abs = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Abs", "oo", false));
	private static var box3d_b3Sign = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Sign", "oo", false));
	private static var box3d_b3Min = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Min", "ooo", false));
	private static var box3d_b3Max = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Max", "ooo", false));
	private static var box3d_b3Clamp = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Clamp", "oooo", false));
	private static var box3d_b3SafeScale = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SafeScale", "oo", false));
	private static var box3d_b3IsNormalizedQuat = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3IsNormalizedQuat", "ob", false));
	private static var box3d_b3RotateVector = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RotateVector", "ooo", false));
	private static var box3d_b3InvRotateVector = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3InvRotateVector", "ooo", false));
	private static var box3d_b3DotQuat = new cpp.Callable<cpp.Object->cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3DotQuat", "oof", false));
	private static var box3d_b3MulQuat = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MulQuat", "ooo", false));
	private static var box3d_b3InvMulQuat = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3InvMulQuat", "ooo", false));
	private static var box3d_b3Conjugate = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Conjugate", "oo", false));
	private static var box3d_b3NegateQuat = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3NegateQuat", "oo", false));
	private static var box3d_b3NormalizeQuat = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3NormalizeQuat", "oo", false));
	private static var box3d_b3MakeQuatFromAxisAngle = new cpp.Callable<cpp.Object->Float32->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MakeQuatFromAxisAngle", "ofo", false));
	private static var box3d_b3GetQuatAngle = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3GetQuatAngle", "of", false));
	private static var box3d_b3GetTwistAngle = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3GetTwistAngle", "of", false));
	private static var box3d_b3NLerp = new cpp.Callable<cpp.Object->cpp.Object->Float32->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3NLerp", "oofo", false));
	private static var box3d_b3MulTransforms = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MulTransforms", "ooo", false));
	private static var box3d_b3InvertTransform = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3InvertTransform", "oo", false));
	private static var box3d_b3InvTransformPoint = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3InvTransformPoint", "ooo", false));
	private static var box3d_b3ToPos = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ToPos", "oo", false));
	private static var box3d_b3ToVec3 = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ToVec3", "oo", false));
	private static var box3d_b3RoundDownFloat = new cpp.Callable<Float->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RoundDownFloat", "df", false));
	private static var box3d_b3RoundUpFloat = new cpp.Callable<Float->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RoundUpFloat", "df", false));
	private static var box3d_b3SubPos = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SubPos", "ooo", false));
	private static var box3d_b3OffsetPos = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3OffsetPos", "ooo", false));
	private static var box3d_b3LerpPosition = new cpp.Callable<cpp.Object->cpp.Object->Float32->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3LerpPosition", "oofo", false));
	private static var box3d_b3TransformWorldPoint = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3TransformWorldPoint", "ooo", false));
	private static var box3d_b3InvTransformWorldPoint = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3InvTransformWorldPoint", "ooo", false));
	private static var box3d_b3ToRelativeTransform = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ToRelativeTransform", "ooo", false));
	private static var box3d_b3MakeWorldTransform = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MakeWorldTransform", "oo", false));
	private static var box3d_b3OffsetAABB = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3OffsetAABB", "ooo", false));
	private static var box3d_b3Det = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Det", "of", false));
	private static var box3d_b3MulMV = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MulMV", "ooo", false));
	private static var box3d_b3NegateMat3 = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3NegateMat3", "oo", false));
	private static var box3d_b3AddMM = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3AddMM", "ooo", false));
	private static var box3d_b3SubMM = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SubMM", "ooo", false));
	private static var box3d_b3MulSM = new cpp.Callable<Float32->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MulSM", "foo", false));
	private static var box3d_b3MulMM = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MulMM", "ooo", false));
	private static var box3d_b3Transpose = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Transpose", "oo", false));
	private static var box3d_b3InvertMatrix = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3InvertMatrix", "oo", false));
	private static var box3d_b3InvertT = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3InvertT", "oo", false));
	private static var box3d_b3AbsMatrix3 = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3AbsMatrix3", "oo", false));
	private static var box3d_b3MakeAABB = new cpp.Callable<cpp.Object->Int->Float32->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MakeAABB", "oifo", false));
	private static var box3d_b3AABB_Contains = new cpp.Callable<cpp.Object->cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3AABB_Contains", "oob", false));
	private static var box3d_b3AABB_Area = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3AABB_Area", "of", false));
	private static var box3d_b3AABB_Center = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3AABB_Center", "oo", false));
	private static var box3d_b3AABB_Extents = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3AABB_Extents", "oo", false));
	private static var box3d_b3AABB_Union = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3AABB_Union", "ooo", false));
	private static var box3d_b3AABB_Inflate = new cpp.Callable<cpp.Object->Float32->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3AABB_Inflate", "ofo", false));
	private static var box3d_b3AABB_Overlaps = new cpp.Callable<cpp.Object->cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3AABB_Overlaps", "oob", false));
	private static var box3d_b3ClosestPointToAABB = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ClosestPointToAABB", "ooo", false));
	#end
}