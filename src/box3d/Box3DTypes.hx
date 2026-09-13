package box3d;

import box3d.Box3DEnums;
import haxe.Int64;
import lime.system.CFFI;
import lime.system.CFFIPointer;
#if (cpp && !cppia)
import cpp.Float32;
import cpp.UInt64;
#else
typedef Float32 = Float;
#end

abstract B3Vec3(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var x(get, set):Float;
	public var y(get, set):Float;
	public var z(get, set):Float;
	public function new() {
		#if lime_box3d
		this = box3d_b3Vec3_new();
		#else
		this = null;
		#end
	}
	private inline function get_x():Float {
		#if lime_box3d
		return box3d_b3Vec3_x_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_x(v:Float):Float {
		#if lime_box3d
		return box3d_b3Vec3_x_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_y():Float {
		#if lime_box3d
		return box3d_b3Vec3_y_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_y(v:Float):Float {
		#if lime_box3d
		return box3d_b3Vec3_y_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_z():Float {
		#if lime_box3d
		return box3d_b3Vec3_z_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_z(v:Float):Float {
		#if lime_box3d
		return box3d_b3Vec3_z_set(this, v);
		#else
		return 0.0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3Vec3_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Vec3_new", "o", false));
	private static var box3d_b3Vec3_x_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Vec3_x_get", "of", false));
	private static var box3d_b3Vec3_x_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Vec3_x_set", "off", false));
	private static var box3d_b3Vec3_y_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Vec3_y_get", "of", false));
	private static var box3d_b3Vec3_y_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Vec3_y_set", "off", false));
	private static var box3d_b3Vec3_z_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Vec3_z_get", "of", false));
	private static var box3d_b3Vec3_z_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Vec3_z_set", "off", false));
	#end
}

abstract B3Transform(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var p(get, set):B3Pos;
	public var q(get, set):B3Quat;
	public function new() {
		#if lime_box3d
		this = box3d_b3Transform_new();
		#else
		this = null;
		#end
	}
	private inline function get_p():B3Pos {
		#if lime_box3d
		return box3d_b3Transform_p_get(this);
		#else
		return null;
		#end
	}
	private inline function set_p(v:B3Pos):B3Pos {
		#if lime_box3d
		return box3d_b3Transform_p_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_q():B3Quat {
		#if lime_box3d
		return box3d_b3Transform_q_get(this);
		#else
		return null;
		#end
	}
	private inline function set_q(v:B3Quat):B3Quat {
		#if lime_box3d
		return box3d_b3Transform_q_set(this, v);
		#else
		return null;
		#end
	}
	#if lime_box3d
	private static var box3d_b3Transform_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Transform_new", "o", false));
	private static var box3d_b3Transform_p_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Transform_p_get", "oo", false));
	private static var box3d_b3Transform_p_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Transform_p_set", "ooo", false));
	private static var box3d_b3Transform_q_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Transform_q_get", "oo", false));
	private static var box3d_b3Transform_q_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Transform_q_set", "ooo", false));
	#end
}

abstract B3Pos(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var x(get, set):Float;
	public var y(get, set):Float;
	public var z(get, set):Float;
	public function new() {
		#if lime_box3d
		this = box3d_b3Pos_new();
		#else
		this = null;
		#end
	}
	private inline function get_x():Float {
		#if lime_box3d
		return box3d_b3Pos_x_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_x(v:Float):Float {
		#if lime_box3d
		return box3d_b3Pos_x_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_y():Float {
		#if lime_box3d
		return box3d_b3Pos_y_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_y(v:Float):Float {
		#if lime_box3d
		return box3d_b3Pos_y_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_z():Float {
		#if lime_box3d
		return box3d_b3Pos_z_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_z(v:Float):Float {
		#if lime_box3d
		return box3d_b3Pos_z_set(this, v);
		#else
		return 0.0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3Pos_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Pos_new", "o", false));
	private static var box3d_b3Pos_x_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Pos_x_get", "of", false));
	private static var box3d_b3Pos_x_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Pos_x_set", "off", false));
	private static var box3d_b3Pos_y_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Pos_y_get", "of", false));
	private static var box3d_b3Pos_y_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Pos_y_set", "off", false));
	private static var box3d_b3Pos_z_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Pos_z_get", "of", false));
	private static var box3d_b3Pos_z_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Pos_z_set", "off", false));
	#end
}

abstract B3WorldTransform(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var p(get, set):B3Pos;
	public var q(get, set):B3Quat;
	public function new() {
		#if lime_box3d
		this = box3d_b3WorldTransform_new();
		#else
		this = null;
		#end
	}
	private inline function get_p():B3Pos {
		#if lime_box3d
		return box3d_b3WorldTransform_p_get(this);
		#else
		return null;
		#end
	}
	private inline function set_p(v:B3Pos):B3Pos {
		#if lime_box3d
		return box3d_b3WorldTransform_p_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_q():B3Quat {
		#if lime_box3d
		return box3d_b3WorldTransform_q_get(this);
		#else
		return null;
		#end
	}
	private inline function set_q(v:B3Quat):B3Quat {
		#if lime_box3d
		return box3d_b3WorldTransform_q_set(this, v);
		#else
		return null;
		#end
	}
	#if lime_box3d
	private static var box3d_b3WorldTransform_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldTransform_new", "o", false));
	private static var box3d_b3WorldTransform_p_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldTransform_p_get", "oo", false));
	private static var box3d_b3WorldTransform_p_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldTransform_p_set", "ooo", false));
	private static var box3d_b3WorldTransform_q_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldTransform_q_get", "oo", false));
	private static var box3d_b3WorldTransform_q_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldTransform_q_set", "ooo", false));
	#end
}

abstract B3Matrix3(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var cx(get, set):B3Vec3;
	public var cy(get, set):B3Vec3;
	public var cz(get, set):B3Vec3;
	public function new() {
		#if lime_box3d
		this = box3d_b3Matrix3_new();
		#else
		this = null;
		#end
	}
	private inline function get_cx():B3Vec3 {
		#if lime_box3d
		return box3d_b3Matrix3_cx_get(this);
		#else
		return null;
		#end
	}
	private inline function set_cx(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3Matrix3_cx_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_cy():B3Vec3 {
		#if lime_box3d
		return box3d_b3Matrix3_cy_get(this);
		#else
		return null;
		#end
	}
	private inline function set_cy(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3Matrix3_cy_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_cz():B3Vec3 {
		#if lime_box3d
		return box3d_b3Matrix3_cz_get(this);
		#else
		return null;
		#end
	}
	private inline function set_cz(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3Matrix3_cz_set(this, v);
		#else
		return null;
		#end
	}
	#if lime_box3d
	private static var box3d_b3Matrix3_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Matrix3_new", "o", false));
	private static var box3d_b3Matrix3_cx_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Matrix3_cx_get", "oo", false));
	private static var box3d_b3Matrix3_cx_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Matrix3_cx_set", "ooo", false));
	private static var box3d_b3Matrix3_cy_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Matrix3_cy_get", "oo", false));
	private static var box3d_b3Matrix3_cy_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Matrix3_cy_set", "ooo", false));
	private static var box3d_b3Matrix3_cz_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Matrix3_cz_get", "oo", false));
	private static var box3d_b3Matrix3_cz_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Matrix3_cz_set", "ooo", false));
	#end
}

abstract B3WorldCastOutput(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var normal(get, set):B3Vec3;
	public var point(get, set):B3Vec3;
	public var fraction(get, set):Float;
	public var iterations(get, set):Int;
	public var triangleIndex(get, set):Int;
	public var childIndex(get, set):Int;
	public var materialIndex(get, set):Int;
	public var hit(get, set):Bool;
	public function new() {
		#if lime_box3d
		this = box3d_b3WorldCastOutput_new();
		#else
		this = null;
		#end
	}
	private inline function get_normal():B3Vec3 {
		#if lime_box3d
		return box3d_b3WorldCastOutput_normal_get(this);
		#else
		return null;
		#end
	}
	private inline function set_normal(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3WorldCastOutput_normal_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_point():B3Vec3 {
		#if lime_box3d
		return box3d_b3WorldCastOutput_point_get(this);
		#else
		return null;
		#end
	}
	private inline function set_point(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3WorldCastOutput_point_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_fraction():Float {
		#if lime_box3d
		return box3d_b3WorldCastOutput_fraction_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_fraction(v:Float):Float {
		#if lime_box3d
		return box3d_b3WorldCastOutput_fraction_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_iterations():Int {
		#if lime_box3d
		return box3d_b3WorldCastOutput_iterations_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_iterations(v:Int):Int {
		#if lime_box3d
		return box3d_b3WorldCastOutput_iterations_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_triangleIndex():Int {
		#if lime_box3d
		return box3d_b3WorldCastOutput_triangleIndex_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_triangleIndex(v:Int):Int {
		#if lime_box3d
		return box3d_b3WorldCastOutput_triangleIndex_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_childIndex():Int {
		#if lime_box3d
		return box3d_b3WorldCastOutput_childIndex_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_childIndex(v:Int):Int {
		#if lime_box3d
		return box3d_b3WorldCastOutput_childIndex_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_materialIndex():Int {
		#if lime_box3d
		return box3d_b3WorldCastOutput_materialIndex_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_materialIndex(v:Int):Int {
		#if lime_box3d
		return box3d_b3WorldCastOutput_materialIndex_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_hit():Bool {
		#if lime_box3d
		return box3d_b3WorldCastOutput_hit_get(this);
		#else
		return false;
		#end
	}
	private inline function set_hit(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3WorldCastOutput_hit_set(this, v);
		#else
		return false;
		#end
	}
	#if lime_box3d
	private static var box3d_b3WorldCastOutput_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldCastOutput_new", "o", false));
	private static var box3d_b3WorldCastOutput_normal_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldCastOutput_normal_get", "oo", false));
	private static var box3d_b3WorldCastOutput_normal_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldCastOutput_normal_set", "ooo", false));
	private static var box3d_b3WorldCastOutput_point_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldCastOutput_point_get", "oo", false));
	private static var box3d_b3WorldCastOutput_point_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldCastOutput_point_set", "ooo", false));
	private static var box3d_b3WorldCastOutput_fraction_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldCastOutput_fraction_get", "of", false));
	private static var box3d_b3WorldCastOutput_fraction_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldCastOutput_fraction_set", "off", false));
	private static var box3d_b3WorldCastOutput_iterations_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldCastOutput_iterations_get", "oi", false));
	private static var box3d_b3WorldCastOutput_iterations_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldCastOutput_iterations_set", "oii", false));
	private static var box3d_b3WorldCastOutput_triangleIndex_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldCastOutput_triangleIndex_get", "oi", false));
	private static var box3d_b3WorldCastOutput_triangleIndex_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldCastOutput_triangleIndex_set", "oii", false));
	private static var box3d_b3WorldCastOutput_childIndex_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldCastOutput_childIndex_get", "oi", false));
	private static var box3d_b3WorldCastOutput_childIndex_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldCastOutput_childIndex_set", "oii", false));
	private static var box3d_b3WorldCastOutput_materialIndex_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldCastOutput_materialIndex_get", "oi", false));
	private static var box3d_b3WorldCastOutput_materialIndex_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldCastOutput_materialIndex_set", "oii", false));
	private static var box3d_b3WorldCastOutput_hit_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldCastOutput_hit_get", "ob", false));
	private static var box3d_b3WorldCastOutput_hit_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldCastOutput_hit_set", "obb", false));
	#end
}

abstract B3CastOutput(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var normal(get, set):B3Vec3;
	public var point(get, set):B3Vec3;
	public var fraction(get, set):Float;
	public var iterations(get, set):Int;
	public var triangleIndex(get, set):Int;
	public var childIndex(get, set):Int;
	public var materialIndex(get, set):Int;
	public var hit(get, set):Bool;
	public function new() {
		#if lime_box3d
		this = box3d_b3CastOutput_new();
		#else
		this = null;
		#end
	}
	private inline function get_normal():B3Vec3 {
		#if lime_box3d
		return box3d_b3CastOutput_normal_get(this);
		#else
		return null;
		#end
	}
	private inline function set_normal(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3CastOutput_normal_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_point():B3Vec3 {
		#if lime_box3d
		return box3d_b3CastOutput_point_get(this);
		#else
		return null;
		#end
	}
	private inline function set_point(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3CastOutput_point_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_fraction():Float {
		#if lime_box3d
		return box3d_b3CastOutput_fraction_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_fraction(v:Float):Float {
		#if lime_box3d
		return box3d_b3CastOutput_fraction_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_iterations():Int {
		#if lime_box3d
		return box3d_b3CastOutput_iterations_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_iterations(v:Int):Int {
		#if lime_box3d
		return box3d_b3CastOutput_iterations_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_triangleIndex():Int {
		#if lime_box3d
		return box3d_b3CastOutput_triangleIndex_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_triangleIndex(v:Int):Int {
		#if lime_box3d
		return box3d_b3CastOutput_triangleIndex_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_childIndex():Int {
		#if lime_box3d
		return box3d_b3CastOutput_childIndex_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_childIndex(v:Int):Int {
		#if lime_box3d
		return box3d_b3CastOutput_childIndex_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_materialIndex():Int {
		#if lime_box3d
		return box3d_b3CastOutput_materialIndex_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_materialIndex(v:Int):Int {
		#if lime_box3d
		return box3d_b3CastOutput_materialIndex_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_hit():Bool {
		#if lime_box3d
		return box3d_b3CastOutput_hit_get(this);
		#else
		return false;
		#end
	}
	private inline function set_hit(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3CastOutput_hit_set(this, v);
		#else
		return false;
		#end
	}
	#if lime_box3d
	private static var box3d_b3CastOutput_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CastOutput_new", "o", false));
	private static var box3d_b3CastOutput_normal_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CastOutput_normal_get", "oo", false));
	private static var box3d_b3CastOutput_normal_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CastOutput_normal_set", "ooo", false));
	private static var box3d_b3CastOutput_point_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CastOutput_point_get", "oo", false));
	private static var box3d_b3CastOutput_point_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CastOutput_point_set", "ooo", false));
	private static var box3d_b3CastOutput_fraction_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3CastOutput_fraction_get", "of", false));
	private static var box3d_b3CastOutput_fraction_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3CastOutput_fraction_set", "off", false));
	private static var box3d_b3CastOutput_iterations_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CastOutput_iterations_get", "oi", false));
	private static var box3d_b3CastOutput_iterations_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CastOutput_iterations_set", "oii", false));
	private static var box3d_b3CastOutput_triangleIndex_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CastOutput_triangleIndex_get", "oi", false));
	private static var box3d_b3CastOutput_triangleIndex_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CastOutput_triangleIndex_set", "oii", false));
	private static var box3d_b3CastOutput_childIndex_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CastOutput_childIndex_get", "oi", false));
	private static var box3d_b3CastOutput_childIndex_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CastOutput_childIndex_set", "oii", false));
	private static var box3d_b3CastOutput_materialIndex_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CastOutput_materialIndex_get", "oi", false));
	private static var box3d_b3CastOutput_materialIndex_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CastOutput_materialIndex_set", "oii", false));
	private static var box3d_b3CastOutput_hit_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3CastOutput_hit_get", "ob", false));
	private static var box3d_b3CastOutput_hit_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3CastOutput_hit_set", "obb", false));
	#end
}

abstract B3Version(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var major(get, set):Int;
	public var minor(get, set):Int;
	public var revision(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3Version_new();
		#else
		this = null;
		#end
	}
	private inline function get_major():Int {
		#if lime_box3d
		return box3d_b3Version_major_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_major(v:Int):Int {
		#if lime_box3d
		return box3d_b3Version_major_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_minor():Int {
		#if lime_box3d
		return box3d_b3Version_minor_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_minor(v:Int):Int {
		#if lime_box3d
		return box3d_b3Version_minor_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_revision():Int {
		#if lime_box3d
		return box3d_b3Version_revision_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_revision(v:Int):Int {
		#if lime_box3d
		return box3d_b3Version_revision_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3Version_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Version_new", "o", false));
	private static var box3d_b3Version_major_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Version_major_get", "oi", false));
	private static var box3d_b3Version_major_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Version_major_set", "oii", false));
	private static var box3d_b3Version_minor_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Version_minor_get", "oi", false));
	private static var box3d_b3Version_minor_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Version_minor_set", "oii", false));
	private static var box3d_b3Version_revision_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Version_revision_get", "oi", false));
	private static var box3d_b3Version_revision_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Version_revision_set", "oii", false));
	#end
}

abstract B3Capacity(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var staticShapeCount(get, set):Int;
	public var dynamicShapeCount(get, set):Int;
	public var staticBodyCount(get, set):Int;
	public var dynamicBodyCount(get, set):Int;
	public var contactCount(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3Capacity_new();
		#else
		this = null;
		#end
	}
	private inline function get_staticShapeCount():Int {
		#if lime_box3d
		return box3d_b3Capacity_staticShapeCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_staticShapeCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3Capacity_staticShapeCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_dynamicShapeCount():Int {
		#if lime_box3d
		return box3d_b3Capacity_dynamicShapeCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_dynamicShapeCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3Capacity_dynamicShapeCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_staticBodyCount():Int {
		#if lime_box3d
		return box3d_b3Capacity_staticBodyCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_staticBodyCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3Capacity_staticBodyCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_dynamicBodyCount():Int {
		#if lime_box3d
		return box3d_b3Capacity_dynamicBodyCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_dynamicBodyCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3Capacity_dynamicBodyCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_contactCount():Int {
		#if lime_box3d
		return box3d_b3Capacity_contactCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_contactCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3Capacity_contactCount_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3Capacity_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Capacity_new", "o", false));
	private static var box3d_b3Capacity_staticShapeCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Capacity_staticShapeCount_get", "oi", false));
	private static var box3d_b3Capacity_staticShapeCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Capacity_staticShapeCount_set", "oii", false));
	private static var box3d_b3Capacity_dynamicShapeCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Capacity_dynamicShapeCount_get", "oi", false));
	private static var box3d_b3Capacity_dynamicShapeCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Capacity_dynamicShapeCount_set", "oii", false));
	private static var box3d_b3Capacity_staticBodyCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Capacity_staticBodyCount_get", "oi", false));
	private static var box3d_b3Capacity_staticBodyCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Capacity_staticBodyCount_set", "oii", false));
	private static var box3d_b3Capacity_dynamicBodyCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Capacity_dynamicBodyCount_get", "oi", false));
	private static var box3d_b3Capacity_dynamicBodyCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Capacity_dynamicBodyCount_set", "oii", false));
	private static var box3d_b3Capacity_contactCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Capacity_contactCount_get", "oi", false));
	private static var box3d_b3Capacity_contactCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Capacity_contactCount_set", "oii", false));
	#end
}

abstract B3WorldDef(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var gravity(get, set):B3Vec3;
	public var restitutionThreshold(get, set):Float;
	public var hitEventThreshold(get, set):Float;
	public var contactHertz(get, set):Float;
	public var contactDampingRatio(get, set):Float;
	public var contactSpeed(get, set):Float;
	public var maximumLinearSpeed(get, set):Float;
	public var enableSleep(get, set):Bool;
	public var enableContinuous(get, set):Bool;
	public var workerCount(get, set):UInt;
	public var capacity(get, set):B3Capacity;
	public var internalValue(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3WorldDef_new();
		#else
		this = null;
		#end
	}
	private inline function get_gravity():B3Vec3 {
		#if lime_box3d
		return box3d_b3WorldDef_gravity_get(this);
		#else
		return null;
		#end
	}
	private inline function set_gravity(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3WorldDef_gravity_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_restitutionThreshold():Float {
		#if lime_box3d
		return box3d_b3WorldDef_restitutionThreshold_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_restitutionThreshold(v:Float):Float {
		#if lime_box3d
		return box3d_b3WorldDef_restitutionThreshold_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_hitEventThreshold():Float {
		#if lime_box3d
		return box3d_b3WorldDef_hitEventThreshold_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_hitEventThreshold(v:Float):Float {
		#if lime_box3d
		return box3d_b3WorldDef_hitEventThreshold_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_contactHertz():Float {
		#if lime_box3d
		return box3d_b3WorldDef_contactHertz_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_contactHertz(v:Float):Float {
		#if lime_box3d
		return box3d_b3WorldDef_contactHertz_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_contactDampingRatio():Float {
		#if lime_box3d
		return box3d_b3WorldDef_contactDampingRatio_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_contactDampingRatio(v:Float):Float {
		#if lime_box3d
		return box3d_b3WorldDef_contactDampingRatio_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_contactSpeed():Float {
		#if lime_box3d
		return box3d_b3WorldDef_contactSpeed_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_contactSpeed(v:Float):Float {
		#if lime_box3d
		return box3d_b3WorldDef_contactSpeed_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_maximumLinearSpeed():Float {
		#if lime_box3d
		return box3d_b3WorldDef_maximumLinearSpeed_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_maximumLinearSpeed(v:Float):Float {
		#if lime_box3d
		return box3d_b3WorldDef_maximumLinearSpeed_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_enableSleep():Bool {
		#if lime_box3d
		return box3d_b3WorldDef_enableSleep_get(this);
		#else
		return false;
		#end
	}
	private inline function set_enableSleep(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3WorldDef_enableSleep_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_enableContinuous():Bool {
		#if lime_box3d
		return box3d_b3WorldDef_enableContinuous_get(this);
		#else
		return false;
		#end
	}
	private inline function set_enableContinuous(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3WorldDef_enableContinuous_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_workerCount():UInt {
		#if lime_box3d
		return box3d_b3WorldDef_workerCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_workerCount(v:UInt):UInt {
		#if lime_box3d
		return box3d_b3WorldDef_workerCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_capacity():B3Capacity {
		#if lime_box3d
		return box3d_b3WorldDef_capacity_get(this);
		#else
		return null;
		#end
	}
	private inline function set_capacity(v:B3Capacity):B3Capacity {
		#if lime_box3d
		return box3d_b3WorldDef_capacity_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_internalValue():Int {
		#if lime_box3d
		return box3d_b3WorldDef_internalValue_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_internalValue(v:Int):Int {
		#if lime_box3d
		return box3d_b3WorldDef_internalValue_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3WorldDef_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldDef_new", "o", false));
	private static var box3d_b3WorldDef_gravity_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldDef_gravity_get", "oo", false));
	private static var box3d_b3WorldDef_gravity_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldDef_gravity_set", "ooo", false));
	private static var box3d_b3WorldDef_restitutionThreshold_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldDef_restitutionThreshold_get", "of", false));
	private static var box3d_b3WorldDef_restitutionThreshold_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldDef_restitutionThreshold_set", "off", false));
	private static var box3d_b3WorldDef_hitEventThreshold_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldDef_hitEventThreshold_get", "of", false));
	private static var box3d_b3WorldDef_hitEventThreshold_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldDef_hitEventThreshold_set", "off", false));
	private static var box3d_b3WorldDef_contactHertz_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldDef_contactHertz_get", "of", false));
	private static var box3d_b3WorldDef_contactHertz_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldDef_contactHertz_set", "off", false));
	private static var box3d_b3WorldDef_contactDampingRatio_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldDef_contactDampingRatio_get", "of", false));
	private static var box3d_b3WorldDef_contactDampingRatio_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldDef_contactDampingRatio_set", "off", false));
	private static var box3d_b3WorldDef_contactSpeed_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldDef_contactSpeed_get", "of", false));
	private static var box3d_b3WorldDef_contactSpeed_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldDef_contactSpeed_set", "off", false));
	private static var box3d_b3WorldDef_maximumLinearSpeed_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldDef_maximumLinearSpeed_get", "of", false));
	private static var box3d_b3WorldDef_maximumLinearSpeed_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldDef_maximumLinearSpeed_set", "off", false));
	private static var box3d_b3WorldDef_enableSleep_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldDef_enableSleep_get", "ob", false));
	private static var box3d_b3WorldDef_enableSleep_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldDef_enableSleep_set", "obb", false));
	private static var box3d_b3WorldDef_enableContinuous_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldDef_enableContinuous_get", "ob", false));
	private static var box3d_b3WorldDef_enableContinuous_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldDef_enableContinuous_set", "obb", false));
	private static var box3d_b3WorldDef_workerCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldDef_workerCount_get", "oi", false));
	private static var box3d_b3WorldDef_workerCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldDef_workerCount_set", "oii", false));
	private static var box3d_b3WorldDef_capacity_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldDef_capacity_get", "oo", false));
	private static var box3d_b3WorldDef_capacity_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldDef_capacity_set", "ooo", false));
	private static var box3d_b3WorldDef_internalValue_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldDef_internalValue_get", "oi", false));
	private static var box3d_b3WorldDef_internalValue_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldDef_internalValue_set", "oii", false));
	#end
}

abstract B3MotionLocks(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var linearX(get, set):Bool;
	public var linearY(get, set):Bool;
	public var linearZ(get, set):Bool;
	public var angularX(get, set):Bool;
	public var angularY(get, set):Bool;
	public var angularZ(get, set):Bool;
	public function new() {
		#if lime_box3d
		this = box3d_b3MotionLocks_new();
		#else
		this = null;
		#end
	}
	private inline function get_linearX():Bool {
		#if lime_box3d
		return box3d_b3MotionLocks_linearX_get(this);
		#else
		return false;
		#end
	}
	private inline function set_linearX(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3MotionLocks_linearX_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_linearY():Bool {
		#if lime_box3d
		return box3d_b3MotionLocks_linearY_get(this);
		#else
		return false;
		#end
	}
	private inline function set_linearY(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3MotionLocks_linearY_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_linearZ():Bool {
		#if lime_box3d
		return box3d_b3MotionLocks_linearZ_get(this);
		#else
		return false;
		#end
	}
	private inline function set_linearZ(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3MotionLocks_linearZ_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_angularX():Bool {
		#if lime_box3d
		return box3d_b3MotionLocks_angularX_get(this);
		#else
		return false;
		#end
	}
	private inline function set_angularX(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3MotionLocks_angularX_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_angularY():Bool {
		#if lime_box3d
		return box3d_b3MotionLocks_angularY_get(this);
		#else
		return false;
		#end
	}
	private inline function set_angularY(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3MotionLocks_angularY_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_angularZ():Bool {
		#if lime_box3d
		return box3d_b3MotionLocks_angularZ_get(this);
		#else
		return false;
		#end
	}
	private inline function set_angularZ(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3MotionLocks_angularZ_set(this, v);
		#else
		return false;
		#end
	}
	#if lime_box3d
	private static var box3d_b3MotionLocks_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MotionLocks_new", "o", false));
	private static var box3d_b3MotionLocks_linearX_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3MotionLocks_linearX_get", "ob", false));
	private static var box3d_b3MotionLocks_linearX_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3MotionLocks_linearX_set", "obb", false));
	private static var box3d_b3MotionLocks_linearY_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3MotionLocks_linearY_get", "ob", false));
	private static var box3d_b3MotionLocks_linearY_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3MotionLocks_linearY_set", "obb", false));
	private static var box3d_b3MotionLocks_linearZ_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3MotionLocks_linearZ_get", "ob", false));
	private static var box3d_b3MotionLocks_linearZ_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3MotionLocks_linearZ_set", "obb", false));
	private static var box3d_b3MotionLocks_angularX_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3MotionLocks_angularX_get", "ob", false));
	private static var box3d_b3MotionLocks_angularX_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3MotionLocks_angularX_set", "obb", false));
	private static var box3d_b3MotionLocks_angularY_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3MotionLocks_angularY_get", "ob", false));
	private static var box3d_b3MotionLocks_angularY_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3MotionLocks_angularY_set", "obb", false));
	private static var box3d_b3MotionLocks_angularZ_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3MotionLocks_angularZ_get", "ob", false));
	private static var box3d_b3MotionLocks_angularZ_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3MotionLocks_angularZ_set", "obb", false));
	#end
}

abstract B3BodyDef(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var type(get, set):B3BodyType;
	public var position(get, set):B3Pos;
	public var rotation(get, set):B3Quat;
	public var linearVelocity(get, set):B3Vec3;
	public var angularVelocity(get, set):B3Vec3;
	public var linearDamping(get, set):Float;
	public var angularDamping(get, set):Float;
	public var gravityScale(get, set):Float;
	public var sleepThreshold(get, set):Float;
	public var name(get, set):String;
	public var motionLocks(get, set):B3MotionLocks;
	public var enableSleep(get, set):Bool;
	public var isAwake(get, set):Bool;
	public var isBullet(get, set):Bool;
	public var isEnabled(get, set):Bool;
	public var allowFastRotation(get, set):Bool;
	public var enableContactRecycling(get, set):Bool;
	public var internalValue(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3BodyDef_new();
		#else
		this = null;
		#end
	}
	private inline function get_type():B3BodyType {
		#if lime_box3d
		return box3d_b3BodyDef_type_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_type(v:B3BodyType):B3BodyType {
		#if lime_box3d
		return box3d_b3BodyDef_type_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_position():B3Pos {
		#if lime_box3d
		return box3d_b3BodyDef_position_get(this);
		#else
		return null;
		#end
	}
	private inline function set_position(v:B3Pos):B3Pos {
		#if lime_box3d
		return box3d_b3BodyDef_position_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_rotation():B3Quat {
		#if lime_box3d
		return box3d_b3BodyDef_rotation_get(this);
		#else
		return null;
		#end
	}
	private inline function set_rotation(v:B3Quat):B3Quat {
		#if lime_box3d
		return box3d_b3BodyDef_rotation_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_linearVelocity():B3Vec3 {
		#if lime_box3d
		return box3d_b3BodyDef_linearVelocity_get(this);
		#else
		return null;
		#end
	}
	private inline function set_linearVelocity(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3BodyDef_linearVelocity_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_angularVelocity():B3Vec3 {
		#if lime_box3d
		return box3d_b3BodyDef_angularVelocity_get(this);
		#else
		return null;
		#end
	}
	private inline function set_angularVelocity(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3BodyDef_angularVelocity_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_linearDamping():Float {
		#if lime_box3d
		return box3d_b3BodyDef_linearDamping_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_linearDamping(v:Float):Float {
		#if lime_box3d
		return box3d_b3BodyDef_linearDamping_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_angularDamping():Float {
		#if lime_box3d
		return box3d_b3BodyDef_angularDamping_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_angularDamping(v:Float):Float {
		#if lime_box3d
		return box3d_b3BodyDef_angularDamping_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_gravityScale():Float {
		#if lime_box3d
		return box3d_b3BodyDef_gravityScale_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_gravityScale(v:Float):Float {
		#if lime_box3d
		return box3d_b3BodyDef_gravityScale_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_sleepThreshold():Float {
		#if lime_box3d
		return box3d_b3BodyDef_sleepThreshold_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_sleepThreshold(v:Float):Float {
		#if lime_box3d
		return box3d_b3BodyDef_sleepThreshold_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_name():String {
		#if lime_box3d
		return box3d_b3BodyDef_name_get(this);
		#else
		return null;
		#end
	}
	private inline function set_name(v:String):String {
		#if lime_box3d
		return box3d_b3BodyDef_name_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_motionLocks():B3MotionLocks {
		#if lime_box3d
		return box3d_b3BodyDef_motionLocks_get(this);
		#else
		return null;
		#end
	}
	private inline function set_motionLocks(v:B3MotionLocks):B3MotionLocks {
		#if lime_box3d
		return box3d_b3BodyDef_motionLocks_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_enableSleep():Bool {
		#if lime_box3d
		return box3d_b3BodyDef_enableSleep_get(this);
		#else
		return false;
		#end
	}
	private inline function set_enableSleep(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3BodyDef_enableSleep_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_isAwake():Bool {
		#if lime_box3d
		return box3d_b3BodyDef_isAwake_get(this);
		#else
		return false;
		#end
	}
	private inline function set_isAwake(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3BodyDef_isAwake_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_isBullet():Bool {
		#if lime_box3d
		return box3d_b3BodyDef_isBullet_get(this);
		#else
		return false;
		#end
	}
	private inline function set_isBullet(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3BodyDef_isBullet_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_isEnabled():Bool {
		#if lime_box3d
		return box3d_b3BodyDef_isEnabled_get(this);
		#else
		return false;
		#end
	}
	private inline function set_isEnabled(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3BodyDef_isEnabled_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_allowFastRotation():Bool {
		#if lime_box3d
		return box3d_b3BodyDef_allowFastRotation_get(this);
		#else
		return false;
		#end
	}
	private inline function set_allowFastRotation(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3BodyDef_allowFastRotation_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_enableContactRecycling():Bool {
		#if lime_box3d
		return box3d_b3BodyDef_enableContactRecycling_get(this);
		#else
		return false;
		#end
	}
	private inline function set_enableContactRecycling(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3BodyDef_enableContactRecycling_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_internalValue():Int {
		#if lime_box3d
		return box3d_b3BodyDef_internalValue_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_internalValue(v:Int):Int {
		#if lime_box3d
		return box3d_b3BodyDef_internalValue_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3BodyDef_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_new", "o", false));
	private static var box3d_b3BodyDef_type_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_type_get", "oi", false));
	private static var box3d_b3BodyDef_type_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_type_set", "oii", false));
	private static var box3d_b3BodyDef_position_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_position_get", "oo", false));
	private static var box3d_b3BodyDef_position_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_position_set", "ooo", false));
	private static var box3d_b3BodyDef_rotation_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_rotation_get", "oo", false));
	private static var box3d_b3BodyDef_rotation_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_rotation_set", "ooo", false));
	private static var box3d_b3BodyDef_linearVelocity_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_linearVelocity_get", "oo", false));
	private static var box3d_b3BodyDef_linearVelocity_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_linearVelocity_set", "ooo", false));
	private static var box3d_b3BodyDef_angularVelocity_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_angularVelocity_get", "oo", false));
	private static var box3d_b3BodyDef_angularVelocity_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_angularVelocity_set", "ooo", false));
	private static var box3d_b3BodyDef_linearDamping_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_linearDamping_get", "of", false));
	private static var box3d_b3BodyDef_linearDamping_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_linearDamping_set", "off", false));
	private static var box3d_b3BodyDef_angularDamping_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_angularDamping_get", "of", false));
	private static var box3d_b3BodyDef_angularDamping_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_angularDamping_set", "off", false));
	private static var box3d_b3BodyDef_gravityScale_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_gravityScale_get", "of", false));
	private static var box3d_b3BodyDef_gravityScale_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_gravityScale_set", "off", false));
	private static var box3d_b3BodyDef_sleepThreshold_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_sleepThreshold_get", "of", false));
	private static var box3d_b3BodyDef_sleepThreshold_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_sleepThreshold_set", "off", false));
	private static var box3d_b3BodyDef_name_get = new cpp.Callable<cpp.Object->String>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_name_get", "os", false));
	private static var box3d_b3BodyDef_name_set = new cpp.Callable<cpp.Object->String->String>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_name_set", "oss", false));
	private static var box3d_b3BodyDef_motionLocks_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_motionLocks_get", "oo", false));
	private static var box3d_b3BodyDef_motionLocks_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_motionLocks_set", "ooo", false));
	private static var box3d_b3BodyDef_enableSleep_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_enableSleep_get", "ob", false));
	private static var box3d_b3BodyDef_enableSleep_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_enableSleep_set", "obb", false));
	private static var box3d_b3BodyDef_isAwake_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_isAwake_get", "ob", false));
	private static var box3d_b3BodyDef_isAwake_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_isAwake_set", "obb", false));
	private static var box3d_b3BodyDef_isBullet_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_isBullet_get", "ob", false));
	private static var box3d_b3BodyDef_isBullet_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_isBullet_set", "obb", false));
	private static var box3d_b3BodyDef_isEnabled_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_isEnabled_get", "ob", false));
	private static var box3d_b3BodyDef_isEnabled_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_isEnabled_set", "obb", false));
	private static var box3d_b3BodyDef_allowFastRotation_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_allowFastRotation_get", "ob", false));
	private static var box3d_b3BodyDef_allowFastRotation_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_allowFastRotation_set", "obb", false));
	private static var box3d_b3BodyDef_enableContactRecycling_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_enableContactRecycling_get", "ob", false));
	private static var box3d_b3BodyDef_enableContactRecycling_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_enableContactRecycling_set", "obb", false));
	private static var box3d_b3BodyDef_internalValue_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_internalValue_get", "oi", false));
	private static var box3d_b3BodyDef_internalValue_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyDef_internalValue_set", "oii", false));
	#end
}

abstract B3Filter(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var categoryBits(get, set):UInt64;
	public var maskBits(get, set):UInt64;
	public var groupIndex(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3Filter_new();
		#else
		this = null;
		#end
	}
	private inline function get_categoryBits():UInt64 {
		#if lime_box3d
		return box3d_b3Filter_categoryBits_get(this);
		#else
		return null;
		#end
	}
	private inline function set_categoryBits(v:UInt64):UInt64 {
		#if lime_box3d
		return box3d_b3Filter_categoryBits_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_maskBits():UInt64 {
		#if lime_box3d
		return box3d_b3Filter_maskBits_get(this);
		#else
		return null;
		#end
	}
	private inline function set_maskBits(v:UInt64):UInt64 {
		#if lime_box3d
		return box3d_b3Filter_maskBits_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_groupIndex():Int {
		#if lime_box3d
		return box3d_b3Filter_groupIndex_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_groupIndex(v:Int):Int {
		#if lime_box3d
		return box3d_b3Filter_groupIndex_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3Filter_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Filter_new", "o", false));
	private static var box3d_b3Filter_categoryBits_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Filter_categoryBits_get", "oo", false));
	private static var box3d_b3Filter_categoryBits_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Filter_categoryBits_set", "ooo", false));
	private static var box3d_b3Filter_maskBits_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Filter_maskBits_get", "oo", false));
	private static var box3d_b3Filter_maskBits_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Filter_maskBits_set", "ooo", false));
	private static var box3d_b3Filter_groupIndex_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Filter_groupIndex_get", "oi", false));
	private static var box3d_b3Filter_groupIndex_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Filter_groupIndex_set", "oii", false));
	#end
}

abstract B3SurfaceMaterial(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var friction(get, set):Float;
	public var restitution(get, set):Float;
	public var rollingResistance(get, set):Float;
	public var tangentVelocity(get, set):B3Vec3;
	public var userMaterialId(get, set):UInt64;
	public var customColor(get, set):UInt;
	public var padding(get, set):UInt;
	public function new() {
		#if lime_box3d
		this = box3d_b3SurfaceMaterial_new();
		#else
		this = null;
		#end
	}
	private inline function get_friction():Float {
		#if lime_box3d
		return box3d_b3SurfaceMaterial_friction_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_friction(v:Float):Float {
		#if lime_box3d
		return box3d_b3SurfaceMaterial_friction_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_restitution():Float {
		#if lime_box3d
		return box3d_b3SurfaceMaterial_restitution_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_restitution(v:Float):Float {
		#if lime_box3d
		return box3d_b3SurfaceMaterial_restitution_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_rollingResistance():Float {
		#if lime_box3d
		return box3d_b3SurfaceMaterial_rollingResistance_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_rollingResistance(v:Float):Float {
		#if lime_box3d
		return box3d_b3SurfaceMaterial_rollingResistance_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_tangentVelocity():B3Vec3 {
		#if lime_box3d
		return box3d_b3SurfaceMaterial_tangentVelocity_get(this);
		#else
		return null;
		#end
	}
	private inline function set_tangentVelocity(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3SurfaceMaterial_tangentVelocity_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_userMaterialId():UInt64 {
		#if lime_box3d
		return box3d_b3SurfaceMaterial_userMaterialId_get(this);
		#else
		return null;
		#end
	}
	private inline function set_userMaterialId(v:UInt64):UInt64 {
		#if lime_box3d
		return box3d_b3SurfaceMaterial_userMaterialId_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_customColor():UInt {
		#if lime_box3d
		return box3d_b3SurfaceMaterial_customColor_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_customColor(v:UInt):UInt {
		#if lime_box3d
		return box3d_b3SurfaceMaterial_customColor_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_padding():UInt {
		#if lime_box3d
		return box3d_b3SurfaceMaterial_padding_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_padding(v:UInt):UInt {
		#if lime_box3d
		return box3d_b3SurfaceMaterial_padding_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3SurfaceMaterial_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SurfaceMaterial_new", "o", false));
	private static var box3d_b3SurfaceMaterial_friction_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SurfaceMaterial_friction_get", "of", false));
	private static var box3d_b3SurfaceMaterial_friction_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SurfaceMaterial_friction_set", "off", false));
	private static var box3d_b3SurfaceMaterial_restitution_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SurfaceMaterial_restitution_get", "of", false));
	private static var box3d_b3SurfaceMaterial_restitution_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SurfaceMaterial_restitution_set", "off", false));
	private static var box3d_b3SurfaceMaterial_rollingResistance_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SurfaceMaterial_rollingResistance_get", "of", false));
	private static var box3d_b3SurfaceMaterial_rollingResistance_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SurfaceMaterial_rollingResistance_set", "off", false));
	private static var box3d_b3SurfaceMaterial_tangentVelocity_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SurfaceMaterial_tangentVelocity_get", "oo", false));
	private static var box3d_b3SurfaceMaterial_tangentVelocity_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SurfaceMaterial_tangentVelocity_set", "ooo", false));
	private static var box3d_b3SurfaceMaterial_userMaterialId_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SurfaceMaterial_userMaterialId_get", "oo", false));
	private static var box3d_b3SurfaceMaterial_userMaterialId_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SurfaceMaterial_userMaterialId_set", "ooo", false));
	private static var box3d_b3SurfaceMaterial_customColor_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3SurfaceMaterial_customColor_get", "oi", false));
	private static var box3d_b3SurfaceMaterial_customColor_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3SurfaceMaterial_customColor_set", "oii", false));
	private static var box3d_b3SurfaceMaterial_padding_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3SurfaceMaterial_padding_get", "oi", false));
	private static var box3d_b3SurfaceMaterial_padding_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3SurfaceMaterial_padding_set", "oii", false));
	#end
}

abstract B3ShapeDef(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var name(get, set):String;
	public var materialCount(get, set):Int;
	public var baseMaterial(get, set):B3SurfaceMaterial;
	public var density(get, set):Float;
	public var explosionScale(get, set):Float;
	public var filter(get, set):B3Filter;
	public var enableCustomFiltering(get, set):Bool;
	public var isSensor(get, set):Bool;
	public var enableSensorEvents(get, set):Bool;
	public var enableContactEvents(get, set):Bool;
	public var enableHitEvents(get, set):Bool;
	public var enablePreSolveEvents(get, set):Bool;
	public var invokeContactCreation(get, set):Bool;
	public var updateBodyMass(get, set):Bool;
	public var enableSpeculativeContact(get, set):Bool;
	public var internalValue(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3ShapeDef_new();
		#else
		this = null;
		#end
	}
	private inline function get_name():String {
		#if lime_box3d
		return box3d_b3ShapeDef_name_get(this);
		#else
		return null;
		#end
	}
	private inline function set_name(v:String):String {
		#if lime_box3d
		return box3d_b3ShapeDef_name_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_materialCount():Int {
		#if lime_box3d
		return box3d_b3ShapeDef_materialCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_materialCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3ShapeDef_materialCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_baseMaterial():B3SurfaceMaterial {
		#if lime_box3d
		return box3d_b3ShapeDef_baseMaterial_get(this);
		#else
		return null;
		#end
	}
	private inline function set_baseMaterial(v:B3SurfaceMaterial):B3SurfaceMaterial {
		#if lime_box3d
		return box3d_b3ShapeDef_baseMaterial_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_density():Float {
		#if lime_box3d
		return box3d_b3ShapeDef_density_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_density(v:Float):Float {
		#if lime_box3d
		return box3d_b3ShapeDef_density_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_explosionScale():Float {
		#if lime_box3d
		return box3d_b3ShapeDef_explosionScale_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_explosionScale(v:Float):Float {
		#if lime_box3d
		return box3d_b3ShapeDef_explosionScale_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_filter():B3Filter {
		#if lime_box3d
		return box3d_b3ShapeDef_filter_get(this);
		#else
		return null;
		#end
	}
	private inline function set_filter(v:B3Filter):B3Filter {
		#if lime_box3d
		return box3d_b3ShapeDef_filter_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_enableCustomFiltering():Bool {
		#if lime_box3d
		return box3d_b3ShapeDef_enableCustomFiltering_get(this);
		#else
		return false;
		#end
	}
	private inline function set_enableCustomFiltering(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3ShapeDef_enableCustomFiltering_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_isSensor():Bool {
		#if lime_box3d
		return box3d_b3ShapeDef_isSensor_get(this);
		#else
		return false;
		#end
	}
	private inline function set_isSensor(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3ShapeDef_isSensor_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_enableSensorEvents():Bool {
		#if lime_box3d
		return box3d_b3ShapeDef_enableSensorEvents_get(this);
		#else
		return false;
		#end
	}
	private inline function set_enableSensorEvents(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3ShapeDef_enableSensorEvents_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_enableContactEvents():Bool {
		#if lime_box3d
		return box3d_b3ShapeDef_enableContactEvents_get(this);
		#else
		return false;
		#end
	}
	private inline function set_enableContactEvents(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3ShapeDef_enableContactEvents_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_enableHitEvents():Bool {
		#if lime_box3d
		return box3d_b3ShapeDef_enableHitEvents_get(this);
		#else
		return false;
		#end
	}
	private inline function set_enableHitEvents(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3ShapeDef_enableHitEvents_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_enablePreSolveEvents():Bool {
		#if lime_box3d
		return box3d_b3ShapeDef_enablePreSolveEvents_get(this);
		#else
		return false;
		#end
	}
	private inline function set_enablePreSolveEvents(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3ShapeDef_enablePreSolveEvents_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_invokeContactCreation():Bool {
		#if lime_box3d
		return box3d_b3ShapeDef_invokeContactCreation_get(this);
		#else
		return false;
		#end
	}
	private inline function set_invokeContactCreation(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3ShapeDef_invokeContactCreation_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_updateBodyMass():Bool {
		#if lime_box3d
		return box3d_b3ShapeDef_updateBodyMass_get(this);
		#else
		return false;
		#end
	}
	private inline function set_updateBodyMass(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3ShapeDef_updateBodyMass_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_enableSpeculativeContact():Bool {
		#if lime_box3d
		return box3d_b3ShapeDef_enableSpeculativeContact_get(this);
		#else
		return false;
		#end
	}
	private inline function set_enableSpeculativeContact(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3ShapeDef_enableSpeculativeContact_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_internalValue():Int {
		#if lime_box3d
		return box3d_b3ShapeDef_internalValue_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_internalValue(v:Int):Int {
		#if lime_box3d
		return box3d_b3ShapeDef_internalValue_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3ShapeDef_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_new", "o", false));
	private static var box3d_b3ShapeDef_name_get = new cpp.Callable<cpp.Object->String>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_name_get", "os", false));
	private static var box3d_b3ShapeDef_name_set = new cpp.Callable<cpp.Object->String->String>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_name_set", "oss", false));
	private static var box3d_b3ShapeDef_materialCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_materialCount_get", "oi", false));
	private static var box3d_b3ShapeDef_materialCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_materialCount_set", "oii", false));
	private static var box3d_b3ShapeDef_baseMaterial_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_baseMaterial_get", "oo", false));
	private static var box3d_b3ShapeDef_baseMaterial_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_baseMaterial_set", "ooo", false));
	private static var box3d_b3ShapeDef_density_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_density_get", "of", false));
	private static var box3d_b3ShapeDef_density_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_density_set", "off", false));
	private static var box3d_b3ShapeDef_explosionScale_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_explosionScale_get", "of", false));
	private static var box3d_b3ShapeDef_explosionScale_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_explosionScale_set", "off", false));
	private static var box3d_b3ShapeDef_filter_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_filter_get", "oo", false));
	private static var box3d_b3ShapeDef_filter_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_filter_set", "ooo", false));
	private static var box3d_b3ShapeDef_enableCustomFiltering_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_enableCustomFiltering_get", "ob", false));
	private static var box3d_b3ShapeDef_enableCustomFiltering_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_enableCustomFiltering_set", "obb", false));
	private static var box3d_b3ShapeDef_isSensor_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_isSensor_get", "ob", false));
	private static var box3d_b3ShapeDef_isSensor_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_isSensor_set", "obb", false));
	private static var box3d_b3ShapeDef_enableSensorEvents_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_enableSensorEvents_get", "ob", false));
	private static var box3d_b3ShapeDef_enableSensorEvents_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_enableSensorEvents_set", "obb", false));
	private static var box3d_b3ShapeDef_enableContactEvents_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_enableContactEvents_get", "ob", false));
	private static var box3d_b3ShapeDef_enableContactEvents_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_enableContactEvents_set", "obb", false));
	private static var box3d_b3ShapeDef_enableHitEvents_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_enableHitEvents_get", "ob", false));
	private static var box3d_b3ShapeDef_enableHitEvents_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_enableHitEvents_set", "obb", false));
	private static var box3d_b3ShapeDef_enablePreSolveEvents_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_enablePreSolveEvents_get", "ob", false));
	private static var box3d_b3ShapeDef_enablePreSolveEvents_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_enablePreSolveEvents_set", "obb", false));
	private static var box3d_b3ShapeDef_invokeContactCreation_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_invokeContactCreation_get", "ob", false));
	private static var box3d_b3ShapeDef_invokeContactCreation_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_invokeContactCreation_set", "obb", false));
	private static var box3d_b3ShapeDef_updateBodyMass_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_updateBodyMass_get", "ob", false));
	private static var box3d_b3ShapeDef_updateBodyMass_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_updateBodyMass_set", "obb", false));
	private static var box3d_b3ShapeDef_enableSpeculativeContact_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_enableSpeculativeContact_get", "ob", false));
	private static var box3d_b3ShapeDef_enableSpeculativeContact_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_enableSpeculativeContact_set", "obb", false));
	private static var box3d_b3ShapeDef_internalValue_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_internalValue_get", "oi", false));
	private static var box3d_b3ShapeDef_internalValue_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeDef_internalValue_set", "oii", false));
	#end
}

abstract B3Profile(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var step(get, set):Float;
	public var pairs(get, set):Float;
	public var collide(get, set):Float;
	public var solve(get, set):Float;
	public var solverSetup(get, set):Float;
	public var constraints(get, set):Float;
	public var prepareConstraints(get, set):Float;
	public var integrateVelocities(get, set):Float;
	public var warmStart(get, set):Float;
	public var solveImpulses(get, set):Float;
	public var integratePositions(get, set):Float;
	public var relaxImpulses(get, set):Float;
	public var applyRestitution(get, set):Float;
	public var storeImpulses(get, set):Float;
	public var splitIslands(get, set):Float;
	public var transforms(get, set):Float;
	public var sensorHits(get, set):Float;
	public var jointEvents(get, set):Float;
	public var hitEvents(get, set):Float;
	public var refit(get, set):Float;
	public var bullets(get, set):Float;
	public var sleepIslands(get, set):Float;
	public var sensors(get, set):Float;
	public function new() {
		#if lime_box3d
		this = box3d_b3Profile_new();
		#else
		this = null;
		#end
	}
	private inline function get_step():Float {
		#if lime_box3d
		return box3d_b3Profile_step_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_step(v:Float):Float {
		#if lime_box3d
		return box3d_b3Profile_step_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_pairs():Float {
		#if lime_box3d
		return box3d_b3Profile_pairs_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_pairs(v:Float):Float {
		#if lime_box3d
		return box3d_b3Profile_pairs_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_collide():Float {
		#if lime_box3d
		return box3d_b3Profile_collide_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_collide(v:Float):Float {
		#if lime_box3d
		return box3d_b3Profile_collide_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_solve():Float {
		#if lime_box3d
		return box3d_b3Profile_solve_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_solve(v:Float):Float {
		#if lime_box3d
		return box3d_b3Profile_solve_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_solverSetup():Float {
		#if lime_box3d
		return box3d_b3Profile_solverSetup_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_solverSetup(v:Float):Float {
		#if lime_box3d
		return box3d_b3Profile_solverSetup_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_constraints():Float {
		#if lime_box3d
		return box3d_b3Profile_constraints_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_constraints(v:Float):Float {
		#if lime_box3d
		return box3d_b3Profile_constraints_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_prepareConstraints():Float {
		#if lime_box3d
		return box3d_b3Profile_prepareConstraints_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_prepareConstraints(v:Float):Float {
		#if lime_box3d
		return box3d_b3Profile_prepareConstraints_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_integrateVelocities():Float {
		#if lime_box3d
		return box3d_b3Profile_integrateVelocities_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_integrateVelocities(v:Float):Float {
		#if lime_box3d
		return box3d_b3Profile_integrateVelocities_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_warmStart():Float {
		#if lime_box3d
		return box3d_b3Profile_warmStart_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_warmStart(v:Float):Float {
		#if lime_box3d
		return box3d_b3Profile_warmStart_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_solveImpulses():Float {
		#if lime_box3d
		return box3d_b3Profile_solveImpulses_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_solveImpulses(v:Float):Float {
		#if lime_box3d
		return box3d_b3Profile_solveImpulses_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_integratePositions():Float {
		#if lime_box3d
		return box3d_b3Profile_integratePositions_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_integratePositions(v:Float):Float {
		#if lime_box3d
		return box3d_b3Profile_integratePositions_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_relaxImpulses():Float {
		#if lime_box3d
		return box3d_b3Profile_relaxImpulses_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_relaxImpulses(v:Float):Float {
		#if lime_box3d
		return box3d_b3Profile_relaxImpulses_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_applyRestitution():Float {
		#if lime_box3d
		return box3d_b3Profile_applyRestitution_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_applyRestitution(v:Float):Float {
		#if lime_box3d
		return box3d_b3Profile_applyRestitution_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_storeImpulses():Float {
		#if lime_box3d
		return box3d_b3Profile_storeImpulses_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_storeImpulses(v:Float):Float {
		#if lime_box3d
		return box3d_b3Profile_storeImpulses_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_splitIslands():Float {
		#if lime_box3d
		return box3d_b3Profile_splitIslands_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_splitIslands(v:Float):Float {
		#if lime_box3d
		return box3d_b3Profile_splitIslands_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_transforms():Float {
		#if lime_box3d
		return box3d_b3Profile_transforms_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_transforms(v:Float):Float {
		#if lime_box3d
		return box3d_b3Profile_transforms_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_sensorHits():Float {
		#if lime_box3d
		return box3d_b3Profile_sensorHits_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_sensorHits(v:Float):Float {
		#if lime_box3d
		return box3d_b3Profile_sensorHits_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_jointEvents():Float {
		#if lime_box3d
		return box3d_b3Profile_jointEvents_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_jointEvents(v:Float):Float {
		#if lime_box3d
		return box3d_b3Profile_jointEvents_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_hitEvents():Float {
		#if lime_box3d
		return box3d_b3Profile_hitEvents_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_hitEvents(v:Float):Float {
		#if lime_box3d
		return box3d_b3Profile_hitEvents_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_refit():Float {
		#if lime_box3d
		return box3d_b3Profile_refit_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_refit(v:Float):Float {
		#if lime_box3d
		return box3d_b3Profile_refit_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_bullets():Float {
		#if lime_box3d
		return box3d_b3Profile_bullets_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_bullets(v:Float):Float {
		#if lime_box3d
		return box3d_b3Profile_bullets_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_sleepIslands():Float {
		#if lime_box3d
		return box3d_b3Profile_sleepIslands_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_sleepIslands(v:Float):Float {
		#if lime_box3d
		return box3d_b3Profile_sleepIslands_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_sensors():Float {
		#if lime_box3d
		return box3d_b3Profile_sensors_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_sensors(v:Float):Float {
		#if lime_box3d
		return box3d_b3Profile_sensors_set(this, v);
		#else
		return 0.0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3Profile_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_new", "o", false));
	private static var box3d_b3Profile_step_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_step_get", "of", false));
	private static var box3d_b3Profile_step_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_step_set", "off", false));
	private static var box3d_b3Profile_pairs_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_pairs_get", "of", false));
	private static var box3d_b3Profile_pairs_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_pairs_set", "off", false));
	private static var box3d_b3Profile_collide_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_collide_get", "of", false));
	private static var box3d_b3Profile_collide_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_collide_set", "off", false));
	private static var box3d_b3Profile_solve_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_solve_get", "of", false));
	private static var box3d_b3Profile_solve_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_solve_set", "off", false));
	private static var box3d_b3Profile_solverSetup_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_solverSetup_get", "of", false));
	private static var box3d_b3Profile_solverSetup_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_solverSetup_set", "off", false));
	private static var box3d_b3Profile_constraints_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_constraints_get", "of", false));
	private static var box3d_b3Profile_constraints_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_constraints_set", "off", false));
	private static var box3d_b3Profile_prepareConstraints_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_prepareConstraints_get", "of", false));
	private static var box3d_b3Profile_prepareConstraints_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_prepareConstraints_set", "off", false));
	private static var box3d_b3Profile_integrateVelocities_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_integrateVelocities_get", "of", false));
	private static var box3d_b3Profile_integrateVelocities_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_integrateVelocities_set", "off", false));
	private static var box3d_b3Profile_warmStart_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_warmStart_get", "of", false));
	private static var box3d_b3Profile_warmStart_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_warmStart_set", "off", false));
	private static var box3d_b3Profile_solveImpulses_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_solveImpulses_get", "of", false));
	private static var box3d_b3Profile_solveImpulses_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_solveImpulses_set", "off", false));
	private static var box3d_b3Profile_integratePositions_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_integratePositions_get", "of", false));
	private static var box3d_b3Profile_integratePositions_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_integratePositions_set", "off", false));
	private static var box3d_b3Profile_relaxImpulses_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_relaxImpulses_get", "of", false));
	private static var box3d_b3Profile_relaxImpulses_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_relaxImpulses_set", "off", false));
	private static var box3d_b3Profile_applyRestitution_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_applyRestitution_get", "of", false));
	private static var box3d_b3Profile_applyRestitution_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_applyRestitution_set", "off", false));
	private static var box3d_b3Profile_storeImpulses_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_storeImpulses_get", "of", false));
	private static var box3d_b3Profile_storeImpulses_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_storeImpulses_set", "off", false));
	private static var box3d_b3Profile_splitIslands_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_splitIslands_get", "of", false));
	private static var box3d_b3Profile_splitIslands_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_splitIslands_set", "off", false));
	private static var box3d_b3Profile_transforms_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_transforms_get", "of", false));
	private static var box3d_b3Profile_transforms_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_transforms_set", "off", false));
	private static var box3d_b3Profile_sensorHits_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_sensorHits_get", "of", false));
	private static var box3d_b3Profile_sensorHits_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_sensorHits_set", "off", false));
	private static var box3d_b3Profile_jointEvents_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_jointEvents_get", "of", false));
	private static var box3d_b3Profile_jointEvents_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_jointEvents_set", "off", false));
	private static var box3d_b3Profile_hitEvents_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_hitEvents_get", "of", false));
	private static var box3d_b3Profile_hitEvents_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_hitEvents_set", "off", false));
	private static var box3d_b3Profile_refit_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_refit_get", "of", false));
	private static var box3d_b3Profile_refit_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_refit_set", "off", false));
	private static var box3d_b3Profile_bullets_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_bullets_get", "of", false));
	private static var box3d_b3Profile_bullets_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_bullets_set", "off", false));
	private static var box3d_b3Profile_sleepIslands_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_sleepIslands_get", "of", false));
	private static var box3d_b3Profile_sleepIslands_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_sleepIslands_set", "off", false));
	private static var box3d_b3Profile_sensors_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_sensors_get", "of", false));
	private static var box3d_b3Profile_sensors_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Profile_sensors_set", "off", false));
	#end
}

abstract B3Counters(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var bodyCount(get, set):Int;
	public var shapeCount(get, set):Int;
	public var contactCount(get, set):Int;
	public var jointCount(get, set):Int;
	public var islandCount(get, set):Int;
	public var stackUsed(get, set):Int;
	public var arenaCapacity(get, set):Int;
	public var staticTreeHeight(get, set):Int;
	public var treeHeight(get, set):Int;
	public var satCallCount(get, set):Int;
	public var satCacheHitCount(get, set):Int;
	public var byteCount(get, set):Int;
	public var taskCount(get, set):Int;
	public var awakeContactCount(get, set):Int;
	public var recycledContactCount(get, set):Int;
	public var distanceIterations(get, set):Int;
	public var pushBackIterations(get, set):Int;
	public var rootIterations(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3Counters_new();
		#else
		this = null;
		#end
	}
	private inline function get_bodyCount():Int {
		#if lime_box3d
		return box3d_b3Counters_bodyCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_bodyCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3Counters_bodyCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_shapeCount():Int {
		#if lime_box3d
		return box3d_b3Counters_shapeCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_shapeCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3Counters_shapeCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_contactCount():Int {
		#if lime_box3d
		return box3d_b3Counters_contactCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_contactCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3Counters_contactCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_jointCount():Int {
		#if lime_box3d
		return box3d_b3Counters_jointCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_jointCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3Counters_jointCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_islandCount():Int {
		#if lime_box3d
		return box3d_b3Counters_islandCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_islandCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3Counters_islandCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_stackUsed():Int {
		#if lime_box3d
		return box3d_b3Counters_stackUsed_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_stackUsed(v:Int):Int {
		#if lime_box3d
		return box3d_b3Counters_stackUsed_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_arenaCapacity():Int {
		#if lime_box3d
		return box3d_b3Counters_arenaCapacity_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_arenaCapacity(v:Int):Int {
		#if lime_box3d
		return box3d_b3Counters_arenaCapacity_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_staticTreeHeight():Int {
		#if lime_box3d
		return box3d_b3Counters_staticTreeHeight_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_staticTreeHeight(v:Int):Int {
		#if lime_box3d
		return box3d_b3Counters_staticTreeHeight_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_treeHeight():Int {
		#if lime_box3d
		return box3d_b3Counters_treeHeight_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_treeHeight(v:Int):Int {
		#if lime_box3d
		return box3d_b3Counters_treeHeight_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_satCallCount():Int {
		#if lime_box3d
		return box3d_b3Counters_satCallCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_satCallCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3Counters_satCallCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_satCacheHitCount():Int {
		#if lime_box3d
		return box3d_b3Counters_satCacheHitCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_satCacheHitCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3Counters_satCacheHitCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_byteCount():Int {
		#if lime_box3d
		return box3d_b3Counters_byteCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_byteCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3Counters_byteCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_taskCount():Int {
		#if lime_box3d
		return box3d_b3Counters_taskCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_taskCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3Counters_taskCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_awakeContactCount():Int {
		#if lime_box3d
		return box3d_b3Counters_awakeContactCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_awakeContactCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3Counters_awakeContactCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_recycledContactCount():Int {
		#if lime_box3d
		return box3d_b3Counters_recycledContactCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_recycledContactCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3Counters_recycledContactCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_distanceIterations():Int {
		#if lime_box3d
		return box3d_b3Counters_distanceIterations_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_distanceIterations(v:Int):Int {
		#if lime_box3d
		return box3d_b3Counters_distanceIterations_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_pushBackIterations():Int {
		#if lime_box3d
		return box3d_b3Counters_pushBackIterations_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_pushBackIterations(v:Int):Int {
		#if lime_box3d
		return box3d_b3Counters_pushBackIterations_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_rootIterations():Int {
		#if lime_box3d
		return box3d_b3Counters_rootIterations_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_rootIterations(v:Int):Int {
		#if lime_box3d
		return box3d_b3Counters_rootIterations_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3Counters_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_new", "o", false));
	private static var box3d_b3Counters_bodyCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_bodyCount_get", "oi", false));
	private static var box3d_b3Counters_bodyCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_bodyCount_set", "oii", false));
	private static var box3d_b3Counters_shapeCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_shapeCount_get", "oi", false));
	private static var box3d_b3Counters_shapeCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_shapeCount_set", "oii", false));
	private static var box3d_b3Counters_contactCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_contactCount_get", "oi", false));
	private static var box3d_b3Counters_contactCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_contactCount_set", "oii", false));
	private static var box3d_b3Counters_jointCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_jointCount_get", "oi", false));
	private static var box3d_b3Counters_jointCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_jointCount_set", "oii", false));
	private static var box3d_b3Counters_islandCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_islandCount_get", "oi", false));
	private static var box3d_b3Counters_islandCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_islandCount_set", "oii", false));
	private static var box3d_b3Counters_stackUsed_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_stackUsed_get", "oi", false));
	private static var box3d_b3Counters_stackUsed_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_stackUsed_set", "oii", false));
	private static var box3d_b3Counters_arenaCapacity_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_arenaCapacity_get", "oi", false));
	private static var box3d_b3Counters_arenaCapacity_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_arenaCapacity_set", "oii", false));
	private static var box3d_b3Counters_staticTreeHeight_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_staticTreeHeight_get", "oi", false));
	private static var box3d_b3Counters_staticTreeHeight_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_staticTreeHeight_set", "oii", false));
	private static var box3d_b3Counters_treeHeight_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_treeHeight_get", "oi", false));
	private static var box3d_b3Counters_treeHeight_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_treeHeight_set", "oii", false));
	private static var box3d_b3Counters_satCallCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_satCallCount_get", "oi", false));
	private static var box3d_b3Counters_satCallCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_satCallCount_set", "oii", false));
	private static var box3d_b3Counters_satCacheHitCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_satCacheHitCount_get", "oi", false));
	private static var box3d_b3Counters_satCacheHitCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_satCacheHitCount_set", "oii", false));
	private static var box3d_b3Counters_byteCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_byteCount_get", "oi", false));
	private static var box3d_b3Counters_byteCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_byteCount_set", "oii", false));
	private static var box3d_b3Counters_taskCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_taskCount_get", "oi", false));
	private static var box3d_b3Counters_taskCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_taskCount_set", "oii", false));
	private static var box3d_b3Counters_awakeContactCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_awakeContactCount_get", "oi", false));
	private static var box3d_b3Counters_awakeContactCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_awakeContactCount_set", "oii", false));
	private static var box3d_b3Counters_recycledContactCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_recycledContactCount_get", "oi", false));
	private static var box3d_b3Counters_recycledContactCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_recycledContactCount_set", "oii", false));
	private static var box3d_b3Counters_distanceIterations_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_distanceIterations_get", "oi", false));
	private static var box3d_b3Counters_distanceIterations_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_distanceIterations_set", "oii", false));
	private static var box3d_b3Counters_pushBackIterations_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_pushBackIterations_get", "oi", false));
	private static var box3d_b3Counters_pushBackIterations_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_pushBackIterations_set", "oii", false));
	private static var box3d_b3Counters_rootIterations_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_rootIterations_get", "oi", false));
	private static var box3d_b3Counters_rootIterations_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Counters_rootIterations_set", "oii", false));
	#end
}

abstract B3JointDef(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var bodyIdA(get, set):B3BodyId;
	public var bodyIdB(get, set):B3BodyId;
	public var localFrameA(get, set):B3Transform;
	public var localFrameB(get, set):B3Transform;
	public var forceThreshold(get, set):Float;
	public var torqueThreshold(get, set):Float;
	public var constraintHertz(get, set):Float;
	public var constraintDampingRatio(get, set):Float;
	public var drawScale(get, set):Float;
	public var collideConnected(get, set):Bool;
	public var internalValue(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3JointDef_new();
		#else
		this = null;
		#end
	}
	private inline function get_bodyIdA():B3BodyId {
		#if lime_box3d
		return box3d_b3JointDef_bodyIdA_get(this);
		#else
		return null;
		#end
	}
	private inline function set_bodyIdA(v:B3BodyId):B3BodyId {
		#if lime_box3d
		return box3d_b3JointDef_bodyIdA_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_bodyIdB():B3BodyId {
		#if lime_box3d
		return box3d_b3JointDef_bodyIdB_get(this);
		#else
		return null;
		#end
	}
	private inline function set_bodyIdB(v:B3BodyId):B3BodyId {
		#if lime_box3d
		return box3d_b3JointDef_bodyIdB_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_localFrameA():B3Transform {
		#if lime_box3d
		return box3d_b3JointDef_localFrameA_get(this);
		#else
		return null;
		#end
	}
	private inline function set_localFrameA(v:B3Transform):B3Transform {
		#if lime_box3d
		return box3d_b3JointDef_localFrameA_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_localFrameB():B3Transform {
		#if lime_box3d
		return box3d_b3JointDef_localFrameB_get(this);
		#else
		return null;
		#end
	}
	private inline function set_localFrameB(v:B3Transform):B3Transform {
		#if lime_box3d
		return box3d_b3JointDef_localFrameB_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_forceThreshold():Float {
		#if lime_box3d
		return box3d_b3JointDef_forceThreshold_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_forceThreshold(v:Float):Float {
		#if lime_box3d
		return box3d_b3JointDef_forceThreshold_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_torqueThreshold():Float {
		#if lime_box3d
		return box3d_b3JointDef_torqueThreshold_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_torqueThreshold(v:Float):Float {
		#if lime_box3d
		return box3d_b3JointDef_torqueThreshold_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_constraintHertz():Float {
		#if lime_box3d
		return box3d_b3JointDef_constraintHertz_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_constraintHertz(v:Float):Float {
		#if lime_box3d
		return box3d_b3JointDef_constraintHertz_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_constraintDampingRatio():Float {
		#if lime_box3d
		return box3d_b3JointDef_constraintDampingRatio_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_constraintDampingRatio(v:Float):Float {
		#if lime_box3d
		return box3d_b3JointDef_constraintDampingRatio_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_drawScale():Float {
		#if lime_box3d
		return box3d_b3JointDef_drawScale_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_drawScale(v:Float):Float {
		#if lime_box3d
		return box3d_b3JointDef_drawScale_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_collideConnected():Bool {
		#if lime_box3d
		return box3d_b3JointDef_collideConnected_get(this);
		#else
		return false;
		#end
	}
	private inline function set_collideConnected(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3JointDef_collideConnected_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_internalValue():Int {
		#if lime_box3d
		return box3d_b3JointDef_internalValue_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_internalValue(v:Int):Int {
		#if lime_box3d
		return box3d_b3JointDef_internalValue_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3JointDef_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3JointDef_new", "o", false));
	private static var box3d_b3JointDef_bodyIdA_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3JointDef_bodyIdA_get", "oo", false));
	private static var box3d_b3JointDef_bodyIdA_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3JointDef_bodyIdA_set", "ooo", false));
	private static var box3d_b3JointDef_bodyIdB_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3JointDef_bodyIdB_get", "oo", false));
	private static var box3d_b3JointDef_bodyIdB_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3JointDef_bodyIdB_set", "ooo", false));
	private static var box3d_b3JointDef_localFrameA_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3JointDef_localFrameA_get", "oo", false));
	private static var box3d_b3JointDef_localFrameA_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3JointDef_localFrameA_set", "ooo", false));
	private static var box3d_b3JointDef_localFrameB_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3JointDef_localFrameB_get", "oo", false));
	private static var box3d_b3JointDef_localFrameB_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3JointDef_localFrameB_set", "ooo", false));
	private static var box3d_b3JointDef_forceThreshold_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3JointDef_forceThreshold_get", "of", false));
	private static var box3d_b3JointDef_forceThreshold_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3JointDef_forceThreshold_set", "off", false));
	private static var box3d_b3JointDef_torqueThreshold_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3JointDef_torqueThreshold_get", "of", false));
	private static var box3d_b3JointDef_torqueThreshold_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3JointDef_torqueThreshold_set", "off", false));
	private static var box3d_b3JointDef_constraintHertz_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3JointDef_constraintHertz_get", "of", false));
	private static var box3d_b3JointDef_constraintHertz_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3JointDef_constraintHertz_set", "off", false));
	private static var box3d_b3JointDef_constraintDampingRatio_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3JointDef_constraintDampingRatio_get", "of", false));
	private static var box3d_b3JointDef_constraintDampingRatio_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3JointDef_constraintDampingRatio_set", "off", false));
	private static var box3d_b3JointDef_drawScale_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3JointDef_drawScale_get", "of", false));
	private static var box3d_b3JointDef_drawScale_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3JointDef_drawScale_set", "off", false));
	private static var box3d_b3JointDef_collideConnected_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3JointDef_collideConnected_get", "ob", false));
	private static var box3d_b3JointDef_collideConnected_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3JointDef_collideConnected_set", "obb", false));
	private static var box3d_b3JointDef_internalValue_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3JointDef_internalValue_get", "oi", false));
	private static var box3d_b3JointDef_internalValue_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3JointDef_internalValue_set", "oii", false));
	#end
}

abstract B3DistanceJointDef(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var base(get, set):B3JointDef;
	public var length(get, set):Float;
	public var enableSpring(get, set):Bool;
	public var lowerSpringForce(get, set):Float;
	public var upperSpringForce(get, set):Float;
	public var hertz(get, set):Float;
	public var dampingRatio(get, set):Float;
	public var enableLimit(get, set):Bool;
	public var minLength(get, set):Float;
	public var maxLength(get, set):Float;
	public var enableMotor(get, set):Bool;
	public var maxMotorForce(get, set):Float;
	public var motorSpeed(get, set):Float;
	public function new() {
		#if lime_box3d
		this = box3d_b3DistanceJointDef_new();
		#else
		this = null;
		#end
	}
	private inline function get_base():B3JointDef {
		#if lime_box3d
		return box3d_b3DistanceJointDef_base_get(this);
		#else
		return null;
		#end
	}
	private inline function set_base(v:B3JointDef):B3JointDef {
		#if lime_box3d
		return box3d_b3DistanceJointDef_base_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_length():Float {
		#if lime_box3d
		return box3d_b3DistanceJointDef_length_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_length(v:Float):Float {
		#if lime_box3d
		return box3d_b3DistanceJointDef_length_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_enableSpring():Bool {
		#if lime_box3d
		return box3d_b3DistanceJointDef_enableSpring_get(this);
		#else
		return false;
		#end
	}
	private inline function set_enableSpring(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3DistanceJointDef_enableSpring_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_lowerSpringForce():Float {
		#if lime_box3d
		return box3d_b3DistanceJointDef_lowerSpringForce_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_lowerSpringForce(v:Float):Float {
		#if lime_box3d
		return box3d_b3DistanceJointDef_lowerSpringForce_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_upperSpringForce():Float {
		#if lime_box3d
		return box3d_b3DistanceJointDef_upperSpringForce_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_upperSpringForce(v:Float):Float {
		#if lime_box3d
		return box3d_b3DistanceJointDef_upperSpringForce_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_hertz():Float {
		#if lime_box3d
		return box3d_b3DistanceJointDef_hertz_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_hertz(v:Float):Float {
		#if lime_box3d
		return box3d_b3DistanceJointDef_hertz_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_dampingRatio():Float {
		#if lime_box3d
		return box3d_b3DistanceJointDef_dampingRatio_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_dampingRatio(v:Float):Float {
		#if lime_box3d
		return box3d_b3DistanceJointDef_dampingRatio_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_enableLimit():Bool {
		#if lime_box3d
		return box3d_b3DistanceJointDef_enableLimit_get(this);
		#else
		return false;
		#end
	}
	private inline function set_enableLimit(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3DistanceJointDef_enableLimit_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_minLength():Float {
		#if lime_box3d
		return box3d_b3DistanceJointDef_minLength_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_minLength(v:Float):Float {
		#if lime_box3d
		return box3d_b3DistanceJointDef_minLength_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_maxLength():Float {
		#if lime_box3d
		return box3d_b3DistanceJointDef_maxLength_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_maxLength(v:Float):Float {
		#if lime_box3d
		return box3d_b3DistanceJointDef_maxLength_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_enableMotor():Bool {
		#if lime_box3d
		return box3d_b3DistanceJointDef_enableMotor_get(this);
		#else
		return false;
		#end
	}
	private inline function set_enableMotor(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3DistanceJointDef_enableMotor_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_maxMotorForce():Float {
		#if lime_box3d
		return box3d_b3DistanceJointDef_maxMotorForce_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_maxMotorForce(v:Float):Float {
		#if lime_box3d
		return box3d_b3DistanceJointDef_maxMotorForce_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_motorSpeed():Float {
		#if lime_box3d
		return box3d_b3DistanceJointDef_motorSpeed_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_motorSpeed(v:Float):Float {
		#if lime_box3d
		return box3d_b3DistanceJointDef_motorSpeed_set(this, v);
		#else
		return 0.0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3DistanceJointDef_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJointDef_new", "o", false));
	private static var box3d_b3DistanceJointDef_base_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJointDef_base_get", "oo", false));
	private static var box3d_b3DistanceJointDef_base_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJointDef_base_set", "ooo", false));
	private static var box3d_b3DistanceJointDef_length_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJointDef_length_get", "of", false));
	private static var box3d_b3DistanceJointDef_length_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJointDef_length_set", "off", false));
	private static var box3d_b3DistanceJointDef_enableSpring_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJointDef_enableSpring_get", "ob", false));
	private static var box3d_b3DistanceJointDef_enableSpring_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJointDef_enableSpring_set", "obb", false));
	private static var box3d_b3DistanceJointDef_lowerSpringForce_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJointDef_lowerSpringForce_get", "of", false));
	private static var box3d_b3DistanceJointDef_lowerSpringForce_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJointDef_lowerSpringForce_set", "off", false));
	private static var box3d_b3DistanceJointDef_upperSpringForce_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJointDef_upperSpringForce_get", "of", false));
	private static var box3d_b3DistanceJointDef_upperSpringForce_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJointDef_upperSpringForce_set", "off", false));
	private static var box3d_b3DistanceJointDef_hertz_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJointDef_hertz_get", "of", false));
	private static var box3d_b3DistanceJointDef_hertz_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJointDef_hertz_set", "off", false));
	private static var box3d_b3DistanceJointDef_dampingRatio_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJointDef_dampingRatio_get", "of", false));
	private static var box3d_b3DistanceJointDef_dampingRatio_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJointDef_dampingRatio_set", "off", false));
	private static var box3d_b3DistanceJointDef_enableLimit_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJointDef_enableLimit_get", "ob", false));
	private static var box3d_b3DistanceJointDef_enableLimit_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJointDef_enableLimit_set", "obb", false));
	private static var box3d_b3DistanceJointDef_minLength_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJointDef_minLength_get", "of", false));
	private static var box3d_b3DistanceJointDef_minLength_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJointDef_minLength_set", "off", false));
	private static var box3d_b3DistanceJointDef_maxLength_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJointDef_maxLength_get", "of", false));
	private static var box3d_b3DistanceJointDef_maxLength_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJointDef_maxLength_set", "off", false));
	private static var box3d_b3DistanceJointDef_enableMotor_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJointDef_enableMotor_get", "ob", false));
	private static var box3d_b3DistanceJointDef_enableMotor_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJointDef_enableMotor_set", "obb", false));
	private static var box3d_b3DistanceJointDef_maxMotorForce_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJointDef_maxMotorForce_get", "of", false));
	private static var box3d_b3DistanceJointDef_maxMotorForce_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJointDef_maxMotorForce_set", "off", false));
	private static var box3d_b3DistanceJointDef_motorSpeed_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJointDef_motorSpeed_get", "of", false));
	private static var box3d_b3DistanceJointDef_motorSpeed_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceJointDef_motorSpeed_set", "off", false));
	#end
}

abstract B3MotorJointDef(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var base(get, set):B3JointDef;
	public var linearVelocity(get, set):B3Vec3;
	public var maxVelocityForce(get, set):Float;
	public var angularVelocity(get, set):B3Vec3;
	public var maxVelocityTorque(get, set):Float;
	public var linearHertz(get, set):Float;
	public var linearDampingRatio(get, set):Float;
	public var maxSpringForce(get, set):Float;
	public var angularHertz(get, set):Float;
	public var angularDampingRatio(get, set):Float;
	public var maxSpringTorque(get, set):Float;
	public function new() {
		#if lime_box3d
		this = box3d_b3MotorJointDef_new();
		#else
		this = null;
		#end
	}
	private inline function get_base():B3JointDef {
		#if lime_box3d
		return box3d_b3MotorJointDef_base_get(this);
		#else
		return null;
		#end
	}
	private inline function set_base(v:B3JointDef):B3JointDef {
		#if lime_box3d
		return box3d_b3MotorJointDef_base_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_linearVelocity():B3Vec3 {
		#if lime_box3d
		return box3d_b3MotorJointDef_linearVelocity_get(this);
		#else
		return null;
		#end
	}
	private inline function set_linearVelocity(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3MotorJointDef_linearVelocity_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_maxVelocityForce():Float {
		#if lime_box3d
		return box3d_b3MotorJointDef_maxVelocityForce_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_maxVelocityForce(v:Float):Float {
		#if lime_box3d
		return box3d_b3MotorJointDef_maxVelocityForce_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_angularVelocity():B3Vec3 {
		#if lime_box3d
		return box3d_b3MotorJointDef_angularVelocity_get(this);
		#else
		return null;
		#end
	}
	private inline function set_angularVelocity(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3MotorJointDef_angularVelocity_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_maxVelocityTorque():Float {
		#if lime_box3d
		return box3d_b3MotorJointDef_maxVelocityTorque_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_maxVelocityTorque(v:Float):Float {
		#if lime_box3d
		return box3d_b3MotorJointDef_maxVelocityTorque_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_linearHertz():Float {
		#if lime_box3d
		return box3d_b3MotorJointDef_linearHertz_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_linearHertz(v:Float):Float {
		#if lime_box3d
		return box3d_b3MotorJointDef_linearHertz_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_linearDampingRatio():Float {
		#if lime_box3d
		return box3d_b3MotorJointDef_linearDampingRatio_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_linearDampingRatio(v:Float):Float {
		#if lime_box3d
		return box3d_b3MotorJointDef_linearDampingRatio_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_maxSpringForce():Float {
		#if lime_box3d
		return box3d_b3MotorJointDef_maxSpringForce_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_maxSpringForce(v:Float):Float {
		#if lime_box3d
		return box3d_b3MotorJointDef_maxSpringForce_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_angularHertz():Float {
		#if lime_box3d
		return box3d_b3MotorJointDef_angularHertz_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_angularHertz(v:Float):Float {
		#if lime_box3d
		return box3d_b3MotorJointDef_angularHertz_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_angularDampingRatio():Float {
		#if lime_box3d
		return box3d_b3MotorJointDef_angularDampingRatio_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_angularDampingRatio(v:Float):Float {
		#if lime_box3d
		return box3d_b3MotorJointDef_angularDampingRatio_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_maxSpringTorque():Float {
		#if lime_box3d
		return box3d_b3MotorJointDef_maxSpringTorque_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_maxSpringTorque(v:Float):Float {
		#if lime_box3d
		return box3d_b3MotorJointDef_maxSpringTorque_set(this, v);
		#else
		return 0.0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3MotorJointDef_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJointDef_new", "o", false));
	private static var box3d_b3MotorJointDef_base_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJointDef_base_get", "oo", false));
	private static var box3d_b3MotorJointDef_base_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJointDef_base_set", "ooo", false));
	private static var box3d_b3MotorJointDef_linearVelocity_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJointDef_linearVelocity_get", "oo", false));
	private static var box3d_b3MotorJointDef_linearVelocity_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJointDef_linearVelocity_set", "ooo", false));
	private static var box3d_b3MotorJointDef_maxVelocityForce_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJointDef_maxVelocityForce_get", "of", false));
	private static var box3d_b3MotorJointDef_maxVelocityForce_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJointDef_maxVelocityForce_set", "off", false));
	private static var box3d_b3MotorJointDef_angularVelocity_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJointDef_angularVelocity_get", "oo", false));
	private static var box3d_b3MotorJointDef_angularVelocity_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJointDef_angularVelocity_set", "ooo", false));
	private static var box3d_b3MotorJointDef_maxVelocityTorque_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJointDef_maxVelocityTorque_get", "of", false));
	private static var box3d_b3MotorJointDef_maxVelocityTorque_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJointDef_maxVelocityTorque_set", "off", false));
	private static var box3d_b3MotorJointDef_linearHertz_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJointDef_linearHertz_get", "of", false));
	private static var box3d_b3MotorJointDef_linearHertz_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJointDef_linearHertz_set", "off", false));
	private static var box3d_b3MotorJointDef_linearDampingRatio_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJointDef_linearDampingRatio_get", "of", false));
	private static var box3d_b3MotorJointDef_linearDampingRatio_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJointDef_linearDampingRatio_set", "off", false));
	private static var box3d_b3MotorJointDef_maxSpringForce_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJointDef_maxSpringForce_get", "of", false));
	private static var box3d_b3MotorJointDef_maxSpringForce_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJointDef_maxSpringForce_set", "off", false));
	private static var box3d_b3MotorJointDef_angularHertz_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJointDef_angularHertz_get", "of", false));
	private static var box3d_b3MotorJointDef_angularHertz_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJointDef_angularHertz_set", "off", false));
	private static var box3d_b3MotorJointDef_angularDampingRatio_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJointDef_angularDampingRatio_get", "of", false));
	private static var box3d_b3MotorJointDef_angularDampingRatio_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJointDef_angularDampingRatio_set", "off", false));
	private static var box3d_b3MotorJointDef_maxSpringTorque_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJointDef_maxSpringTorque_get", "of", false));
	private static var box3d_b3MotorJointDef_maxSpringTorque_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3MotorJointDef_maxSpringTorque_set", "off", false));
	#end
}

abstract B3FilterJointDef(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var base(get, set):B3JointDef;
	public function new() {
		#if lime_box3d
		this = box3d_b3FilterJointDef_new();
		#else
		this = null;
		#end
	}
	private inline function get_base():B3JointDef {
		#if lime_box3d
		return box3d_b3FilterJointDef_base_get(this);
		#else
		return null;
		#end
	}
	private inline function set_base(v:B3JointDef):B3JointDef {
		#if lime_box3d
		return box3d_b3FilterJointDef_base_set(this, v);
		#else
		return null;
		#end
	}
	#if lime_box3d
	private static var box3d_b3FilterJointDef_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3FilterJointDef_new", "o", false));
	private static var box3d_b3FilterJointDef_base_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3FilterJointDef_base_get", "oo", false));
	private static var box3d_b3FilterJointDef_base_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3FilterJointDef_base_set", "ooo", false));
	#end
}

abstract B3ParallelJointDef(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var base(get, set):B3JointDef;
	public var hertz(get, set):Float;
	public var dampingRatio(get, set):Float;
	public var maxTorque(get, set):Float;
	public function new() {
		#if lime_box3d
		this = box3d_b3ParallelJointDef_new();
		#else
		this = null;
		#end
	}
	private inline function get_base():B3JointDef {
		#if lime_box3d
		return box3d_b3ParallelJointDef_base_get(this);
		#else
		return null;
		#end
	}
	private inline function set_base(v:B3JointDef):B3JointDef {
		#if lime_box3d
		return box3d_b3ParallelJointDef_base_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_hertz():Float {
		#if lime_box3d
		return box3d_b3ParallelJointDef_hertz_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_hertz(v:Float):Float {
		#if lime_box3d
		return box3d_b3ParallelJointDef_hertz_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_dampingRatio():Float {
		#if lime_box3d
		return box3d_b3ParallelJointDef_dampingRatio_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_dampingRatio(v:Float):Float {
		#if lime_box3d
		return box3d_b3ParallelJointDef_dampingRatio_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_maxTorque():Float {
		#if lime_box3d
		return box3d_b3ParallelJointDef_maxTorque_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_maxTorque(v:Float):Float {
		#if lime_box3d
		return box3d_b3ParallelJointDef_maxTorque_set(this, v);
		#else
		return 0.0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3ParallelJointDef_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ParallelJointDef_new", "o", false));
	private static var box3d_b3ParallelJointDef_base_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ParallelJointDef_base_get", "oo", false));
	private static var box3d_b3ParallelJointDef_base_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ParallelJointDef_base_set", "ooo", false));
	private static var box3d_b3ParallelJointDef_hertz_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ParallelJointDef_hertz_get", "of", false));
	private static var box3d_b3ParallelJointDef_hertz_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ParallelJointDef_hertz_set", "off", false));
	private static var box3d_b3ParallelJointDef_dampingRatio_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ParallelJointDef_dampingRatio_get", "of", false));
	private static var box3d_b3ParallelJointDef_dampingRatio_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ParallelJointDef_dampingRatio_set", "off", false));
	private static var box3d_b3ParallelJointDef_maxTorque_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ParallelJointDef_maxTorque_get", "of", false));
	private static var box3d_b3ParallelJointDef_maxTorque_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ParallelJointDef_maxTorque_set", "off", false));
	#end
}

abstract B3PrismaticJointDef(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var base(get, set):B3JointDef;
	public var enableSpring(get, set):Bool;
	public var hertz(get, set):Float;
	public var dampingRatio(get, set):Float;
	public var targetTranslation(get, set):Float;
	public var enableLimit(get, set):Bool;
	public var lowerTranslation(get, set):Float;
	public var upperTranslation(get, set):Float;
	public var enableMotor(get, set):Bool;
	public var maxMotorForce(get, set):Float;
	public var motorSpeed(get, set):Float;
	public function new() {
		#if lime_box3d
		this = box3d_b3PrismaticJointDef_new();
		#else
		this = null;
		#end
	}
	private inline function get_base():B3JointDef {
		#if lime_box3d
		return box3d_b3PrismaticJointDef_base_get(this);
		#else
		return null;
		#end
	}
	private inline function set_base(v:B3JointDef):B3JointDef {
		#if lime_box3d
		return box3d_b3PrismaticJointDef_base_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_enableSpring():Bool {
		#if lime_box3d
		return box3d_b3PrismaticJointDef_enableSpring_get(this);
		#else
		return false;
		#end
	}
	private inline function set_enableSpring(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3PrismaticJointDef_enableSpring_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_hertz():Float {
		#if lime_box3d
		return box3d_b3PrismaticJointDef_hertz_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_hertz(v:Float):Float {
		#if lime_box3d
		return box3d_b3PrismaticJointDef_hertz_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_dampingRatio():Float {
		#if lime_box3d
		return box3d_b3PrismaticJointDef_dampingRatio_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_dampingRatio(v:Float):Float {
		#if lime_box3d
		return box3d_b3PrismaticJointDef_dampingRatio_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_targetTranslation():Float {
		#if lime_box3d
		return box3d_b3PrismaticJointDef_targetTranslation_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_targetTranslation(v:Float):Float {
		#if lime_box3d
		return box3d_b3PrismaticJointDef_targetTranslation_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_enableLimit():Bool {
		#if lime_box3d
		return box3d_b3PrismaticJointDef_enableLimit_get(this);
		#else
		return false;
		#end
	}
	private inline function set_enableLimit(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3PrismaticJointDef_enableLimit_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_lowerTranslation():Float {
		#if lime_box3d
		return box3d_b3PrismaticJointDef_lowerTranslation_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_lowerTranslation(v:Float):Float {
		#if lime_box3d
		return box3d_b3PrismaticJointDef_lowerTranslation_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_upperTranslation():Float {
		#if lime_box3d
		return box3d_b3PrismaticJointDef_upperTranslation_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_upperTranslation(v:Float):Float {
		#if lime_box3d
		return box3d_b3PrismaticJointDef_upperTranslation_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_enableMotor():Bool {
		#if lime_box3d
		return box3d_b3PrismaticJointDef_enableMotor_get(this);
		#else
		return false;
		#end
	}
	private inline function set_enableMotor(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3PrismaticJointDef_enableMotor_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_maxMotorForce():Float {
		#if lime_box3d
		return box3d_b3PrismaticJointDef_maxMotorForce_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_maxMotorForce(v:Float):Float {
		#if lime_box3d
		return box3d_b3PrismaticJointDef_maxMotorForce_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_motorSpeed():Float {
		#if lime_box3d
		return box3d_b3PrismaticJointDef_motorSpeed_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_motorSpeed(v:Float):Float {
		#if lime_box3d
		return box3d_b3PrismaticJointDef_motorSpeed_set(this, v);
		#else
		return 0.0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3PrismaticJointDef_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJointDef_new", "o", false));
	private static var box3d_b3PrismaticJointDef_base_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJointDef_base_get", "oo", false));
	private static var box3d_b3PrismaticJointDef_base_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJointDef_base_set", "ooo", false));
	private static var box3d_b3PrismaticJointDef_enableSpring_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJointDef_enableSpring_get", "ob", false));
	private static var box3d_b3PrismaticJointDef_enableSpring_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJointDef_enableSpring_set", "obb", false));
	private static var box3d_b3PrismaticJointDef_hertz_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJointDef_hertz_get", "of", false));
	private static var box3d_b3PrismaticJointDef_hertz_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJointDef_hertz_set", "off", false));
	private static var box3d_b3PrismaticJointDef_dampingRatio_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJointDef_dampingRatio_get", "of", false));
	private static var box3d_b3PrismaticJointDef_dampingRatio_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJointDef_dampingRatio_set", "off", false));
	private static var box3d_b3PrismaticJointDef_targetTranslation_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJointDef_targetTranslation_get", "of", false));
	private static var box3d_b3PrismaticJointDef_targetTranslation_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJointDef_targetTranslation_set", "off", false));
	private static var box3d_b3PrismaticJointDef_enableLimit_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJointDef_enableLimit_get", "ob", false));
	private static var box3d_b3PrismaticJointDef_enableLimit_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJointDef_enableLimit_set", "obb", false));
	private static var box3d_b3PrismaticJointDef_lowerTranslation_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJointDef_lowerTranslation_get", "of", false));
	private static var box3d_b3PrismaticJointDef_lowerTranslation_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJointDef_lowerTranslation_set", "off", false));
	private static var box3d_b3PrismaticJointDef_upperTranslation_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJointDef_upperTranslation_get", "of", false));
	private static var box3d_b3PrismaticJointDef_upperTranslation_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJointDef_upperTranslation_set", "off", false));
	private static var box3d_b3PrismaticJointDef_enableMotor_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJointDef_enableMotor_get", "ob", false));
	private static var box3d_b3PrismaticJointDef_enableMotor_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJointDef_enableMotor_set", "obb", false));
	private static var box3d_b3PrismaticJointDef_maxMotorForce_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJointDef_maxMotorForce_get", "of", false));
	private static var box3d_b3PrismaticJointDef_maxMotorForce_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJointDef_maxMotorForce_set", "off", false));
	private static var box3d_b3PrismaticJointDef_motorSpeed_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJointDef_motorSpeed_get", "of", false));
	private static var box3d_b3PrismaticJointDef_motorSpeed_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3PrismaticJointDef_motorSpeed_set", "off", false));
	#end
}

abstract B3RevoluteJointDef(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var base(get, set):B3JointDef;
	public var targetAngle(get, set):Float;
	public var enableSpring(get, set):Bool;
	public var hertz(get, set):Float;
	public var dampingRatio(get, set):Float;
	public var enableLimit(get, set):Bool;
	public var lowerAngle(get, set):Float;
	public var upperAngle(get, set):Float;
	public var enableMotor(get, set):Bool;
	public var maxMotorTorque(get, set):Float;
	public var motorSpeed(get, set):Float;
	public function new() {
		#if lime_box3d
		this = box3d_b3RevoluteJointDef_new();
		#else
		this = null;
		#end
	}
	private inline function get_base():B3JointDef {
		#if lime_box3d
		return box3d_b3RevoluteJointDef_base_get(this);
		#else
		return null;
		#end
	}
	private inline function set_base(v:B3JointDef):B3JointDef {
		#if lime_box3d
		return box3d_b3RevoluteJointDef_base_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_targetAngle():Float {
		#if lime_box3d
		return box3d_b3RevoluteJointDef_targetAngle_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_targetAngle(v:Float):Float {
		#if lime_box3d
		return box3d_b3RevoluteJointDef_targetAngle_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_enableSpring():Bool {
		#if lime_box3d
		return box3d_b3RevoluteJointDef_enableSpring_get(this);
		#else
		return false;
		#end
	}
	private inline function set_enableSpring(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3RevoluteJointDef_enableSpring_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_hertz():Float {
		#if lime_box3d
		return box3d_b3RevoluteJointDef_hertz_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_hertz(v:Float):Float {
		#if lime_box3d
		return box3d_b3RevoluteJointDef_hertz_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_dampingRatio():Float {
		#if lime_box3d
		return box3d_b3RevoluteJointDef_dampingRatio_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_dampingRatio(v:Float):Float {
		#if lime_box3d
		return box3d_b3RevoluteJointDef_dampingRatio_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_enableLimit():Bool {
		#if lime_box3d
		return box3d_b3RevoluteJointDef_enableLimit_get(this);
		#else
		return false;
		#end
	}
	private inline function set_enableLimit(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3RevoluteJointDef_enableLimit_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_lowerAngle():Float {
		#if lime_box3d
		return box3d_b3RevoluteJointDef_lowerAngle_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_lowerAngle(v:Float):Float {
		#if lime_box3d
		return box3d_b3RevoluteJointDef_lowerAngle_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_upperAngle():Float {
		#if lime_box3d
		return box3d_b3RevoluteJointDef_upperAngle_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_upperAngle(v:Float):Float {
		#if lime_box3d
		return box3d_b3RevoluteJointDef_upperAngle_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_enableMotor():Bool {
		#if lime_box3d
		return box3d_b3RevoluteJointDef_enableMotor_get(this);
		#else
		return false;
		#end
	}
	private inline function set_enableMotor(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3RevoluteJointDef_enableMotor_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_maxMotorTorque():Float {
		#if lime_box3d
		return box3d_b3RevoluteJointDef_maxMotorTorque_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_maxMotorTorque(v:Float):Float {
		#if lime_box3d
		return box3d_b3RevoluteJointDef_maxMotorTorque_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_motorSpeed():Float {
		#if lime_box3d
		return box3d_b3RevoluteJointDef_motorSpeed_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_motorSpeed(v:Float):Float {
		#if lime_box3d
		return box3d_b3RevoluteJointDef_motorSpeed_set(this, v);
		#else
		return 0.0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3RevoluteJointDef_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJointDef_new", "o", false));
	private static var box3d_b3RevoluteJointDef_base_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJointDef_base_get", "oo", false));
	private static var box3d_b3RevoluteJointDef_base_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJointDef_base_set", "ooo", false));
	private static var box3d_b3RevoluteJointDef_targetAngle_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJointDef_targetAngle_get", "of", false));
	private static var box3d_b3RevoluteJointDef_targetAngle_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJointDef_targetAngle_set", "off", false));
	private static var box3d_b3RevoluteJointDef_enableSpring_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJointDef_enableSpring_get", "ob", false));
	private static var box3d_b3RevoluteJointDef_enableSpring_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJointDef_enableSpring_set", "obb", false));
	private static var box3d_b3RevoluteJointDef_hertz_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJointDef_hertz_get", "of", false));
	private static var box3d_b3RevoluteJointDef_hertz_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJointDef_hertz_set", "off", false));
	private static var box3d_b3RevoluteJointDef_dampingRatio_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJointDef_dampingRatio_get", "of", false));
	private static var box3d_b3RevoluteJointDef_dampingRatio_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJointDef_dampingRatio_set", "off", false));
	private static var box3d_b3RevoluteJointDef_enableLimit_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJointDef_enableLimit_get", "ob", false));
	private static var box3d_b3RevoluteJointDef_enableLimit_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJointDef_enableLimit_set", "obb", false));
	private static var box3d_b3RevoluteJointDef_lowerAngle_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJointDef_lowerAngle_get", "of", false));
	private static var box3d_b3RevoluteJointDef_lowerAngle_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJointDef_lowerAngle_set", "off", false));
	private static var box3d_b3RevoluteJointDef_upperAngle_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJointDef_upperAngle_get", "of", false));
	private static var box3d_b3RevoluteJointDef_upperAngle_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJointDef_upperAngle_set", "off", false));
	private static var box3d_b3RevoluteJointDef_enableMotor_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJointDef_enableMotor_get", "ob", false));
	private static var box3d_b3RevoluteJointDef_enableMotor_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJointDef_enableMotor_set", "obb", false));
	private static var box3d_b3RevoluteJointDef_maxMotorTorque_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJointDef_maxMotorTorque_get", "of", false));
	private static var box3d_b3RevoluteJointDef_maxMotorTorque_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJointDef_maxMotorTorque_set", "off", false));
	private static var box3d_b3RevoluteJointDef_motorSpeed_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJointDef_motorSpeed_get", "of", false));
	private static var box3d_b3RevoluteJointDef_motorSpeed_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RevoluteJointDef_motorSpeed_set", "off", false));
	#end
}

abstract B3SphericalJointDef(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var base(get, set):B3JointDef;
	public var enableSpring(get, set):Bool;
	public var hertz(get, set):Float;
	public var dampingRatio(get, set):Float;
	public var targetRotation(get, set):B3Quat;
	public var enableConeLimit(get, set):Bool;
	public var coneAngle(get, set):Float;
	public var enableTwistLimit(get, set):Bool;
	public var lowerTwistAngle(get, set):Float;
	public var upperTwistAngle(get, set):Float;
	public var enableMotor(get, set):Bool;
	public var maxMotorTorque(get, set):Float;
	public var motorVelocity(get, set):B3Vec3;
	public function new() {
		#if lime_box3d
		this = box3d_b3SphericalJointDef_new();
		#else
		this = null;
		#end
	}
	private inline function get_base():B3JointDef {
		#if lime_box3d
		return box3d_b3SphericalJointDef_base_get(this);
		#else
		return null;
		#end
	}
	private inline function set_base(v:B3JointDef):B3JointDef {
		#if lime_box3d
		return box3d_b3SphericalJointDef_base_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_enableSpring():Bool {
		#if lime_box3d
		return box3d_b3SphericalJointDef_enableSpring_get(this);
		#else
		return false;
		#end
	}
	private inline function set_enableSpring(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3SphericalJointDef_enableSpring_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_hertz():Float {
		#if lime_box3d
		return box3d_b3SphericalJointDef_hertz_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_hertz(v:Float):Float {
		#if lime_box3d
		return box3d_b3SphericalJointDef_hertz_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_dampingRatio():Float {
		#if lime_box3d
		return box3d_b3SphericalJointDef_dampingRatio_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_dampingRatio(v:Float):Float {
		#if lime_box3d
		return box3d_b3SphericalJointDef_dampingRatio_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_targetRotation():B3Quat {
		#if lime_box3d
		return box3d_b3SphericalJointDef_targetRotation_get(this);
		#else
		return null;
		#end
	}
	private inline function set_targetRotation(v:B3Quat):B3Quat {
		#if lime_box3d
		return box3d_b3SphericalJointDef_targetRotation_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_enableConeLimit():Bool {
		#if lime_box3d
		return box3d_b3SphericalJointDef_enableConeLimit_get(this);
		#else
		return false;
		#end
	}
	private inline function set_enableConeLimit(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3SphericalJointDef_enableConeLimit_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_coneAngle():Float {
		#if lime_box3d
		return box3d_b3SphericalJointDef_coneAngle_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_coneAngle(v:Float):Float {
		#if lime_box3d
		return box3d_b3SphericalJointDef_coneAngle_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_enableTwistLimit():Bool {
		#if lime_box3d
		return box3d_b3SphericalJointDef_enableTwistLimit_get(this);
		#else
		return false;
		#end
	}
	private inline function set_enableTwistLimit(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3SphericalJointDef_enableTwistLimit_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_lowerTwistAngle():Float {
		#if lime_box3d
		return box3d_b3SphericalJointDef_lowerTwistAngle_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_lowerTwistAngle(v:Float):Float {
		#if lime_box3d
		return box3d_b3SphericalJointDef_lowerTwistAngle_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_upperTwistAngle():Float {
		#if lime_box3d
		return box3d_b3SphericalJointDef_upperTwistAngle_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_upperTwistAngle(v:Float):Float {
		#if lime_box3d
		return box3d_b3SphericalJointDef_upperTwistAngle_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_enableMotor():Bool {
		#if lime_box3d
		return box3d_b3SphericalJointDef_enableMotor_get(this);
		#else
		return false;
		#end
	}
	private inline function set_enableMotor(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3SphericalJointDef_enableMotor_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_maxMotorTorque():Float {
		#if lime_box3d
		return box3d_b3SphericalJointDef_maxMotorTorque_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_maxMotorTorque(v:Float):Float {
		#if lime_box3d
		return box3d_b3SphericalJointDef_maxMotorTorque_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_motorVelocity():B3Vec3 {
		#if lime_box3d
		return box3d_b3SphericalJointDef_motorVelocity_get(this);
		#else
		return null;
		#end
	}
	private inline function set_motorVelocity(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3SphericalJointDef_motorVelocity_set(this, v);
		#else
		return null;
		#end
	}
	#if lime_box3d
	private static var box3d_b3SphericalJointDef_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJointDef_new", "o", false));
	private static var box3d_b3SphericalJointDef_base_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJointDef_base_get", "oo", false));
	private static var box3d_b3SphericalJointDef_base_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJointDef_base_set", "ooo", false));
	private static var box3d_b3SphericalJointDef_enableSpring_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJointDef_enableSpring_get", "ob", false));
	private static var box3d_b3SphericalJointDef_enableSpring_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJointDef_enableSpring_set", "obb", false));
	private static var box3d_b3SphericalJointDef_hertz_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJointDef_hertz_get", "of", false));
	private static var box3d_b3SphericalJointDef_hertz_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJointDef_hertz_set", "off", false));
	private static var box3d_b3SphericalJointDef_dampingRatio_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJointDef_dampingRatio_get", "of", false));
	private static var box3d_b3SphericalJointDef_dampingRatio_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJointDef_dampingRatio_set", "off", false));
	private static var box3d_b3SphericalJointDef_targetRotation_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJointDef_targetRotation_get", "oo", false));
	private static var box3d_b3SphericalJointDef_targetRotation_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJointDef_targetRotation_set", "ooo", false));
	private static var box3d_b3SphericalJointDef_enableConeLimit_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJointDef_enableConeLimit_get", "ob", false));
	private static var box3d_b3SphericalJointDef_enableConeLimit_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJointDef_enableConeLimit_set", "obb", false));
	private static var box3d_b3SphericalJointDef_coneAngle_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJointDef_coneAngle_get", "of", false));
	private static var box3d_b3SphericalJointDef_coneAngle_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJointDef_coneAngle_set", "off", false));
	private static var box3d_b3SphericalJointDef_enableTwistLimit_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJointDef_enableTwistLimit_get", "ob", false));
	private static var box3d_b3SphericalJointDef_enableTwistLimit_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJointDef_enableTwistLimit_set", "obb", false));
	private static var box3d_b3SphericalJointDef_lowerTwistAngle_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJointDef_lowerTwistAngle_get", "of", false));
	private static var box3d_b3SphericalJointDef_lowerTwistAngle_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJointDef_lowerTwistAngle_set", "off", false));
	private static var box3d_b3SphericalJointDef_upperTwistAngle_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJointDef_upperTwistAngle_get", "of", false));
	private static var box3d_b3SphericalJointDef_upperTwistAngle_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJointDef_upperTwistAngle_set", "off", false));
	private static var box3d_b3SphericalJointDef_enableMotor_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJointDef_enableMotor_get", "ob", false));
	private static var box3d_b3SphericalJointDef_enableMotor_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJointDef_enableMotor_set", "obb", false));
	private static var box3d_b3SphericalJointDef_maxMotorTorque_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJointDef_maxMotorTorque_get", "of", false));
	private static var box3d_b3SphericalJointDef_maxMotorTorque_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJointDef_maxMotorTorque_set", "off", false));
	private static var box3d_b3SphericalJointDef_motorVelocity_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJointDef_motorVelocity_get", "oo", false));
	private static var box3d_b3SphericalJointDef_motorVelocity_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SphericalJointDef_motorVelocity_set", "ooo", false));
	#end
}

abstract B3WeldJointDef(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var base(get, set):B3JointDef;
	public var linearHertz(get, set):Float;
	public var angularHertz(get, set):Float;
	public var linearDampingRatio(get, set):Float;
	public var angularDampingRatio(get, set):Float;
	public function new() {
		#if lime_box3d
		this = box3d_b3WeldJointDef_new();
		#else
		this = null;
		#end
	}
	private inline function get_base():B3JointDef {
		#if lime_box3d
		return box3d_b3WeldJointDef_base_get(this);
		#else
		return null;
		#end
	}
	private inline function set_base(v:B3JointDef):B3JointDef {
		#if lime_box3d
		return box3d_b3WeldJointDef_base_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_linearHertz():Float {
		#if lime_box3d
		return box3d_b3WeldJointDef_linearHertz_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_linearHertz(v:Float):Float {
		#if lime_box3d
		return box3d_b3WeldJointDef_linearHertz_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_angularHertz():Float {
		#if lime_box3d
		return box3d_b3WeldJointDef_angularHertz_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_angularHertz(v:Float):Float {
		#if lime_box3d
		return box3d_b3WeldJointDef_angularHertz_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_linearDampingRatio():Float {
		#if lime_box3d
		return box3d_b3WeldJointDef_linearDampingRatio_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_linearDampingRatio(v:Float):Float {
		#if lime_box3d
		return box3d_b3WeldJointDef_linearDampingRatio_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_angularDampingRatio():Float {
		#if lime_box3d
		return box3d_b3WeldJointDef_angularDampingRatio_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_angularDampingRatio(v:Float):Float {
		#if lime_box3d
		return box3d_b3WeldJointDef_angularDampingRatio_set(this, v);
		#else
		return 0.0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3WeldJointDef_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3WeldJointDef_new", "o", false));
	private static var box3d_b3WeldJointDef_base_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3WeldJointDef_base_get", "oo", false));
	private static var box3d_b3WeldJointDef_base_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3WeldJointDef_base_set", "ooo", false));
	private static var box3d_b3WeldJointDef_linearHertz_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WeldJointDef_linearHertz_get", "of", false));
	private static var box3d_b3WeldJointDef_linearHertz_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WeldJointDef_linearHertz_set", "off", false));
	private static var box3d_b3WeldJointDef_angularHertz_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WeldJointDef_angularHertz_get", "of", false));
	private static var box3d_b3WeldJointDef_angularHertz_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WeldJointDef_angularHertz_set", "off", false));
	private static var box3d_b3WeldJointDef_linearDampingRatio_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WeldJointDef_linearDampingRatio_get", "of", false));
	private static var box3d_b3WeldJointDef_linearDampingRatio_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WeldJointDef_linearDampingRatio_set", "off", false));
	private static var box3d_b3WeldJointDef_angularDampingRatio_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WeldJointDef_angularDampingRatio_get", "of", false));
	private static var box3d_b3WeldJointDef_angularDampingRatio_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WeldJointDef_angularDampingRatio_set", "off", false));
	#end
}

abstract B3WheelJointDef(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var base(get, set):B3JointDef;
	public var enableSuspensionSpring(get, set):Bool;
	public var suspensionHertz(get, set):Float;
	public var suspensionDampingRatio(get, set):Float;
	public var enableSuspensionLimit(get, set):Bool;
	public var lowerSuspensionLimit(get, set):Float;
	public var upperSuspensionLimit(get, set):Float;
	public var enableSpinMotor(get, set):Bool;
	public var maxSpinTorque(get, set):Float;
	public var spinSpeed(get, set):Float;
	public var enableSteering(get, set):Bool;
	public var steeringHertz(get, set):Float;
	public var steeringDampingRatio(get, set):Float;
	public var targetSteeringAngle(get, set):Float;
	public var maxSteeringTorque(get, set):Float;
	public var enableSteeringLimit(get, set):Bool;
	public var lowerSteeringLimit(get, set):Float;
	public var upperSteeringLimit(get, set):Float;
	public function new() {
		#if lime_box3d
		this = box3d_b3WheelJointDef_new();
		#else
		this = null;
		#end
	}
	private inline function get_base():B3JointDef {
		#if lime_box3d
		return box3d_b3WheelJointDef_base_get(this);
		#else
		return null;
		#end
	}
	private inline function set_base(v:B3JointDef):B3JointDef {
		#if lime_box3d
		return box3d_b3WheelJointDef_base_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_enableSuspensionSpring():Bool {
		#if lime_box3d
		return box3d_b3WheelJointDef_enableSuspensionSpring_get(this);
		#else
		return false;
		#end
	}
	private inline function set_enableSuspensionSpring(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3WheelJointDef_enableSuspensionSpring_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_suspensionHertz():Float {
		#if lime_box3d
		return box3d_b3WheelJointDef_suspensionHertz_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_suspensionHertz(v:Float):Float {
		#if lime_box3d
		return box3d_b3WheelJointDef_suspensionHertz_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_suspensionDampingRatio():Float {
		#if lime_box3d
		return box3d_b3WheelJointDef_suspensionDampingRatio_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_suspensionDampingRatio(v:Float):Float {
		#if lime_box3d
		return box3d_b3WheelJointDef_suspensionDampingRatio_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_enableSuspensionLimit():Bool {
		#if lime_box3d
		return box3d_b3WheelJointDef_enableSuspensionLimit_get(this);
		#else
		return false;
		#end
	}
	private inline function set_enableSuspensionLimit(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3WheelJointDef_enableSuspensionLimit_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_lowerSuspensionLimit():Float {
		#if lime_box3d
		return box3d_b3WheelJointDef_lowerSuspensionLimit_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_lowerSuspensionLimit(v:Float):Float {
		#if lime_box3d
		return box3d_b3WheelJointDef_lowerSuspensionLimit_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_upperSuspensionLimit():Float {
		#if lime_box3d
		return box3d_b3WheelJointDef_upperSuspensionLimit_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_upperSuspensionLimit(v:Float):Float {
		#if lime_box3d
		return box3d_b3WheelJointDef_upperSuspensionLimit_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_enableSpinMotor():Bool {
		#if lime_box3d
		return box3d_b3WheelJointDef_enableSpinMotor_get(this);
		#else
		return false;
		#end
	}
	private inline function set_enableSpinMotor(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3WheelJointDef_enableSpinMotor_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_maxSpinTorque():Float {
		#if lime_box3d
		return box3d_b3WheelJointDef_maxSpinTorque_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_maxSpinTorque(v:Float):Float {
		#if lime_box3d
		return box3d_b3WheelJointDef_maxSpinTorque_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_spinSpeed():Float {
		#if lime_box3d
		return box3d_b3WheelJointDef_spinSpeed_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_spinSpeed(v:Float):Float {
		#if lime_box3d
		return box3d_b3WheelJointDef_spinSpeed_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_enableSteering():Bool {
		#if lime_box3d
		return box3d_b3WheelJointDef_enableSteering_get(this);
		#else
		return false;
		#end
	}
	private inline function set_enableSteering(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3WheelJointDef_enableSteering_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_steeringHertz():Float {
		#if lime_box3d
		return box3d_b3WheelJointDef_steeringHertz_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_steeringHertz(v:Float):Float {
		#if lime_box3d
		return box3d_b3WheelJointDef_steeringHertz_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_steeringDampingRatio():Float {
		#if lime_box3d
		return box3d_b3WheelJointDef_steeringDampingRatio_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_steeringDampingRatio(v:Float):Float {
		#if lime_box3d
		return box3d_b3WheelJointDef_steeringDampingRatio_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_targetSteeringAngle():Float {
		#if lime_box3d
		return box3d_b3WheelJointDef_targetSteeringAngle_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_targetSteeringAngle(v:Float):Float {
		#if lime_box3d
		return box3d_b3WheelJointDef_targetSteeringAngle_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_maxSteeringTorque():Float {
		#if lime_box3d
		return box3d_b3WheelJointDef_maxSteeringTorque_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_maxSteeringTorque(v:Float):Float {
		#if lime_box3d
		return box3d_b3WheelJointDef_maxSteeringTorque_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_enableSteeringLimit():Bool {
		#if lime_box3d
		return box3d_b3WheelJointDef_enableSteeringLimit_get(this);
		#else
		return false;
		#end
	}
	private inline function set_enableSteeringLimit(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3WheelJointDef_enableSteeringLimit_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_lowerSteeringLimit():Float {
		#if lime_box3d
		return box3d_b3WheelJointDef_lowerSteeringLimit_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_lowerSteeringLimit(v:Float):Float {
		#if lime_box3d
		return box3d_b3WheelJointDef_lowerSteeringLimit_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_upperSteeringLimit():Float {
		#if lime_box3d
		return box3d_b3WheelJointDef_upperSteeringLimit_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_upperSteeringLimit(v:Float):Float {
		#if lime_box3d
		return box3d_b3WheelJointDef_upperSteeringLimit_set(this, v);
		#else
		return 0.0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3WheelJointDef_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_new", "o", false));
	private static var box3d_b3WheelJointDef_base_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_base_get", "oo", false));
	private static var box3d_b3WheelJointDef_base_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_base_set", "ooo", false));
	private static var box3d_b3WheelJointDef_enableSuspensionSpring_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_enableSuspensionSpring_get", "ob", false));
	private static var box3d_b3WheelJointDef_enableSuspensionSpring_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_enableSuspensionSpring_set", "obb", false));
	private static var box3d_b3WheelJointDef_suspensionHertz_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_suspensionHertz_get", "of", false));
	private static var box3d_b3WheelJointDef_suspensionHertz_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_suspensionHertz_set", "off", false));
	private static var box3d_b3WheelJointDef_suspensionDampingRatio_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_suspensionDampingRatio_get", "of", false));
	private static var box3d_b3WheelJointDef_suspensionDampingRatio_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_suspensionDampingRatio_set", "off", false));
	private static var box3d_b3WheelJointDef_enableSuspensionLimit_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_enableSuspensionLimit_get", "ob", false));
	private static var box3d_b3WheelJointDef_enableSuspensionLimit_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_enableSuspensionLimit_set", "obb", false));
	private static var box3d_b3WheelJointDef_lowerSuspensionLimit_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_lowerSuspensionLimit_get", "of", false));
	private static var box3d_b3WheelJointDef_lowerSuspensionLimit_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_lowerSuspensionLimit_set", "off", false));
	private static var box3d_b3WheelJointDef_upperSuspensionLimit_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_upperSuspensionLimit_get", "of", false));
	private static var box3d_b3WheelJointDef_upperSuspensionLimit_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_upperSuspensionLimit_set", "off", false));
	private static var box3d_b3WheelJointDef_enableSpinMotor_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_enableSpinMotor_get", "ob", false));
	private static var box3d_b3WheelJointDef_enableSpinMotor_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_enableSpinMotor_set", "obb", false));
	private static var box3d_b3WheelJointDef_maxSpinTorque_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_maxSpinTorque_get", "of", false));
	private static var box3d_b3WheelJointDef_maxSpinTorque_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_maxSpinTorque_set", "off", false));
	private static var box3d_b3WheelJointDef_spinSpeed_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_spinSpeed_get", "of", false));
	private static var box3d_b3WheelJointDef_spinSpeed_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_spinSpeed_set", "off", false));
	private static var box3d_b3WheelJointDef_enableSteering_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_enableSteering_get", "ob", false));
	private static var box3d_b3WheelJointDef_enableSteering_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_enableSteering_set", "obb", false));
	private static var box3d_b3WheelJointDef_steeringHertz_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_steeringHertz_get", "of", false));
	private static var box3d_b3WheelJointDef_steeringHertz_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_steeringHertz_set", "off", false));
	private static var box3d_b3WheelJointDef_steeringDampingRatio_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_steeringDampingRatio_get", "of", false));
	private static var box3d_b3WheelJointDef_steeringDampingRatio_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_steeringDampingRatio_set", "off", false));
	private static var box3d_b3WheelJointDef_targetSteeringAngle_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_targetSteeringAngle_get", "of", false));
	private static var box3d_b3WheelJointDef_targetSteeringAngle_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_targetSteeringAngle_set", "off", false));
	private static var box3d_b3WheelJointDef_maxSteeringTorque_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_maxSteeringTorque_get", "of", false));
	private static var box3d_b3WheelJointDef_maxSteeringTorque_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_maxSteeringTorque_set", "off", false));
	private static var box3d_b3WheelJointDef_enableSteeringLimit_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_enableSteeringLimit_get", "ob", false));
	private static var box3d_b3WheelJointDef_enableSteeringLimit_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_enableSteeringLimit_set", "obb", false));
	private static var box3d_b3WheelJointDef_lowerSteeringLimit_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_lowerSteeringLimit_get", "of", false));
	private static var box3d_b3WheelJointDef_lowerSteeringLimit_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_lowerSteeringLimit_set", "off", false));
	private static var box3d_b3WheelJointDef_upperSteeringLimit_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_upperSteeringLimit_get", "of", false));
	private static var box3d_b3WheelJointDef_upperSteeringLimit_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3WheelJointDef_upperSteeringLimit_set", "off", false));
	#end
}

abstract B3ExplosionDef(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var maskBits(get, set):UInt64;
	public var position(get, set):B3Pos;
	public var radius(get, set):Float;
	public var falloff(get, set):Float;
	public var impulsePerArea(get, set):Float;
	public function new() {
		#if lime_box3d
		this = box3d_b3ExplosionDef_new();
		#else
		this = null;
		#end
	}
	private inline function get_maskBits():UInt64 {
		#if lime_box3d
		return box3d_b3ExplosionDef_maskBits_get(this);
		#else
		return null;
		#end
	}
	private inline function set_maskBits(v:UInt64):UInt64 {
		#if lime_box3d
		return box3d_b3ExplosionDef_maskBits_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_position():B3Pos {
		#if lime_box3d
		return box3d_b3ExplosionDef_position_get(this);
		#else
		return null;
		#end
	}
	private inline function set_position(v:B3Pos):B3Pos {
		#if lime_box3d
		return box3d_b3ExplosionDef_position_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_radius():Float {
		#if lime_box3d
		return box3d_b3ExplosionDef_radius_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_radius(v:Float):Float {
		#if lime_box3d
		return box3d_b3ExplosionDef_radius_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_falloff():Float {
		#if lime_box3d
		return box3d_b3ExplosionDef_falloff_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_falloff(v:Float):Float {
		#if lime_box3d
		return box3d_b3ExplosionDef_falloff_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_impulsePerArea():Float {
		#if lime_box3d
		return box3d_b3ExplosionDef_impulsePerArea_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_impulsePerArea(v:Float):Float {
		#if lime_box3d
		return box3d_b3ExplosionDef_impulsePerArea_set(this, v);
		#else
		return 0.0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3ExplosionDef_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ExplosionDef_new", "o", false));
	private static var box3d_b3ExplosionDef_maskBits_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ExplosionDef_maskBits_get", "oo", false));
	private static var box3d_b3ExplosionDef_maskBits_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ExplosionDef_maskBits_set", "ooo", false));
	private static var box3d_b3ExplosionDef_position_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ExplosionDef_position_get", "oo", false));
	private static var box3d_b3ExplosionDef_position_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ExplosionDef_position_set", "ooo", false));
	private static var box3d_b3ExplosionDef_radius_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ExplosionDef_radius_get", "of", false));
	private static var box3d_b3ExplosionDef_radius_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ExplosionDef_radius_set", "off", false));
	private static var box3d_b3ExplosionDef_falloff_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ExplosionDef_falloff_get", "of", false));
	private static var box3d_b3ExplosionDef_falloff_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ExplosionDef_falloff_set", "off", false));
	private static var box3d_b3ExplosionDef_impulsePerArea_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ExplosionDef_impulsePerArea_get", "of", false));
	private static var box3d_b3ExplosionDef_impulsePerArea_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ExplosionDef_impulsePerArea_set", "off", false));
	#end
}

abstract B3SensorBeginTouchEvent(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var sensorShapeId(get, set):B3ShapeId;
	public var visitorShapeId(get, set):B3ShapeId;
	public function new() {
		#if lime_box3d
		this = box3d_b3SensorBeginTouchEvent_new();
		#else
		this = null;
		#end
	}
	private inline function get_sensorShapeId():B3ShapeId {
		#if lime_box3d
		return box3d_b3SensorBeginTouchEvent_sensorShapeId_get(this);
		#else
		return null;
		#end
	}
	private inline function set_sensorShapeId(v:B3ShapeId):B3ShapeId {
		#if lime_box3d
		return box3d_b3SensorBeginTouchEvent_sensorShapeId_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_visitorShapeId():B3ShapeId {
		#if lime_box3d
		return box3d_b3SensorBeginTouchEvent_visitorShapeId_get(this);
		#else
		return null;
		#end
	}
	private inline function set_visitorShapeId(v:B3ShapeId):B3ShapeId {
		#if lime_box3d
		return box3d_b3SensorBeginTouchEvent_visitorShapeId_set(this, v);
		#else
		return null;
		#end
	}
	#if lime_box3d
	private static var box3d_b3SensorBeginTouchEvent_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SensorBeginTouchEvent_new", "o", false));
	private static var box3d_b3SensorBeginTouchEvent_sensorShapeId_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SensorBeginTouchEvent_sensorShapeId_get", "oo", false));
	private static var box3d_b3SensorBeginTouchEvent_sensorShapeId_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SensorBeginTouchEvent_sensorShapeId_set", "ooo", false));
	private static var box3d_b3SensorBeginTouchEvent_visitorShapeId_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SensorBeginTouchEvent_visitorShapeId_get", "oo", false));
	private static var box3d_b3SensorBeginTouchEvent_visitorShapeId_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SensorBeginTouchEvent_visitorShapeId_set", "ooo", false));
	#end
}

abstract B3SensorEndTouchEvent(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var sensorShapeId(get, set):B3ShapeId;
	public var visitorShapeId(get, set):B3ShapeId;
	public function new() {
		#if lime_box3d
		this = box3d_b3SensorEndTouchEvent_new();
		#else
		this = null;
		#end
	}
	private inline function get_sensorShapeId():B3ShapeId {
		#if lime_box3d
		return box3d_b3SensorEndTouchEvent_sensorShapeId_get(this);
		#else
		return null;
		#end
	}
	private inline function set_sensorShapeId(v:B3ShapeId):B3ShapeId {
		#if lime_box3d
		return box3d_b3SensorEndTouchEvent_sensorShapeId_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_visitorShapeId():B3ShapeId {
		#if lime_box3d
		return box3d_b3SensorEndTouchEvent_visitorShapeId_get(this);
		#else
		return null;
		#end
	}
	private inline function set_visitorShapeId(v:B3ShapeId):B3ShapeId {
		#if lime_box3d
		return box3d_b3SensorEndTouchEvent_visitorShapeId_set(this, v);
		#else
		return null;
		#end
	}
	#if lime_box3d
	private static var box3d_b3SensorEndTouchEvent_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SensorEndTouchEvent_new", "o", false));
	private static var box3d_b3SensorEndTouchEvent_sensorShapeId_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SensorEndTouchEvent_sensorShapeId_get", "oo", false));
	private static var box3d_b3SensorEndTouchEvent_sensorShapeId_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SensorEndTouchEvent_sensorShapeId_set", "ooo", false));
	private static var box3d_b3SensorEndTouchEvent_visitorShapeId_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SensorEndTouchEvent_visitorShapeId_get", "oo", false));
	private static var box3d_b3SensorEndTouchEvent_visitorShapeId_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SensorEndTouchEvent_visitorShapeId_set", "ooo", false));
	#end
}

abstract B3SensorEvents(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var beginCount(get, set):Int;
	public var endCount(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3SensorEvents_new();
		#else
		this = null;
		#end
	}
	private inline function get_beginCount():Int {
		#if lime_box3d
		return box3d_b3SensorEvents_beginCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_beginCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3SensorEvents_beginCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_endCount():Int {
		#if lime_box3d
		return box3d_b3SensorEvents_endCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_endCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3SensorEvents_endCount_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3SensorEvents_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SensorEvents_new", "o", false));
	private static var box3d_b3SensorEvents_beginCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3SensorEvents_beginCount_get", "oi", false));
	private static var box3d_b3SensorEvents_beginCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3SensorEvents_beginCount_set", "oii", false));
	private static var box3d_b3SensorEvents_endCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3SensorEvents_endCount_get", "oi", false));
	private static var box3d_b3SensorEvents_endCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3SensorEvents_endCount_set", "oii", false));
	#end
}

abstract B3ContactBeginTouchEvent(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var shapeIdA(get, set):B3ShapeId;
	public var shapeIdB(get, set):B3ShapeId;
	public var contactId(get, set):B3ContactId;
	public function new() {
		#if lime_box3d
		this = box3d_b3ContactBeginTouchEvent_new();
		#else
		this = null;
		#end
	}
	private inline function get_shapeIdA():B3ShapeId {
		#if lime_box3d
		return box3d_b3ContactBeginTouchEvent_shapeIdA_get(this);
		#else
		return null;
		#end
	}
	private inline function set_shapeIdA(v:B3ShapeId):B3ShapeId {
		#if lime_box3d
		return box3d_b3ContactBeginTouchEvent_shapeIdA_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_shapeIdB():B3ShapeId {
		#if lime_box3d
		return box3d_b3ContactBeginTouchEvent_shapeIdB_get(this);
		#else
		return null;
		#end
	}
	private inline function set_shapeIdB(v:B3ShapeId):B3ShapeId {
		#if lime_box3d
		return box3d_b3ContactBeginTouchEvent_shapeIdB_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_contactId():B3ContactId {
		#if lime_box3d
		return box3d_b3ContactBeginTouchEvent_contactId_get(this);
		#else
		return null;
		#end
	}
	private inline function set_contactId(v:B3ContactId):B3ContactId {
		#if lime_box3d
		return box3d_b3ContactBeginTouchEvent_contactId_set(this, v);
		#else
		return null;
		#end
	}
	#if lime_box3d
	private static var box3d_b3ContactBeginTouchEvent_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactBeginTouchEvent_new", "o", false));
	private static var box3d_b3ContactBeginTouchEvent_shapeIdA_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactBeginTouchEvent_shapeIdA_get", "oo", false));
	private static var box3d_b3ContactBeginTouchEvent_shapeIdA_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactBeginTouchEvent_shapeIdA_set", "ooo", false));
	private static var box3d_b3ContactBeginTouchEvent_shapeIdB_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactBeginTouchEvent_shapeIdB_get", "oo", false));
	private static var box3d_b3ContactBeginTouchEvent_shapeIdB_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactBeginTouchEvent_shapeIdB_set", "ooo", false));
	private static var box3d_b3ContactBeginTouchEvent_contactId_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactBeginTouchEvent_contactId_get", "oo", false));
	private static var box3d_b3ContactBeginTouchEvent_contactId_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactBeginTouchEvent_contactId_set", "ooo", false));
	#end
}

abstract B3ContactEndTouchEvent(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var shapeIdA(get, set):B3ShapeId;
	public var shapeIdB(get, set):B3ShapeId;
	public var contactId(get, set):B3ContactId;
	public function new() {
		#if lime_box3d
		this = box3d_b3ContactEndTouchEvent_new();
		#else
		this = null;
		#end
	}
	private inline function get_shapeIdA():B3ShapeId {
		#if lime_box3d
		return box3d_b3ContactEndTouchEvent_shapeIdA_get(this);
		#else
		return null;
		#end
	}
	private inline function set_shapeIdA(v:B3ShapeId):B3ShapeId {
		#if lime_box3d
		return box3d_b3ContactEndTouchEvent_shapeIdA_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_shapeIdB():B3ShapeId {
		#if lime_box3d
		return box3d_b3ContactEndTouchEvent_shapeIdB_get(this);
		#else
		return null;
		#end
	}
	private inline function set_shapeIdB(v:B3ShapeId):B3ShapeId {
		#if lime_box3d
		return box3d_b3ContactEndTouchEvent_shapeIdB_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_contactId():B3ContactId {
		#if lime_box3d
		return box3d_b3ContactEndTouchEvent_contactId_get(this);
		#else
		return null;
		#end
	}
	private inline function set_contactId(v:B3ContactId):B3ContactId {
		#if lime_box3d
		return box3d_b3ContactEndTouchEvent_contactId_set(this, v);
		#else
		return null;
		#end
	}
	#if lime_box3d
	private static var box3d_b3ContactEndTouchEvent_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactEndTouchEvent_new", "o", false));
	private static var box3d_b3ContactEndTouchEvent_shapeIdA_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactEndTouchEvent_shapeIdA_get", "oo", false));
	private static var box3d_b3ContactEndTouchEvent_shapeIdA_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactEndTouchEvent_shapeIdA_set", "ooo", false));
	private static var box3d_b3ContactEndTouchEvent_shapeIdB_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactEndTouchEvent_shapeIdB_get", "oo", false));
	private static var box3d_b3ContactEndTouchEvent_shapeIdB_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactEndTouchEvent_shapeIdB_set", "ooo", false));
	private static var box3d_b3ContactEndTouchEvent_contactId_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactEndTouchEvent_contactId_get", "oo", false));
	private static var box3d_b3ContactEndTouchEvent_contactId_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactEndTouchEvent_contactId_set", "ooo", false));
	#end
}

abstract B3ContactHitEvent(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var shapeIdA(get, set):B3ShapeId;
	public var shapeIdB(get, set):B3ShapeId;
	public var contactId(get, set):B3ContactId;
	public var point(get, set):B3Pos;
	public var normal(get, set):B3Vec3;
	public var approachSpeed(get, set):Float;
	public var userMaterialIdA(get, set):UInt64;
	public var userMaterialIdB(get, set):UInt64;
	public function new() {
		#if lime_box3d
		this = box3d_b3ContactHitEvent_new();
		#else
		this = null;
		#end
	}
	private inline function get_shapeIdA():B3ShapeId {
		#if lime_box3d
		return box3d_b3ContactHitEvent_shapeIdA_get(this);
		#else
		return null;
		#end
	}
	private inline function set_shapeIdA(v:B3ShapeId):B3ShapeId {
		#if lime_box3d
		return box3d_b3ContactHitEvent_shapeIdA_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_shapeIdB():B3ShapeId {
		#if lime_box3d
		return box3d_b3ContactHitEvent_shapeIdB_get(this);
		#else
		return null;
		#end
	}
	private inline function set_shapeIdB(v:B3ShapeId):B3ShapeId {
		#if lime_box3d
		return box3d_b3ContactHitEvent_shapeIdB_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_contactId():B3ContactId {
		#if lime_box3d
		return box3d_b3ContactHitEvent_contactId_get(this);
		#else
		return null;
		#end
	}
	private inline function set_contactId(v:B3ContactId):B3ContactId {
		#if lime_box3d
		return box3d_b3ContactHitEvent_contactId_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_point():B3Pos {
		#if lime_box3d
		return box3d_b3ContactHitEvent_point_get(this);
		#else
		return null;
		#end
	}
	private inline function set_point(v:B3Pos):B3Pos {
		#if lime_box3d
		return box3d_b3ContactHitEvent_point_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_normal():B3Vec3 {
		#if lime_box3d
		return box3d_b3ContactHitEvent_normal_get(this);
		#else
		return null;
		#end
	}
	private inline function set_normal(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3ContactHitEvent_normal_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_approachSpeed():Float {
		#if lime_box3d
		return box3d_b3ContactHitEvent_approachSpeed_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_approachSpeed(v:Float):Float {
		#if lime_box3d
		return box3d_b3ContactHitEvent_approachSpeed_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_userMaterialIdA():UInt64 {
		#if lime_box3d
		return box3d_b3ContactHitEvent_userMaterialIdA_get(this);
		#else
		return null;
		#end
	}
	private inline function set_userMaterialIdA(v:UInt64):UInt64 {
		#if lime_box3d
		return box3d_b3ContactHitEvent_userMaterialIdA_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_userMaterialIdB():UInt64 {
		#if lime_box3d
		return box3d_b3ContactHitEvent_userMaterialIdB_get(this);
		#else
		return null;
		#end
	}
	private inline function set_userMaterialIdB(v:UInt64):UInt64 {
		#if lime_box3d
		return box3d_b3ContactHitEvent_userMaterialIdB_set(this, v);
		#else
		return null;
		#end
	}
	#if lime_box3d
	private static var box3d_b3ContactHitEvent_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactHitEvent_new", "o", false));
	private static var box3d_b3ContactHitEvent_shapeIdA_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactHitEvent_shapeIdA_get", "oo", false));
	private static var box3d_b3ContactHitEvent_shapeIdA_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactHitEvent_shapeIdA_set", "ooo", false));
	private static var box3d_b3ContactHitEvent_shapeIdB_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactHitEvent_shapeIdB_get", "oo", false));
	private static var box3d_b3ContactHitEvent_shapeIdB_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactHitEvent_shapeIdB_set", "ooo", false));
	private static var box3d_b3ContactHitEvent_contactId_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactHitEvent_contactId_get", "oo", false));
	private static var box3d_b3ContactHitEvent_contactId_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactHitEvent_contactId_set", "ooo", false));
	private static var box3d_b3ContactHitEvent_point_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactHitEvent_point_get", "oo", false));
	private static var box3d_b3ContactHitEvent_point_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactHitEvent_point_set", "ooo", false));
	private static var box3d_b3ContactHitEvent_normal_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactHitEvent_normal_get", "oo", false));
	private static var box3d_b3ContactHitEvent_normal_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactHitEvent_normal_set", "ooo", false));
	private static var box3d_b3ContactHitEvent_approachSpeed_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactHitEvent_approachSpeed_get", "of", false));
	private static var box3d_b3ContactHitEvent_approachSpeed_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactHitEvent_approachSpeed_set", "off", false));
	private static var box3d_b3ContactHitEvent_userMaterialIdA_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactHitEvent_userMaterialIdA_get", "oo", false));
	private static var box3d_b3ContactHitEvent_userMaterialIdA_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactHitEvent_userMaterialIdA_set", "ooo", false));
	private static var box3d_b3ContactHitEvent_userMaterialIdB_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactHitEvent_userMaterialIdB_get", "oo", false));
	private static var box3d_b3ContactHitEvent_userMaterialIdB_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactHitEvent_userMaterialIdB_set", "ooo", false));
	#end
}

abstract B3ContactEvents(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var beginCount(get, set):Int;
	public var endCount(get, set):Int;
	public var hitCount(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3ContactEvents_new();
		#else
		this = null;
		#end
	}
	private inline function get_beginCount():Int {
		#if lime_box3d
		return box3d_b3ContactEvents_beginCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_beginCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3ContactEvents_beginCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_endCount():Int {
		#if lime_box3d
		return box3d_b3ContactEvents_endCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_endCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3ContactEvents_endCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_hitCount():Int {
		#if lime_box3d
		return box3d_b3ContactEvents_hitCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_hitCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3ContactEvents_hitCount_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3ContactEvents_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactEvents_new", "o", false));
	private static var box3d_b3ContactEvents_beginCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactEvents_beginCount_get", "oi", false));
	private static var box3d_b3ContactEvents_beginCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactEvents_beginCount_set", "oii", false));
	private static var box3d_b3ContactEvents_endCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactEvents_endCount_get", "oi", false));
	private static var box3d_b3ContactEvents_endCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactEvents_endCount_set", "oii", false));
	private static var box3d_b3ContactEvents_hitCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactEvents_hitCount_get", "oi", false));
	private static var box3d_b3ContactEvents_hitCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactEvents_hitCount_set", "oii", false));
	#end
}

abstract B3BodyMoveEvent(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var transform(get, set):B3WorldTransform;
	public var bodyId(get, set):B3BodyId;
	public var fellAsleep(get, set):Bool;
	public function new() {
		#if lime_box3d
		this = box3d_b3BodyMoveEvent_new();
		#else
		this = null;
		#end
	}
	private inline function get_transform():B3WorldTransform {
		#if lime_box3d
		return box3d_b3BodyMoveEvent_transform_get(this);
		#else
		return null;
		#end
	}
	private inline function set_transform(v:B3WorldTransform):B3WorldTransform {
		#if lime_box3d
		return box3d_b3BodyMoveEvent_transform_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_bodyId():B3BodyId {
		#if lime_box3d
		return box3d_b3BodyMoveEvent_bodyId_get(this);
		#else
		return null;
		#end
	}
	private inline function set_bodyId(v:B3BodyId):B3BodyId {
		#if lime_box3d
		return box3d_b3BodyMoveEvent_bodyId_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_fellAsleep():Bool {
		#if lime_box3d
		return box3d_b3BodyMoveEvent_fellAsleep_get(this);
		#else
		return false;
		#end
	}
	private inline function set_fellAsleep(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3BodyMoveEvent_fellAsleep_set(this, v);
		#else
		return false;
		#end
	}
	#if lime_box3d
	private static var box3d_b3BodyMoveEvent_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyMoveEvent_new", "o", false));
	private static var box3d_b3BodyMoveEvent_transform_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyMoveEvent_transform_get", "oo", false));
	private static var box3d_b3BodyMoveEvent_transform_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyMoveEvent_transform_set", "ooo", false));
	private static var box3d_b3BodyMoveEvent_bodyId_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyMoveEvent_bodyId_get", "oo", false));
	private static var box3d_b3BodyMoveEvent_bodyId_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyMoveEvent_bodyId_set", "ooo", false));
	private static var box3d_b3BodyMoveEvent_fellAsleep_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyMoveEvent_fellAsleep_get", "ob", false));
	private static var box3d_b3BodyMoveEvent_fellAsleep_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyMoveEvent_fellAsleep_set", "obb", false));
	#end
}

abstract B3BodyEvents(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var moveCount(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3BodyEvents_new();
		#else
		this = null;
		#end
	}
	private inline function get_moveCount():Int {
		#if lime_box3d
		return box3d_b3BodyEvents_moveCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_moveCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3BodyEvents_moveCount_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3BodyEvents_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyEvents_new", "o", false));
	private static var box3d_b3BodyEvents_moveCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyEvents_moveCount_get", "oi", false));
	private static var box3d_b3BodyEvents_moveCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyEvents_moveCount_set", "oii", false));
	#end
}

abstract B3JointEvent(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var jointId(get, set):B3JointId;
	public function new() {
		#if lime_box3d
		this = box3d_b3JointEvent_new();
		#else
		this = null;
		#end
	}
	private inline function get_jointId():B3JointId {
		#if lime_box3d
		return box3d_b3JointEvent_jointId_get(this);
		#else
		return null;
		#end
	}
	private inline function set_jointId(v:B3JointId):B3JointId {
		#if lime_box3d
		return box3d_b3JointEvent_jointId_set(this, v);
		#else
		return null;
		#end
	}
	#if lime_box3d
	private static var box3d_b3JointEvent_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3JointEvent_new", "o", false));
	private static var box3d_b3JointEvent_jointId_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3JointEvent_jointId_get", "oo", false));
	private static var box3d_b3JointEvent_jointId_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3JointEvent_jointId_set", "ooo", false));
	#end
}

abstract B3JointEvents(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var count(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3JointEvents_new();
		#else
		this = null;
		#end
	}
	private inline function get_count():Int {
		#if lime_box3d
		return box3d_b3JointEvents_count_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_count(v:Int):Int {
		#if lime_box3d
		return box3d_b3JointEvents_count_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3JointEvents_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3JointEvents_new", "o", false));
	private static var box3d_b3JointEvents_count_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3JointEvents_count_get", "oi", false));
	private static var box3d_b3JointEvents_count_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3JointEvents_count_set", "oii", false));
	#end
}

abstract B3ContactData(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var contactId(get, set):B3ContactId;
	public var shapeIdA(get, set):B3ShapeId;
	public var shapeIdB(get, set):B3ShapeId;
	public var manifoldCount(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3ContactData_new();
		#else
		this = null;
		#end
	}
	private inline function get_contactId():B3ContactId {
		#if lime_box3d
		return box3d_b3ContactData_contactId_get(this);
		#else
		return null;
		#end
	}
	private inline function set_contactId(v:B3ContactId):B3ContactId {
		#if lime_box3d
		return box3d_b3ContactData_contactId_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_shapeIdA():B3ShapeId {
		#if lime_box3d
		return box3d_b3ContactData_shapeIdA_get(this);
		#else
		return null;
		#end
	}
	private inline function set_shapeIdA(v:B3ShapeId):B3ShapeId {
		#if lime_box3d
		return box3d_b3ContactData_shapeIdA_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_shapeIdB():B3ShapeId {
		#if lime_box3d
		return box3d_b3ContactData_shapeIdB_get(this);
		#else
		return null;
		#end
	}
	private inline function set_shapeIdB(v:B3ShapeId):B3ShapeId {
		#if lime_box3d
		return box3d_b3ContactData_shapeIdB_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_manifoldCount():Int {
		#if lime_box3d
		return box3d_b3ContactData_manifoldCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_manifoldCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3ContactData_manifoldCount_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3ContactData_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactData_new", "o", false));
	private static var box3d_b3ContactData_contactId_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactData_contactId_get", "oo", false));
	private static var box3d_b3ContactData_contactId_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactData_contactId_set", "ooo", false));
	private static var box3d_b3ContactData_shapeIdA_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactData_shapeIdA_get", "oo", false));
	private static var box3d_b3ContactData_shapeIdA_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactData_shapeIdA_set", "ooo", false));
	private static var box3d_b3ContactData_shapeIdB_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactData_shapeIdB_get", "oo", false));
	private static var box3d_b3ContactData_shapeIdB_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactData_shapeIdB_set", "ooo", false));
	private static var box3d_b3ContactData_manifoldCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactData_manifoldCount_get", "oi", false));
	private static var box3d_b3ContactData_manifoldCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactData_manifoldCount_set", "oii", false));
	#end
}

abstract B3QueryFilter(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var categoryBits(get, set):UInt64;
	public var maskBits(get, set):UInt64;
	public var id(get, set):UInt64;
	public var name(get, set):String;
	public function new() {
		#if lime_box3d
		this = box3d_b3QueryFilter_new();
		#else
		this = null;
		#end
	}
	private inline function get_categoryBits():UInt64 {
		#if lime_box3d
		return box3d_b3QueryFilter_categoryBits_get(this);
		#else
		return null;
		#end
	}
	private inline function set_categoryBits(v:UInt64):UInt64 {
		#if lime_box3d
		return box3d_b3QueryFilter_categoryBits_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_maskBits():UInt64 {
		#if lime_box3d
		return box3d_b3QueryFilter_maskBits_get(this);
		#else
		return null;
		#end
	}
	private inline function set_maskBits(v:UInt64):UInt64 {
		#if lime_box3d
		return box3d_b3QueryFilter_maskBits_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_id():UInt64 {
		#if lime_box3d
		return box3d_b3QueryFilter_id_get(this);
		#else
		return null;
		#end
	}
	private inline function set_id(v:UInt64):UInt64 {
		#if lime_box3d
		return box3d_b3QueryFilter_id_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_name():String {
		#if lime_box3d
		return box3d_b3QueryFilter_name_get(this);
		#else
		return null;
		#end
	}
	private inline function set_name(v:String):String {
		#if lime_box3d
		return box3d_b3QueryFilter_name_set(this, v);
		#else
		return null;
		#end
	}
	#if lime_box3d
	private static var box3d_b3QueryFilter_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3QueryFilter_new", "o", false));
	private static var box3d_b3QueryFilter_categoryBits_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3QueryFilter_categoryBits_get", "oo", false));
	private static var box3d_b3QueryFilter_categoryBits_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3QueryFilter_categoryBits_set", "ooo", false));
	private static var box3d_b3QueryFilter_maskBits_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3QueryFilter_maskBits_get", "oo", false));
	private static var box3d_b3QueryFilter_maskBits_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3QueryFilter_maskBits_set", "ooo", false));
	private static var box3d_b3QueryFilter_id_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3QueryFilter_id_get", "oo", false));
	private static var box3d_b3QueryFilter_id_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3QueryFilter_id_set", "ooo", false));
	private static var box3d_b3QueryFilter_name_get = new cpp.Callable<cpp.Object->String>(cpp.Prime._loadPrime("box3d", "box3d_b3QueryFilter_name_get", "os", false));
	private static var box3d_b3QueryFilter_name_set = new cpp.Callable<cpp.Object->String->String>(cpp.Prime._loadPrime("box3d", "box3d_b3QueryFilter_name_set", "oss", false));
	#end
}

abstract B3RayCastInput(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var origin(get, set):B3Vec3;
	public var translation(get, set):B3Vec3;
	public var maxFraction(get, set):Float;
	public function new() {
		#if lime_box3d
		this = box3d_b3RayCastInput_new();
		#else
		this = null;
		#end
	}
	private inline function get_origin():B3Vec3 {
		#if lime_box3d
		return box3d_b3RayCastInput_origin_get(this);
		#else
		return null;
		#end
	}
	private inline function set_origin(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3RayCastInput_origin_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_translation():B3Vec3 {
		#if lime_box3d
		return box3d_b3RayCastInput_translation_get(this);
		#else
		return null;
		#end
	}
	private inline function set_translation(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3RayCastInput_translation_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_maxFraction():Float {
		#if lime_box3d
		return box3d_b3RayCastInput_maxFraction_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_maxFraction(v:Float):Float {
		#if lime_box3d
		return box3d_b3RayCastInput_maxFraction_set(this, v);
		#else
		return 0.0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3RayCastInput_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RayCastInput_new", "o", false));
	private static var box3d_b3RayCastInput_origin_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RayCastInput_origin_get", "oo", false));
	private static var box3d_b3RayCastInput_origin_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RayCastInput_origin_set", "ooo", false));
	private static var box3d_b3RayCastInput_translation_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RayCastInput_translation_get", "oo", false));
	private static var box3d_b3RayCastInput_translation_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RayCastInput_translation_set", "ooo", false));
	private static var box3d_b3RayCastInput_maxFraction_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RayCastInput_maxFraction_get", "of", false));
	private static var box3d_b3RayCastInput_maxFraction_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RayCastInput_maxFraction_set", "off", false));
	#end
}

abstract B3RayResult(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var shapeId(get, set):B3ShapeId;
	public var point(get, set):B3Pos;
	public var normal(get, set):B3Vec3;
	public var userMaterialId(get, set):UInt64;
	public var fraction(get, set):Float;
	public var triangleIndex(get, set):Int;
	public var childIndex(get, set):Int;
	public var nodeVisits(get, set):Int;
	public var leafVisits(get, set):Int;
	public var hit(get, set):Bool;
	public function new() {
		#if lime_box3d
		this = box3d_b3RayResult_new();
		#else
		this = null;
		#end
	}
	private inline function get_shapeId():B3ShapeId {
		#if lime_box3d
		return box3d_b3RayResult_shapeId_get(this);
		#else
		return null;
		#end
	}
	private inline function set_shapeId(v:B3ShapeId):B3ShapeId {
		#if lime_box3d
		return box3d_b3RayResult_shapeId_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_point():B3Pos {
		#if lime_box3d
		return box3d_b3RayResult_point_get(this);
		#else
		return null;
		#end
	}
	private inline function set_point(v:B3Pos):B3Pos {
		#if lime_box3d
		return box3d_b3RayResult_point_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_normal():B3Vec3 {
		#if lime_box3d
		return box3d_b3RayResult_normal_get(this);
		#else
		return null;
		#end
	}
	private inline function set_normal(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3RayResult_normal_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_userMaterialId():UInt64 {
		#if lime_box3d
		return box3d_b3RayResult_userMaterialId_get(this);
		#else
		return null;
		#end
	}
	private inline function set_userMaterialId(v:UInt64):UInt64 {
		#if lime_box3d
		return box3d_b3RayResult_userMaterialId_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_fraction():Float {
		#if lime_box3d
		return box3d_b3RayResult_fraction_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_fraction(v:Float):Float {
		#if lime_box3d
		return box3d_b3RayResult_fraction_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_triangleIndex():Int {
		#if lime_box3d
		return box3d_b3RayResult_triangleIndex_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_triangleIndex(v:Int):Int {
		#if lime_box3d
		return box3d_b3RayResult_triangleIndex_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_childIndex():Int {
		#if lime_box3d
		return box3d_b3RayResult_childIndex_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_childIndex(v:Int):Int {
		#if lime_box3d
		return box3d_b3RayResult_childIndex_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_nodeVisits():Int {
		#if lime_box3d
		return box3d_b3RayResult_nodeVisits_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_nodeVisits(v:Int):Int {
		#if lime_box3d
		return box3d_b3RayResult_nodeVisits_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_leafVisits():Int {
		#if lime_box3d
		return box3d_b3RayResult_leafVisits_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_leafVisits(v:Int):Int {
		#if lime_box3d
		return box3d_b3RayResult_leafVisits_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_hit():Bool {
		#if lime_box3d
		return box3d_b3RayResult_hit_get(this);
		#else
		return false;
		#end
	}
	private inline function set_hit(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3RayResult_hit_set(this, v);
		#else
		return false;
		#end
	}
	#if lime_box3d
	private static var box3d_b3RayResult_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RayResult_new", "o", false));
	private static var box3d_b3RayResult_shapeId_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RayResult_shapeId_get", "oo", false));
	private static var box3d_b3RayResult_shapeId_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RayResult_shapeId_set", "ooo", false));
	private static var box3d_b3RayResult_point_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RayResult_point_get", "oo", false));
	private static var box3d_b3RayResult_point_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RayResult_point_set", "ooo", false));
	private static var box3d_b3RayResult_normal_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RayResult_normal_get", "oo", false));
	private static var box3d_b3RayResult_normal_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RayResult_normal_set", "ooo", false));
	private static var box3d_b3RayResult_userMaterialId_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RayResult_userMaterialId_get", "oo", false));
	private static var box3d_b3RayResult_userMaterialId_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RayResult_userMaterialId_set", "ooo", false));
	private static var box3d_b3RayResult_fraction_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RayResult_fraction_get", "of", false));
	private static var box3d_b3RayResult_fraction_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RayResult_fraction_set", "off", false));
	private static var box3d_b3RayResult_triangleIndex_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3RayResult_triangleIndex_get", "oi", false));
	private static var box3d_b3RayResult_triangleIndex_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3RayResult_triangleIndex_set", "oii", false));
	private static var box3d_b3RayResult_childIndex_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3RayResult_childIndex_get", "oi", false));
	private static var box3d_b3RayResult_childIndex_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3RayResult_childIndex_set", "oii", false));
	private static var box3d_b3RayResult_nodeVisits_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3RayResult_nodeVisits_get", "oi", false));
	private static var box3d_b3RayResult_nodeVisits_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3RayResult_nodeVisits_set", "oii", false));
	private static var box3d_b3RayResult_leafVisits_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3RayResult_leafVisits_get", "oi", false));
	private static var box3d_b3RayResult_leafVisits_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3RayResult_leafVisits_set", "oii", false));
	private static var box3d_b3RayResult_hit_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3RayResult_hit_get", "ob", false));
	private static var box3d_b3RayResult_hit_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3RayResult_hit_set", "obb", false));
	#end
}

abstract B3ShapeProxy(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var count(get, set):Int;
	public var radius(get, set):Float;
	public function new() {
		#if lime_box3d
		this = box3d_b3ShapeProxy_new();
		#else
		this = null;
		#end
	}
	private inline function get_count():Int {
		#if lime_box3d
		return box3d_b3ShapeProxy_count_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_count(v:Int):Int {
		#if lime_box3d
		return box3d_b3ShapeProxy_count_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_radius():Float {
		#if lime_box3d
		return box3d_b3ShapeProxy_radius_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_radius(v:Float):Float {
		#if lime_box3d
		return box3d_b3ShapeProxy_radius_set(this, v);
		#else
		return 0.0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3ShapeProxy_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeProxy_new", "o", false));
	private static var box3d_b3ShapeProxy_count_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeProxy_count_get", "oi", false));
	private static var box3d_b3ShapeProxy_count_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeProxy_count_set", "oii", false));
	private static var box3d_b3ShapeProxy_radius_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeProxy_radius_get", "of", false));
	private static var box3d_b3ShapeProxy_radius_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeProxy_radius_set", "off", false));
	#end
}

abstract B3ShapeCastInput(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var proxy(get, set):B3ShapeProxy;
	public var translation(get, set):B3Vec3;
	public var maxFraction(get, set):Float;
	public var canEncroach(get, set):Bool;
	public function new() {
		#if lime_box3d
		this = box3d_b3ShapeCastInput_new();
		#else
		this = null;
		#end
	}
	private inline function get_proxy():B3ShapeProxy {
		#if lime_box3d
		return box3d_b3ShapeCastInput_proxy_get(this);
		#else
		return null;
		#end
	}
	private inline function set_proxy(v:B3ShapeProxy):B3ShapeProxy {
		#if lime_box3d
		return box3d_b3ShapeCastInput_proxy_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_translation():B3Vec3 {
		#if lime_box3d
		return box3d_b3ShapeCastInput_translation_get(this);
		#else
		return null;
		#end
	}
	private inline function set_translation(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3ShapeCastInput_translation_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_maxFraction():Float {
		#if lime_box3d
		return box3d_b3ShapeCastInput_maxFraction_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_maxFraction(v:Float):Float {
		#if lime_box3d
		return box3d_b3ShapeCastInput_maxFraction_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_canEncroach():Bool {
		#if lime_box3d
		return box3d_b3ShapeCastInput_canEncroach_get(this);
		#else
		return false;
		#end
	}
	private inline function set_canEncroach(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3ShapeCastInput_canEncroach_set(this, v);
		#else
		return false;
		#end
	}
	#if lime_box3d
	private static var box3d_b3ShapeCastInput_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeCastInput_new", "o", false));
	private static var box3d_b3ShapeCastInput_proxy_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeCastInput_proxy_get", "oo", false));
	private static var box3d_b3ShapeCastInput_proxy_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeCastInput_proxy_set", "ooo", false));
	private static var box3d_b3ShapeCastInput_translation_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeCastInput_translation_get", "oo", false));
	private static var box3d_b3ShapeCastInput_translation_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeCastInput_translation_set", "ooo", false));
	private static var box3d_b3ShapeCastInput_maxFraction_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeCastInput_maxFraction_get", "of", false));
	private static var box3d_b3ShapeCastInput_maxFraction_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeCastInput_maxFraction_set", "off", false));
	private static var box3d_b3ShapeCastInput_canEncroach_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeCastInput_canEncroach_get", "ob", false));
	private static var box3d_b3ShapeCastInput_canEncroach_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeCastInput_canEncroach_set", "obb", false));
	#end
}

abstract B3BoxCastInput(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var box(get, set):B3AABB;
	public var translation(get, set):B3Vec3;
	public var maxFraction(get, set):Float;
	public function new() {
		#if lime_box3d
		this = box3d_b3BoxCastInput_new();
		#else
		this = null;
		#end
	}
	private inline function get_box():B3AABB {
		#if lime_box3d
		return box3d_b3BoxCastInput_box_get(this);
		#else
		return null;
		#end
	}
	private inline function set_box(v:B3AABB):B3AABB {
		#if lime_box3d
		return box3d_b3BoxCastInput_box_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_translation():B3Vec3 {
		#if lime_box3d
		return box3d_b3BoxCastInput_translation_get(this);
		#else
		return null;
		#end
	}
	private inline function set_translation(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3BoxCastInput_translation_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_maxFraction():Float {
		#if lime_box3d
		return box3d_b3BoxCastInput_maxFraction_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_maxFraction(v:Float):Float {
		#if lime_box3d
		return box3d_b3BoxCastInput_maxFraction_set(this, v);
		#else
		return 0.0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3BoxCastInput_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BoxCastInput_new", "o", false));
	private static var box3d_b3BoxCastInput_box_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BoxCastInput_box_get", "oo", false));
	private static var box3d_b3BoxCastInput_box_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BoxCastInput_box_set", "ooo", false));
	private static var box3d_b3BoxCastInput_translation_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BoxCastInput_translation_get", "oo", false));
	private static var box3d_b3BoxCastInput_translation_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BoxCastInput_translation_set", "ooo", false));
	private static var box3d_b3BoxCastInput_maxFraction_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3BoxCastInput_maxFraction_get", "of", false));
	private static var box3d_b3BoxCastInput_maxFraction_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3BoxCastInput_maxFraction_set", "off", false));
	#end
}

abstract B3BodyCastResult(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var shapeId(get, set):B3ShapeId;
	public var point(get, set):B3Pos;
	public var normal(get, set):B3Vec3;
	public var fraction(get, set):Float;
	public var triangleIndex(get, set):Int;
	public var userMaterialId(get, set):UInt64;
	public var iterations(get, set):Int;
	public var hit(get, set):Bool;
	public function new() {
		#if lime_box3d
		this = box3d_b3BodyCastResult_new();
		#else
		this = null;
		#end
	}
	private inline function get_shapeId():B3ShapeId {
		#if lime_box3d
		return box3d_b3BodyCastResult_shapeId_get(this);
		#else
		return null;
		#end
	}
	private inline function set_shapeId(v:B3ShapeId):B3ShapeId {
		#if lime_box3d
		return box3d_b3BodyCastResult_shapeId_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_point():B3Pos {
		#if lime_box3d
		return box3d_b3BodyCastResult_point_get(this);
		#else
		return null;
		#end
	}
	private inline function set_point(v:B3Pos):B3Pos {
		#if lime_box3d
		return box3d_b3BodyCastResult_point_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_normal():B3Vec3 {
		#if lime_box3d
		return box3d_b3BodyCastResult_normal_get(this);
		#else
		return null;
		#end
	}
	private inline function set_normal(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3BodyCastResult_normal_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_fraction():Float {
		#if lime_box3d
		return box3d_b3BodyCastResult_fraction_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_fraction(v:Float):Float {
		#if lime_box3d
		return box3d_b3BodyCastResult_fraction_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_triangleIndex():Int {
		#if lime_box3d
		return box3d_b3BodyCastResult_triangleIndex_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_triangleIndex(v:Int):Int {
		#if lime_box3d
		return box3d_b3BodyCastResult_triangleIndex_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_userMaterialId():UInt64 {
		#if lime_box3d
		return box3d_b3BodyCastResult_userMaterialId_get(this);
		#else
		return null;
		#end
	}
	private inline function set_userMaterialId(v:UInt64):UInt64 {
		#if lime_box3d
		return box3d_b3BodyCastResult_userMaterialId_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_iterations():Int {
		#if lime_box3d
		return box3d_b3BodyCastResult_iterations_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_iterations(v:Int):Int {
		#if lime_box3d
		return box3d_b3BodyCastResult_iterations_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_hit():Bool {
		#if lime_box3d
		return box3d_b3BodyCastResult_hit_get(this);
		#else
		return false;
		#end
	}
	private inline function set_hit(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3BodyCastResult_hit_set(this, v);
		#else
		return false;
		#end
	}
	#if lime_box3d
	private static var box3d_b3BodyCastResult_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyCastResult_new", "o", false));
	private static var box3d_b3BodyCastResult_shapeId_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyCastResult_shapeId_get", "oo", false));
	private static var box3d_b3BodyCastResult_shapeId_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyCastResult_shapeId_set", "ooo", false));
	private static var box3d_b3BodyCastResult_point_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyCastResult_point_get", "oo", false));
	private static var box3d_b3BodyCastResult_point_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyCastResult_point_set", "ooo", false));
	private static var box3d_b3BodyCastResult_normal_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyCastResult_normal_get", "oo", false));
	private static var box3d_b3BodyCastResult_normal_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyCastResult_normal_set", "ooo", false));
	private static var box3d_b3BodyCastResult_fraction_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyCastResult_fraction_get", "of", false));
	private static var box3d_b3BodyCastResult_fraction_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyCastResult_fraction_set", "off", false));
	private static var box3d_b3BodyCastResult_triangleIndex_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyCastResult_triangleIndex_get", "oi", false));
	private static var box3d_b3BodyCastResult_triangleIndex_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyCastResult_triangleIndex_set", "oii", false));
	private static var box3d_b3BodyCastResult_userMaterialId_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyCastResult_userMaterialId_get", "oo", false));
	private static var box3d_b3BodyCastResult_userMaterialId_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyCastResult_userMaterialId_set", "ooo", false));
	private static var box3d_b3BodyCastResult_iterations_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyCastResult_iterations_get", "oi", false));
	private static var box3d_b3BodyCastResult_iterations_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyCastResult_iterations_set", "oii", false));
	private static var box3d_b3BodyCastResult_hit_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyCastResult_hit_get", "ob", false));
	private static var box3d_b3BodyCastResult_hit_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyCastResult_hit_set", "obb", false));
	#end
}

abstract B3SimplexCache(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var metric(get, set):Float;
	public var count(get, set):UInt;
	public function new() {
		#if lime_box3d
		this = box3d_b3SimplexCache_new();
		#else
		this = null;
		#end
	}
	private inline function get_metric():Float {
		#if lime_box3d
		return box3d_b3SimplexCache_metric_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_metric(v:Float):Float {
		#if lime_box3d
		return box3d_b3SimplexCache_metric_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_count():UInt {
		#if lime_box3d
		return box3d_b3SimplexCache_count_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_count(v:UInt):UInt {
		#if lime_box3d
		return box3d_b3SimplexCache_count_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3SimplexCache_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SimplexCache_new", "o", false));
	private static var box3d_b3SimplexCache_metric_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SimplexCache_metric_get", "of", false));
	private static var box3d_b3SimplexCache_metric_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SimplexCache_metric_set", "off", false));
	private static var box3d_b3SimplexCache_count_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3SimplexCache_count_get", "oi", false));
	private static var box3d_b3SimplexCache_count_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3SimplexCache_count_set", "oii", false));
	#end
}

abstract B3ShapeCastPairInput(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var proxyA(get, set):B3ShapeProxy;
	public var proxyB(get, set):B3ShapeProxy;
	public var transform(get, set):B3Transform;
	public var translationB(get, set):B3Vec3;
	public var maxFraction(get, set):Float;
	public var canEncroach(get, set):Bool;
	public function new() {
		#if lime_box3d
		this = box3d_b3ShapeCastPairInput_new();
		#else
		this = null;
		#end
	}
	private inline function get_proxyA():B3ShapeProxy {
		#if lime_box3d
		return box3d_b3ShapeCastPairInput_proxyA_get(this);
		#else
		return null;
		#end
	}
	private inline function set_proxyA(v:B3ShapeProxy):B3ShapeProxy {
		#if lime_box3d
		return box3d_b3ShapeCastPairInput_proxyA_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_proxyB():B3ShapeProxy {
		#if lime_box3d
		return box3d_b3ShapeCastPairInput_proxyB_get(this);
		#else
		return null;
		#end
	}
	private inline function set_proxyB(v:B3ShapeProxy):B3ShapeProxy {
		#if lime_box3d
		return box3d_b3ShapeCastPairInput_proxyB_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_transform():B3Transform {
		#if lime_box3d
		return box3d_b3ShapeCastPairInput_transform_get(this);
		#else
		return null;
		#end
	}
	private inline function set_transform(v:B3Transform):B3Transform {
		#if lime_box3d
		return box3d_b3ShapeCastPairInput_transform_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_translationB():B3Vec3 {
		#if lime_box3d
		return box3d_b3ShapeCastPairInput_translationB_get(this);
		#else
		return null;
		#end
	}
	private inline function set_translationB(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3ShapeCastPairInput_translationB_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_maxFraction():Float {
		#if lime_box3d
		return box3d_b3ShapeCastPairInput_maxFraction_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_maxFraction(v:Float):Float {
		#if lime_box3d
		return box3d_b3ShapeCastPairInput_maxFraction_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_canEncroach():Bool {
		#if lime_box3d
		return box3d_b3ShapeCastPairInput_canEncroach_get(this);
		#else
		return false;
		#end
	}
	private inline function set_canEncroach(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3ShapeCastPairInput_canEncroach_set(this, v);
		#else
		return false;
		#end
	}
	#if lime_box3d
	private static var box3d_b3ShapeCastPairInput_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeCastPairInput_new", "o", false));
	private static var box3d_b3ShapeCastPairInput_proxyA_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeCastPairInput_proxyA_get", "oo", false));
	private static var box3d_b3ShapeCastPairInput_proxyA_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeCastPairInput_proxyA_set", "ooo", false));
	private static var box3d_b3ShapeCastPairInput_proxyB_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeCastPairInput_proxyB_get", "oo", false));
	private static var box3d_b3ShapeCastPairInput_proxyB_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeCastPairInput_proxyB_set", "ooo", false));
	private static var box3d_b3ShapeCastPairInput_transform_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeCastPairInput_transform_get", "oo", false));
	private static var box3d_b3ShapeCastPairInput_transform_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeCastPairInput_transform_set", "ooo", false));
	private static var box3d_b3ShapeCastPairInput_translationB_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeCastPairInput_translationB_get", "oo", false));
	private static var box3d_b3ShapeCastPairInput_translationB_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeCastPairInput_translationB_set", "ooo", false));
	private static var box3d_b3ShapeCastPairInput_maxFraction_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeCastPairInput_maxFraction_get", "of", false));
	private static var box3d_b3ShapeCastPairInput_maxFraction_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeCastPairInput_maxFraction_set", "off", false));
	private static var box3d_b3ShapeCastPairInput_canEncroach_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeCastPairInput_canEncroach_get", "ob", false));
	private static var box3d_b3ShapeCastPairInput_canEncroach_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeCastPairInput_canEncroach_set", "obb", false));
	#end
}

abstract B3DistanceInput(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var proxyA(get, set):B3ShapeProxy;
	public var proxyB(get, set):B3ShapeProxy;
	public var transform(get, set):B3Transform;
	public var useRadii(get, set):Bool;
	public function new() {
		#if lime_box3d
		this = box3d_b3DistanceInput_new();
		#else
		this = null;
		#end
	}
	private inline function get_proxyA():B3ShapeProxy {
		#if lime_box3d
		return box3d_b3DistanceInput_proxyA_get(this);
		#else
		return null;
		#end
	}
	private inline function set_proxyA(v:B3ShapeProxy):B3ShapeProxy {
		#if lime_box3d
		return box3d_b3DistanceInput_proxyA_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_proxyB():B3ShapeProxy {
		#if lime_box3d
		return box3d_b3DistanceInput_proxyB_get(this);
		#else
		return null;
		#end
	}
	private inline function set_proxyB(v:B3ShapeProxy):B3ShapeProxy {
		#if lime_box3d
		return box3d_b3DistanceInput_proxyB_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_transform():B3Transform {
		#if lime_box3d
		return box3d_b3DistanceInput_transform_get(this);
		#else
		return null;
		#end
	}
	private inline function set_transform(v:B3Transform):B3Transform {
		#if lime_box3d
		return box3d_b3DistanceInput_transform_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_useRadii():Bool {
		#if lime_box3d
		return box3d_b3DistanceInput_useRadii_get(this);
		#else
		return false;
		#end
	}
	private inline function set_useRadii(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3DistanceInput_useRadii_set(this, v);
		#else
		return false;
		#end
	}
	#if lime_box3d
	private static var box3d_b3DistanceInput_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceInput_new", "o", false));
	private static var box3d_b3DistanceInput_proxyA_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceInput_proxyA_get", "oo", false));
	private static var box3d_b3DistanceInput_proxyA_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceInput_proxyA_set", "ooo", false));
	private static var box3d_b3DistanceInput_proxyB_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceInput_proxyB_get", "oo", false));
	private static var box3d_b3DistanceInput_proxyB_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceInput_proxyB_set", "ooo", false));
	private static var box3d_b3DistanceInput_transform_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceInput_transform_get", "oo", false));
	private static var box3d_b3DistanceInput_transform_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceInput_transform_set", "ooo", false));
	private static var box3d_b3DistanceInput_useRadii_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceInput_useRadii_get", "ob", false));
	private static var box3d_b3DistanceInput_useRadii_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceInput_useRadii_set", "obb", false));
	#end
}

abstract B3DistanceOutput(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var pointA(get, set):B3Vec3;
	public var pointB(get, set):B3Vec3;
	public var normal(get, set):B3Vec3;
	public var distance(get, set):Float;
	public var iterations(get, set):Int;
	public var simplexCount(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3DistanceOutput_new();
		#else
		this = null;
		#end
	}
	private inline function get_pointA():B3Vec3 {
		#if lime_box3d
		return box3d_b3DistanceOutput_pointA_get(this);
		#else
		return null;
		#end
	}
	private inline function set_pointA(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3DistanceOutput_pointA_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_pointB():B3Vec3 {
		#if lime_box3d
		return box3d_b3DistanceOutput_pointB_get(this);
		#else
		return null;
		#end
	}
	private inline function set_pointB(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3DistanceOutput_pointB_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_normal():B3Vec3 {
		#if lime_box3d
		return box3d_b3DistanceOutput_normal_get(this);
		#else
		return null;
		#end
	}
	private inline function set_normal(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3DistanceOutput_normal_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_distance():Float {
		#if lime_box3d
		return box3d_b3DistanceOutput_distance_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_distance(v:Float):Float {
		#if lime_box3d
		return box3d_b3DistanceOutput_distance_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_iterations():Int {
		#if lime_box3d
		return box3d_b3DistanceOutput_iterations_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_iterations(v:Int):Int {
		#if lime_box3d
		return box3d_b3DistanceOutput_iterations_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_simplexCount():Int {
		#if lime_box3d
		return box3d_b3DistanceOutput_simplexCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_simplexCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3DistanceOutput_simplexCount_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3DistanceOutput_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceOutput_new", "o", false));
	private static var box3d_b3DistanceOutput_pointA_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceOutput_pointA_get", "oo", false));
	private static var box3d_b3DistanceOutput_pointA_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceOutput_pointA_set", "ooo", false));
	private static var box3d_b3DistanceOutput_pointB_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceOutput_pointB_get", "oo", false));
	private static var box3d_b3DistanceOutput_pointB_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceOutput_pointB_set", "ooo", false));
	private static var box3d_b3DistanceOutput_normal_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceOutput_normal_get", "oo", false));
	private static var box3d_b3DistanceOutput_normal_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceOutput_normal_set", "ooo", false));
	private static var box3d_b3DistanceOutput_distance_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceOutput_distance_get", "of", false));
	private static var box3d_b3DistanceOutput_distance_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceOutput_distance_set", "off", false));
	private static var box3d_b3DistanceOutput_iterations_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceOutput_iterations_get", "oi", false));
	private static var box3d_b3DistanceOutput_iterations_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceOutput_iterations_set", "oii", false));
	private static var box3d_b3DistanceOutput_simplexCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceOutput_simplexCount_get", "oi", false));
	private static var box3d_b3DistanceOutput_simplexCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3DistanceOutput_simplexCount_set", "oii", false));
	#end
}

abstract B3SimplexVertex(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var wA(get, set):B3Vec3;
	public var wB(get, set):B3Vec3;
	public var w(get, set):B3Vec3;
	public var a(get, set):Float;
	public var indexA(get, set):Int;
	public var indexB(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3SimplexVertex_new();
		#else
		this = null;
		#end
	}
	private inline function get_wA():B3Vec3 {
		#if lime_box3d
		return box3d_b3SimplexVertex_wA_get(this);
		#else
		return null;
		#end
	}
	private inline function set_wA(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3SimplexVertex_wA_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_wB():B3Vec3 {
		#if lime_box3d
		return box3d_b3SimplexVertex_wB_get(this);
		#else
		return null;
		#end
	}
	private inline function set_wB(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3SimplexVertex_wB_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_w():B3Vec3 {
		#if lime_box3d
		return box3d_b3SimplexVertex_w_get(this);
		#else
		return null;
		#end
	}
	private inline function set_w(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3SimplexVertex_w_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_a():Float {
		#if lime_box3d
		return box3d_b3SimplexVertex_a_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_a(v:Float):Float {
		#if lime_box3d
		return box3d_b3SimplexVertex_a_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_indexA():Int {
		#if lime_box3d
		return box3d_b3SimplexVertex_indexA_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_indexA(v:Int):Int {
		#if lime_box3d
		return box3d_b3SimplexVertex_indexA_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_indexB():Int {
		#if lime_box3d
		return box3d_b3SimplexVertex_indexB_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_indexB(v:Int):Int {
		#if lime_box3d
		return box3d_b3SimplexVertex_indexB_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3SimplexVertex_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SimplexVertex_new", "o", false));
	private static var box3d_b3SimplexVertex_wA_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SimplexVertex_wA_get", "oo", false));
	private static var box3d_b3SimplexVertex_wA_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SimplexVertex_wA_set", "ooo", false));
	private static var box3d_b3SimplexVertex_wB_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SimplexVertex_wB_get", "oo", false));
	private static var box3d_b3SimplexVertex_wB_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SimplexVertex_wB_set", "ooo", false));
	private static var box3d_b3SimplexVertex_w_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SimplexVertex_w_get", "oo", false));
	private static var box3d_b3SimplexVertex_w_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SimplexVertex_w_set", "ooo", false));
	private static var box3d_b3SimplexVertex_a_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SimplexVertex_a_get", "of", false));
	private static var box3d_b3SimplexVertex_a_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SimplexVertex_a_set", "off", false));
	private static var box3d_b3SimplexVertex_indexA_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3SimplexVertex_indexA_get", "oi", false));
	private static var box3d_b3SimplexVertex_indexA_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3SimplexVertex_indexA_set", "oii", false));
	private static var box3d_b3SimplexVertex_indexB_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3SimplexVertex_indexB_get", "oi", false));
	private static var box3d_b3SimplexVertex_indexB_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3SimplexVertex_indexB_set", "oii", false));
	#end
}

abstract B3Simplex(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var count(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3Simplex_new();
		#else
		this = null;
		#end
	}
	private inline function get_count():Int {
		#if lime_box3d
		return box3d_b3Simplex_count_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_count(v:Int):Int {
		#if lime_box3d
		return box3d_b3Simplex_count_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3Simplex_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Simplex_new", "o", false));
	private static var box3d_b3Simplex_count_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Simplex_count_get", "oi", false));
	private static var box3d_b3Simplex_count_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Simplex_count_set", "oii", false));
	#end
}

abstract B3Sweep(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var localCenter(get, set):B3Vec3;
	public var c1(get, set):B3Vec3;
	public var c2(get, set):B3Vec3;
	public var q1(get, set):B3Quat;
	public var q2(get, set):B3Quat;
	public function new() {
		#if lime_box3d
		this = box3d_b3Sweep_new();
		#else
		this = null;
		#end
	}
	private inline function get_localCenter():B3Vec3 {
		#if lime_box3d
		return box3d_b3Sweep_localCenter_get(this);
		#else
		return null;
		#end
	}
	private inline function set_localCenter(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3Sweep_localCenter_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_c1():B3Vec3 {
		#if lime_box3d
		return box3d_b3Sweep_c1_get(this);
		#else
		return null;
		#end
	}
	private inline function set_c1(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3Sweep_c1_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_c2():B3Vec3 {
		#if lime_box3d
		return box3d_b3Sweep_c2_get(this);
		#else
		return null;
		#end
	}
	private inline function set_c2(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3Sweep_c2_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_q1():B3Quat {
		#if lime_box3d
		return box3d_b3Sweep_q1_get(this);
		#else
		return null;
		#end
	}
	private inline function set_q1(v:B3Quat):B3Quat {
		#if lime_box3d
		return box3d_b3Sweep_q1_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_q2():B3Quat {
		#if lime_box3d
		return box3d_b3Sweep_q2_get(this);
		#else
		return null;
		#end
	}
	private inline function set_q2(v:B3Quat):B3Quat {
		#if lime_box3d
		return box3d_b3Sweep_q2_set(this, v);
		#else
		return null;
		#end
	}
	#if lime_box3d
	private static var box3d_b3Sweep_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Sweep_new", "o", false));
	private static var box3d_b3Sweep_localCenter_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Sweep_localCenter_get", "oo", false));
	private static var box3d_b3Sweep_localCenter_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Sweep_localCenter_set", "ooo", false));
	private static var box3d_b3Sweep_c1_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Sweep_c1_get", "oo", false));
	private static var box3d_b3Sweep_c1_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Sweep_c1_set", "ooo", false));
	private static var box3d_b3Sweep_c2_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Sweep_c2_get", "oo", false));
	private static var box3d_b3Sweep_c2_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Sweep_c2_set", "ooo", false));
	private static var box3d_b3Sweep_q1_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Sweep_q1_get", "oo", false));
	private static var box3d_b3Sweep_q1_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Sweep_q1_set", "ooo", false));
	private static var box3d_b3Sweep_q2_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Sweep_q2_get", "oo", false));
	private static var box3d_b3Sweep_q2_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Sweep_q2_set", "ooo", false));
	#end
}

abstract B3TOIInput(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var proxyA(get, set):B3ShapeProxy;
	public var proxyB(get, set):B3ShapeProxy;
	public var sweepA(get, set):B3Sweep;
	public var sweepB(get, set):B3Sweep;
	public var maxFraction(get, set):Float;
	public function new() {
		#if lime_box3d
		this = box3d_b3TOIInput_new();
		#else
		this = null;
		#end
	}
	private inline function get_proxyA():B3ShapeProxy {
		#if lime_box3d
		return box3d_b3TOIInput_proxyA_get(this);
		#else
		return null;
		#end
	}
	private inline function set_proxyA(v:B3ShapeProxy):B3ShapeProxy {
		#if lime_box3d
		return box3d_b3TOIInput_proxyA_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_proxyB():B3ShapeProxy {
		#if lime_box3d
		return box3d_b3TOIInput_proxyB_get(this);
		#else
		return null;
		#end
	}
	private inline function set_proxyB(v:B3ShapeProxy):B3ShapeProxy {
		#if lime_box3d
		return box3d_b3TOIInput_proxyB_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_sweepA():B3Sweep {
		#if lime_box3d
		return box3d_b3TOIInput_sweepA_get(this);
		#else
		return null;
		#end
	}
	private inline function set_sweepA(v:B3Sweep):B3Sweep {
		#if lime_box3d
		return box3d_b3TOIInput_sweepA_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_sweepB():B3Sweep {
		#if lime_box3d
		return box3d_b3TOIInput_sweepB_get(this);
		#else
		return null;
		#end
	}
	private inline function set_sweepB(v:B3Sweep):B3Sweep {
		#if lime_box3d
		return box3d_b3TOIInput_sweepB_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_maxFraction():Float {
		#if lime_box3d
		return box3d_b3TOIInput_maxFraction_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_maxFraction(v:Float):Float {
		#if lime_box3d
		return box3d_b3TOIInput_maxFraction_set(this, v);
		#else
		return 0.0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3TOIInput_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3TOIInput_new", "o", false));
	private static var box3d_b3TOIInput_proxyA_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3TOIInput_proxyA_get", "oo", false));
	private static var box3d_b3TOIInput_proxyA_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3TOIInput_proxyA_set", "ooo", false));
	private static var box3d_b3TOIInput_proxyB_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3TOIInput_proxyB_get", "oo", false));
	private static var box3d_b3TOIInput_proxyB_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3TOIInput_proxyB_set", "ooo", false));
	private static var box3d_b3TOIInput_sweepA_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3TOIInput_sweepA_get", "oo", false));
	private static var box3d_b3TOIInput_sweepA_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3TOIInput_sweepA_set", "ooo", false));
	private static var box3d_b3TOIInput_sweepB_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3TOIInput_sweepB_get", "oo", false));
	private static var box3d_b3TOIInput_sweepB_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3TOIInput_sweepB_set", "ooo", false));
	private static var box3d_b3TOIInput_maxFraction_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3TOIInput_maxFraction_get", "of", false));
	private static var box3d_b3TOIInput_maxFraction_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3TOIInput_maxFraction_set", "off", false));
	#end
}

abstract B3TOIOutput(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var state(get, set):B3TOIState;
	public var point(get, set):B3Vec3;
	public var normal(get, set):B3Vec3;
	public var fraction(get, set):Float;
	public var distance(get, set):Float;
	public var distanceIterations(get, set):Int;
	public var pushBackIterations(get, set):Int;
	public var rootIterations(get, set):Int;
	public var usedFallback(get, set):Bool;
	public function new() {
		#if lime_box3d
		this = box3d_b3TOIOutput_new();
		#else
		this = null;
		#end
	}
	private inline function get_state():B3TOIState {
		#if lime_box3d
		return box3d_b3TOIOutput_state_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_state(v:B3TOIState):B3TOIState {
		#if lime_box3d
		return box3d_b3TOIOutput_state_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_point():B3Vec3 {
		#if lime_box3d
		return box3d_b3TOIOutput_point_get(this);
		#else
		return null;
		#end
	}
	private inline function set_point(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3TOIOutput_point_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_normal():B3Vec3 {
		#if lime_box3d
		return box3d_b3TOIOutput_normal_get(this);
		#else
		return null;
		#end
	}
	private inline function set_normal(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3TOIOutput_normal_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_fraction():Float {
		#if lime_box3d
		return box3d_b3TOIOutput_fraction_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_fraction(v:Float):Float {
		#if lime_box3d
		return box3d_b3TOIOutput_fraction_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_distance():Float {
		#if lime_box3d
		return box3d_b3TOIOutput_distance_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_distance(v:Float):Float {
		#if lime_box3d
		return box3d_b3TOIOutput_distance_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_distanceIterations():Int {
		#if lime_box3d
		return box3d_b3TOIOutput_distanceIterations_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_distanceIterations(v:Int):Int {
		#if lime_box3d
		return box3d_b3TOIOutput_distanceIterations_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_pushBackIterations():Int {
		#if lime_box3d
		return box3d_b3TOIOutput_pushBackIterations_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_pushBackIterations(v:Int):Int {
		#if lime_box3d
		return box3d_b3TOIOutput_pushBackIterations_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_rootIterations():Int {
		#if lime_box3d
		return box3d_b3TOIOutput_rootIterations_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_rootIterations(v:Int):Int {
		#if lime_box3d
		return box3d_b3TOIOutput_rootIterations_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_usedFallback():Bool {
		#if lime_box3d
		return box3d_b3TOIOutput_usedFallback_get(this);
		#else
		return false;
		#end
	}
	private inline function set_usedFallback(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3TOIOutput_usedFallback_set(this, v);
		#else
		return false;
		#end
	}
	#if lime_box3d
	private static var box3d_b3TOIOutput_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3TOIOutput_new", "o", false));
	private static var box3d_b3TOIOutput_state_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3TOIOutput_state_get", "oi", false));
	private static var box3d_b3TOIOutput_state_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3TOIOutput_state_set", "oii", false));
	private static var box3d_b3TOIOutput_point_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3TOIOutput_point_get", "oo", false));
	private static var box3d_b3TOIOutput_point_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3TOIOutput_point_set", "ooo", false));
	private static var box3d_b3TOIOutput_normal_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3TOIOutput_normal_get", "oo", false));
	private static var box3d_b3TOIOutput_normal_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3TOIOutput_normal_set", "ooo", false));
	private static var box3d_b3TOIOutput_fraction_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3TOIOutput_fraction_get", "of", false));
	private static var box3d_b3TOIOutput_fraction_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3TOIOutput_fraction_set", "off", false));
	private static var box3d_b3TOIOutput_distance_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3TOIOutput_distance_get", "of", false));
	private static var box3d_b3TOIOutput_distance_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3TOIOutput_distance_set", "off", false));
	private static var box3d_b3TOIOutput_distanceIterations_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3TOIOutput_distanceIterations_get", "oi", false));
	private static var box3d_b3TOIOutput_distanceIterations_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3TOIOutput_distanceIterations_set", "oii", false));
	private static var box3d_b3TOIOutput_pushBackIterations_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3TOIOutput_pushBackIterations_get", "oi", false));
	private static var box3d_b3TOIOutput_pushBackIterations_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3TOIOutput_pushBackIterations_set", "oii", false));
	private static var box3d_b3TOIOutput_rootIterations_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3TOIOutput_rootIterations_get", "oi", false));
	private static var box3d_b3TOIOutput_rootIterations_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3TOIOutput_rootIterations_set", "oii", false));
	private static var box3d_b3TOIOutput_usedFallback_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3TOIOutput_usedFallback_get", "ob", false));
	private static var box3d_b3TOIOutput_usedFallback_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3TOIOutput_usedFallback_set", "obb", false));
	#end
}

abstract B3TreeNodeChildren(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var child1(get, set):Int;
	public var child2(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3TreeNodeChildren_new();
		#else
		this = null;
		#end
	}
	private inline function get_child1():Int {
		#if lime_box3d
		return box3d_b3TreeNodeChildren_child1_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_child1(v:Int):Int {
		#if lime_box3d
		return box3d_b3TreeNodeChildren_child1_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_child2():Int {
		#if lime_box3d
		return box3d_b3TreeNodeChildren_child2_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_child2(v:Int):Int {
		#if lime_box3d
		return box3d_b3TreeNodeChildren_child2_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3TreeNodeChildren_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3TreeNodeChildren_new", "o", false));
	private static var box3d_b3TreeNodeChildren_child1_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3TreeNodeChildren_child1_get", "oi", false));
	private static var box3d_b3TreeNodeChildren_child1_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3TreeNodeChildren_child1_set", "oii", false));
	private static var box3d_b3TreeNodeChildren_child2_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3TreeNodeChildren_child2_get", "oi", false));
	private static var box3d_b3TreeNodeChildren_child2_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3TreeNodeChildren_child2_set", "oii", false));
	#end
}

abstract B3TreeNode(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var aabb(get, set):B3AABB;
	public var categoryBits(get, set):UInt64;
	public var children(get, set):B3TreeNodeChildren;
	public var userData(get, set):UInt64;
	public var parent(get, set):Int;
	public var next(get, set):Int;
	public var height(get, set):UInt;
	public var flags(get, set):UInt;
	public function new() {
		#if lime_box3d
		this = box3d_b3TreeNode_new();
		#else
		this = null;
		#end
	}
	private inline function get_aabb():B3AABB {
		#if lime_box3d
		return box3d_b3TreeNode_aabb_get(this);
		#else
		return null;
		#end
	}
	private inline function set_aabb(v:B3AABB):B3AABB {
		#if lime_box3d
		return box3d_b3TreeNode_aabb_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_categoryBits():UInt64 {
		#if lime_box3d
		return box3d_b3TreeNode_categoryBits_get(this);
		#else
		return null;
		#end
	}
	private inline function set_categoryBits(v:UInt64):UInt64 {
		#if lime_box3d
		return box3d_b3TreeNode_categoryBits_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_children():B3TreeNodeChildren {
		#if lime_box3d
		return box3d_b3TreeNode_children_get(this);
		#else
		return null;
		#end
	}
	private inline function set_children(v:B3TreeNodeChildren):B3TreeNodeChildren {
		#if lime_box3d
		return box3d_b3TreeNode_children_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_userData():UInt64 {
		#if lime_box3d
		return box3d_b3TreeNode_userData_get(this);
		#else
		return null;
		#end
	}
	private inline function set_userData(v:UInt64):UInt64 {
		#if lime_box3d
		return box3d_b3TreeNode_userData_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_parent():Int {
		#if lime_box3d
		return box3d_b3TreeNode_parent_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_parent(v:Int):Int {
		#if lime_box3d
		return box3d_b3TreeNode_parent_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_next():Int {
		#if lime_box3d
		return box3d_b3TreeNode_next_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_next(v:Int):Int {
		#if lime_box3d
		return box3d_b3TreeNode_next_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_height():UInt {
		#if lime_box3d
		return box3d_b3TreeNode_height_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_height(v:UInt):UInt {
		#if lime_box3d
		return box3d_b3TreeNode_height_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_flags():UInt {
		#if lime_box3d
		return box3d_b3TreeNode_flags_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_flags(v:UInt):UInt {
		#if lime_box3d
		return box3d_b3TreeNode_flags_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3TreeNode_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3TreeNode_new", "o", false));
	private static var box3d_b3TreeNode_aabb_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3TreeNode_aabb_get", "oo", false));
	private static var box3d_b3TreeNode_aabb_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3TreeNode_aabb_set", "ooo", false));
	private static var box3d_b3TreeNode_categoryBits_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3TreeNode_categoryBits_get", "oo", false));
	private static var box3d_b3TreeNode_categoryBits_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3TreeNode_categoryBits_set", "ooo", false));
	private static var box3d_b3TreeNode_children_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3TreeNode_children_get", "oo", false));
	private static var box3d_b3TreeNode_children_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3TreeNode_children_set", "ooo", false));
	private static var box3d_b3TreeNode_userData_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3TreeNode_userData_get", "oo", false));
	private static var box3d_b3TreeNode_userData_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3TreeNode_userData_set", "ooo", false));
	private static var box3d_b3TreeNode_parent_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3TreeNode_parent_get", "oi", false));
	private static var box3d_b3TreeNode_parent_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3TreeNode_parent_set", "oii", false));
	private static var box3d_b3TreeNode_next_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3TreeNode_next_get", "oi", false));
	private static var box3d_b3TreeNode_next_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3TreeNode_next_set", "oii", false));
	private static var box3d_b3TreeNode_height_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3TreeNode_height_get", "oi", false));
	private static var box3d_b3TreeNode_height_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3TreeNode_height_set", "oii", false));
	private static var box3d_b3TreeNode_flags_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3TreeNode_flags_get", "oi", false));
	private static var box3d_b3TreeNode_flags_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3TreeNode_flags_set", "oii", false));
	#end
}

abstract B3DynamicTree(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var version(get, set):UInt64;
	public var root(get, set):Int;
	public var nodeCount(get, set):Int;
	public var nodeCapacity(get, set):Int;
	public var proxyCount(get, set):Int;
	public var freeList(get, set):Int;
	public var rebuildCapacity(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3DynamicTree_new();
		#else
		this = null;
		#end
	}
	private inline function get_version():UInt64 {
		#if lime_box3d
		return box3d_b3DynamicTree_version_get(this);
		#else
		return null;
		#end
	}
	private inline function set_version(v:UInt64):UInt64 {
		#if lime_box3d
		return box3d_b3DynamicTree_version_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_root():Int {
		#if lime_box3d
		return box3d_b3DynamicTree_root_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_root(v:Int):Int {
		#if lime_box3d
		return box3d_b3DynamicTree_root_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_nodeCount():Int {
		#if lime_box3d
		return box3d_b3DynamicTree_nodeCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_nodeCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3DynamicTree_nodeCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_nodeCapacity():Int {
		#if lime_box3d
		return box3d_b3DynamicTree_nodeCapacity_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_nodeCapacity(v:Int):Int {
		#if lime_box3d
		return box3d_b3DynamicTree_nodeCapacity_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_proxyCount():Int {
		#if lime_box3d
		return box3d_b3DynamicTree_proxyCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_proxyCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3DynamicTree_proxyCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_freeList():Int {
		#if lime_box3d
		return box3d_b3DynamicTree_freeList_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_freeList(v:Int):Int {
		#if lime_box3d
		return box3d_b3DynamicTree_freeList_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_rebuildCapacity():Int {
		#if lime_box3d
		return box3d_b3DynamicTree_rebuildCapacity_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_rebuildCapacity(v:Int):Int {
		#if lime_box3d
		return box3d_b3DynamicTree_rebuildCapacity_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3DynamicTree_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_new", "o", false));
	private static var box3d_b3DynamicTree_version_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_version_get", "oo", false));
	private static var box3d_b3DynamicTree_version_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_version_set", "ooo", false));
	private static var box3d_b3DynamicTree_root_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_root_get", "oi", false));
	private static var box3d_b3DynamicTree_root_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_root_set", "oii", false));
	private static var box3d_b3DynamicTree_nodeCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_nodeCount_get", "oi", false));
	private static var box3d_b3DynamicTree_nodeCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_nodeCount_set", "oii", false));
	private static var box3d_b3DynamicTree_nodeCapacity_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_nodeCapacity_get", "oi", false));
	private static var box3d_b3DynamicTree_nodeCapacity_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_nodeCapacity_set", "oii", false));
	private static var box3d_b3DynamicTree_proxyCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_proxyCount_get", "oi", false));
	private static var box3d_b3DynamicTree_proxyCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_proxyCount_set", "oii", false));
	private static var box3d_b3DynamicTree_freeList_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_freeList_get", "oi", false));
	private static var box3d_b3DynamicTree_freeList_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_freeList_set", "oii", false));
	private static var box3d_b3DynamicTree_rebuildCapacity_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_rebuildCapacity_get", "oi", false));
	private static var box3d_b3DynamicTree_rebuildCapacity_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3DynamicTree_rebuildCapacity_set", "oii", false));
	#end
}

abstract B3TreeStats(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var nodeVisits(get, set):Int;
	public var leafVisits(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3TreeStats_new();
		#else
		this = null;
		#end
	}
	private inline function get_nodeVisits():Int {
		#if lime_box3d
		return box3d_b3TreeStats_nodeVisits_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_nodeVisits(v:Int):Int {
		#if lime_box3d
		return box3d_b3TreeStats_nodeVisits_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_leafVisits():Int {
		#if lime_box3d
		return box3d_b3TreeStats_leafVisits_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_leafVisits(v:Int):Int {
		#if lime_box3d
		return box3d_b3TreeStats_leafVisits_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3TreeStats_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3TreeStats_new", "o", false));
	private static var box3d_b3TreeStats_nodeVisits_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3TreeStats_nodeVisits_get", "oi", false));
	private static var box3d_b3TreeStats_nodeVisits_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3TreeStats_nodeVisits_set", "oii", false));
	private static var box3d_b3TreeStats_leafVisits_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3TreeStats_leafVisits_get", "oi", false));
	private static var box3d_b3TreeStats_leafVisits_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3TreeStats_leafVisits_set", "oii", false));
	#end
}

abstract B3PlaneResult(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var plane(get, set):B3Plane;
	public var point(get, set):B3Vec3;
	public var triangleIndex(get, set):Int;
	public var childIndex(get, set):Int;
	public var materialIndex(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3PlaneResult_new();
		#else
		this = null;
		#end
	}
	private inline function get_plane():B3Plane {
		#if lime_box3d
		return box3d_b3PlaneResult_plane_get(this);
		#else
		return null;
		#end
	}
	private inline function set_plane(v:B3Plane):B3Plane {
		#if lime_box3d
		return box3d_b3PlaneResult_plane_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_point():B3Vec3 {
		#if lime_box3d
		return box3d_b3PlaneResult_point_get(this);
		#else
		return null;
		#end
	}
	private inline function set_point(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3PlaneResult_point_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_triangleIndex():Int {
		#if lime_box3d
		return box3d_b3PlaneResult_triangleIndex_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_triangleIndex(v:Int):Int {
		#if lime_box3d
		return box3d_b3PlaneResult_triangleIndex_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_childIndex():Int {
		#if lime_box3d
		return box3d_b3PlaneResult_childIndex_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_childIndex(v:Int):Int {
		#if lime_box3d
		return box3d_b3PlaneResult_childIndex_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_materialIndex():Int {
		#if lime_box3d
		return box3d_b3PlaneResult_materialIndex_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_materialIndex(v:Int):Int {
		#if lime_box3d
		return box3d_b3PlaneResult_materialIndex_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3PlaneResult_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3PlaneResult_new", "o", false));
	private static var box3d_b3PlaneResult_plane_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3PlaneResult_plane_get", "oo", false));
	private static var box3d_b3PlaneResult_plane_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3PlaneResult_plane_set", "ooo", false));
	private static var box3d_b3PlaneResult_point_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3PlaneResult_point_get", "oo", false));
	private static var box3d_b3PlaneResult_point_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3PlaneResult_point_set", "ooo", false));
	private static var box3d_b3PlaneResult_triangleIndex_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3PlaneResult_triangleIndex_get", "oi", false));
	private static var box3d_b3PlaneResult_triangleIndex_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3PlaneResult_triangleIndex_set", "oii", false));
	private static var box3d_b3PlaneResult_childIndex_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3PlaneResult_childIndex_get", "oi", false));
	private static var box3d_b3PlaneResult_childIndex_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3PlaneResult_childIndex_set", "oii", false));
	private static var box3d_b3PlaneResult_materialIndex_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3PlaneResult_materialIndex_get", "oi", false));
	private static var box3d_b3PlaneResult_materialIndex_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3PlaneResult_materialIndex_set", "oii", false));
	#end
}

abstract B3CollisionPlane(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var plane(get, set):B3Plane;
	public var pushLimit(get, set):Float;
	public var push(get, set):Float;
	public var clipVelocity(get, set):Bool;
	public function new() {
		#if lime_box3d
		this = box3d_b3CollisionPlane_new();
		#else
		this = null;
		#end
	}
	private inline function get_plane():B3Plane {
		#if lime_box3d
		return box3d_b3CollisionPlane_plane_get(this);
		#else
		return null;
		#end
	}
	private inline function set_plane(v:B3Plane):B3Plane {
		#if lime_box3d
		return box3d_b3CollisionPlane_plane_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_pushLimit():Float {
		#if lime_box3d
		return box3d_b3CollisionPlane_pushLimit_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_pushLimit(v:Float):Float {
		#if lime_box3d
		return box3d_b3CollisionPlane_pushLimit_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_push():Float {
		#if lime_box3d
		return box3d_b3CollisionPlane_push_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_push(v:Float):Float {
		#if lime_box3d
		return box3d_b3CollisionPlane_push_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_clipVelocity():Bool {
		#if lime_box3d
		return box3d_b3CollisionPlane_clipVelocity_get(this);
		#else
		return false;
		#end
	}
	private inline function set_clipVelocity(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3CollisionPlane_clipVelocity_set(this, v);
		#else
		return false;
		#end
	}
	#if lime_box3d
	private static var box3d_b3CollisionPlane_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CollisionPlane_new", "o", false));
	private static var box3d_b3CollisionPlane_plane_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CollisionPlane_plane_get", "oo", false));
	private static var box3d_b3CollisionPlane_plane_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CollisionPlane_plane_set", "ooo", false));
	private static var box3d_b3CollisionPlane_pushLimit_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3CollisionPlane_pushLimit_get", "of", false));
	private static var box3d_b3CollisionPlane_pushLimit_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3CollisionPlane_pushLimit_set", "off", false));
	private static var box3d_b3CollisionPlane_push_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3CollisionPlane_push_get", "of", false));
	private static var box3d_b3CollisionPlane_push_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3CollisionPlane_push_set", "off", false));
	private static var box3d_b3CollisionPlane_clipVelocity_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3CollisionPlane_clipVelocity_get", "ob", false));
	private static var box3d_b3CollisionPlane_clipVelocity_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3CollisionPlane_clipVelocity_set", "obb", false));
	#end
}

abstract B3PlaneSolverResult(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var delta(get, set):B3Vec3;
	public var iterationCount(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3PlaneSolverResult_new();
		#else
		this = null;
		#end
	}
	private inline function get_delta():B3Vec3 {
		#if lime_box3d
		return box3d_b3PlaneSolverResult_delta_get(this);
		#else
		return null;
		#end
	}
	private inline function set_delta(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3PlaneSolverResult_delta_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_iterationCount():Int {
		#if lime_box3d
		return box3d_b3PlaneSolverResult_iterationCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_iterationCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3PlaneSolverResult_iterationCount_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3PlaneSolverResult_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3PlaneSolverResult_new", "o", false));
	private static var box3d_b3PlaneSolverResult_delta_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3PlaneSolverResult_delta_get", "oo", false));
	private static var box3d_b3PlaneSolverResult_delta_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3PlaneSolverResult_delta_set", "ooo", false));
	private static var box3d_b3PlaneSolverResult_iterationCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3PlaneSolverResult_iterationCount_get", "oi", false));
	private static var box3d_b3PlaneSolverResult_iterationCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3PlaneSolverResult_iterationCount_set", "oii", false));
	#end
}

abstract B3BodyPlaneResult(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var shapeId(get, set):B3ShapeId;
	public var result(get, set):B3PlaneResult;
	public function new() {
		#if lime_box3d
		this = box3d_b3BodyPlaneResult_new();
		#else
		this = null;
		#end
	}
	private inline function get_shapeId():B3ShapeId {
		#if lime_box3d
		return box3d_b3BodyPlaneResult_shapeId_get(this);
		#else
		return null;
		#end
	}
	private inline function set_shapeId(v:B3ShapeId):B3ShapeId {
		#if lime_box3d
		return box3d_b3BodyPlaneResult_shapeId_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_result():B3PlaneResult {
		#if lime_box3d
		return box3d_b3BodyPlaneResult_result_get(this);
		#else
		return null;
		#end
	}
	private inline function set_result(v:B3PlaneResult):B3PlaneResult {
		#if lime_box3d
		return box3d_b3BodyPlaneResult_result_set(this, v);
		#else
		return null;
		#end
	}
	#if lime_box3d
	private static var box3d_b3BodyPlaneResult_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyPlaneResult_new", "o", false));
	private static var box3d_b3BodyPlaneResult_shapeId_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyPlaneResult_shapeId_get", "oo", false));
	private static var box3d_b3BodyPlaneResult_shapeId_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyPlaneResult_shapeId_set", "ooo", false));
	private static var box3d_b3BodyPlaneResult_result_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyPlaneResult_result_get", "oo", false));
	private static var box3d_b3BodyPlaneResult_result_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyPlaneResult_result_set", "ooo", false));
	#end
}

abstract B3BodyTOIResult(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var point(get, set):B3Pos;
	public var normal(get, set):B3Vec3;
	public var fraction(get, set):Float;
	public var shapeId(get, set):B3ShapeId;
	public function new() {
		#if lime_box3d
		this = box3d_b3BodyTOIResult_new();
		#else
		this = null;
		#end
	}
	private inline function get_point():B3Pos {
		#if lime_box3d
		return box3d_b3BodyTOIResult_point_get(this);
		#else
		return null;
		#end
	}
	private inline function set_point(v:B3Pos):B3Pos {
		#if lime_box3d
		return box3d_b3BodyTOIResult_point_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_normal():B3Vec3 {
		#if lime_box3d
		return box3d_b3BodyTOIResult_normal_get(this);
		#else
		return null;
		#end
	}
	private inline function set_normal(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3BodyTOIResult_normal_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_fraction():Float {
		#if lime_box3d
		return box3d_b3BodyTOIResult_fraction_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_fraction(v:Float):Float {
		#if lime_box3d
		return box3d_b3BodyTOIResult_fraction_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_shapeId():B3ShapeId {
		#if lime_box3d
		return box3d_b3BodyTOIResult_shapeId_get(this);
		#else
		return null;
		#end
	}
	private inline function set_shapeId(v:B3ShapeId):B3ShapeId {
		#if lime_box3d
		return box3d_b3BodyTOIResult_shapeId_set(this, v);
		#else
		return null;
		#end
	}
	#if lime_box3d
	private static var box3d_b3BodyTOIResult_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyTOIResult_new", "o", false));
	private static var box3d_b3BodyTOIResult_point_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyTOIResult_point_get", "oo", false));
	private static var box3d_b3BodyTOIResult_point_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyTOIResult_point_set", "ooo", false));
	private static var box3d_b3BodyTOIResult_normal_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyTOIResult_normal_get", "oo", false));
	private static var box3d_b3BodyTOIResult_normal_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyTOIResult_normal_set", "ooo", false));
	private static var box3d_b3BodyTOIResult_fraction_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyTOIResult_fraction_get", "of", false));
	private static var box3d_b3BodyTOIResult_fraction_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyTOIResult_fraction_set", "off", false));
	private static var box3d_b3BodyTOIResult_shapeId_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyTOIResult_shapeId_get", "oo", false));
	private static var box3d_b3BodyTOIResult_shapeId_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyTOIResult_shapeId_set", "ooo", false));
	#end
}

abstract B3MassData(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var mass(get, set):Float;
	public var center(get, set):B3Vec3;
	public var inertia(get, set):B3Matrix3;
	public function new() {
		#if lime_box3d
		this = box3d_b3MassData_new();
		#else
		this = null;
		#end
	}
	private inline function get_mass():Float {
		#if lime_box3d
		return box3d_b3MassData_mass_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_mass(v:Float):Float {
		#if lime_box3d
		return box3d_b3MassData_mass_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_center():B3Vec3 {
		#if lime_box3d
		return box3d_b3MassData_center_get(this);
		#else
		return null;
		#end
	}
	private inline function set_center(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3MassData_center_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_inertia():B3Matrix3 {
		#if lime_box3d
		return box3d_b3MassData_inertia_get(this);
		#else
		return null;
		#end
	}
	private inline function set_inertia(v:B3Matrix3):B3Matrix3 {
		#if lime_box3d
		return box3d_b3MassData_inertia_set(this, v);
		#else
		return null;
		#end
	}
	#if lime_box3d
	private static var box3d_b3MassData_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MassData_new", "o", false));
	private static var box3d_b3MassData_mass_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3MassData_mass_get", "of", false));
	private static var box3d_b3MassData_mass_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3MassData_mass_set", "off", false));
	private static var box3d_b3MassData_center_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MassData_center_get", "oo", false));
	private static var box3d_b3MassData_center_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MassData_center_set", "ooo", false));
	private static var box3d_b3MassData_inertia_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MassData_inertia_get", "oo", false));
	private static var box3d_b3MassData_inertia_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MassData_inertia_set", "ooo", false));
	#end
}

abstract B3Sphere(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var center(get, set):B3Vec3;
	public var radius(get, set):Float;
	public function new() {
		#if lime_box3d
		this = box3d_b3Sphere_new();
		#else
		this = null;
		#end
	}
	private inline function get_center():B3Vec3 {
		#if lime_box3d
		return box3d_b3Sphere_center_get(this);
		#else
		return null;
		#end
	}
	private inline function set_center(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3Sphere_center_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_radius():Float {
		#if lime_box3d
		return box3d_b3Sphere_radius_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_radius(v:Float):Float {
		#if lime_box3d
		return box3d_b3Sphere_radius_set(this, v);
		#else
		return 0.0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3Sphere_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Sphere_new", "o", false));
	private static var box3d_b3Sphere_center_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Sphere_center_get", "oo", false));
	private static var box3d_b3Sphere_center_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Sphere_center_set", "ooo", false));
	private static var box3d_b3Sphere_radius_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Sphere_radius_get", "of", false));
	private static var box3d_b3Sphere_radius_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Sphere_radius_set", "off", false));
	#end
}

abstract B3Capsule(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var center1(get, set):B3Vec3;
	public var center2(get, set):B3Vec3;
	public var radius(get, set):Float;
	public function new() {
		#if lime_box3d
		this = box3d_b3Capsule_new();
		#else
		this = null;
		#end
	}
	private inline function get_center1():B3Vec3 {
		#if lime_box3d
		return box3d_b3Capsule_center1_get(this);
		#else
		return null;
		#end
	}
	private inline function set_center1(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3Capsule_center1_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_center2():B3Vec3 {
		#if lime_box3d
		return box3d_b3Capsule_center2_get(this);
		#else
		return null;
		#end
	}
	private inline function set_center2(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3Capsule_center2_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_radius():Float {
		#if lime_box3d
		return box3d_b3Capsule_radius_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_radius(v:Float):Float {
		#if lime_box3d
		return box3d_b3Capsule_radius_set(this, v);
		#else
		return 0.0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3Capsule_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Capsule_new", "o", false));
	private static var box3d_b3Capsule_center1_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Capsule_center1_get", "oo", false));
	private static var box3d_b3Capsule_center1_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Capsule_center1_set", "ooo", false));
	private static var box3d_b3Capsule_center2_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Capsule_center2_get", "oo", false));
	private static var box3d_b3Capsule_center2_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Capsule_center2_set", "ooo", false));
	private static var box3d_b3Capsule_radius_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Capsule_radius_get", "of", false));
	private static var box3d_b3Capsule_radius_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Capsule_radius_set", "off", false));
	#end
}

abstract B3HullVertex(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var edge(get, set):UInt;
	public function new() {
		#if lime_box3d
		this = box3d_b3HullVertex_new();
		#else
		this = null;
		#end
	}
	private inline function get_edge():UInt {
		#if lime_box3d
		return box3d_b3HullVertex_edge_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_edge(v:UInt):UInt {
		#if lime_box3d
		return box3d_b3HullVertex_edge_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3HullVertex_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3HullVertex_new", "o", false));
	private static var box3d_b3HullVertex_edge_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullVertex_edge_get", "oi", false));
	private static var box3d_b3HullVertex_edge_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullVertex_edge_set", "oii", false));
	#end
}

abstract B3HullHalfEdge(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var next(get, set):UInt;
	public var twin(get, set):UInt;
	public var origin(get, set):UInt;
	public var face(get, set):UInt;
	public function new() {
		#if lime_box3d
		this = box3d_b3HullHalfEdge_new();
		#else
		this = null;
		#end
	}
	private inline function get_next():UInt {
		#if lime_box3d
		return box3d_b3HullHalfEdge_next_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_next(v:UInt):UInt {
		#if lime_box3d
		return box3d_b3HullHalfEdge_next_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_twin():UInt {
		#if lime_box3d
		return box3d_b3HullHalfEdge_twin_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_twin(v:UInt):UInt {
		#if lime_box3d
		return box3d_b3HullHalfEdge_twin_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_origin():UInt {
		#if lime_box3d
		return box3d_b3HullHalfEdge_origin_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_origin(v:UInt):UInt {
		#if lime_box3d
		return box3d_b3HullHalfEdge_origin_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_face():UInt {
		#if lime_box3d
		return box3d_b3HullHalfEdge_face_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_face(v:UInt):UInt {
		#if lime_box3d
		return box3d_b3HullHalfEdge_face_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3HullHalfEdge_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3HullHalfEdge_new", "o", false));
	private static var box3d_b3HullHalfEdge_next_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullHalfEdge_next_get", "oi", false));
	private static var box3d_b3HullHalfEdge_next_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullHalfEdge_next_set", "oii", false));
	private static var box3d_b3HullHalfEdge_twin_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullHalfEdge_twin_get", "oi", false));
	private static var box3d_b3HullHalfEdge_twin_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullHalfEdge_twin_set", "oii", false));
	private static var box3d_b3HullHalfEdge_origin_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullHalfEdge_origin_get", "oi", false));
	private static var box3d_b3HullHalfEdge_origin_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullHalfEdge_origin_set", "oii", false));
	private static var box3d_b3HullHalfEdge_face_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullHalfEdge_face_get", "oi", false));
	private static var box3d_b3HullHalfEdge_face_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullHalfEdge_face_set", "oii", false));
	#end
}

abstract B3HullFace(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var edge(get, set):UInt;
	public function new() {
		#if lime_box3d
		this = box3d_b3HullFace_new();
		#else
		this = null;
		#end
	}
	private inline function get_edge():UInt {
		#if lime_box3d
		return box3d_b3HullFace_edge_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_edge(v:UInt):UInt {
		#if lime_box3d
		return box3d_b3HullFace_edge_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3HullFace_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3HullFace_new", "o", false));
	private static var box3d_b3HullFace_edge_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullFace_edge_get", "oi", false));
	private static var box3d_b3HullFace_edge_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullFace_edge_set", "oii", false));
	#end
}

abstract B3HullData(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var version(get, set):UInt64;
	public var hash(get, set):UInt64;
	public var aabb(get, set):B3AABB;
	public var surfaceArea(get, set):Float;
	public var volume(get, set):Float;
	public var innerRadius(get, set):Float;
	public var center(get, set):B3Vec3;
	public var centralInertia(get, set):B3Matrix3;
	public var vertexCount(get, set):Int;
	public var vertexOffset(get, set):Int;
	public var pointOffset(get, set):Int;
	public var edgeCount(get, set):Int;
	public var edgeOffset(get, set):Int;
	public var faceCount(get, set):Int;
	public var planeOffset(get, set):Int;
	public var faceOffset(get, set):Int;
	public var soaVertexOffset(get, set):Int;
	public var soaNormalOffset(get, set):Int;
	public var byteCount(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3HullData_new();
		#else
		this = null;
		#end
	}
	private inline function get_version():UInt64 {
		#if lime_box3d
		return box3d_b3HullData_version_get(this);
		#else
		return null;
		#end
	}
	private inline function set_version(v:UInt64):UInt64 {
		#if lime_box3d
		return box3d_b3HullData_version_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_hash():UInt64 {
		#if lime_box3d
		return box3d_b3HullData_hash_get(this);
		#else
		return null;
		#end
	}
	private inline function set_hash(v:UInt64):UInt64 {
		#if lime_box3d
		return box3d_b3HullData_hash_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_aabb():B3AABB {
		#if lime_box3d
		return box3d_b3HullData_aabb_get(this);
		#else
		return null;
		#end
	}
	private inline function set_aabb(v:B3AABB):B3AABB {
		#if lime_box3d
		return box3d_b3HullData_aabb_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_surfaceArea():Float {
		#if lime_box3d
		return box3d_b3HullData_surfaceArea_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_surfaceArea(v:Float):Float {
		#if lime_box3d
		return box3d_b3HullData_surfaceArea_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_volume():Float {
		#if lime_box3d
		return box3d_b3HullData_volume_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_volume(v:Float):Float {
		#if lime_box3d
		return box3d_b3HullData_volume_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_innerRadius():Float {
		#if lime_box3d
		return box3d_b3HullData_innerRadius_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_innerRadius(v:Float):Float {
		#if lime_box3d
		return box3d_b3HullData_innerRadius_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_center():B3Vec3 {
		#if lime_box3d
		return box3d_b3HullData_center_get(this);
		#else
		return null;
		#end
	}
	private inline function set_center(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3HullData_center_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_centralInertia():B3Matrix3 {
		#if lime_box3d
		return box3d_b3HullData_centralInertia_get(this);
		#else
		return null;
		#end
	}
	private inline function set_centralInertia(v:B3Matrix3):B3Matrix3 {
		#if lime_box3d
		return box3d_b3HullData_centralInertia_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_vertexCount():Int {
		#if lime_box3d
		return box3d_b3HullData_vertexCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_vertexCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3HullData_vertexCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_vertexOffset():Int {
		#if lime_box3d
		return box3d_b3HullData_vertexOffset_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_vertexOffset(v:Int):Int {
		#if lime_box3d
		return box3d_b3HullData_vertexOffset_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_pointOffset():Int {
		#if lime_box3d
		return box3d_b3HullData_pointOffset_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_pointOffset(v:Int):Int {
		#if lime_box3d
		return box3d_b3HullData_pointOffset_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_edgeCount():Int {
		#if lime_box3d
		return box3d_b3HullData_edgeCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_edgeCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3HullData_edgeCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_edgeOffset():Int {
		#if lime_box3d
		return box3d_b3HullData_edgeOffset_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_edgeOffset(v:Int):Int {
		#if lime_box3d
		return box3d_b3HullData_edgeOffset_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_faceCount():Int {
		#if lime_box3d
		return box3d_b3HullData_faceCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_faceCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3HullData_faceCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_planeOffset():Int {
		#if lime_box3d
		return box3d_b3HullData_planeOffset_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_planeOffset(v:Int):Int {
		#if lime_box3d
		return box3d_b3HullData_planeOffset_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_faceOffset():Int {
		#if lime_box3d
		return box3d_b3HullData_faceOffset_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_faceOffset(v:Int):Int {
		#if lime_box3d
		return box3d_b3HullData_faceOffset_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_soaVertexOffset():Int {
		#if lime_box3d
		return box3d_b3HullData_soaVertexOffset_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_soaVertexOffset(v:Int):Int {
		#if lime_box3d
		return box3d_b3HullData_soaVertexOffset_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_soaNormalOffset():Int {
		#if lime_box3d
		return box3d_b3HullData_soaNormalOffset_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_soaNormalOffset(v:Int):Int {
		#if lime_box3d
		return box3d_b3HullData_soaNormalOffset_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_byteCount():Int {
		#if lime_box3d
		return box3d_b3HullData_byteCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_byteCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3HullData_byteCount_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3HullData_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_new", "o", false));
	private static var box3d_b3HullData_version_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_version_get", "oo", false));
	private static var box3d_b3HullData_version_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_version_set", "ooo", false));
	private static var box3d_b3HullData_hash_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_hash_get", "oo", false));
	private static var box3d_b3HullData_hash_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_hash_set", "ooo", false));
	private static var box3d_b3HullData_aabb_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_aabb_get", "oo", false));
	private static var box3d_b3HullData_aabb_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_aabb_set", "ooo", false));
	private static var box3d_b3HullData_surfaceArea_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_surfaceArea_get", "of", false));
	private static var box3d_b3HullData_surfaceArea_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_surfaceArea_set", "off", false));
	private static var box3d_b3HullData_volume_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_volume_get", "of", false));
	private static var box3d_b3HullData_volume_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_volume_set", "off", false));
	private static var box3d_b3HullData_innerRadius_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_innerRadius_get", "of", false));
	private static var box3d_b3HullData_innerRadius_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_innerRadius_set", "off", false));
	private static var box3d_b3HullData_center_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_center_get", "oo", false));
	private static var box3d_b3HullData_center_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_center_set", "ooo", false));
	private static var box3d_b3HullData_centralInertia_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_centralInertia_get", "oo", false));
	private static var box3d_b3HullData_centralInertia_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_centralInertia_set", "ooo", false));
	private static var box3d_b3HullData_vertexCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_vertexCount_get", "oi", false));
	private static var box3d_b3HullData_vertexCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_vertexCount_set", "oii", false));
	private static var box3d_b3HullData_vertexOffset_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_vertexOffset_get", "oi", false));
	private static var box3d_b3HullData_vertexOffset_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_vertexOffset_set", "oii", false));
	private static var box3d_b3HullData_pointOffset_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_pointOffset_get", "oi", false));
	private static var box3d_b3HullData_pointOffset_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_pointOffset_set", "oii", false));
	private static var box3d_b3HullData_edgeCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_edgeCount_get", "oi", false));
	private static var box3d_b3HullData_edgeCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_edgeCount_set", "oii", false));
	private static var box3d_b3HullData_edgeOffset_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_edgeOffset_get", "oi", false));
	private static var box3d_b3HullData_edgeOffset_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_edgeOffset_set", "oii", false));
	private static var box3d_b3HullData_faceCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_faceCount_get", "oi", false));
	private static var box3d_b3HullData_faceCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_faceCount_set", "oii", false));
	private static var box3d_b3HullData_planeOffset_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_planeOffset_get", "oi", false));
	private static var box3d_b3HullData_planeOffset_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_planeOffset_set", "oii", false));
	private static var box3d_b3HullData_faceOffset_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_faceOffset_get", "oi", false));
	private static var box3d_b3HullData_faceOffset_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_faceOffset_set", "oii", false));
	private static var box3d_b3HullData_soaVertexOffset_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_soaVertexOffset_get", "oi", false));
	private static var box3d_b3HullData_soaVertexOffset_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_soaVertexOffset_set", "oii", false));
	private static var box3d_b3HullData_soaNormalOffset_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_soaNormalOffset_get", "oi", false));
	private static var box3d_b3HullData_soaNormalOffset_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_soaNormalOffset_set", "oii", false));
	private static var box3d_b3HullData_byteCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_byteCount_get", "oi", false));
	private static var box3d_b3HullData_byteCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HullData_byteCount_set", "oii", false));
	#end
}

abstract B3BoxHull(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var base(get, set):B3HullData;
	public function new() {
		#if lime_box3d
		this = box3d_b3BoxHull_new();
		#else
		this = null;
		#end
	}
	private inline function get_base():B3HullData {
		#if lime_box3d
		return box3d_b3BoxHull_base_get(this);
		#else
		return null;
		#end
	}
	private inline function set_base(v:B3HullData):B3HullData {
		#if lime_box3d
		return box3d_b3BoxHull_base_set(this, v);
		#else
		return null;
		#end
	}
	#if lime_box3d
	private static var box3d_b3BoxHull_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BoxHull_new", "o", false));
	private static var box3d_b3BoxHull_base_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BoxHull_base_get", "oo", false));
	private static var box3d_b3BoxHull_base_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BoxHull_base_set", "ooo", false));
	#end
}

abstract B3MeshDef(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var stride(get, set):Int64;
	public var weldTolerance(get, set):Float;
	public var vertexCount(get, set):Int;
	public var triangleCount(get, set):Int;
	public var weldVertices(get, set):Bool;
	public var useMedianSplit(get, set):Bool;
	public var identifyEdges(get, set):Bool;
	public var clockWiseWinding(get, set):Bool;
	public function new() {
		#if lime_box3d
		this = box3d_b3MeshDef_new();
		#else
		this = null;
		#end
	}
	private inline function get_stride():Int64 {
		#if lime_box3d
		return box3d_b3MeshDef_stride_get(this);
		#else
		return null;
		#end
	}
	private inline function set_stride(v:Int64):Int64 {
		#if lime_box3d
		return box3d_b3MeshDef_stride_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_weldTolerance():Float {
		#if lime_box3d
		return box3d_b3MeshDef_weldTolerance_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_weldTolerance(v:Float):Float {
		#if lime_box3d
		return box3d_b3MeshDef_weldTolerance_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_vertexCount():Int {
		#if lime_box3d
		return box3d_b3MeshDef_vertexCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_vertexCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3MeshDef_vertexCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_triangleCount():Int {
		#if lime_box3d
		return box3d_b3MeshDef_triangleCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_triangleCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3MeshDef_triangleCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_weldVertices():Bool {
		#if lime_box3d
		return box3d_b3MeshDef_weldVertices_get(this);
		#else
		return false;
		#end
	}
	private inline function set_weldVertices(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3MeshDef_weldVertices_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_useMedianSplit():Bool {
		#if lime_box3d
		return box3d_b3MeshDef_useMedianSplit_get(this);
		#else
		return false;
		#end
	}
	private inline function set_useMedianSplit(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3MeshDef_useMedianSplit_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_identifyEdges():Bool {
		#if lime_box3d
		return box3d_b3MeshDef_identifyEdges_get(this);
		#else
		return false;
		#end
	}
	private inline function set_identifyEdges(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3MeshDef_identifyEdges_set(this, v);
		#else
		return false;
		#end
	}
	private inline function get_clockWiseWinding():Bool {
		#if lime_box3d
		return box3d_b3MeshDef_clockWiseWinding_get(this);
		#else
		return false;
		#end
	}
	private inline function set_clockWiseWinding(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3MeshDef_clockWiseWinding_set(this, v);
		#else
		return false;
		#end
	}
	#if lime_box3d
	private static var box3d_b3MeshDef_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshDef_new", "o", false));
	private static var box3d_b3MeshDef_stride_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshDef_stride_get", "oo", false));
	private static var box3d_b3MeshDef_stride_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshDef_stride_set", "ooo", false));
	private static var box3d_b3MeshDef_weldTolerance_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshDef_weldTolerance_get", "of", false));
	private static var box3d_b3MeshDef_weldTolerance_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshDef_weldTolerance_set", "off", false));
	private static var box3d_b3MeshDef_vertexCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshDef_vertexCount_get", "oi", false));
	private static var box3d_b3MeshDef_vertexCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshDef_vertexCount_set", "oii", false));
	private static var box3d_b3MeshDef_triangleCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshDef_triangleCount_get", "oi", false));
	private static var box3d_b3MeshDef_triangleCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshDef_triangleCount_set", "oii", false));
	private static var box3d_b3MeshDef_weldVertices_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshDef_weldVertices_get", "ob", false));
	private static var box3d_b3MeshDef_weldVertices_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshDef_weldVertices_set", "obb", false));
	private static var box3d_b3MeshDef_useMedianSplit_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshDef_useMedianSplit_get", "ob", false));
	private static var box3d_b3MeshDef_useMedianSplit_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshDef_useMedianSplit_set", "obb", false));
	private static var box3d_b3MeshDef_identifyEdges_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshDef_identifyEdges_get", "ob", false));
	private static var box3d_b3MeshDef_identifyEdges_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshDef_identifyEdges_set", "obb", false));
	private static var box3d_b3MeshDef_clockWiseWinding_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshDef_clockWiseWinding_get", "ob", false));
	private static var box3d_b3MeshDef_clockWiseWinding_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshDef_clockWiseWinding_set", "obb", false));
	#end
}

abstract B3MeshTriangle(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var index1(get, set):Int;
	public var index2(get, set):Int;
	public var index3(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3MeshTriangle_new();
		#else
		this = null;
		#end
	}
	private inline function get_index1():Int {
		#if lime_box3d
		return box3d_b3MeshTriangle_index1_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_index1(v:Int):Int {
		#if lime_box3d
		return box3d_b3MeshTriangle_index1_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_index2():Int {
		#if lime_box3d
		return box3d_b3MeshTriangle_index2_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_index2(v:Int):Int {
		#if lime_box3d
		return box3d_b3MeshTriangle_index2_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_index3():Int {
		#if lime_box3d
		return box3d_b3MeshTriangle_index3_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_index3(v:Int):Int {
		#if lime_box3d
		return box3d_b3MeshTriangle_index3_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3MeshTriangle_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshTriangle_new", "o", false));
	private static var box3d_b3MeshTriangle_index1_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshTriangle_index1_get", "oi", false));
	private static var box3d_b3MeshTriangle_index1_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshTriangle_index1_set", "oii", false));
	private static var box3d_b3MeshTriangle_index2_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshTriangle_index2_get", "oi", false));
	private static var box3d_b3MeshTriangle_index2_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshTriangle_index2_set", "oii", false));
	private static var box3d_b3MeshTriangle_index3_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshTriangle_index3_get", "oi", false));
	private static var box3d_b3MeshTriangle_index3_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshTriangle_index3_set", "oii", false));
	#end
}

abstract B3MeshData(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var version(get, set):UInt64;
	public var hash(get, set):UInt64;
	public var byteCount(get, set):Int;
	public var bounds(get, set):B3AABB;
	public var surfaceArea(get, set):Float;
	public var treeHeight(get, set):Int;
	public var degenerateCount(get, set):Int;
	public var nodeOffset(get, set):Int;
	public var nodeCount(get, set):Int;
	public var vertexOffset(get, set):Int;
	public var vertexCount(get, set):Int;
	public var triangleOffset(get, set):Int;
	public var triangleCount(get, set):Int;
	public var materialOffset(get, set):Int;
	public var materialCount(get, set):Int;
	public var flagsOffset(get, set):Int;
	public var padding(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3MeshData_new();
		#else
		this = null;
		#end
	}
	private inline function get_version():UInt64 {
		#if lime_box3d
		return box3d_b3MeshData_version_get(this);
		#else
		return null;
		#end
	}
	private inline function set_version(v:UInt64):UInt64 {
		#if lime_box3d
		return box3d_b3MeshData_version_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_hash():UInt64 {
		#if lime_box3d
		return box3d_b3MeshData_hash_get(this);
		#else
		return null;
		#end
	}
	private inline function set_hash(v:UInt64):UInt64 {
		#if lime_box3d
		return box3d_b3MeshData_hash_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_byteCount():Int {
		#if lime_box3d
		return box3d_b3MeshData_byteCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_byteCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3MeshData_byteCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_bounds():B3AABB {
		#if lime_box3d
		return box3d_b3MeshData_bounds_get(this);
		#else
		return null;
		#end
	}
	private inline function set_bounds(v:B3AABB):B3AABB {
		#if lime_box3d
		return box3d_b3MeshData_bounds_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_surfaceArea():Float {
		#if lime_box3d
		return box3d_b3MeshData_surfaceArea_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_surfaceArea(v:Float):Float {
		#if lime_box3d
		return box3d_b3MeshData_surfaceArea_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_treeHeight():Int {
		#if lime_box3d
		return box3d_b3MeshData_treeHeight_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_treeHeight(v:Int):Int {
		#if lime_box3d
		return box3d_b3MeshData_treeHeight_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_degenerateCount():Int {
		#if lime_box3d
		return box3d_b3MeshData_degenerateCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_degenerateCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3MeshData_degenerateCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_nodeOffset():Int {
		#if lime_box3d
		return box3d_b3MeshData_nodeOffset_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_nodeOffset(v:Int):Int {
		#if lime_box3d
		return box3d_b3MeshData_nodeOffset_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_nodeCount():Int {
		#if lime_box3d
		return box3d_b3MeshData_nodeCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_nodeCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3MeshData_nodeCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_vertexOffset():Int {
		#if lime_box3d
		return box3d_b3MeshData_vertexOffset_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_vertexOffset(v:Int):Int {
		#if lime_box3d
		return box3d_b3MeshData_vertexOffset_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_vertexCount():Int {
		#if lime_box3d
		return box3d_b3MeshData_vertexCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_vertexCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3MeshData_vertexCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_triangleOffset():Int {
		#if lime_box3d
		return box3d_b3MeshData_triangleOffset_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_triangleOffset(v:Int):Int {
		#if lime_box3d
		return box3d_b3MeshData_triangleOffset_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_triangleCount():Int {
		#if lime_box3d
		return box3d_b3MeshData_triangleCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_triangleCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3MeshData_triangleCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_materialOffset():Int {
		#if lime_box3d
		return box3d_b3MeshData_materialOffset_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_materialOffset(v:Int):Int {
		#if lime_box3d
		return box3d_b3MeshData_materialOffset_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_materialCount():Int {
		#if lime_box3d
		return box3d_b3MeshData_materialCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_materialCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3MeshData_materialCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_flagsOffset():Int {
		#if lime_box3d
		return box3d_b3MeshData_flagsOffset_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_flagsOffset(v:Int):Int {
		#if lime_box3d
		return box3d_b3MeshData_flagsOffset_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_padding():Int {
		#if lime_box3d
		return box3d_b3MeshData_padding_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_padding(v:Int):Int {
		#if lime_box3d
		return box3d_b3MeshData_padding_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3MeshData_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_new", "o", false));
	private static var box3d_b3MeshData_version_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_version_get", "oo", false));
	private static var box3d_b3MeshData_version_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_version_set", "ooo", false));
	private static var box3d_b3MeshData_hash_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_hash_get", "oo", false));
	private static var box3d_b3MeshData_hash_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_hash_set", "ooo", false));
	private static var box3d_b3MeshData_byteCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_byteCount_get", "oi", false));
	private static var box3d_b3MeshData_byteCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_byteCount_set", "oii", false));
	private static var box3d_b3MeshData_bounds_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_bounds_get", "oo", false));
	private static var box3d_b3MeshData_bounds_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_bounds_set", "ooo", false));
	private static var box3d_b3MeshData_surfaceArea_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_surfaceArea_get", "of", false));
	private static var box3d_b3MeshData_surfaceArea_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_surfaceArea_set", "off", false));
	private static var box3d_b3MeshData_treeHeight_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_treeHeight_get", "oi", false));
	private static var box3d_b3MeshData_treeHeight_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_treeHeight_set", "oii", false));
	private static var box3d_b3MeshData_degenerateCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_degenerateCount_get", "oi", false));
	private static var box3d_b3MeshData_degenerateCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_degenerateCount_set", "oii", false));
	private static var box3d_b3MeshData_nodeOffset_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_nodeOffset_get", "oi", false));
	private static var box3d_b3MeshData_nodeOffset_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_nodeOffset_set", "oii", false));
	private static var box3d_b3MeshData_nodeCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_nodeCount_get", "oi", false));
	private static var box3d_b3MeshData_nodeCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_nodeCount_set", "oii", false));
	private static var box3d_b3MeshData_vertexOffset_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_vertexOffset_get", "oi", false));
	private static var box3d_b3MeshData_vertexOffset_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_vertexOffset_set", "oii", false));
	private static var box3d_b3MeshData_vertexCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_vertexCount_get", "oi", false));
	private static var box3d_b3MeshData_vertexCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_vertexCount_set", "oii", false));
	private static var box3d_b3MeshData_triangleOffset_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_triangleOffset_get", "oi", false));
	private static var box3d_b3MeshData_triangleOffset_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_triangleOffset_set", "oii", false));
	private static var box3d_b3MeshData_triangleCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_triangleCount_get", "oi", false));
	private static var box3d_b3MeshData_triangleCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_triangleCount_set", "oii", false));
	private static var box3d_b3MeshData_materialOffset_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_materialOffset_get", "oi", false));
	private static var box3d_b3MeshData_materialOffset_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_materialOffset_set", "oii", false));
	private static var box3d_b3MeshData_materialCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_materialCount_get", "oi", false));
	private static var box3d_b3MeshData_materialCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_materialCount_set", "oii", false));
	private static var box3d_b3MeshData_flagsOffset_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_flagsOffset_get", "oi", false));
	private static var box3d_b3MeshData_flagsOffset_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_flagsOffset_set", "oii", false));
	private static var box3d_b3MeshData_padding_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_padding_get", "oi", false));
	private static var box3d_b3MeshData_padding_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3MeshData_padding_set", "oii", false));
	#end
}

abstract B3Mesh(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var scale(get, set):B3Vec3;
	public function new() {
		#if lime_box3d
		this = box3d_b3Mesh_new();
		#else
		this = null;
		#end
	}
	private inline function get_scale():B3Vec3 {
		#if lime_box3d
		return box3d_b3Mesh_scale_get(this);
		#else
		return null;
		#end
	}
	private inline function set_scale(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3Mesh_scale_set(this, v);
		#else
		return null;
		#end
	}
	#if lime_box3d
	private static var box3d_b3Mesh_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Mesh_new", "o", false));
	private static var box3d_b3Mesh_scale_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Mesh_scale_get", "oo", false));
	private static var box3d_b3Mesh_scale_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Mesh_scale_set", "ooo", false));
	#end
}

abstract B3HeightFieldDef(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var scale(get, set):B3Vec3;
	public var countX(get, set):Int;
	public var countZ(get, set):Int;
	public var globalMinimumHeight(get, set):Float;
	public var globalMaximumHeight(get, set):Float;
	public var clockwiseWinding(get, set):Bool;
	public function new() {
		#if lime_box3d
		this = box3d_b3HeightFieldDef_new();
		#else
		this = null;
		#end
	}
	private inline function get_scale():B3Vec3 {
		#if lime_box3d
		return box3d_b3HeightFieldDef_scale_get(this);
		#else
		return null;
		#end
	}
	private inline function set_scale(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3HeightFieldDef_scale_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_countX():Int {
		#if lime_box3d
		return box3d_b3HeightFieldDef_countX_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_countX(v:Int):Int {
		#if lime_box3d
		return box3d_b3HeightFieldDef_countX_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_countZ():Int {
		#if lime_box3d
		return box3d_b3HeightFieldDef_countZ_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_countZ(v:Int):Int {
		#if lime_box3d
		return box3d_b3HeightFieldDef_countZ_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_globalMinimumHeight():Float {
		#if lime_box3d
		return box3d_b3HeightFieldDef_globalMinimumHeight_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_globalMinimumHeight(v:Float):Float {
		#if lime_box3d
		return box3d_b3HeightFieldDef_globalMinimumHeight_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_globalMaximumHeight():Float {
		#if lime_box3d
		return box3d_b3HeightFieldDef_globalMaximumHeight_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_globalMaximumHeight(v:Float):Float {
		#if lime_box3d
		return box3d_b3HeightFieldDef_globalMaximumHeight_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_clockwiseWinding():Bool {
		#if lime_box3d
		return box3d_b3HeightFieldDef_clockwiseWinding_get(this);
		#else
		return false;
		#end
	}
	private inline function set_clockwiseWinding(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3HeightFieldDef_clockwiseWinding_set(this, v);
		#else
		return false;
		#end
	}
	#if lime_box3d
	private static var box3d_b3HeightFieldDef_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldDef_new", "o", false));
	private static var box3d_b3HeightFieldDef_scale_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldDef_scale_get", "oo", false));
	private static var box3d_b3HeightFieldDef_scale_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldDef_scale_set", "ooo", false));
	private static var box3d_b3HeightFieldDef_countX_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldDef_countX_get", "oi", false));
	private static var box3d_b3HeightFieldDef_countX_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldDef_countX_set", "oii", false));
	private static var box3d_b3HeightFieldDef_countZ_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldDef_countZ_get", "oi", false));
	private static var box3d_b3HeightFieldDef_countZ_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldDef_countZ_set", "oii", false));
	private static var box3d_b3HeightFieldDef_globalMinimumHeight_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldDef_globalMinimumHeight_get", "of", false));
	private static var box3d_b3HeightFieldDef_globalMinimumHeight_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldDef_globalMinimumHeight_set", "off", false));
	private static var box3d_b3HeightFieldDef_globalMaximumHeight_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldDef_globalMaximumHeight_get", "of", false));
	private static var box3d_b3HeightFieldDef_globalMaximumHeight_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldDef_globalMaximumHeight_set", "off", false));
	private static var box3d_b3HeightFieldDef_clockwiseWinding_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldDef_clockwiseWinding_get", "ob", false));
	private static var box3d_b3HeightFieldDef_clockwiseWinding_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldDef_clockwiseWinding_set", "obb", false));
	#end
}

abstract B3HeightFieldData(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var version(get, set):UInt64;
	public var hash(get, set):UInt64;
	public var byteCount(get, set):Int;
	public var aabb(get, set):B3AABB;
	public var minHeight(get, set):Float;
	public var maxHeight(get, set):Float;
	public var heightScale(get, set):Float;
	public var scale(get, set):B3Vec3;
	public var columnCount(get, set):Int;
	public var rowCount(get, set):Int;
	public var heightsOffset(get, set):Int;
	public var materialOffset(get, set):Int;
	public var flagsOffset(get, set):Int;
	public var clockwise(get, set):UInt;
	public function new() {
		#if lime_box3d
		this = box3d_b3HeightFieldData_new();
		#else
		this = null;
		#end
	}
	private inline function get_version():UInt64 {
		#if lime_box3d
		return box3d_b3HeightFieldData_version_get(this);
		#else
		return null;
		#end
	}
	private inline function set_version(v:UInt64):UInt64 {
		#if lime_box3d
		return box3d_b3HeightFieldData_version_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_hash():UInt64 {
		#if lime_box3d
		return box3d_b3HeightFieldData_hash_get(this);
		#else
		return null;
		#end
	}
	private inline function set_hash(v:UInt64):UInt64 {
		#if lime_box3d
		return box3d_b3HeightFieldData_hash_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_byteCount():Int {
		#if lime_box3d
		return box3d_b3HeightFieldData_byteCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_byteCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3HeightFieldData_byteCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_aabb():B3AABB {
		#if lime_box3d
		return box3d_b3HeightFieldData_aabb_get(this);
		#else
		return null;
		#end
	}
	private inline function set_aabb(v:B3AABB):B3AABB {
		#if lime_box3d
		return box3d_b3HeightFieldData_aabb_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_minHeight():Float {
		#if lime_box3d
		return box3d_b3HeightFieldData_minHeight_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_minHeight(v:Float):Float {
		#if lime_box3d
		return box3d_b3HeightFieldData_minHeight_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_maxHeight():Float {
		#if lime_box3d
		return box3d_b3HeightFieldData_maxHeight_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_maxHeight(v:Float):Float {
		#if lime_box3d
		return box3d_b3HeightFieldData_maxHeight_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_heightScale():Float {
		#if lime_box3d
		return box3d_b3HeightFieldData_heightScale_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_heightScale(v:Float):Float {
		#if lime_box3d
		return box3d_b3HeightFieldData_heightScale_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_scale():B3Vec3 {
		#if lime_box3d
		return box3d_b3HeightFieldData_scale_get(this);
		#else
		return null;
		#end
	}
	private inline function set_scale(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3HeightFieldData_scale_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_columnCount():Int {
		#if lime_box3d
		return box3d_b3HeightFieldData_columnCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_columnCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3HeightFieldData_columnCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_rowCount():Int {
		#if lime_box3d
		return box3d_b3HeightFieldData_rowCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_rowCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3HeightFieldData_rowCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_heightsOffset():Int {
		#if lime_box3d
		return box3d_b3HeightFieldData_heightsOffset_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_heightsOffset(v:Int):Int {
		#if lime_box3d
		return box3d_b3HeightFieldData_heightsOffset_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_materialOffset():Int {
		#if lime_box3d
		return box3d_b3HeightFieldData_materialOffset_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_materialOffset(v:Int):Int {
		#if lime_box3d
		return box3d_b3HeightFieldData_materialOffset_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_flagsOffset():Int {
		#if lime_box3d
		return box3d_b3HeightFieldData_flagsOffset_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_flagsOffset(v:Int):Int {
		#if lime_box3d
		return box3d_b3HeightFieldData_flagsOffset_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_clockwise():UInt {
		#if lime_box3d
		return box3d_b3HeightFieldData_clockwise_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_clockwise(v:UInt):UInt {
		#if lime_box3d
		return box3d_b3HeightFieldData_clockwise_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3HeightFieldData_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldData_new", "o", false));
	private static var box3d_b3HeightFieldData_version_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldData_version_get", "oo", false));
	private static var box3d_b3HeightFieldData_version_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldData_version_set", "ooo", false));
	private static var box3d_b3HeightFieldData_hash_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldData_hash_get", "oo", false));
	private static var box3d_b3HeightFieldData_hash_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldData_hash_set", "ooo", false));
	private static var box3d_b3HeightFieldData_byteCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldData_byteCount_get", "oi", false));
	private static var box3d_b3HeightFieldData_byteCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldData_byteCount_set", "oii", false));
	private static var box3d_b3HeightFieldData_aabb_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldData_aabb_get", "oo", false));
	private static var box3d_b3HeightFieldData_aabb_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldData_aabb_set", "ooo", false));
	private static var box3d_b3HeightFieldData_minHeight_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldData_minHeight_get", "of", false));
	private static var box3d_b3HeightFieldData_minHeight_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldData_minHeight_set", "off", false));
	private static var box3d_b3HeightFieldData_maxHeight_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldData_maxHeight_get", "of", false));
	private static var box3d_b3HeightFieldData_maxHeight_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldData_maxHeight_set", "off", false));
	private static var box3d_b3HeightFieldData_heightScale_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldData_heightScale_get", "of", false));
	private static var box3d_b3HeightFieldData_heightScale_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldData_heightScale_set", "off", false));
	private static var box3d_b3HeightFieldData_scale_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldData_scale_get", "oo", false));
	private static var box3d_b3HeightFieldData_scale_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldData_scale_set", "ooo", false));
	private static var box3d_b3HeightFieldData_columnCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldData_columnCount_get", "oi", false));
	private static var box3d_b3HeightFieldData_columnCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldData_columnCount_set", "oii", false));
	private static var box3d_b3HeightFieldData_rowCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldData_rowCount_get", "oi", false));
	private static var box3d_b3HeightFieldData_rowCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldData_rowCount_set", "oii", false));
	private static var box3d_b3HeightFieldData_heightsOffset_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldData_heightsOffset_get", "oi", false));
	private static var box3d_b3HeightFieldData_heightsOffset_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldData_heightsOffset_set", "oii", false));
	private static var box3d_b3HeightFieldData_materialOffset_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldData_materialOffset_get", "oi", false));
	private static var box3d_b3HeightFieldData_materialOffset_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldData_materialOffset_set", "oii", false));
	private static var box3d_b3HeightFieldData_flagsOffset_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldData_flagsOffset_get", "oi", false));
	private static var box3d_b3HeightFieldData_flagsOffset_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldData_flagsOffset_set", "oii", false));
	private static var box3d_b3HeightFieldData_clockwise_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldData_clockwise_get", "oi", false));
	private static var box3d_b3HeightFieldData_clockwise_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3HeightFieldData_clockwise_set", "oii", false));
	#end
}

abstract B3CompoundCapsuleDef(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var capsule(get, set):B3Capsule;
	public var material(get, set):B3SurfaceMaterial;
	public function new() {
		#if lime_box3d
		this = box3d_b3CompoundCapsuleDef_new();
		#else
		this = null;
		#end
	}
	private inline function get_capsule():B3Capsule {
		#if lime_box3d
		return box3d_b3CompoundCapsuleDef_capsule_get(this);
		#else
		return null;
		#end
	}
	private inline function set_capsule(v:B3Capsule):B3Capsule {
		#if lime_box3d
		return box3d_b3CompoundCapsuleDef_capsule_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_material():B3SurfaceMaterial {
		#if lime_box3d
		return box3d_b3CompoundCapsuleDef_material_get(this);
		#else
		return null;
		#end
	}
	private inline function set_material(v:B3SurfaceMaterial):B3SurfaceMaterial {
		#if lime_box3d
		return box3d_b3CompoundCapsuleDef_material_set(this, v);
		#else
		return null;
		#end
	}
	#if lime_box3d
	private static var box3d_b3CompoundCapsuleDef_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundCapsuleDef_new", "o", false));
	private static var box3d_b3CompoundCapsuleDef_capsule_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundCapsuleDef_capsule_get", "oo", false));
	private static var box3d_b3CompoundCapsuleDef_capsule_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundCapsuleDef_capsule_set", "ooo", false));
	private static var box3d_b3CompoundCapsuleDef_material_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundCapsuleDef_material_get", "oo", false));
	private static var box3d_b3CompoundCapsuleDef_material_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundCapsuleDef_material_set", "ooo", false));
	#end
}

abstract B3CompoundHullDef(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var transform(get, set):B3Transform;
	public var material(get, set):B3SurfaceMaterial;
	public function new() {
		#if lime_box3d
		this = box3d_b3CompoundHullDef_new();
		#else
		this = null;
		#end
	}
	private inline function get_transform():B3Transform {
		#if lime_box3d
		return box3d_b3CompoundHullDef_transform_get(this);
		#else
		return null;
		#end
	}
	private inline function set_transform(v:B3Transform):B3Transform {
		#if lime_box3d
		return box3d_b3CompoundHullDef_transform_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_material():B3SurfaceMaterial {
		#if lime_box3d
		return box3d_b3CompoundHullDef_material_get(this);
		#else
		return null;
		#end
	}
	private inline function set_material(v:B3SurfaceMaterial):B3SurfaceMaterial {
		#if lime_box3d
		return box3d_b3CompoundHullDef_material_set(this, v);
		#else
		return null;
		#end
	}
	#if lime_box3d
	private static var box3d_b3CompoundHullDef_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundHullDef_new", "o", false));
	private static var box3d_b3CompoundHullDef_transform_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundHullDef_transform_get", "oo", false));
	private static var box3d_b3CompoundHullDef_transform_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundHullDef_transform_set", "ooo", false));
	private static var box3d_b3CompoundHullDef_material_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundHullDef_material_get", "oo", false));
	private static var box3d_b3CompoundHullDef_material_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundHullDef_material_set", "ooo", false));
	#end
}

abstract B3CompoundMeshDef(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var transform(get, set):B3Transform;
	public var scale(get, set):B3Vec3;
	public var materialCount(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3CompoundMeshDef_new();
		#else
		this = null;
		#end
	}
	private inline function get_transform():B3Transform {
		#if lime_box3d
		return box3d_b3CompoundMeshDef_transform_get(this);
		#else
		return null;
		#end
	}
	private inline function set_transform(v:B3Transform):B3Transform {
		#if lime_box3d
		return box3d_b3CompoundMeshDef_transform_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_scale():B3Vec3 {
		#if lime_box3d
		return box3d_b3CompoundMeshDef_scale_get(this);
		#else
		return null;
		#end
	}
	private inline function set_scale(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3CompoundMeshDef_scale_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_materialCount():Int {
		#if lime_box3d
		return box3d_b3CompoundMeshDef_materialCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_materialCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3CompoundMeshDef_materialCount_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3CompoundMeshDef_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundMeshDef_new", "o", false));
	private static var box3d_b3CompoundMeshDef_transform_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundMeshDef_transform_get", "oo", false));
	private static var box3d_b3CompoundMeshDef_transform_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundMeshDef_transform_set", "ooo", false));
	private static var box3d_b3CompoundMeshDef_scale_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundMeshDef_scale_get", "oo", false));
	private static var box3d_b3CompoundMeshDef_scale_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundMeshDef_scale_set", "ooo", false));
	private static var box3d_b3CompoundMeshDef_materialCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundMeshDef_materialCount_get", "oi", false));
	private static var box3d_b3CompoundMeshDef_materialCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundMeshDef_materialCount_set", "oii", false));
	#end
}

abstract B3CompoundSphereDef(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var sphere(get, set):B3Sphere;
	public var material(get, set):B3SurfaceMaterial;
	public function new() {
		#if lime_box3d
		this = box3d_b3CompoundSphereDef_new();
		#else
		this = null;
		#end
	}
	private inline function get_sphere():B3Sphere {
		#if lime_box3d
		return box3d_b3CompoundSphereDef_sphere_get(this);
		#else
		return null;
		#end
	}
	private inline function set_sphere(v:B3Sphere):B3Sphere {
		#if lime_box3d
		return box3d_b3CompoundSphereDef_sphere_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_material():B3SurfaceMaterial {
		#if lime_box3d
		return box3d_b3CompoundSphereDef_material_get(this);
		#else
		return null;
		#end
	}
	private inline function set_material(v:B3SurfaceMaterial):B3SurfaceMaterial {
		#if lime_box3d
		return box3d_b3CompoundSphereDef_material_set(this, v);
		#else
		return null;
		#end
	}
	#if lime_box3d
	private static var box3d_b3CompoundSphereDef_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundSphereDef_new", "o", false));
	private static var box3d_b3CompoundSphereDef_sphere_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundSphereDef_sphere_get", "oo", false));
	private static var box3d_b3CompoundSphereDef_sphere_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundSphereDef_sphere_set", "ooo", false));
	private static var box3d_b3CompoundSphereDef_material_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundSphereDef_material_get", "oo", false));
	private static var box3d_b3CompoundSphereDef_material_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundSphereDef_material_set", "ooo", false));
	#end
}

abstract B3CompoundDef(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var capsuleCount(get, set):Int;
	public var hullCount(get, set):Int;
	public var meshCount(get, set):Int;
	public var sphereCount(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3CompoundDef_new();
		#else
		this = null;
		#end
	}
	private inline function get_capsuleCount():Int {
		#if lime_box3d
		return box3d_b3CompoundDef_capsuleCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_capsuleCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3CompoundDef_capsuleCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_hullCount():Int {
		#if lime_box3d
		return box3d_b3CompoundDef_hullCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_hullCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3CompoundDef_hullCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_meshCount():Int {
		#if lime_box3d
		return box3d_b3CompoundDef_meshCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_meshCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3CompoundDef_meshCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_sphereCount():Int {
		#if lime_box3d
		return box3d_b3CompoundDef_sphereCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_sphereCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3CompoundDef_sphereCount_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3CompoundDef_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundDef_new", "o", false));
	private static var box3d_b3CompoundDef_capsuleCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundDef_capsuleCount_get", "oi", false));
	private static var box3d_b3CompoundDef_capsuleCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundDef_capsuleCount_set", "oii", false));
	private static var box3d_b3CompoundDef_hullCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundDef_hullCount_get", "oi", false));
	private static var box3d_b3CompoundDef_hullCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundDef_hullCount_set", "oii", false));
	private static var box3d_b3CompoundDef_meshCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundDef_meshCount_get", "oi", false));
	private static var box3d_b3CompoundDef_meshCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundDef_meshCount_set", "oii", false));
	private static var box3d_b3CompoundDef_sphereCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundDef_sphereCount_get", "oi", false));
	private static var box3d_b3CompoundDef_sphereCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundDef_sphereCount_set", "oii", false));
	#end
}

abstract B3CompoundData(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var version(get, set):UInt64;
	public var byteCount(get, set):Int;
	public var nodeOffset(get, set):Int;
	public var tree(get, set):B3DynamicTree;
	public var materialOffset(get, set):Int;
	public var materialCount(get, set):Int;
	public var capsuleOffset(get, set):Int;
	public var capsuleCount(get, set):Int;
	public var hullOffset(get, set):Int;
	public var hullCount(get, set):Int;
	public var sharedHullCount(get, set):Int;
	public var meshOffset(get, set):Int;
	public var meshCount(get, set):Int;
	public var sharedMeshCount(get, set):Int;
	public var sphereOffset(get, set):Int;
	public var sphereCount(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3CompoundData_new();
		#else
		this = null;
		#end
	}
	private inline function get_version():UInt64 {
		#if lime_box3d
		return box3d_b3CompoundData_version_get(this);
		#else
		return null;
		#end
	}
	private inline function set_version(v:UInt64):UInt64 {
		#if lime_box3d
		return box3d_b3CompoundData_version_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_byteCount():Int {
		#if lime_box3d
		return box3d_b3CompoundData_byteCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_byteCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3CompoundData_byteCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_nodeOffset():Int {
		#if lime_box3d
		return box3d_b3CompoundData_nodeOffset_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_nodeOffset(v:Int):Int {
		#if lime_box3d
		return box3d_b3CompoundData_nodeOffset_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_tree():B3DynamicTree {
		#if lime_box3d
		return box3d_b3CompoundData_tree_get(this);
		#else
		return null;
		#end
	}
	private inline function set_tree(v:B3DynamicTree):B3DynamicTree {
		#if lime_box3d
		return box3d_b3CompoundData_tree_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_materialOffset():Int {
		#if lime_box3d
		return box3d_b3CompoundData_materialOffset_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_materialOffset(v:Int):Int {
		#if lime_box3d
		return box3d_b3CompoundData_materialOffset_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_materialCount():Int {
		#if lime_box3d
		return box3d_b3CompoundData_materialCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_materialCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3CompoundData_materialCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_capsuleOffset():Int {
		#if lime_box3d
		return box3d_b3CompoundData_capsuleOffset_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_capsuleOffset(v:Int):Int {
		#if lime_box3d
		return box3d_b3CompoundData_capsuleOffset_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_capsuleCount():Int {
		#if lime_box3d
		return box3d_b3CompoundData_capsuleCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_capsuleCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3CompoundData_capsuleCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_hullOffset():Int {
		#if lime_box3d
		return box3d_b3CompoundData_hullOffset_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_hullOffset(v:Int):Int {
		#if lime_box3d
		return box3d_b3CompoundData_hullOffset_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_hullCount():Int {
		#if lime_box3d
		return box3d_b3CompoundData_hullCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_hullCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3CompoundData_hullCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_sharedHullCount():Int {
		#if lime_box3d
		return box3d_b3CompoundData_sharedHullCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_sharedHullCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3CompoundData_sharedHullCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_meshOffset():Int {
		#if lime_box3d
		return box3d_b3CompoundData_meshOffset_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_meshOffset(v:Int):Int {
		#if lime_box3d
		return box3d_b3CompoundData_meshOffset_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_meshCount():Int {
		#if lime_box3d
		return box3d_b3CompoundData_meshCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_meshCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3CompoundData_meshCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_sharedMeshCount():Int {
		#if lime_box3d
		return box3d_b3CompoundData_sharedMeshCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_sharedMeshCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3CompoundData_sharedMeshCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_sphereOffset():Int {
		#if lime_box3d
		return box3d_b3CompoundData_sphereOffset_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_sphereOffset(v:Int):Int {
		#if lime_box3d
		return box3d_b3CompoundData_sphereOffset_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_sphereCount():Int {
		#if lime_box3d
		return box3d_b3CompoundData_sphereCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_sphereCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3CompoundData_sphereCount_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3CompoundData_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_new", "o", false));
	private static var box3d_b3CompoundData_version_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_version_get", "oo", false));
	private static var box3d_b3CompoundData_version_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_version_set", "ooo", false));
	private static var box3d_b3CompoundData_byteCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_byteCount_get", "oi", false));
	private static var box3d_b3CompoundData_byteCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_byteCount_set", "oii", false));
	private static var box3d_b3CompoundData_nodeOffset_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_nodeOffset_get", "oi", false));
	private static var box3d_b3CompoundData_nodeOffset_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_nodeOffset_set", "oii", false));
	private static var box3d_b3CompoundData_tree_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_tree_get", "oo", false));
	private static var box3d_b3CompoundData_tree_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_tree_set", "ooo", false));
	private static var box3d_b3CompoundData_materialOffset_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_materialOffset_get", "oi", false));
	private static var box3d_b3CompoundData_materialOffset_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_materialOffset_set", "oii", false));
	private static var box3d_b3CompoundData_materialCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_materialCount_get", "oi", false));
	private static var box3d_b3CompoundData_materialCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_materialCount_set", "oii", false));
	private static var box3d_b3CompoundData_capsuleOffset_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_capsuleOffset_get", "oi", false));
	private static var box3d_b3CompoundData_capsuleOffset_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_capsuleOffset_set", "oii", false));
	private static var box3d_b3CompoundData_capsuleCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_capsuleCount_get", "oi", false));
	private static var box3d_b3CompoundData_capsuleCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_capsuleCount_set", "oii", false));
	private static var box3d_b3CompoundData_hullOffset_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_hullOffset_get", "oi", false));
	private static var box3d_b3CompoundData_hullOffset_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_hullOffset_set", "oii", false));
	private static var box3d_b3CompoundData_hullCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_hullCount_get", "oi", false));
	private static var box3d_b3CompoundData_hullCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_hullCount_set", "oii", false));
	private static var box3d_b3CompoundData_sharedHullCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_sharedHullCount_get", "oi", false));
	private static var box3d_b3CompoundData_sharedHullCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_sharedHullCount_set", "oii", false));
	private static var box3d_b3CompoundData_meshOffset_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_meshOffset_get", "oi", false));
	private static var box3d_b3CompoundData_meshOffset_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_meshOffset_set", "oii", false));
	private static var box3d_b3CompoundData_meshCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_meshCount_get", "oi", false));
	private static var box3d_b3CompoundData_meshCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_meshCount_set", "oii", false));
	private static var box3d_b3CompoundData_sharedMeshCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_sharedMeshCount_get", "oi", false));
	private static var box3d_b3CompoundData_sharedMeshCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_sharedMeshCount_set", "oii", false));
	private static var box3d_b3CompoundData_sphereOffset_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_sphereOffset_get", "oi", false));
	private static var box3d_b3CompoundData_sphereOffset_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_sphereOffset_set", "oii", false));
	private static var box3d_b3CompoundData_sphereCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_sphereCount_get", "oi", false));
	private static var box3d_b3CompoundData_sphereCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundData_sphereCount_set", "oii", false));
	#end
}

abstract B3CompoundCapsule(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var capsule(get, set):B3Capsule;
	public var materialIndex(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3CompoundCapsule_new();
		#else
		this = null;
		#end
	}
	private inline function get_capsule():B3Capsule {
		#if lime_box3d
		return box3d_b3CompoundCapsule_capsule_get(this);
		#else
		return null;
		#end
	}
	private inline function set_capsule(v:B3Capsule):B3Capsule {
		#if lime_box3d
		return box3d_b3CompoundCapsule_capsule_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_materialIndex():Int {
		#if lime_box3d
		return box3d_b3CompoundCapsule_materialIndex_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_materialIndex(v:Int):Int {
		#if lime_box3d
		return box3d_b3CompoundCapsule_materialIndex_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3CompoundCapsule_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundCapsule_new", "o", false));
	private static var box3d_b3CompoundCapsule_capsule_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundCapsule_capsule_get", "oo", false));
	private static var box3d_b3CompoundCapsule_capsule_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundCapsule_capsule_set", "ooo", false));
	private static var box3d_b3CompoundCapsule_materialIndex_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundCapsule_materialIndex_get", "oi", false));
	private static var box3d_b3CompoundCapsule_materialIndex_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundCapsule_materialIndex_set", "oii", false));
	#end
}

abstract B3CompoundHull(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var transform(get, set):B3Transform;
	public var materialIndex(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3CompoundHull_new();
		#else
		this = null;
		#end
	}
	private inline function get_transform():B3Transform {
		#if lime_box3d
		return box3d_b3CompoundHull_transform_get(this);
		#else
		return null;
		#end
	}
	private inline function set_transform(v:B3Transform):B3Transform {
		#if lime_box3d
		return box3d_b3CompoundHull_transform_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_materialIndex():Int {
		#if lime_box3d
		return box3d_b3CompoundHull_materialIndex_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_materialIndex(v:Int):Int {
		#if lime_box3d
		return box3d_b3CompoundHull_materialIndex_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3CompoundHull_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundHull_new", "o", false));
	private static var box3d_b3CompoundHull_transform_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundHull_transform_get", "oo", false));
	private static var box3d_b3CompoundHull_transform_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundHull_transform_set", "ooo", false));
	private static var box3d_b3CompoundHull_materialIndex_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundHull_materialIndex_get", "oi", false));
	private static var box3d_b3CompoundHull_materialIndex_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundHull_materialIndex_set", "oii", false));
	#end
}

abstract B3CompoundMesh(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var transform(get, set):B3Transform;
	public var scale(get, set):B3Vec3;
	public function new() {
		#if lime_box3d
		this = box3d_b3CompoundMesh_new();
		#else
		this = null;
		#end
	}
	private inline function get_transform():B3Transform {
		#if lime_box3d
		return box3d_b3CompoundMesh_transform_get(this);
		#else
		return null;
		#end
	}
	private inline function set_transform(v:B3Transform):B3Transform {
		#if lime_box3d
		return box3d_b3CompoundMesh_transform_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_scale():B3Vec3 {
		#if lime_box3d
		return box3d_b3CompoundMesh_scale_get(this);
		#else
		return null;
		#end
	}
	private inline function set_scale(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3CompoundMesh_scale_set(this, v);
		#else
		return null;
		#end
	}
	#if lime_box3d
	private static var box3d_b3CompoundMesh_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundMesh_new", "o", false));
	private static var box3d_b3CompoundMesh_transform_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundMesh_transform_get", "oo", false));
	private static var box3d_b3CompoundMesh_transform_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundMesh_transform_set", "ooo", false));
	private static var box3d_b3CompoundMesh_scale_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundMesh_scale_get", "oo", false));
	private static var box3d_b3CompoundMesh_scale_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundMesh_scale_set", "ooo", false));
	#end
}

abstract B3CompoundSphere(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var sphere(get, set):B3Sphere;
	public var materialIndex(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3CompoundSphere_new();
		#else
		this = null;
		#end
	}
	private inline function get_sphere():B3Sphere {
		#if lime_box3d
		return box3d_b3CompoundSphere_sphere_get(this);
		#else
		return null;
		#end
	}
	private inline function set_sphere(v:B3Sphere):B3Sphere {
		#if lime_box3d
		return box3d_b3CompoundSphere_sphere_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_materialIndex():Int {
		#if lime_box3d
		return box3d_b3CompoundSphere_materialIndex_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_materialIndex(v:Int):Int {
		#if lime_box3d
		return box3d_b3CompoundSphere_materialIndex_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3CompoundSphere_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundSphere_new", "o", false));
	private static var box3d_b3CompoundSphere_sphere_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundSphere_sphere_get", "oo", false));
	private static var box3d_b3CompoundSphere_sphere_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundSphere_sphere_set", "ooo", false));
	private static var box3d_b3CompoundSphere_materialIndex_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundSphere_materialIndex_get", "oi", false));
	private static var box3d_b3CompoundSphere_materialIndex_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3CompoundSphere_materialIndex_set", "oii", false));
	#end
}

abstract B3ChildShape(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var capsule(get, set):B3Capsule;
	public var mesh(get, set):B3Mesh;
	public var sphere(get, set):B3Sphere;
	public var transform(get, set):B3Transform;
	public var type(get, set):B3ShapeType;
	public function new() {
		#if lime_box3d
		this = box3d_b3ChildShape_new();
		#else
		this = null;
		#end
	}
	private inline function get_capsule():B3Capsule {
		#if lime_box3d
		return box3d_b3ChildShape_capsule_get(this);
		#else
		return null;
		#end
	}
	private inline function set_capsule(v:B3Capsule):B3Capsule {
		#if lime_box3d
		return box3d_b3ChildShape_capsule_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_mesh():B3Mesh {
		#if lime_box3d
		return box3d_b3ChildShape_mesh_get(this);
		#else
		return null;
		#end
	}
	private inline function set_mesh(v:B3Mesh):B3Mesh {
		#if lime_box3d
		return box3d_b3ChildShape_mesh_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_sphere():B3Sphere {
		#if lime_box3d
		return box3d_b3ChildShape_sphere_get(this);
		#else
		return null;
		#end
	}
	private inline function set_sphere(v:B3Sphere):B3Sphere {
		#if lime_box3d
		return box3d_b3ChildShape_sphere_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_transform():B3Transform {
		#if lime_box3d
		return box3d_b3ChildShape_transform_get(this);
		#else
		return null;
		#end
	}
	private inline function set_transform(v:B3Transform):B3Transform {
		#if lime_box3d
		return box3d_b3ChildShape_transform_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_type():B3ShapeType {
		#if lime_box3d
		return box3d_b3ChildShape_type_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_type(v:B3ShapeType):B3ShapeType {
		#if lime_box3d
		return box3d_b3ChildShape_type_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3ChildShape_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ChildShape_new", "o", false));
	private static var box3d_b3ChildShape_capsule_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ChildShape_capsule_get", "oo", false));
	private static var box3d_b3ChildShape_capsule_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ChildShape_capsule_set", "ooo", false));
	private static var box3d_b3ChildShape_mesh_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ChildShape_mesh_get", "oo", false));
	private static var box3d_b3ChildShape_mesh_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ChildShape_mesh_set", "ooo", false));
	private static var box3d_b3ChildShape_sphere_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ChildShape_sphere_get", "oo", false));
	private static var box3d_b3ChildShape_sphere_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ChildShape_sphere_set", "ooo", false));
	private static var box3d_b3ChildShape_transform_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ChildShape_transform_get", "oo", false));
	private static var box3d_b3ChildShape_transform_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ChildShape_transform_set", "ooo", false));
	private static var box3d_b3ChildShape_type_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ChildShape_type_get", "oi", false));
	private static var box3d_b3ChildShape_type_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ChildShape_type_set", "oii", false));
	#end
}

abstract B3ManifoldPoint(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var anchorA(get, set):B3Vec3;
	public var anchorB(get, set):B3Vec3;
	public var separation(get, set):Float;
	public var baseSeparation(get, set):Float;
	public var normalImpulse(get, set):Float;
	public var totalNormalImpulse(get, set):Float;
	public var normalVelocity(get, set):Float;
	public var featureId(get, set):UInt;
	public var triangleIndex(get, set):Int;
	public var persisted(get, set):Bool;
	public function new() {
		#if lime_box3d
		this = box3d_b3ManifoldPoint_new();
		#else
		this = null;
		#end
	}
	private inline function get_anchorA():B3Vec3 {
		#if lime_box3d
		return box3d_b3ManifoldPoint_anchorA_get(this);
		#else
		return null;
		#end
	}
	private inline function set_anchorA(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3ManifoldPoint_anchorA_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_anchorB():B3Vec3 {
		#if lime_box3d
		return box3d_b3ManifoldPoint_anchorB_get(this);
		#else
		return null;
		#end
	}
	private inline function set_anchorB(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3ManifoldPoint_anchorB_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_separation():Float {
		#if lime_box3d
		return box3d_b3ManifoldPoint_separation_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_separation(v:Float):Float {
		#if lime_box3d
		return box3d_b3ManifoldPoint_separation_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_baseSeparation():Float {
		#if lime_box3d
		return box3d_b3ManifoldPoint_baseSeparation_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_baseSeparation(v:Float):Float {
		#if lime_box3d
		return box3d_b3ManifoldPoint_baseSeparation_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_normalImpulse():Float {
		#if lime_box3d
		return box3d_b3ManifoldPoint_normalImpulse_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_normalImpulse(v:Float):Float {
		#if lime_box3d
		return box3d_b3ManifoldPoint_normalImpulse_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_totalNormalImpulse():Float {
		#if lime_box3d
		return box3d_b3ManifoldPoint_totalNormalImpulse_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_totalNormalImpulse(v:Float):Float {
		#if lime_box3d
		return box3d_b3ManifoldPoint_totalNormalImpulse_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_normalVelocity():Float {
		#if lime_box3d
		return box3d_b3ManifoldPoint_normalVelocity_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_normalVelocity(v:Float):Float {
		#if lime_box3d
		return box3d_b3ManifoldPoint_normalVelocity_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_featureId():UInt {
		#if lime_box3d
		return box3d_b3ManifoldPoint_featureId_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_featureId(v:UInt):UInt {
		#if lime_box3d
		return box3d_b3ManifoldPoint_featureId_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_triangleIndex():Int {
		#if lime_box3d
		return box3d_b3ManifoldPoint_triangleIndex_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_triangleIndex(v:Int):Int {
		#if lime_box3d
		return box3d_b3ManifoldPoint_triangleIndex_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_persisted():Bool {
		#if lime_box3d
		return box3d_b3ManifoldPoint_persisted_get(this);
		#else
		return false;
		#end
	}
	private inline function set_persisted(v:Bool):Bool {
		#if lime_box3d
		return box3d_b3ManifoldPoint_persisted_set(this, v);
		#else
		return false;
		#end
	}
	#if lime_box3d
	private static var box3d_b3ManifoldPoint_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ManifoldPoint_new", "o", false));
	private static var box3d_b3ManifoldPoint_anchorA_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ManifoldPoint_anchorA_get", "oo", false));
	private static var box3d_b3ManifoldPoint_anchorA_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ManifoldPoint_anchorA_set", "ooo", false));
	private static var box3d_b3ManifoldPoint_anchorB_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ManifoldPoint_anchorB_get", "oo", false));
	private static var box3d_b3ManifoldPoint_anchorB_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ManifoldPoint_anchorB_set", "ooo", false));
	private static var box3d_b3ManifoldPoint_separation_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ManifoldPoint_separation_get", "of", false));
	private static var box3d_b3ManifoldPoint_separation_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ManifoldPoint_separation_set", "off", false));
	private static var box3d_b3ManifoldPoint_baseSeparation_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ManifoldPoint_baseSeparation_get", "of", false));
	private static var box3d_b3ManifoldPoint_baseSeparation_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ManifoldPoint_baseSeparation_set", "off", false));
	private static var box3d_b3ManifoldPoint_normalImpulse_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ManifoldPoint_normalImpulse_get", "of", false));
	private static var box3d_b3ManifoldPoint_normalImpulse_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ManifoldPoint_normalImpulse_set", "off", false));
	private static var box3d_b3ManifoldPoint_totalNormalImpulse_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ManifoldPoint_totalNormalImpulse_get", "of", false));
	private static var box3d_b3ManifoldPoint_totalNormalImpulse_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ManifoldPoint_totalNormalImpulse_set", "off", false));
	private static var box3d_b3ManifoldPoint_normalVelocity_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ManifoldPoint_normalVelocity_get", "of", false));
	private static var box3d_b3ManifoldPoint_normalVelocity_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3ManifoldPoint_normalVelocity_set", "off", false));
	private static var box3d_b3ManifoldPoint_featureId_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ManifoldPoint_featureId_get", "oi", false));
	private static var box3d_b3ManifoldPoint_featureId_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ManifoldPoint_featureId_set", "oii", false));
	private static var box3d_b3ManifoldPoint_triangleIndex_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ManifoldPoint_triangleIndex_get", "oi", false));
	private static var box3d_b3ManifoldPoint_triangleIndex_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ManifoldPoint_triangleIndex_set", "oii", false));
	private static var box3d_b3ManifoldPoint_persisted_get = new cpp.Callable<cpp.Object->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3ManifoldPoint_persisted_get", "ob", false));
	private static var box3d_b3ManifoldPoint_persisted_set = new cpp.Callable<cpp.Object->Bool->Bool>(cpp.Prime._loadPrime("box3d", "box3d_b3ManifoldPoint_persisted_set", "obb", false));
	#end
}

abstract B3Manifold(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var normal(get, set):B3Vec3;
	public var twistImpulse(get, set):Float;
	public var frictionImpulse(get, set):B3Vec3;
	public var rollingImpulse(get, set):B3Vec3;
	public var pointCount(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3Manifold_new();
		#else
		this = null;
		#end
	}
	private inline function get_normal():B3Vec3 {
		#if lime_box3d
		return box3d_b3Manifold_normal_get(this);
		#else
		return null;
		#end
	}
	private inline function set_normal(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3Manifold_normal_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_twistImpulse():Float {
		#if lime_box3d
		return box3d_b3Manifold_twistImpulse_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_twistImpulse(v:Float):Float {
		#if lime_box3d
		return box3d_b3Manifold_twistImpulse_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_frictionImpulse():B3Vec3 {
		#if lime_box3d
		return box3d_b3Manifold_frictionImpulse_get(this);
		#else
		return null;
		#end
	}
	private inline function set_frictionImpulse(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3Manifold_frictionImpulse_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_rollingImpulse():B3Vec3 {
		#if lime_box3d
		return box3d_b3Manifold_rollingImpulse_get(this);
		#else
		return null;
		#end
	}
	private inline function set_rollingImpulse(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3Manifold_rollingImpulse_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_pointCount():Int {
		#if lime_box3d
		return box3d_b3Manifold_pointCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_pointCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3Manifold_pointCount_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3Manifold_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Manifold_new", "o", false));
	private static var box3d_b3Manifold_normal_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Manifold_normal_get", "oo", false));
	private static var box3d_b3Manifold_normal_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Manifold_normal_set", "ooo", false));
	private static var box3d_b3Manifold_twistImpulse_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Manifold_twistImpulse_get", "of", false));
	private static var box3d_b3Manifold_twistImpulse_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Manifold_twistImpulse_set", "off", false));
	private static var box3d_b3Manifold_frictionImpulse_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Manifold_frictionImpulse_get", "oo", false));
	private static var box3d_b3Manifold_frictionImpulse_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Manifold_frictionImpulse_set", "ooo", false));
	private static var box3d_b3Manifold_rollingImpulse_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Manifold_rollingImpulse_get", "oo", false));
	private static var box3d_b3Manifold_rollingImpulse_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Manifold_rollingImpulse_set", "ooo", false));
	private static var box3d_b3Manifold_pointCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Manifold_pointCount_get", "oi", false));
	private static var box3d_b3Manifold_pointCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3Manifold_pointCount_set", "oii", false));
	#end
}

abstract B3SATCache(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var separation(get, set):Float;
	public var type(get, set):UInt;
	public var indexA(get, set):UInt;
	public var indexB(get, set):UInt;
	public var hit(get, set):UInt;
	public function new() {
		#if lime_box3d
		this = box3d_b3SATCache_new();
		#else
		this = null;
		#end
	}
	private inline function get_separation():Float {
		#if lime_box3d
		return box3d_b3SATCache_separation_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_separation(v:Float):Float {
		#if lime_box3d
		return box3d_b3SATCache_separation_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_type():UInt {
		#if lime_box3d
		return box3d_b3SATCache_type_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_type(v:UInt):UInt {
		#if lime_box3d
		return box3d_b3SATCache_type_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_indexA():UInt {
		#if lime_box3d
		return box3d_b3SATCache_indexA_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_indexA(v:UInt):UInt {
		#if lime_box3d
		return box3d_b3SATCache_indexA_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_indexB():UInt {
		#if lime_box3d
		return box3d_b3SATCache_indexB_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_indexB(v:UInt):UInt {
		#if lime_box3d
		return box3d_b3SATCache_indexB_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_hit():UInt {
		#if lime_box3d
		return box3d_b3SATCache_hit_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_hit(v:UInt):UInt {
		#if lime_box3d
		return box3d_b3SATCache_hit_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3SATCache_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SATCache_new", "o", false));
	private static var box3d_b3SATCache_separation_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SATCache_separation_get", "of", false));
	private static var box3d_b3SATCache_separation_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SATCache_separation_set", "off", false));
	private static var box3d_b3SATCache_type_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3SATCache_type_get", "oi", false));
	private static var box3d_b3SATCache_type_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3SATCache_type_set", "oii", false));
	private static var box3d_b3SATCache_indexA_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3SATCache_indexA_get", "oi", false));
	private static var box3d_b3SATCache_indexA_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3SATCache_indexA_set", "oii", false));
	private static var box3d_b3SATCache_indexB_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3SATCache_indexB_get", "oi", false));
	private static var box3d_b3SATCache_indexB_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3SATCache_indexB_set", "oii", false));
	private static var box3d_b3SATCache_hit_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3SATCache_hit_get", "oi", false));
	private static var box3d_b3SATCache_hit_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3SATCache_hit_set", "oii", false));
	#end
}

abstract B3FeaturePair(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var owner1(get, set):UInt;
	public var index1(get, set):UInt;
	public var owner2(get, set):UInt;
	public var index2(get, set):UInt;
	public function new() {
		#if lime_box3d
		this = box3d_b3FeaturePair_new();
		#else
		this = null;
		#end
	}
	private inline function get_owner1():UInt {
		#if lime_box3d
		return box3d_b3FeaturePair_owner1_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_owner1(v:UInt):UInt {
		#if lime_box3d
		return box3d_b3FeaturePair_owner1_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_index1():UInt {
		#if lime_box3d
		return box3d_b3FeaturePair_index1_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_index1(v:UInt):UInt {
		#if lime_box3d
		return box3d_b3FeaturePair_index1_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_owner2():UInt {
		#if lime_box3d
		return box3d_b3FeaturePair_owner2_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_owner2(v:UInt):UInt {
		#if lime_box3d
		return box3d_b3FeaturePair_owner2_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_index2():UInt {
		#if lime_box3d
		return box3d_b3FeaturePair_index2_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_index2(v:UInt):UInt {
		#if lime_box3d
		return box3d_b3FeaturePair_index2_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3FeaturePair_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3FeaturePair_new", "o", false));
	private static var box3d_b3FeaturePair_owner1_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3FeaturePair_owner1_get", "oi", false));
	private static var box3d_b3FeaturePair_owner1_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3FeaturePair_owner1_set", "oii", false));
	private static var box3d_b3FeaturePair_index1_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3FeaturePair_index1_get", "oi", false));
	private static var box3d_b3FeaturePair_index1_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3FeaturePair_index1_set", "oii", false));
	private static var box3d_b3FeaturePair_owner2_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3FeaturePair_owner2_get", "oi", false));
	private static var box3d_b3FeaturePair_owner2_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3FeaturePair_owner2_set", "oii", false));
	private static var box3d_b3FeaturePair_index2_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3FeaturePair_index2_get", "oi", false));
	private static var box3d_b3FeaturePair_index2_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3FeaturePair_index2_set", "oii", false));
	#end
}

abstract B3LocalManifoldPoint(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var point(get, set):B3Vec3;
	public var separation(get, set):Float;
	public var pair(get, set):B3FeaturePair;
	public var triangleIndex(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3LocalManifoldPoint_new();
		#else
		this = null;
		#end
	}
	private inline function get_point():B3Vec3 {
		#if lime_box3d
		return box3d_b3LocalManifoldPoint_point_get(this);
		#else
		return null;
		#end
	}
	private inline function set_point(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3LocalManifoldPoint_point_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_separation():Float {
		#if lime_box3d
		return box3d_b3LocalManifoldPoint_separation_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_separation(v:Float):Float {
		#if lime_box3d
		return box3d_b3LocalManifoldPoint_separation_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_pair():B3FeaturePair {
		#if lime_box3d
		return box3d_b3LocalManifoldPoint_pair_get(this);
		#else
		return null;
		#end
	}
	private inline function set_pair(v:B3FeaturePair):B3FeaturePair {
		#if lime_box3d
		return box3d_b3LocalManifoldPoint_pair_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_triangleIndex():Int {
		#if lime_box3d
		return box3d_b3LocalManifoldPoint_triangleIndex_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_triangleIndex(v:Int):Int {
		#if lime_box3d
		return box3d_b3LocalManifoldPoint_triangleIndex_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3LocalManifoldPoint_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3LocalManifoldPoint_new", "o", false));
	private static var box3d_b3LocalManifoldPoint_point_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3LocalManifoldPoint_point_get", "oo", false));
	private static var box3d_b3LocalManifoldPoint_point_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3LocalManifoldPoint_point_set", "ooo", false));
	private static var box3d_b3LocalManifoldPoint_separation_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3LocalManifoldPoint_separation_get", "of", false));
	private static var box3d_b3LocalManifoldPoint_separation_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3LocalManifoldPoint_separation_set", "off", false));
	private static var box3d_b3LocalManifoldPoint_pair_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3LocalManifoldPoint_pair_get", "oo", false));
	private static var box3d_b3LocalManifoldPoint_pair_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3LocalManifoldPoint_pair_set", "ooo", false));
	private static var box3d_b3LocalManifoldPoint_triangleIndex_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3LocalManifoldPoint_triangleIndex_get", "oi", false));
	private static var box3d_b3LocalManifoldPoint_triangleIndex_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3LocalManifoldPoint_triangleIndex_set", "oii", false));
	#end
}

abstract B3LocalManifold(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var normal(get, set):B3Vec3;
	public var triangleNormal(get, set):B3Vec3;
	public var pointCount(get, set):Int;
	public var triangleIndex(get, set):Int;
	public var i1(get, set):Int;
	public var i2(get, set):Int;
	public var i3(get, set):Int;
	public var squaredDistance(get, set):Float;
	public var feature(get, set):B3TriangleFeature;
	public var triangleFlags(get, set):Int;
	public function new() {
		#if lime_box3d
		this = box3d_b3LocalManifold_new();
		#else
		this = null;
		#end
	}
	private inline function get_normal():B3Vec3 {
		#if lime_box3d
		return box3d_b3LocalManifold_normal_get(this);
		#else
		return null;
		#end
	}
	private inline function set_normal(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3LocalManifold_normal_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_triangleNormal():B3Vec3 {
		#if lime_box3d
		return box3d_b3LocalManifold_triangleNormal_get(this);
		#else
		return null;
		#end
	}
	private inline function set_triangleNormal(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3LocalManifold_triangleNormal_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_pointCount():Int {
		#if lime_box3d
		return box3d_b3LocalManifold_pointCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_pointCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3LocalManifold_pointCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_triangleIndex():Int {
		#if lime_box3d
		return box3d_b3LocalManifold_triangleIndex_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_triangleIndex(v:Int):Int {
		#if lime_box3d
		return box3d_b3LocalManifold_triangleIndex_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_i1():Int {
		#if lime_box3d
		return box3d_b3LocalManifold_i1_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_i1(v:Int):Int {
		#if lime_box3d
		return box3d_b3LocalManifold_i1_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_i2():Int {
		#if lime_box3d
		return box3d_b3LocalManifold_i2_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_i2(v:Int):Int {
		#if lime_box3d
		return box3d_b3LocalManifold_i2_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_i3():Int {
		#if lime_box3d
		return box3d_b3LocalManifold_i3_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_i3(v:Int):Int {
		#if lime_box3d
		return box3d_b3LocalManifold_i3_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_squaredDistance():Float {
		#if lime_box3d
		return box3d_b3LocalManifold_squaredDistance_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_squaredDistance(v:Float):Float {
		#if lime_box3d
		return box3d_b3LocalManifold_squaredDistance_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_feature():B3TriangleFeature {
		#if lime_box3d
		return box3d_b3LocalManifold_feature_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_feature(v:B3TriangleFeature):B3TriangleFeature {
		#if lime_box3d
		return box3d_b3LocalManifold_feature_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_triangleFlags():Int {
		#if lime_box3d
		return box3d_b3LocalManifold_triangleFlags_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_triangleFlags(v:Int):Int {
		#if lime_box3d
		return box3d_b3LocalManifold_triangleFlags_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3LocalManifold_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3LocalManifold_new", "o", false));
	private static var box3d_b3LocalManifold_normal_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3LocalManifold_normal_get", "oo", false));
	private static var box3d_b3LocalManifold_normal_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3LocalManifold_normal_set", "ooo", false));
	private static var box3d_b3LocalManifold_triangleNormal_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3LocalManifold_triangleNormal_get", "oo", false));
	private static var box3d_b3LocalManifold_triangleNormal_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3LocalManifold_triangleNormal_set", "ooo", false));
	private static var box3d_b3LocalManifold_pointCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3LocalManifold_pointCount_get", "oi", false));
	private static var box3d_b3LocalManifold_pointCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3LocalManifold_pointCount_set", "oii", false));
	private static var box3d_b3LocalManifold_triangleIndex_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3LocalManifold_triangleIndex_get", "oi", false));
	private static var box3d_b3LocalManifold_triangleIndex_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3LocalManifold_triangleIndex_set", "oii", false));
	private static var box3d_b3LocalManifold_i1_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3LocalManifold_i1_get", "oi", false));
	private static var box3d_b3LocalManifold_i1_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3LocalManifold_i1_set", "oii", false));
	private static var box3d_b3LocalManifold_i2_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3LocalManifold_i2_get", "oi", false));
	private static var box3d_b3LocalManifold_i2_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3LocalManifold_i2_set", "oii", false));
	private static var box3d_b3LocalManifold_i3_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3LocalManifold_i3_get", "oi", false));
	private static var box3d_b3LocalManifold_i3_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3LocalManifold_i3_set", "oii", false));
	private static var box3d_b3LocalManifold_squaredDistance_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3LocalManifold_squaredDistance_get", "of", false));
	private static var box3d_b3LocalManifold_squaredDistance_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3LocalManifold_squaredDistance_set", "off", false));
	private static var box3d_b3LocalManifold_feature_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3LocalManifold_feature_get", "oi", false));
	private static var box3d_b3LocalManifold_feature_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3LocalManifold_feature_set", "oii", false));
	private static var box3d_b3LocalManifold_triangleFlags_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3LocalManifold_triangleFlags_get", "oi", false));
	private static var box3d_b3LocalManifold_triangleFlags_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3LocalManifold_triangleFlags_set", "oii", false));
	#end
}

abstract B3DebugShape(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var shapeId(get, set):B3ShapeId;
	public var type(get, set):B3ShapeType;
	public function new() {
		#if lime_box3d
		this = box3d_b3DebugShape_new();
		#else
		this = null;
		#end
	}
	private inline function get_shapeId():B3ShapeId {
		#if lime_box3d
		return box3d_b3DebugShape_shapeId_get(this);
		#else
		return null;
		#end
	}
	private inline function set_shapeId(v:B3ShapeId):B3ShapeId {
		#if lime_box3d
		return box3d_b3DebugShape_shapeId_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_type():B3ShapeType {
		#if lime_box3d
		return box3d_b3DebugShape_type_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_type(v:B3ShapeType):B3ShapeType {
		#if lime_box3d
		return box3d_b3DebugShape_type_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3DebugShape_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DebugShape_new", "o", false));
	private static var box3d_b3DebugShape_shapeId_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DebugShape_shapeId_get", "oo", false));
	private static var box3d_b3DebugShape_shapeId_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3DebugShape_shapeId_set", "ooo", false));
	private static var box3d_b3DebugShape_type_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3DebugShape_type_get", "oi", false));
	private static var box3d_b3DebugShape_type_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3DebugShape_type_set", "oii", false));
	#end
}

abstract B3WorldId(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var index1(get, set):UInt;
	public var generation(get, set):UInt;
	public function new() {
		#if lime_box3d
		this = box3d_b3WorldId_new();
		#else
		this = null;
		#end
	}
	private inline function get_index1():UInt {
		#if lime_box3d
		return box3d_b3WorldId_index1_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_index1(v:UInt):UInt {
		#if lime_box3d
		return box3d_b3WorldId_index1_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_generation():UInt {
		#if lime_box3d
		return box3d_b3WorldId_generation_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_generation(v:UInt):UInt {
		#if lime_box3d
		return box3d_b3WorldId_generation_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3WorldId_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldId_new", "o", false));
	private static var box3d_b3WorldId_index1_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldId_index1_get", "oi", false));
	private static var box3d_b3WorldId_index1_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldId_index1_set", "oii", false));
	private static var box3d_b3WorldId_generation_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldId_generation_get", "oi", false));
	private static var box3d_b3WorldId_generation_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3WorldId_generation_set", "oii", false));
	#end
}

abstract B3BodyId(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var index1(get, set):Int;
	public var world0(get, set):UInt;
	public var generation(get, set):UInt;
	public function new() {
		#if lime_box3d
		this = box3d_b3BodyId_new();
		#else
		this = null;
		#end
	}
	private inline function get_index1():Int {
		#if lime_box3d
		return box3d_b3BodyId_index1_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_index1(v:Int):Int {
		#if lime_box3d
		return box3d_b3BodyId_index1_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_world0():UInt {
		#if lime_box3d
		return box3d_b3BodyId_world0_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_world0(v:UInt):UInt {
		#if lime_box3d
		return box3d_b3BodyId_world0_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_generation():UInt {
		#if lime_box3d
		return box3d_b3BodyId_generation_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_generation(v:UInt):UInt {
		#if lime_box3d
		return box3d_b3BodyId_generation_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3BodyId_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyId_new", "o", false));
	private static var box3d_b3BodyId_index1_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyId_index1_get", "oi", false));
	private static var box3d_b3BodyId_index1_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyId_index1_set", "oii", false));
	private static var box3d_b3BodyId_world0_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyId_world0_get", "oi", false));
	private static var box3d_b3BodyId_world0_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyId_world0_set", "oii", false));
	private static var box3d_b3BodyId_generation_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyId_generation_get", "oi", false));
	private static var box3d_b3BodyId_generation_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3BodyId_generation_set", "oii", false));
	#end
}

abstract B3ShapeId(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var index1(get, set):Int;
	public var world0(get, set):UInt;
	public var generation(get, set):UInt;
	public function new() {
		#if lime_box3d
		this = box3d_b3ShapeId_new();
		#else
		this = null;
		#end
	}
	private inline function get_index1():Int {
		#if lime_box3d
		return box3d_b3ShapeId_index1_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_index1(v:Int):Int {
		#if lime_box3d
		return box3d_b3ShapeId_index1_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_world0():UInt {
		#if lime_box3d
		return box3d_b3ShapeId_world0_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_world0(v:UInt):UInt {
		#if lime_box3d
		return box3d_b3ShapeId_world0_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_generation():UInt {
		#if lime_box3d
		return box3d_b3ShapeId_generation_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_generation(v:UInt):UInt {
		#if lime_box3d
		return box3d_b3ShapeId_generation_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3ShapeId_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeId_new", "o", false));
	private static var box3d_b3ShapeId_index1_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeId_index1_get", "oi", false));
	private static var box3d_b3ShapeId_index1_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeId_index1_set", "oii", false));
	private static var box3d_b3ShapeId_world0_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeId_world0_get", "oi", false));
	private static var box3d_b3ShapeId_world0_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeId_world0_set", "oii", false));
	private static var box3d_b3ShapeId_generation_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeId_generation_get", "oi", false));
	private static var box3d_b3ShapeId_generation_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ShapeId_generation_set", "oii", false));
	#end
}

abstract B3JointId(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var index1(get, set):Int;
	public var world0(get, set):UInt;
	public var generation(get, set):UInt;
	public function new() {
		#if lime_box3d
		this = box3d_b3JointId_new();
		#else
		this = null;
		#end
	}
	private inline function get_index1():Int {
		#if lime_box3d
		return box3d_b3JointId_index1_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_index1(v:Int):Int {
		#if lime_box3d
		return box3d_b3JointId_index1_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_world0():UInt {
		#if lime_box3d
		return box3d_b3JointId_world0_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_world0(v:UInt):UInt {
		#if lime_box3d
		return box3d_b3JointId_world0_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_generation():UInt {
		#if lime_box3d
		return box3d_b3JointId_generation_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_generation(v:UInt):UInt {
		#if lime_box3d
		return box3d_b3JointId_generation_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3JointId_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3JointId_new", "o", false));
	private static var box3d_b3JointId_index1_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3JointId_index1_get", "oi", false));
	private static var box3d_b3JointId_index1_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3JointId_index1_set", "oii", false));
	private static var box3d_b3JointId_world0_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3JointId_world0_get", "oi", false));
	private static var box3d_b3JointId_world0_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3JointId_world0_set", "oii", false));
	private static var box3d_b3JointId_generation_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3JointId_generation_get", "oi", false));
	private static var box3d_b3JointId_generation_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3JointId_generation_set", "oii", false));
	#end
}

abstract B3ContactId(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var index1(get, set):Int;
	public var world0(get, set):UInt;
	public var padding(get, set):Int;
	public var generation(get, set):UInt;
	public function new() {
		#if lime_box3d
		this = box3d_b3ContactId_new();
		#else
		this = null;
		#end
	}
	private inline function get_index1():Int {
		#if lime_box3d
		return box3d_b3ContactId_index1_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_index1(v:Int):Int {
		#if lime_box3d
		return box3d_b3ContactId_index1_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_world0():UInt {
		#if lime_box3d
		return box3d_b3ContactId_world0_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_world0(v:UInt):UInt {
		#if lime_box3d
		return box3d_b3ContactId_world0_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_padding():Int {
		#if lime_box3d
		return box3d_b3ContactId_padding_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_padding(v:Int):Int {
		#if lime_box3d
		return box3d_b3ContactId_padding_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_generation():UInt {
		#if lime_box3d
		return box3d_b3ContactId_generation_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_generation(v:UInt):UInt {
		#if lime_box3d
		return box3d_b3ContactId_generation_set(this, v);
		#else
		return 0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3ContactId_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactId_new", "o", false));
	private static var box3d_b3ContactId_index1_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactId_index1_get", "oi", false));
	private static var box3d_b3ContactId_index1_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactId_index1_set", "oii", false));
	private static var box3d_b3ContactId_world0_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactId_world0_get", "oi", false));
	private static var box3d_b3ContactId_world0_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactId_world0_set", "oii", false));
	private static var box3d_b3ContactId_padding_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactId_padding_get", "oi", false));
	private static var box3d_b3ContactId_padding_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactId_padding_set", "oii", false));
	private static var box3d_b3ContactId_generation_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactId_generation_get", "oi", false));
	private static var box3d_b3ContactId_generation_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3ContactId_generation_set", "oii", false));
	#end
}

abstract B3RecPlayerInfo(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var frameCount(get, set):Int;
	public var workerCount(get, set):Int;
	public var timeStep(get, set):Float;
	public var subStepCount(get, set):Int;
	public var lengthScale(get, set):Float;
	public var bounds(get, set):B3AABB;
	public function new() {
		#if lime_box3d
		this = box3d_b3RecPlayerInfo_new();
		#else
		this = null;
		#end
	}
	private inline function get_frameCount():Int {
		#if lime_box3d
		return box3d_b3RecPlayerInfo_frameCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_frameCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3RecPlayerInfo_frameCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_workerCount():Int {
		#if lime_box3d
		return box3d_b3RecPlayerInfo_workerCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_workerCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3RecPlayerInfo_workerCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_timeStep():Float {
		#if lime_box3d
		return box3d_b3RecPlayerInfo_timeStep_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_timeStep(v:Float):Float {
		#if lime_box3d
		return box3d_b3RecPlayerInfo_timeStep_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_subStepCount():Int {
		#if lime_box3d
		return box3d_b3RecPlayerInfo_subStepCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_subStepCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3RecPlayerInfo_subStepCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_lengthScale():Float {
		#if lime_box3d
		return box3d_b3RecPlayerInfo_lengthScale_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_lengthScale(v:Float):Float {
		#if lime_box3d
		return box3d_b3RecPlayerInfo_lengthScale_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_bounds():B3AABB {
		#if lime_box3d
		return box3d_b3RecPlayerInfo_bounds_get(this);
		#else
		return null;
		#end
	}
	private inline function set_bounds(v:B3AABB):B3AABB {
		#if lime_box3d
		return box3d_b3RecPlayerInfo_bounds_set(this, v);
		#else
		return null;
		#end
	}
	#if lime_box3d
	private static var box3d_b3RecPlayerInfo_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayerInfo_new", "o", false));
	private static var box3d_b3RecPlayerInfo_frameCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayerInfo_frameCount_get", "oi", false));
	private static var box3d_b3RecPlayerInfo_frameCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayerInfo_frameCount_set", "oii", false));
	private static var box3d_b3RecPlayerInfo_workerCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayerInfo_workerCount_get", "oi", false));
	private static var box3d_b3RecPlayerInfo_workerCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayerInfo_workerCount_set", "oii", false));
	private static var box3d_b3RecPlayerInfo_timeStep_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayerInfo_timeStep_get", "of", false));
	private static var box3d_b3RecPlayerInfo_timeStep_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayerInfo_timeStep_set", "off", false));
	private static var box3d_b3RecPlayerInfo_subStepCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayerInfo_subStepCount_get", "oi", false));
	private static var box3d_b3RecPlayerInfo_subStepCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayerInfo_subStepCount_set", "oii", false));
	private static var box3d_b3RecPlayerInfo_lengthScale_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayerInfo_lengthScale_get", "of", false));
	private static var box3d_b3RecPlayerInfo_lengthScale_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayerInfo_lengthScale_set", "off", false));
	private static var box3d_b3RecPlayerInfo_bounds_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayerInfo_bounds_get", "oo", false));
	private static var box3d_b3RecPlayerInfo_bounds_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RecPlayerInfo_bounds_set", "ooo", false));
	#end
}

abstract B3RecQueryInfo(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var type(get, set):B3RecQueryType;
	public var filter(get, set):B3QueryFilter;
	public var aabb(get, set):B3AABB;
	public var origin(get, set):B3Pos;
	public var translation(get, set):B3Vec3;
	public var hitCount(get, set):Int;
	public var key(get, set):UInt64;
	public var id(get, set):UInt64;
	public var name(get, set):String;
	public function new() {
		#if lime_box3d
		this = box3d_b3RecQueryInfo_new();
		#else
		this = null;
		#end
	}
	private inline function get_type():B3RecQueryType {
		#if lime_box3d
		return box3d_b3RecQueryInfo_type_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_type(v:B3RecQueryType):B3RecQueryType {
		#if lime_box3d
		return box3d_b3RecQueryInfo_type_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_filter():B3QueryFilter {
		#if lime_box3d
		return box3d_b3RecQueryInfo_filter_get(this);
		#else
		return null;
		#end
	}
	private inline function set_filter(v:B3QueryFilter):B3QueryFilter {
		#if lime_box3d
		return box3d_b3RecQueryInfo_filter_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_aabb():B3AABB {
		#if lime_box3d
		return box3d_b3RecQueryInfo_aabb_get(this);
		#else
		return null;
		#end
	}
	private inline function set_aabb(v:B3AABB):B3AABB {
		#if lime_box3d
		return box3d_b3RecQueryInfo_aabb_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_origin():B3Pos {
		#if lime_box3d
		return box3d_b3RecQueryInfo_origin_get(this);
		#else
		return null;
		#end
	}
	private inline function set_origin(v:B3Pos):B3Pos {
		#if lime_box3d
		return box3d_b3RecQueryInfo_origin_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_translation():B3Vec3 {
		#if lime_box3d
		return box3d_b3RecQueryInfo_translation_get(this);
		#else
		return null;
		#end
	}
	private inline function set_translation(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3RecQueryInfo_translation_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_hitCount():Int {
		#if lime_box3d
		return box3d_b3RecQueryInfo_hitCount_get(this);
		#else
		return 0;
		#end
	}
	private inline function set_hitCount(v:Int):Int {
		#if lime_box3d
		return box3d_b3RecQueryInfo_hitCount_set(this, v);
		#else
		return 0;
		#end
	}
	private inline function get_key():UInt64 {
		#if lime_box3d
		return box3d_b3RecQueryInfo_key_get(this);
		#else
		return null;
		#end
	}
	private inline function set_key(v:UInt64):UInt64 {
		#if lime_box3d
		return box3d_b3RecQueryInfo_key_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_id():UInt64 {
		#if lime_box3d
		return box3d_b3RecQueryInfo_id_get(this);
		#else
		return null;
		#end
	}
	private inline function set_id(v:UInt64):UInt64 {
		#if lime_box3d
		return box3d_b3RecQueryInfo_id_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_name():String {
		#if lime_box3d
		return box3d_b3RecQueryInfo_name_get(this);
		#else
		return null;
		#end
	}
	private inline function set_name(v:String):String {
		#if lime_box3d
		return box3d_b3RecQueryInfo_name_set(this, v);
		#else
		return null;
		#end
	}
	#if lime_box3d
	private static var box3d_b3RecQueryInfo_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RecQueryInfo_new", "o", false));
	private static var box3d_b3RecQueryInfo_type_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3RecQueryInfo_type_get", "oi", false));
	private static var box3d_b3RecQueryInfo_type_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3RecQueryInfo_type_set", "oii", false));
	private static var box3d_b3RecQueryInfo_filter_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RecQueryInfo_filter_get", "oo", false));
	private static var box3d_b3RecQueryInfo_filter_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RecQueryInfo_filter_set", "ooo", false));
	private static var box3d_b3RecQueryInfo_aabb_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RecQueryInfo_aabb_get", "oo", false));
	private static var box3d_b3RecQueryInfo_aabb_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RecQueryInfo_aabb_set", "ooo", false));
	private static var box3d_b3RecQueryInfo_origin_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RecQueryInfo_origin_get", "oo", false));
	private static var box3d_b3RecQueryInfo_origin_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RecQueryInfo_origin_set", "ooo", false));
	private static var box3d_b3RecQueryInfo_translation_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RecQueryInfo_translation_get", "oo", false));
	private static var box3d_b3RecQueryInfo_translation_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RecQueryInfo_translation_set", "ooo", false));
	private static var box3d_b3RecQueryInfo_hitCount_get = new cpp.Callable<cpp.Object->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3RecQueryInfo_hitCount_get", "oi", false));
	private static var box3d_b3RecQueryInfo_hitCount_set = new cpp.Callable<cpp.Object->Int->Int>(cpp.Prime._loadPrime("box3d", "box3d_b3RecQueryInfo_hitCount_set", "oii", false));
	private static var box3d_b3RecQueryInfo_key_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RecQueryInfo_key_get", "oo", false));
	private static var box3d_b3RecQueryInfo_key_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RecQueryInfo_key_set", "ooo", false));
	private static var box3d_b3RecQueryInfo_id_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RecQueryInfo_id_get", "oo", false));
	private static var box3d_b3RecQueryInfo_id_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RecQueryInfo_id_set", "ooo", false));
	private static var box3d_b3RecQueryInfo_name_get = new cpp.Callable<cpp.Object->String>(cpp.Prime._loadPrime("box3d", "box3d_b3RecQueryInfo_name_get", "os", false));
	private static var box3d_b3RecQueryInfo_name_set = new cpp.Callable<cpp.Object->String->String>(cpp.Prime._loadPrime("box3d", "box3d_b3RecQueryInfo_name_set", "oss", false));
	#end
}

abstract B3RecQueryHit(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var shape(get, set):B3ShapeId;
	public var point(get, set):B3Pos;
	public var normal(get, set):B3Vec3;
	public var fraction(get, set):Float;
	public function new() {
		#if lime_box3d
		this = box3d_b3RecQueryHit_new();
		#else
		this = null;
		#end
	}
	private inline function get_shape():B3ShapeId {
		#if lime_box3d
		return box3d_b3RecQueryHit_shape_get(this);
		#else
		return null;
		#end
	}
	private inline function set_shape(v:B3ShapeId):B3ShapeId {
		#if lime_box3d
		return box3d_b3RecQueryHit_shape_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_point():B3Pos {
		#if lime_box3d
		return box3d_b3RecQueryHit_point_get(this);
		#else
		return null;
		#end
	}
	private inline function set_point(v:B3Pos):B3Pos {
		#if lime_box3d
		return box3d_b3RecQueryHit_point_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_normal():B3Vec3 {
		#if lime_box3d
		return box3d_b3RecQueryHit_normal_get(this);
		#else
		return null;
		#end
	}
	private inline function set_normal(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3RecQueryHit_normal_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_fraction():Float {
		#if lime_box3d
		return box3d_b3RecQueryHit_fraction_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_fraction(v:Float):Float {
		#if lime_box3d
		return box3d_b3RecQueryHit_fraction_set(this, v);
		#else
		return 0.0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3RecQueryHit_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RecQueryHit_new", "o", false));
	private static var box3d_b3RecQueryHit_shape_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RecQueryHit_shape_get", "oo", false));
	private static var box3d_b3RecQueryHit_shape_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RecQueryHit_shape_set", "ooo", false));
	private static var box3d_b3RecQueryHit_point_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RecQueryHit_point_get", "oo", false));
	private static var box3d_b3RecQueryHit_point_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RecQueryHit_point_set", "ooo", false));
	private static var box3d_b3RecQueryHit_normal_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RecQueryHit_normal_get", "oo", false));
	private static var box3d_b3RecQueryHit_normal_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3RecQueryHit_normal_set", "ooo", false));
	private static var box3d_b3RecQueryHit_fraction_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RecQueryHit_fraction_get", "of", false));
	private static var box3d_b3RecQueryHit_fraction_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3RecQueryHit_fraction_set", "off", false));
	#end
}

abstract B3Vec2(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var x(get, set):Float;
	public var y(get, set):Float;
	public function new() {
		#if lime_box3d
		this = box3d_b3Vec2_new();
		#else
		this = null;
		#end
	}
	private inline function get_x():Float {
		#if lime_box3d
		return box3d_b3Vec2_x_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_x(v:Float):Float {
		#if lime_box3d
		return box3d_b3Vec2_x_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_y():Float {
		#if lime_box3d
		return box3d_b3Vec2_y_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_y(v:Float):Float {
		#if lime_box3d
		return box3d_b3Vec2_y_set(this, v);
		#else
		return 0.0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3Vec2_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Vec2_new", "o", false));
	private static var box3d_b3Vec2_x_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Vec2_x_get", "of", false));
	private static var box3d_b3Vec2_x_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Vec2_x_set", "off", false));
	private static var box3d_b3Vec2_y_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Vec2_y_get", "of", false));
	private static var box3d_b3Vec2_y_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Vec2_y_set", "off", false));
	#end
}

abstract B3CosSin(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var cosine(get, set):Float;
	public var sine(get, set):Float;
	public function new() {
		#if lime_box3d
		this = box3d_b3CosSin_new();
		#else
		this = null;
		#end
	}
	private inline function get_cosine():Float {
		#if lime_box3d
		return box3d_b3CosSin_cosine_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_cosine(v:Float):Float {
		#if lime_box3d
		return box3d_b3CosSin_cosine_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_sine():Float {
		#if lime_box3d
		return box3d_b3CosSin_sine_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_sine(v:Float):Float {
		#if lime_box3d
		return box3d_b3CosSin_sine_set(this, v);
		#else
		return 0.0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3CosSin_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3CosSin_new", "o", false));
	private static var box3d_b3CosSin_cosine_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3CosSin_cosine_get", "of", false));
	private static var box3d_b3CosSin_cosine_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3CosSin_cosine_set", "off", false));
	private static var box3d_b3CosSin_sine_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3CosSin_sine_get", "of", false));
	private static var box3d_b3CosSin_sine_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3CosSin_sine_set", "off", false));
	#end
}

abstract B3Quat(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var v(get, set):B3Vec3;
	public var s(get, set):Float;
	public function new() {
		#if lime_box3d
		this = box3d_b3Quat_new();
		#else
		this = null;
		#end
	}
	private inline function get_v():B3Vec3 {
		#if lime_box3d
		return box3d_b3Quat_v_get(this);
		#else
		return null;
		#end
	}
	private inline function set_v(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3Quat_v_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_s():Float {
		#if lime_box3d
		return box3d_b3Quat_s_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_s(v:Float):Float {
		#if lime_box3d
		return box3d_b3Quat_s_set(this, v);
		#else
		return 0.0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3Quat_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Quat_new", "o", false));
	private static var box3d_b3Quat_v_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Quat_v_get", "oo", false));
	private static var box3d_b3Quat_v_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Quat_v_set", "ooo", false));
	private static var box3d_b3Quat_s_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Quat_s_get", "of", false));
	private static var box3d_b3Quat_s_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Quat_s_set", "off", false));
	#end
}

abstract B3AABB(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var lowerBound(get, set):B3Vec3;
	public var upperBound(get, set):B3Vec3;
	public function new() {
		#if lime_box3d
		this = box3d_b3AABB_new();
		#else
		this = null;
		#end
	}
	private inline function get_lowerBound():B3Vec3 {
		#if lime_box3d
		return box3d_b3AABB_lowerBound_get(this);
		#else
		return null;
		#end
	}
	private inline function set_lowerBound(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3AABB_lowerBound_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_upperBound():B3Vec3 {
		#if lime_box3d
		return box3d_b3AABB_upperBound_get(this);
		#else
		return null;
		#end
	}
	private inline function set_upperBound(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3AABB_upperBound_set(this, v);
		#else
		return null;
		#end
	}
	#if lime_box3d
	private static var box3d_b3AABB_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3AABB_new", "o", false));
	private static var box3d_b3AABB_lowerBound_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3AABB_lowerBound_get", "oo", false));
	private static var box3d_b3AABB_lowerBound_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3AABB_lowerBound_set", "ooo", false));
	private static var box3d_b3AABB_upperBound_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3AABB_upperBound_get", "oo", false));
	private static var box3d_b3AABB_upperBound_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3AABB_upperBound_set", "ooo", false));
	#end
}

abstract B3Plane(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var normal(get, set):B3Vec3;
	public var offset(get, set):Float;
	public function new() {
		#if lime_box3d
		this = box3d_b3Plane_new();
		#else
		this = null;
		#end
	}
	private inline function get_normal():B3Vec3 {
		#if lime_box3d
		return box3d_b3Plane_normal_get(this);
		#else
		return null;
		#end
	}
	private inline function set_normal(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3Plane_normal_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_offset():Float {
		#if lime_box3d
		return box3d_b3Plane_offset_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_offset(v:Float):Float {
		#if lime_box3d
		return box3d_b3Plane_offset_set(this, v);
		#else
		return 0.0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3Plane_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Plane_new", "o", false));
	private static var box3d_b3Plane_normal_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Plane_normal_get", "oo", false));
	private static var box3d_b3Plane_normal_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3Plane_normal_set", "ooo", false));
	private static var box3d_b3Plane_offset_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Plane_offset_get", "of", false));
	private static var box3d_b3Plane_offset_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3Plane_offset_set", "off", false));
	#end
}

abstract B3SegmentDistanceResult(CFFIPointer) from CFFIPointer to CFFIPointer
{
	public var point1(get, set):B3Vec3;
	public var fraction1(get, set):Float;
	public var point2(get, set):B3Vec3;
	public var fraction2(get, set):Float;
	public function new() {
		#if lime_box3d
		this = box3d_b3SegmentDistanceResult_new();
		#else
		this = null;
		#end
	}
	private inline function get_point1():B3Vec3 {
		#if lime_box3d
		return box3d_b3SegmentDistanceResult_point1_get(this);
		#else
		return null;
		#end
	}
	private inline function set_point1(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3SegmentDistanceResult_point1_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_fraction1():Float {
		#if lime_box3d
		return box3d_b3SegmentDistanceResult_fraction1_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_fraction1(v:Float):Float {
		#if lime_box3d
		return box3d_b3SegmentDistanceResult_fraction1_set(this, v);
		#else
		return 0.0;
		#end
	}
	private inline function get_point2():B3Vec3 {
		#if lime_box3d
		return box3d_b3SegmentDistanceResult_point2_get(this);
		#else
		return null;
		#end
	}
	private inline function set_point2(v:B3Vec3):B3Vec3 {
		#if lime_box3d
		return box3d_b3SegmentDistanceResult_point2_set(this, v);
		#else
		return null;
		#end
	}
	private inline function get_fraction2():Float {
		#if lime_box3d
		return box3d_b3SegmentDistanceResult_fraction2_get(this);
		#else
		return 0.0;
		#end
	}
	private inline function set_fraction2(v:Float):Float {
		#if lime_box3d
		return box3d_b3SegmentDistanceResult_fraction2_set(this, v);
		#else
		return 0.0;
		#end
	}
	#if lime_box3d
	private static var box3d_b3SegmentDistanceResult_new = new cpp.Callable<Void->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SegmentDistanceResult_new", "o", false));
	private static var box3d_b3SegmentDistanceResult_point1_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SegmentDistanceResult_point1_get", "oo", false));
	private static var box3d_b3SegmentDistanceResult_point1_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SegmentDistanceResult_point1_set", "ooo", false));
	private static var box3d_b3SegmentDistanceResult_fraction1_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SegmentDistanceResult_fraction1_get", "of", false));
	private static var box3d_b3SegmentDistanceResult_fraction1_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SegmentDistanceResult_fraction1_set", "off", false));
	private static var box3d_b3SegmentDistanceResult_point2_get = new cpp.Callable<cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SegmentDistanceResult_point2_get", "oo", false));
	private static var box3d_b3SegmentDistanceResult_point2_set = new cpp.Callable<cpp.Object->cpp.Object->cpp.Object>(cpp.Prime._loadPrime("box3d", "box3d_b3SegmentDistanceResult_point2_set", "ooo", false));
	private static var box3d_b3SegmentDistanceResult_fraction2_get = new cpp.Callable<cpp.Object->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SegmentDistanceResult_fraction2_get", "of", false));
	private static var box3d_b3SegmentDistanceResult_fraction2_set = new cpp.Callable<cpp.Object->Float32->Float32>(cpp.Prime._loadPrime("box3d", "box3d_b3SegmentDistanceResult_fraction2_set", "off", false));
	#end
}