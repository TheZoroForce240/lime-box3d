#ifndef STATIC_LINK
#define IMPLEMENT_API
#endif

#if defined(HX_WINDOWS) || defined(HX_MACOS) || defined(HX_LINUX)
#define NEKO_COMPATIBLE
#endif

#include <hx/CFFI.h>
#include <hx/CFFIPrime.h>

////
#ifdef LIME_BOX3D
#include "box3d/box3d.h"

static void box3d_b3Vec3_gc (value handle) {
	b3Vec3* ptr = (b3Vec3*)val_data(handle);
	delete ptr;
}
static value box3d_b3Vec3_new () {
	b3Vec3* ptr = new b3Vec3();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3Vec3_gc);
	return retVal;
}
static float box3d_b3Vec3_x_get ( value handle ) {
	b3Vec3* ptr = (b3Vec3*)val_data(handle);
	return ptr->x;
}
static float box3d_b3Vec3_x_set ( value handle, float v ) {
	b3Vec3* ptr = (b3Vec3*)val_data(handle);
	return ptr->x = v;
}
static float box3d_b3Vec3_y_get ( value handle ) {
	b3Vec3* ptr = (b3Vec3*)val_data(handle);
	return ptr->y;
}
static float box3d_b3Vec3_y_set ( value handle, float v ) {
	b3Vec3* ptr = (b3Vec3*)val_data(handle);
	return ptr->y = v;
}
static float box3d_b3Vec3_z_get ( value handle ) {
	b3Vec3* ptr = (b3Vec3*)val_data(handle);
	return ptr->z;
}
static float box3d_b3Vec3_z_set ( value handle, float v ) {
	b3Vec3* ptr = (b3Vec3*)val_data(handle);
	return ptr->z = v;
}

DEFINE_PRIME0 (box3d_b3Vec3_new);
DEFINE_PRIME1 (box3d_b3Vec3_x_get);
DEFINE_PRIME2 (box3d_b3Vec3_x_set);
DEFINE_PRIME1 (box3d_b3Vec3_y_get);
DEFINE_PRIME2 (box3d_b3Vec3_y_set);
DEFINE_PRIME1 (box3d_b3Vec3_z_get);
DEFINE_PRIME2 (box3d_b3Vec3_z_set);

static void box3d_b3Transform_gc (value handle) {
	b3Transform* ptr = (b3Transform*)val_data(handle);
	delete ptr;
}
static value box3d_b3Transform_new () {
	b3Transform* ptr = new b3Transform();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3Transform_gc);
	return retVal;
}
static value box3d_b3Transform_p_get ( value handle ) {
	b3Transform* ptr = (b3Transform*)val_data(handle);
	return cffi::alloc_pointer(&ptr->p);
}
static value box3d_b3Transform_p_set ( value handle, value v ) {
	b3Transform* ptr = (b3Transform*)val_data(handle);
	memcpy(&ptr->p, (void*)val_data(v), sizeof(b3Pos));
	return cffi::alloc_pointer(&ptr->p);
}
static value box3d_b3Transform_q_get ( value handle ) {
	b3Transform* ptr = (b3Transform*)val_data(handle);
	return cffi::alloc_pointer(&ptr->q);
}
static value box3d_b3Transform_q_set ( value handle, value v ) {
	b3Transform* ptr = (b3Transform*)val_data(handle);
	memcpy(&ptr->q, (void*)val_data(v), sizeof(b3Quat));
	return cffi::alloc_pointer(&ptr->q);
}

DEFINE_PRIME0 (box3d_b3Transform_new);
DEFINE_PRIME1 (box3d_b3Transform_p_get);
DEFINE_PRIME2 (box3d_b3Transform_p_set);
DEFINE_PRIME1 (box3d_b3Transform_q_get);
DEFINE_PRIME2 (box3d_b3Transform_q_set);

static void box3d_b3Pos_gc (value handle) {
	b3Pos* ptr = (b3Pos*)val_data(handle);
	delete ptr;
}
static value box3d_b3Pos_new () {
	b3Pos* ptr = new b3Pos();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3Pos_gc);
	return retVal;
}
static float box3d_b3Pos_x_get ( value handle ) {
	b3Pos* ptr = (b3Pos*)val_data(handle);
	return ptr->x;
}
static float box3d_b3Pos_x_set ( value handle, float v ) {
	b3Pos* ptr = (b3Pos*)val_data(handle);
	return ptr->x = v;
}
static float box3d_b3Pos_y_get ( value handle ) {
	b3Pos* ptr = (b3Pos*)val_data(handle);
	return ptr->y;
}
static float box3d_b3Pos_y_set ( value handle, float v ) {
	b3Pos* ptr = (b3Pos*)val_data(handle);
	return ptr->y = v;
}
static float box3d_b3Pos_z_get ( value handle ) {
	b3Pos* ptr = (b3Pos*)val_data(handle);
	return ptr->z;
}
static float box3d_b3Pos_z_set ( value handle, float v ) {
	b3Pos* ptr = (b3Pos*)val_data(handle);
	return ptr->z = v;
}

DEFINE_PRIME0 (box3d_b3Pos_new);
DEFINE_PRIME1 (box3d_b3Pos_x_get);
DEFINE_PRIME2 (box3d_b3Pos_x_set);
DEFINE_PRIME1 (box3d_b3Pos_y_get);
DEFINE_PRIME2 (box3d_b3Pos_y_set);
DEFINE_PRIME1 (box3d_b3Pos_z_get);
DEFINE_PRIME2 (box3d_b3Pos_z_set);

static void box3d_b3WorldTransform_gc (value handle) {
	b3WorldTransform* ptr = (b3WorldTransform*)val_data(handle);
	delete ptr;
}
static value box3d_b3WorldTransform_new () {
	b3WorldTransform* ptr = new b3WorldTransform();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3WorldTransform_gc);
	return retVal;
}
static value box3d_b3WorldTransform_p_get ( value handle ) {
	b3WorldTransform* ptr = (b3WorldTransform*)val_data(handle);
	return cffi::alloc_pointer(&ptr->p);
}
static value box3d_b3WorldTransform_p_set ( value handle, value v ) {
	b3WorldTransform* ptr = (b3WorldTransform*)val_data(handle);
	memcpy(&ptr->p, (void*)val_data(v), sizeof(b3Pos));
	return cffi::alloc_pointer(&ptr->p);
}
static value box3d_b3WorldTransform_q_get ( value handle ) {
	b3WorldTransform* ptr = (b3WorldTransform*)val_data(handle);
	return cffi::alloc_pointer(&ptr->q);
}
static value box3d_b3WorldTransform_q_set ( value handle, value v ) {
	b3WorldTransform* ptr = (b3WorldTransform*)val_data(handle);
	memcpy(&ptr->q, (void*)val_data(v), sizeof(b3Quat));
	return cffi::alloc_pointer(&ptr->q);
}

DEFINE_PRIME0 (box3d_b3WorldTransform_new);
DEFINE_PRIME1 (box3d_b3WorldTransform_p_get);
DEFINE_PRIME2 (box3d_b3WorldTransform_p_set);
DEFINE_PRIME1 (box3d_b3WorldTransform_q_get);
DEFINE_PRIME2 (box3d_b3WorldTransform_q_set);

static void box3d_b3Matrix3_gc (value handle) {
	b3Matrix3* ptr = (b3Matrix3*)val_data(handle);
	delete ptr;
}
static value box3d_b3Matrix3_new () {
	b3Matrix3* ptr = new b3Matrix3();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3Matrix3_gc);
	return retVal;
}
static value box3d_b3Matrix3_cx_get ( value handle ) {
	b3Matrix3* ptr = (b3Matrix3*)val_data(handle);
	return cffi::alloc_pointer(&ptr->cx);
}
static value box3d_b3Matrix3_cx_set ( value handle, value v ) {
	b3Matrix3* ptr = (b3Matrix3*)val_data(handle);
	memcpy(&ptr->cx, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->cx);
}
static value box3d_b3Matrix3_cy_get ( value handle ) {
	b3Matrix3* ptr = (b3Matrix3*)val_data(handle);
	return cffi::alloc_pointer(&ptr->cy);
}
static value box3d_b3Matrix3_cy_set ( value handle, value v ) {
	b3Matrix3* ptr = (b3Matrix3*)val_data(handle);
	memcpy(&ptr->cy, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->cy);
}
static value box3d_b3Matrix3_cz_get ( value handle ) {
	b3Matrix3* ptr = (b3Matrix3*)val_data(handle);
	return cffi::alloc_pointer(&ptr->cz);
}
static value box3d_b3Matrix3_cz_set ( value handle, value v ) {
	b3Matrix3* ptr = (b3Matrix3*)val_data(handle);
	memcpy(&ptr->cz, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->cz);
}

DEFINE_PRIME0 (box3d_b3Matrix3_new);
DEFINE_PRIME1 (box3d_b3Matrix3_cx_get);
DEFINE_PRIME2 (box3d_b3Matrix3_cx_set);
DEFINE_PRIME1 (box3d_b3Matrix3_cy_get);
DEFINE_PRIME2 (box3d_b3Matrix3_cy_set);
DEFINE_PRIME1 (box3d_b3Matrix3_cz_get);
DEFINE_PRIME2 (box3d_b3Matrix3_cz_set);

static void box3d_b3WorldCastOutput_gc (value handle) {
	b3WorldCastOutput* ptr = (b3WorldCastOutput*)val_data(handle);
	delete ptr;
}
static value box3d_b3WorldCastOutput_new () {
	b3WorldCastOutput* ptr = new b3WorldCastOutput();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3WorldCastOutput_gc);
	return retVal;
}
static value box3d_b3WorldCastOutput_normal_get ( value handle ) {
	b3WorldCastOutput* ptr = (b3WorldCastOutput*)val_data(handle);
	return cffi::alloc_pointer(&ptr->normal);
}
static value box3d_b3WorldCastOutput_normal_set ( value handle, value v ) {
	b3WorldCastOutput* ptr = (b3WorldCastOutput*)val_data(handle);
	memcpy(&ptr->normal, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->normal);
}
static value box3d_b3WorldCastOutput_point_get ( value handle ) {
	b3WorldCastOutput* ptr = (b3WorldCastOutput*)val_data(handle);
	return cffi::alloc_pointer(&ptr->point);
}
static value box3d_b3WorldCastOutput_point_set ( value handle, value v ) {
	b3WorldCastOutput* ptr = (b3WorldCastOutput*)val_data(handle);
	memcpy(&ptr->point, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->point);
}
static float box3d_b3WorldCastOutput_fraction_get ( value handle ) {
	b3WorldCastOutput* ptr = (b3WorldCastOutput*)val_data(handle);
	return ptr->fraction;
}
static float box3d_b3WorldCastOutput_fraction_set ( value handle, float v ) {
	b3WorldCastOutput* ptr = (b3WorldCastOutput*)val_data(handle);
	return ptr->fraction = v;
}
static int box3d_b3WorldCastOutput_iterations_get ( value handle ) {
	b3WorldCastOutput* ptr = (b3WorldCastOutput*)val_data(handle);
	return ptr->iterations;
}
static int box3d_b3WorldCastOutput_iterations_set ( value handle, int v ) {
	b3WorldCastOutput* ptr = (b3WorldCastOutput*)val_data(handle);
	return ptr->iterations = v;
}
static int box3d_b3WorldCastOutput_triangleIndex_get ( value handle ) {
	b3WorldCastOutput* ptr = (b3WorldCastOutput*)val_data(handle);
	return ptr->triangleIndex;
}
static int box3d_b3WorldCastOutput_triangleIndex_set ( value handle, int v ) {
	b3WorldCastOutput* ptr = (b3WorldCastOutput*)val_data(handle);
	return ptr->triangleIndex = v;
}
static int box3d_b3WorldCastOutput_childIndex_get ( value handle ) {
	b3WorldCastOutput* ptr = (b3WorldCastOutput*)val_data(handle);
	return ptr->childIndex;
}
static int box3d_b3WorldCastOutput_childIndex_set ( value handle, int v ) {
	b3WorldCastOutput* ptr = (b3WorldCastOutput*)val_data(handle);
	return ptr->childIndex = v;
}
static int box3d_b3WorldCastOutput_materialIndex_get ( value handle ) {
	b3WorldCastOutput* ptr = (b3WorldCastOutput*)val_data(handle);
	return ptr->materialIndex;
}
static int box3d_b3WorldCastOutput_materialIndex_set ( value handle, int v ) {
	b3WorldCastOutput* ptr = (b3WorldCastOutput*)val_data(handle);
	return ptr->materialIndex = v;
}
static bool box3d_b3WorldCastOutput_hit_get ( value handle ) {
	b3WorldCastOutput* ptr = (b3WorldCastOutput*)val_data(handle);
	return ptr->hit;
}
static bool box3d_b3WorldCastOutput_hit_set ( value handle, bool v ) {
	b3WorldCastOutput* ptr = (b3WorldCastOutput*)val_data(handle);
	return ptr->hit = v;
}

DEFINE_PRIME0 (box3d_b3WorldCastOutput_new);
DEFINE_PRIME1 (box3d_b3WorldCastOutput_normal_get);
DEFINE_PRIME2 (box3d_b3WorldCastOutput_normal_set);
DEFINE_PRIME1 (box3d_b3WorldCastOutput_point_get);
DEFINE_PRIME2 (box3d_b3WorldCastOutput_point_set);
DEFINE_PRIME1 (box3d_b3WorldCastOutput_fraction_get);
DEFINE_PRIME2 (box3d_b3WorldCastOutput_fraction_set);
DEFINE_PRIME1 (box3d_b3WorldCastOutput_iterations_get);
DEFINE_PRIME2 (box3d_b3WorldCastOutput_iterations_set);
DEFINE_PRIME1 (box3d_b3WorldCastOutput_triangleIndex_get);
DEFINE_PRIME2 (box3d_b3WorldCastOutput_triangleIndex_set);
DEFINE_PRIME1 (box3d_b3WorldCastOutput_childIndex_get);
DEFINE_PRIME2 (box3d_b3WorldCastOutput_childIndex_set);
DEFINE_PRIME1 (box3d_b3WorldCastOutput_materialIndex_get);
DEFINE_PRIME2 (box3d_b3WorldCastOutput_materialIndex_set);
DEFINE_PRIME1 (box3d_b3WorldCastOutput_hit_get);
DEFINE_PRIME2 (box3d_b3WorldCastOutput_hit_set);

static void box3d_b3CastOutput_gc (value handle) {
	b3CastOutput* ptr = (b3CastOutput*)val_data(handle);
	delete ptr;
}
static value box3d_b3CastOutput_new () {
	b3CastOutput* ptr = new b3CastOutput();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3CastOutput_gc);
	return retVal;
}
static value box3d_b3CastOutput_normal_get ( value handle ) {
	b3CastOutput* ptr = (b3CastOutput*)val_data(handle);
	return cffi::alloc_pointer(&ptr->normal);
}
static value box3d_b3CastOutput_normal_set ( value handle, value v ) {
	b3CastOutput* ptr = (b3CastOutput*)val_data(handle);
	memcpy(&ptr->normal, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->normal);
}
static value box3d_b3CastOutput_point_get ( value handle ) {
	b3CastOutput* ptr = (b3CastOutput*)val_data(handle);
	return cffi::alloc_pointer(&ptr->point);
}
static value box3d_b3CastOutput_point_set ( value handle, value v ) {
	b3CastOutput* ptr = (b3CastOutput*)val_data(handle);
	memcpy(&ptr->point, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->point);
}
static float box3d_b3CastOutput_fraction_get ( value handle ) {
	b3CastOutput* ptr = (b3CastOutput*)val_data(handle);
	return ptr->fraction;
}
static float box3d_b3CastOutput_fraction_set ( value handle, float v ) {
	b3CastOutput* ptr = (b3CastOutput*)val_data(handle);
	return ptr->fraction = v;
}
static int box3d_b3CastOutput_iterations_get ( value handle ) {
	b3CastOutput* ptr = (b3CastOutput*)val_data(handle);
	return ptr->iterations;
}
static int box3d_b3CastOutput_iterations_set ( value handle, int v ) {
	b3CastOutput* ptr = (b3CastOutput*)val_data(handle);
	return ptr->iterations = v;
}
static int box3d_b3CastOutput_triangleIndex_get ( value handle ) {
	b3CastOutput* ptr = (b3CastOutput*)val_data(handle);
	return ptr->triangleIndex;
}
static int box3d_b3CastOutput_triangleIndex_set ( value handle, int v ) {
	b3CastOutput* ptr = (b3CastOutput*)val_data(handle);
	return ptr->triangleIndex = v;
}
static int box3d_b3CastOutput_childIndex_get ( value handle ) {
	b3CastOutput* ptr = (b3CastOutput*)val_data(handle);
	return ptr->childIndex;
}
static int box3d_b3CastOutput_childIndex_set ( value handle, int v ) {
	b3CastOutput* ptr = (b3CastOutput*)val_data(handle);
	return ptr->childIndex = v;
}
static int box3d_b3CastOutput_materialIndex_get ( value handle ) {
	b3CastOutput* ptr = (b3CastOutput*)val_data(handle);
	return ptr->materialIndex;
}
static int box3d_b3CastOutput_materialIndex_set ( value handle, int v ) {
	b3CastOutput* ptr = (b3CastOutput*)val_data(handle);
	return ptr->materialIndex = v;
}
static bool box3d_b3CastOutput_hit_get ( value handle ) {
	b3CastOutput* ptr = (b3CastOutput*)val_data(handle);
	return ptr->hit;
}
static bool box3d_b3CastOutput_hit_set ( value handle, bool v ) {
	b3CastOutput* ptr = (b3CastOutput*)val_data(handle);
	return ptr->hit = v;
}

DEFINE_PRIME0 (box3d_b3CastOutput_new);
DEFINE_PRIME1 (box3d_b3CastOutput_normal_get);
DEFINE_PRIME2 (box3d_b3CastOutput_normal_set);
DEFINE_PRIME1 (box3d_b3CastOutput_point_get);
DEFINE_PRIME2 (box3d_b3CastOutput_point_set);
DEFINE_PRIME1 (box3d_b3CastOutput_fraction_get);
DEFINE_PRIME2 (box3d_b3CastOutput_fraction_set);
DEFINE_PRIME1 (box3d_b3CastOutput_iterations_get);
DEFINE_PRIME2 (box3d_b3CastOutput_iterations_set);
DEFINE_PRIME1 (box3d_b3CastOutput_triangleIndex_get);
DEFINE_PRIME2 (box3d_b3CastOutput_triangleIndex_set);
DEFINE_PRIME1 (box3d_b3CastOutput_childIndex_get);
DEFINE_PRIME2 (box3d_b3CastOutput_childIndex_set);
DEFINE_PRIME1 (box3d_b3CastOutput_materialIndex_get);
DEFINE_PRIME2 (box3d_b3CastOutput_materialIndex_set);
DEFINE_PRIME1 (box3d_b3CastOutput_hit_get);
DEFINE_PRIME2 (box3d_b3CastOutput_hit_set);

static void box3d_b3Version_gc (value handle) {
	b3Version* ptr = (b3Version*)val_data(handle);
	delete ptr;
}
static value box3d_b3Version_new () {
	b3Version* ptr = new b3Version();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3Version_gc);
	return retVal;
}
static int box3d_b3Version_major_get ( value handle ) {
	b3Version* ptr = (b3Version*)val_data(handle);
	return ptr->major;
}
static int box3d_b3Version_major_set ( value handle, int v ) {
	b3Version* ptr = (b3Version*)val_data(handle);
	return ptr->major = v;
}
static int box3d_b3Version_minor_get ( value handle ) {
	b3Version* ptr = (b3Version*)val_data(handle);
	return ptr->minor;
}
static int box3d_b3Version_minor_set ( value handle, int v ) {
	b3Version* ptr = (b3Version*)val_data(handle);
	return ptr->minor = v;
}
static int box3d_b3Version_revision_get ( value handle ) {
	b3Version* ptr = (b3Version*)val_data(handle);
	return ptr->revision;
}
static int box3d_b3Version_revision_set ( value handle, int v ) {
	b3Version* ptr = (b3Version*)val_data(handle);
	return ptr->revision = v;
}

DEFINE_PRIME0 (box3d_b3Version_new);
DEFINE_PRIME1 (box3d_b3Version_major_get);
DEFINE_PRIME2 (box3d_b3Version_major_set);
DEFINE_PRIME1 (box3d_b3Version_minor_get);
DEFINE_PRIME2 (box3d_b3Version_minor_set);
DEFINE_PRIME1 (box3d_b3Version_revision_get);
DEFINE_PRIME2 (box3d_b3Version_revision_set);

static void box3d_b3Capacity_gc (value handle) {
	b3Capacity* ptr = (b3Capacity*)val_data(handle);
	delete ptr;
}
static value box3d_b3Capacity_new () {
	b3Capacity* ptr = new b3Capacity();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3Capacity_gc);
	return retVal;
}
static int box3d_b3Capacity_staticShapeCount_get ( value handle ) {
	b3Capacity* ptr = (b3Capacity*)val_data(handle);
	return ptr->staticShapeCount;
}
static int box3d_b3Capacity_staticShapeCount_set ( value handle, int v ) {
	b3Capacity* ptr = (b3Capacity*)val_data(handle);
	return ptr->staticShapeCount = v;
}
static int box3d_b3Capacity_dynamicShapeCount_get ( value handle ) {
	b3Capacity* ptr = (b3Capacity*)val_data(handle);
	return ptr->dynamicShapeCount;
}
static int box3d_b3Capacity_dynamicShapeCount_set ( value handle, int v ) {
	b3Capacity* ptr = (b3Capacity*)val_data(handle);
	return ptr->dynamicShapeCount = v;
}
static int box3d_b3Capacity_staticBodyCount_get ( value handle ) {
	b3Capacity* ptr = (b3Capacity*)val_data(handle);
	return ptr->staticBodyCount;
}
static int box3d_b3Capacity_staticBodyCount_set ( value handle, int v ) {
	b3Capacity* ptr = (b3Capacity*)val_data(handle);
	return ptr->staticBodyCount = v;
}
static int box3d_b3Capacity_dynamicBodyCount_get ( value handle ) {
	b3Capacity* ptr = (b3Capacity*)val_data(handle);
	return ptr->dynamicBodyCount;
}
static int box3d_b3Capacity_dynamicBodyCount_set ( value handle, int v ) {
	b3Capacity* ptr = (b3Capacity*)val_data(handle);
	return ptr->dynamicBodyCount = v;
}
static int box3d_b3Capacity_contactCount_get ( value handle ) {
	b3Capacity* ptr = (b3Capacity*)val_data(handle);
	return ptr->contactCount;
}
static int box3d_b3Capacity_contactCount_set ( value handle, int v ) {
	b3Capacity* ptr = (b3Capacity*)val_data(handle);
	return ptr->contactCount = v;
}

DEFINE_PRIME0 (box3d_b3Capacity_new);
DEFINE_PRIME1 (box3d_b3Capacity_staticShapeCount_get);
DEFINE_PRIME2 (box3d_b3Capacity_staticShapeCount_set);
DEFINE_PRIME1 (box3d_b3Capacity_dynamicShapeCount_get);
DEFINE_PRIME2 (box3d_b3Capacity_dynamicShapeCount_set);
DEFINE_PRIME1 (box3d_b3Capacity_staticBodyCount_get);
DEFINE_PRIME2 (box3d_b3Capacity_staticBodyCount_set);
DEFINE_PRIME1 (box3d_b3Capacity_dynamicBodyCount_get);
DEFINE_PRIME2 (box3d_b3Capacity_dynamicBodyCount_set);
DEFINE_PRIME1 (box3d_b3Capacity_contactCount_get);
DEFINE_PRIME2 (box3d_b3Capacity_contactCount_set);

static void box3d_b3WorldDef_gc (value handle) {
	b3WorldDef* ptr = (b3WorldDef*)val_data(handle);
	delete ptr;
}
static value box3d_b3WorldDef_new () {
	b3WorldDef* ptr = new b3WorldDef();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3WorldDef_gc);
	return retVal;
}
static value box3d_b3WorldDef_gravity_get ( value handle ) {
	b3WorldDef* ptr = (b3WorldDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->gravity);
}
static value box3d_b3WorldDef_gravity_set ( value handle, value v ) {
	b3WorldDef* ptr = (b3WorldDef*)val_data(handle);
	memcpy(&ptr->gravity, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->gravity);
}
static float box3d_b3WorldDef_restitutionThreshold_get ( value handle ) {
	b3WorldDef* ptr = (b3WorldDef*)val_data(handle);
	return ptr->restitutionThreshold;
}
static float box3d_b3WorldDef_restitutionThreshold_set ( value handle, float v ) {
	b3WorldDef* ptr = (b3WorldDef*)val_data(handle);
	return ptr->restitutionThreshold = v;
}
static float box3d_b3WorldDef_hitEventThreshold_get ( value handle ) {
	b3WorldDef* ptr = (b3WorldDef*)val_data(handle);
	return ptr->hitEventThreshold;
}
static float box3d_b3WorldDef_hitEventThreshold_set ( value handle, float v ) {
	b3WorldDef* ptr = (b3WorldDef*)val_data(handle);
	return ptr->hitEventThreshold = v;
}
static float box3d_b3WorldDef_contactHertz_get ( value handle ) {
	b3WorldDef* ptr = (b3WorldDef*)val_data(handle);
	return ptr->contactHertz;
}
static float box3d_b3WorldDef_contactHertz_set ( value handle, float v ) {
	b3WorldDef* ptr = (b3WorldDef*)val_data(handle);
	return ptr->contactHertz = v;
}
static float box3d_b3WorldDef_contactDampingRatio_get ( value handle ) {
	b3WorldDef* ptr = (b3WorldDef*)val_data(handle);
	return ptr->contactDampingRatio;
}
static float box3d_b3WorldDef_contactDampingRatio_set ( value handle, float v ) {
	b3WorldDef* ptr = (b3WorldDef*)val_data(handle);
	return ptr->contactDampingRatio = v;
}
static float box3d_b3WorldDef_contactSpeed_get ( value handle ) {
	b3WorldDef* ptr = (b3WorldDef*)val_data(handle);
	return ptr->contactSpeed;
}
static float box3d_b3WorldDef_contactSpeed_set ( value handle, float v ) {
	b3WorldDef* ptr = (b3WorldDef*)val_data(handle);
	return ptr->contactSpeed = v;
}
static float box3d_b3WorldDef_maximumLinearSpeed_get ( value handle ) {
	b3WorldDef* ptr = (b3WorldDef*)val_data(handle);
	return ptr->maximumLinearSpeed;
}
static float box3d_b3WorldDef_maximumLinearSpeed_set ( value handle, float v ) {
	b3WorldDef* ptr = (b3WorldDef*)val_data(handle);
	return ptr->maximumLinearSpeed = v;
}
static bool box3d_b3WorldDef_enableSleep_get ( value handle ) {
	b3WorldDef* ptr = (b3WorldDef*)val_data(handle);
	return ptr->enableSleep;
}
static bool box3d_b3WorldDef_enableSleep_set ( value handle, bool v ) {
	b3WorldDef* ptr = (b3WorldDef*)val_data(handle);
	return ptr->enableSleep = v;
}
static bool box3d_b3WorldDef_enableContinuous_get ( value handle ) {
	b3WorldDef* ptr = (b3WorldDef*)val_data(handle);
	return ptr->enableContinuous;
}
static bool box3d_b3WorldDef_enableContinuous_set ( value handle, bool v ) {
	b3WorldDef* ptr = (b3WorldDef*)val_data(handle);
	return ptr->enableContinuous = v;
}
static int box3d_b3WorldDef_workerCount_get ( value handle ) {
	b3WorldDef* ptr = (b3WorldDef*)val_data(handle);
	return ptr->workerCount;
}
static int box3d_b3WorldDef_workerCount_set ( value handle, int v ) {
	b3WorldDef* ptr = (b3WorldDef*)val_data(handle);
	return ptr->workerCount = v;
}
static value box3d_b3WorldDef_capacity_get ( value handle ) {
	b3WorldDef* ptr = (b3WorldDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->capacity);
}
static value box3d_b3WorldDef_capacity_set ( value handle, value v ) {
	b3WorldDef* ptr = (b3WorldDef*)val_data(handle);
	memcpy(&ptr->capacity, (void*)val_data(v), sizeof(b3Capacity));
	return cffi::alloc_pointer(&ptr->capacity);
}
static int box3d_b3WorldDef_internalValue_get ( value handle ) {
	b3WorldDef* ptr = (b3WorldDef*)val_data(handle);
	return ptr->internalValue;
}
static int box3d_b3WorldDef_internalValue_set ( value handle, int v ) {
	b3WorldDef* ptr = (b3WorldDef*)val_data(handle);
	return ptr->internalValue = v;
}

DEFINE_PRIME0 (box3d_b3WorldDef_new);
DEFINE_PRIME1 (box3d_b3WorldDef_gravity_get);
DEFINE_PRIME2 (box3d_b3WorldDef_gravity_set);
DEFINE_PRIME1 (box3d_b3WorldDef_restitutionThreshold_get);
DEFINE_PRIME2 (box3d_b3WorldDef_restitutionThreshold_set);
DEFINE_PRIME1 (box3d_b3WorldDef_hitEventThreshold_get);
DEFINE_PRIME2 (box3d_b3WorldDef_hitEventThreshold_set);
DEFINE_PRIME1 (box3d_b3WorldDef_contactHertz_get);
DEFINE_PRIME2 (box3d_b3WorldDef_contactHertz_set);
DEFINE_PRIME1 (box3d_b3WorldDef_contactDampingRatio_get);
DEFINE_PRIME2 (box3d_b3WorldDef_contactDampingRatio_set);
DEFINE_PRIME1 (box3d_b3WorldDef_contactSpeed_get);
DEFINE_PRIME2 (box3d_b3WorldDef_contactSpeed_set);
DEFINE_PRIME1 (box3d_b3WorldDef_maximumLinearSpeed_get);
DEFINE_PRIME2 (box3d_b3WorldDef_maximumLinearSpeed_set);
DEFINE_PRIME1 (box3d_b3WorldDef_enableSleep_get);
DEFINE_PRIME2 (box3d_b3WorldDef_enableSleep_set);
DEFINE_PRIME1 (box3d_b3WorldDef_enableContinuous_get);
DEFINE_PRIME2 (box3d_b3WorldDef_enableContinuous_set);
DEFINE_PRIME1 (box3d_b3WorldDef_workerCount_get);
DEFINE_PRIME2 (box3d_b3WorldDef_workerCount_set);
DEFINE_PRIME1 (box3d_b3WorldDef_capacity_get);
DEFINE_PRIME2 (box3d_b3WorldDef_capacity_set);
DEFINE_PRIME1 (box3d_b3WorldDef_internalValue_get);
DEFINE_PRIME2 (box3d_b3WorldDef_internalValue_set);

static void box3d_b3MotionLocks_gc (value handle) {
	b3MotionLocks* ptr = (b3MotionLocks*)val_data(handle);
	delete ptr;
}
static value box3d_b3MotionLocks_new () {
	b3MotionLocks* ptr = new b3MotionLocks();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3MotionLocks_gc);
	return retVal;
}
static bool box3d_b3MotionLocks_linearX_get ( value handle ) {
	b3MotionLocks* ptr = (b3MotionLocks*)val_data(handle);
	return ptr->linearX;
}
static bool box3d_b3MotionLocks_linearX_set ( value handle, bool v ) {
	b3MotionLocks* ptr = (b3MotionLocks*)val_data(handle);
	return ptr->linearX = v;
}
static bool box3d_b3MotionLocks_linearY_get ( value handle ) {
	b3MotionLocks* ptr = (b3MotionLocks*)val_data(handle);
	return ptr->linearY;
}
static bool box3d_b3MotionLocks_linearY_set ( value handle, bool v ) {
	b3MotionLocks* ptr = (b3MotionLocks*)val_data(handle);
	return ptr->linearY = v;
}
static bool box3d_b3MotionLocks_linearZ_get ( value handle ) {
	b3MotionLocks* ptr = (b3MotionLocks*)val_data(handle);
	return ptr->linearZ;
}
static bool box3d_b3MotionLocks_linearZ_set ( value handle, bool v ) {
	b3MotionLocks* ptr = (b3MotionLocks*)val_data(handle);
	return ptr->linearZ = v;
}
static bool box3d_b3MotionLocks_angularX_get ( value handle ) {
	b3MotionLocks* ptr = (b3MotionLocks*)val_data(handle);
	return ptr->angularX;
}
static bool box3d_b3MotionLocks_angularX_set ( value handle, bool v ) {
	b3MotionLocks* ptr = (b3MotionLocks*)val_data(handle);
	return ptr->angularX = v;
}
static bool box3d_b3MotionLocks_angularY_get ( value handle ) {
	b3MotionLocks* ptr = (b3MotionLocks*)val_data(handle);
	return ptr->angularY;
}
static bool box3d_b3MotionLocks_angularY_set ( value handle, bool v ) {
	b3MotionLocks* ptr = (b3MotionLocks*)val_data(handle);
	return ptr->angularY = v;
}
static bool box3d_b3MotionLocks_angularZ_get ( value handle ) {
	b3MotionLocks* ptr = (b3MotionLocks*)val_data(handle);
	return ptr->angularZ;
}
static bool box3d_b3MotionLocks_angularZ_set ( value handle, bool v ) {
	b3MotionLocks* ptr = (b3MotionLocks*)val_data(handle);
	return ptr->angularZ = v;
}

DEFINE_PRIME0 (box3d_b3MotionLocks_new);
DEFINE_PRIME1 (box3d_b3MotionLocks_linearX_get);
DEFINE_PRIME2 (box3d_b3MotionLocks_linearX_set);
DEFINE_PRIME1 (box3d_b3MotionLocks_linearY_get);
DEFINE_PRIME2 (box3d_b3MotionLocks_linearY_set);
DEFINE_PRIME1 (box3d_b3MotionLocks_linearZ_get);
DEFINE_PRIME2 (box3d_b3MotionLocks_linearZ_set);
DEFINE_PRIME1 (box3d_b3MotionLocks_angularX_get);
DEFINE_PRIME2 (box3d_b3MotionLocks_angularX_set);
DEFINE_PRIME1 (box3d_b3MotionLocks_angularY_get);
DEFINE_PRIME2 (box3d_b3MotionLocks_angularY_set);
DEFINE_PRIME1 (box3d_b3MotionLocks_angularZ_get);
DEFINE_PRIME2 (box3d_b3MotionLocks_angularZ_set);

static void box3d_b3BodyDef_gc (value handle) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	delete ptr;
}
static value box3d_b3BodyDef_new () {
	b3BodyDef* ptr = new b3BodyDef();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3BodyDef_gc);
	return retVal;
}
static int box3d_b3BodyDef_type_get ( value handle ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	return ptr->type;
}
static int box3d_b3BodyDef_type_set ( value handle, int v ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	return ptr->type = (b3BodyType)v;
}
static value box3d_b3BodyDef_position_get ( value handle ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->position);
}
static value box3d_b3BodyDef_position_set ( value handle, value v ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	memcpy(&ptr->position, (void*)val_data(v), sizeof(b3Pos));
	return cffi::alloc_pointer(&ptr->position);
}
static value box3d_b3BodyDef_rotation_get ( value handle ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->rotation);
}
static value box3d_b3BodyDef_rotation_set ( value handle, value v ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	memcpy(&ptr->rotation, (void*)val_data(v), sizeof(b3Quat));
	return cffi::alloc_pointer(&ptr->rotation);
}
static value box3d_b3BodyDef_linearVelocity_get ( value handle ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->linearVelocity);
}
static value box3d_b3BodyDef_linearVelocity_set ( value handle, value v ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	memcpy(&ptr->linearVelocity, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->linearVelocity);
}
static value box3d_b3BodyDef_angularVelocity_get ( value handle ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->angularVelocity);
}
static value box3d_b3BodyDef_angularVelocity_set ( value handle, value v ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	memcpy(&ptr->angularVelocity, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->angularVelocity);
}
static float box3d_b3BodyDef_linearDamping_get ( value handle ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	return ptr->linearDamping;
}
static float box3d_b3BodyDef_linearDamping_set ( value handle, float v ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	return ptr->linearDamping = v;
}
static float box3d_b3BodyDef_angularDamping_get ( value handle ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	return ptr->angularDamping;
}
static float box3d_b3BodyDef_angularDamping_set ( value handle, float v ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	return ptr->angularDamping = v;
}
static float box3d_b3BodyDef_gravityScale_get ( value handle ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	return ptr->gravityScale;
}
static float box3d_b3BodyDef_gravityScale_set ( value handle, float v ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	return ptr->gravityScale = v;
}
static float box3d_b3BodyDef_sleepThreshold_get ( value handle ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	return ptr->sleepThreshold;
}
static float box3d_b3BodyDef_sleepThreshold_set ( value handle, float v ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	return ptr->sleepThreshold = v;
}
static HxString box3d_b3BodyDef_name_get ( value handle ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	return HxString(ptr->name);
}
static HxString box3d_b3BodyDef_name_set ( value handle, HxString v ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	return HxString(ptr->name = v.__s);
}
static value box3d_b3BodyDef_motionLocks_get ( value handle ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->motionLocks);
}
static value box3d_b3BodyDef_motionLocks_set ( value handle, value v ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	memcpy(&ptr->motionLocks, (void*)val_data(v), sizeof(b3MotionLocks));
	return cffi::alloc_pointer(&ptr->motionLocks);
}
static bool box3d_b3BodyDef_enableSleep_get ( value handle ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	return ptr->enableSleep;
}
static bool box3d_b3BodyDef_enableSleep_set ( value handle, bool v ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	return ptr->enableSleep = v;
}
static bool box3d_b3BodyDef_isAwake_get ( value handle ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	return ptr->isAwake;
}
static bool box3d_b3BodyDef_isAwake_set ( value handle, bool v ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	return ptr->isAwake = v;
}
static bool box3d_b3BodyDef_isBullet_get ( value handle ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	return ptr->isBullet;
}
static bool box3d_b3BodyDef_isBullet_set ( value handle, bool v ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	return ptr->isBullet = v;
}
static bool box3d_b3BodyDef_isEnabled_get ( value handle ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	return ptr->isEnabled;
}
static bool box3d_b3BodyDef_isEnabled_set ( value handle, bool v ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	return ptr->isEnabled = v;
}
static bool box3d_b3BodyDef_allowFastRotation_get ( value handle ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	return ptr->allowFastRotation;
}
static bool box3d_b3BodyDef_allowFastRotation_set ( value handle, bool v ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	return ptr->allowFastRotation = v;
}
static bool box3d_b3BodyDef_enableContactRecycling_get ( value handle ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	return ptr->enableContactRecycling;
}
static bool box3d_b3BodyDef_enableContactRecycling_set ( value handle, bool v ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	return ptr->enableContactRecycling = v;
}
static int box3d_b3BodyDef_internalValue_get ( value handle ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	return ptr->internalValue;
}
static int box3d_b3BodyDef_internalValue_set ( value handle, int v ) {
	b3BodyDef* ptr = (b3BodyDef*)val_data(handle);
	return ptr->internalValue = v;
}

DEFINE_PRIME0 (box3d_b3BodyDef_new);
DEFINE_PRIME1 (box3d_b3BodyDef_type_get);
DEFINE_PRIME2 (box3d_b3BodyDef_type_set);
DEFINE_PRIME1 (box3d_b3BodyDef_position_get);
DEFINE_PRIME2 (box3d_b3BodyDef_position_set);
DEFINE_PRIME1 (box3d_b3BodyDef_rotation_get);
DEFINE_PRIME2 (box3d_b3BodyDef_rotation_set);
DEFINE_PRIME1 (box3d_b3BodyDef_linearVelocity_get);
DEFINE_PRIME2 (box3d_b3BodyDef_linearVelocity_set);
DEFINE_PRIME1 (box3d_b3BodyDef_angularVelocity_get);
DEFINE_PRIME2 (box3d_b3BodyDef_angularVelocity_set);
DEFINE_PRIME1 (box3d_b3BodyDef_linearDamping_get);
DEFINE_PRIME2 (box3d_b3BodyDef_linearDamping_set);
DEFINE_PRIME1 (box3d_b3BodyDef_angularDamping_get);
DEFINE_PRIME2 (box3d_b3BodyDef_angularDamping_set);
DEFINE_PRIME1 (box3d_b3BodyDef_gravityScale_get);
DEFINE_PRIME2 (box3d_b3BodyDef_gravityScale_set);
DEFINE_PRIME1 (box3d_b3BodyDef_sleepThreshold_get);
DEFINE_PRIME2 (box3d_b3BodyDef_sleepThreshold_set);
DEFINE_PRIME1 (box3d_b3BodyDef_name_get);
DEFINE_PRIME2 (box3d_b3BodyDef_name_set);
DEFINE_PRIME1 (box3d_b3BodyDef_motionLocks_get);
DEFINE_PRIME2 (box3d_b3BodyDef_motionLocks_set);
DEFINE_PRIME1 (box3d_b3BodyDef_enableSleep_get);
DEFINE_PRIME2 (box3d_b3BodyDef_enableSleep_set);
DEFINE_PRIME1 (box3d_b3BodyDef_isAwake_get);
DEFINE_PRIME2 (box3d_b3BodyDef_isAwake_set);
DEFINE_PRIME1 (box3d_b3BodyDef_isBullet_get);
DEFINE_PRIME2 (box3d_b3BodyDef_isBullet_set);
DEFINE_PRIME1 (box3d_b3BodyDef_isEnabled_get);
DEFINE_PRIME2 (box3d_b3BodyDef_isEnabled_set);
DEFINE_PRIME1 (box3d_b3BodyDef_allowFastRotation_get);
DEFINE_PRIME2 (box3d_b3BodyDef_allowFastRotation_set);
DEFINE_PRIME1 (box3d_b3BodyDef_enableContactRecycling_get);
DEFINE_PRIME2 (box3d_b3BodyDef_enableContactRecycling_set);
DEFINE_PRIME1 (box3d_b3BodyDef_internalValue_get);
DEFINE_PRIME2 (box3d_b3BodyDef_internalValue_set);

static void box3d_b3Filter_gc (value handle) {
	b3Filter* ptr = (b3Filter*)val_data(handle);
	delete ptr;
}
static value box3d_b3Filter_new () {
	b3Filter* ptr = new b3Filter();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3Filter_gc);
	return retVal;
}
static value box3d_b3Filter_categoryBits_get ( value handle ) {
	b3Filter* ptr = (b3Filter*)val_data(handle);
	return cffi::alloc_pointer(&ptr->categoryBits);
}
static value box3d_b3Filter_categoryBits_set ( value handle, value v ) {
	b3Filter* ptr = (b3Filter*)val_data(handle);
	memcpy(&ptr->categoryBits, (void*)val_data(v), sizeof(uint64_t));
	return cffi::alloc_pointer(&ptr->categoryBits);
}
static value box3d_b3Filter_maskBits_get ( value handle ) {
	b3Filter* ptr = (b3Filter*)val_data(handle);
	return cffi::alloc_pointer(&ptr->maskBits);
}
static value box3d_b3Filter_maskBits_set ( value handle, value v ) {
	b3Filter* ptr = (b3Filter*)val_data(handle);
	memcpy(&ptr->maskBits, (void*)val_data(v), sizeof(uint64_t));
	return cffi::alloc_pointer(&ptr->maskBits);
}
static int box3d_b3Filter_groupIndex_get ( value handle ) {
	b3Filter* ptr = (b3Filter*)val_data(handle);
	return ptr->groupIndex;
}
static int box3d_b3Filter_groupIndex_set ( value handle, int v ) {
	b3Filter* ptr = (b3Filter*)val_data(handle);
	return ptr->groupIndex = v;
}

DEFINE_PRIME0 (box3d_b3Filter_new);
DEFINE_PRIME1 (box3d_b3Filter_categoryBits_get);
DEFINE_PRIME2 (box3d_b3Filter_categoryBits_set);
DEFINE_PRIME1 (box3d_b3Filter_maskBits_get);
DEFINE_PRIME2 (box3d_b3Filter_maskBits_set);
DEFINE_PRIME1 (box3d_b3Filter_groupIndex_get);
DEFINE_PRIME2 (box3d_b3Filter_groupIndex_set);

static void box3d_b3SurfaceMaterial_gc (value handle) {
	b3SurfaceMaterial* ptr = (b3SurfaceMaterial*)val_data(handle);
	delete ptr;
}
static value box3d_b3SurfaceMaterial_new () {
	b3SurfaceMaterial* ptr = new b3SurfaceMaterial();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3SurfaceMaterial_gc);
	return retVal;
}
static float box3d_b3SurfaceMaterial_friction_get ( value handle ) {
	b3SurfaceMaterial* ptr = (b3SurfaceMaterial*)val_data(handle);
	return ptr->friction;
}
static float box3d_b3SurfaceMaterial_friction_set ( value handle, float v ) {
	b3SurfaceMaterial* ptr = (b3SurfaceMaterial*)val_data(handle);
	return ptr->friction = v;
}
static float box3d_b3SurfaceMaterial_restitution_get ( value handle ) {
	b3SurfaceMaterial* ptr = (b3SurfaceMaterial*)val_data(handle);
	return ptr->restitution;
}
static float box3d_b3SurfaceMaterial_restitution_set ( value handle, float v ) {
	b3SurfaceMaterial* ptr = (b3SurfaceMaterial*)val_data(handle);
	return ptr->restitution = v;
}
static float box3d_b3SurfaceMaterial_rollingResistance_get ( value handle ) {
	b3SurfaceMaterial* ptr = (b3SurfaceMaterial*)val_data(handle);
	return ptr->rollingResistance;
}
static float box3d_b3SurfaceMaterial_rollingResistance_set ( value handle, float v ) {
	b3SurfaceMaterial* ptr = (b3SurfaceMaterial*)val_data(handle);
	return ptr->rollingResistance = v;
}
static value box3d_b3SurfaceMaterial_tangentVelocity_get ( value handle ) {
	b3SurfaceMaterial* ptr = (b3SurfaceMaterial*)val_data(handle);
	return cffi::alloc_pointer(&ptr->tangentVelocity);
}
static value box3d_b3SurfaceMaterial_tangentVelocity_set ( value handle, value v ) {
	b3SurfaceMaterial* ptr = (b3SurfaceMaterial*)val_data(handle);
	memcpy(&ptr->tangentVelocity, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->tangentVelocity);
}
static value box3d_b3SurfaceMaterial_userMaterialId_get ( value handle ) {
	b3SurfaceMaterial* ptr = (b3SurfaceMaterial*)val_data(handle);
	return cffi::alloc_pointer(&ptr->userMaterialId);
}
static value box3d_b3SurfaceMaterial_userMaterialId_set ( value handle, value v ) {
	b3SurfaceMaterial* ptr = (b3SurfaceMaterial*)val_data(handle);
	memcpy(&ptr->userMaterialId, (void*)val_data(v), sizeof(uint64_t));
	return cffi::alloc_pointer(&ptr->userMaterialId);
}
static int box3d_b3SurfaceMaterial_customColor_get ( value handle ) {
	b3SurfaceMaterial* ptr = (b3SurfaceMaterial*)val_data(handle);
	return ptr->customColor;
}
static int box3d_b3SurfaceMaterial_customColor_set ( value handle, int v ) {
	b3SurfaceMaterial* ptr = (b3SurfaceMaterial*)val_data(handle);
	return ptr->customColor = v;
}
static int box3d_b3SurfaceMaterial_padding_get ( value handle ) {
	b3SurfaceMaterial* ptr = (b3SurfaceMaterial*)val_data(handle);
	return ptr->padding;
}
static int box3d_b3SurfaceMaterial_padding_set ( value handle, int v ) {
	b3SurfaceMaterial* ptr = (b3SurfaceMaterial*)val_data(handle);
	return ptr->padding = v;
}

DEFINE_PRIME0 (box3d_b3SurfaceMaterial_new);
DEFINE_PRIME1 (box3d_b3SurfaceMaterial_friction_get);
DEFINE_PRIME2 (box3d_b3SurfaceMaterial_friction_set);
DEFINE_PRIME1 (box3d_b3SurfaceMaterial_restitution_get);
DEFINE_PRIME2 (box3d_b3SurfaceMaterial_restitution_set);
DEFINE_PRIME1 (box3d_b3SurfaceMaterial_rollingResistance_get);
DEFINE_PRIME2 (box3d_b3SurfaceMaterial_rollingResistance_set);
DEFINE_PRIME1 (box3d_b3SurfaceMaterial_tangentVelocity_get);
DEFINE_PRIME2 (box3d_b3SurfaceMaterial_tangentVelocity_set);
DEFINE_PRIME1 (box3d_b3SurfaceMaterial_userMaterialId_get);
DEFINE_PRIME2 (box3d_b3SurfaceMaterial_userMaterialId_set);
DEFINE_PRIME1 (box3d_b3SurfaceMaterial_customColor_get);
DEFINE_PRIME2 (box3d_b3SurfaceMaterial_customColor_set);
DEFINE_PRIME1 (box3d_b3SurfaceMaterial_padding_get);
DEFINE_PRIME2 (box3d_b3SurfaceMaterial_padding_set);

static void box3d_b3ShapeDef_gc (value handle) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	delete ptr;
}
static value box3d_b3ShapeDef_new () {
	b3ShapeDef* ptr = new b3ShapeDef();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3ShapeDef_gc);
	return retVal;
}
static HxString box3d_b3ShapeDef_name_get ( value handle ) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	return HxString(ptr->name);
}
static HxString box3d_b3ShapeDef_name_set ( value handle, HxString v ) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	return HxString(ptr->name = v.__s);
}
static int box3d_b3ShapeDef_materialCount_get ( value handle ) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	return ptr->materialCount;
}
static int box3d_b3ShapeDef_materialCount_set ( value handle, int v ) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	return ptr->materialCount = v;
}
static value box3d_b3ShapeDef_baseMaterial_get ( value handle ) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->baseMaterial);
}
static value box3d_b3ShapeDef_baseMaterial_set ( value handle, value v ) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	memcpy(&ptr->baseMaterial, (void*)val_data(v), sizeof(b3SurfaceMaterial));
	return cffi::alloc_pointer(&ptr->baseMaterial);
}
static float box3d_b3ShapeDef_density_get ( value handle ) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	return ptr->density;
}
static float box3d_b3ShapeDef_density_set ( value handle, float v ) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	return ptr->density = v;
}
static float box3d_b3ShapeDef_explosionScale_get ( value handle ) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	return ptr->explosionScale;
}
static float box3d_b3ShapeDef_explosionScale_set ( value handle, float v ) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	return ptr->explosionScale = v;
}
static value box3d_b3ShapeDef_filter_get ( value handle ) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->filter);
}
static value box3d_b3ShapeDef_filter_set ( value handle, value v ) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	memcpy(&ptr->filter, (void*)val_data(v), sizeof(b3Filter));
	return cffi::alloc_pointer(&ptr->filter);
}
static bool box3d_b3ShapeDef_enableCustomFiltering_get ( value handle ) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	return ptr->enableCustomFiltering;
}
static bool box3d_b3ShapeDef_enableCustomFiltering_set ( value handle, bool v ) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	return ptr->enableCustomFiltering = v;
}
static bool box3d_b3ShapeDef_isSensor_get ( value handle ) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	return ptr->isSensor;
}
static bool box3d_b3ShapeDef_isSensor_set ( value handle, bool v ) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	return ptr->isSensor = v;
}
static bool box3d_b3ShapeDef_enableSensorEvents_get ( value handle ) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	return ptr->enableSensorEvents;
}
static bool box3d_b3ShapeDef_enableSensorEvents_set ( value handle, bool v ) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	return ptr->enableSensorEvents = v;
}
static bool box3d_b3ShapeDef_enableContactEvents_get ( value handle ) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	return ptr->enableContactEvents;
}
static bool box3d_b3ShapeDef_enableContactEvents_set ( value handle, bool v ) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	return ptr->enableContactEvents = v;
}
static bool box3d_b3ShapeDef_enableHitEvents_get ( value handle ) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	return ptr->enableHitEvents;
}
static bool box3d_b3ShapeDef_enableHitEvents_set ( value handle, bool v ) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	return ptr->enableHitEvents = v;
}
static bool box3d_b3ShapeDef_enablePreSolveEvents_get ( value handle ) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	return ptr->enablePreSolveEvents;
}
static bool box3d_b3ShapeDef_enablePreSolveEvents_set ( value handle, bool v ) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	return ptr->enablePreSolveEvents = v;
}
static bool box3d_b3ShapeDef_invokeContactCreation_get ( value handle ) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	return ptr->invokeContactCreation;
}
static bool box3d_b3ShapeDef_invokeContactCreation_set ( value handle, bool v ) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	return ptr->invokeContactCreation = v;
}
static bool box3d_b3ShapeDef_updateBodyMass_get ( value handle ) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	return ptr->updateBodyMass;
}
static bool box3d_b3ShapeDef_updateBodyMass_set ( value handle, bool v ) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	return ptr->updateBodyMass = v;
}
static bool box3d_b3ShapeDef_enableSpeculativeContact_get ( value handle ) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	return ptr->enableSpeculativeContact;
}
static bool box3d_b3ShapeDef_enableSpeculativeContact_set ( value handle, bool v ) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	return ptr->enableSpeculativeContact = v;
}
static int box3d_b3ShapeDef_internalValue_get ( value handle ) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	return ptr->internalValue;
}
static int box3d_b3ShapeDef_internalValue_set ( value handle, int v ) {
	b3ShapeDef* ptr = (b3ShapeDef*)val_data(handle);
	return ptr->internalValue = v;
}

DEFINE_PRIME0 (box3d_b3ShapeDef_new);
DEFINE_PRIME1 (box3d_b3ShapeDef_name_get);
DEFINE_PRIME2 (box3d_b3ShapeDef_name_set);
DEFINE_PRIME1 (box3d_b3ShapeDef_materialCount_get);
DEFINE_PRIME2 (box3d_b3ShapeDef_materialCount_set);
DEFINE_PRIME1 (box3d_b3ShapeDef_baseMaterial_get);
DEFINE_PRIME2 (box3d_b3ShapeDef_baseMaterial_set);
DEFINE_PRIME1 (box3d_b3ShapeDef_density_get);
DEFINE_PRIME2 (box3d_b3ShapeDef_density_set);
DEFINE_PRIME1 (box3d_b3ShapeDef_explosionScale_get);
DEFINE_PRIME2 (box3d_b3ShapeDef_explosionScale_set);
DEFINE_PRIME1 (box3d_b3ShapeDef_filter_get);
DEFINE_PRIME2 (box3d_b3ShapeDef_filter_set);
DEFINE_PRIME1 (box3d_b3ShapeDef_enableCustomFiltering_get);
DEFINE_PRIME2 (box3d_b3ShapeDef_enableCustomFiltering_set);
DEFINE_PRIME1 (box3d_b3ShapeDef_isSensor_get);
DEFINE_PRIME2 (box3d_b3ShapeDef_isSensor_set);
DEFINE_PRIME1 (box3d_b3ShapeDef_enableSensorEvents_get);
DEFINE_PRIME2 (box3d_b3ShapeDef_enableSensorEvents_set);
DEFINE_PRIME1 (box3d_b3ShapeDef_enableContactEvents_get);
DEFINE_PRIME2 (box3d_b3ShapeDef_enableContactEvents_set);
DEFINE_PRIME1 (box3d_b3ShapeDef_enableHitEvents_get);
DEFINE_PRIME2 (box3d_b3ShapeDef_enableHitEvents_set);
DEFINE_PRIME1 (box3d_b3ShapeDef_enablePreSolveEvents_get);
DEFINE_PRIME2 (box3d_b3ShapeDef_enablePreSolveEvents_set);
DEFINE_PRIME1 (box3d_b3ShapeDef_invokeContactCreation_get);
DEFINE_PRIME2 (box3d_b3ShapeDef_invokeContactCreation_set);
DEFINE_PRIME1 (box3d_b3ShapeDef_updateBodyMass_get);
DEFINE_PRIME2 (box3d_b3ShapeDef_updateBodyMass_set);
DEFINE_PRIME1 (box3d_b3ShapeDef_enableSpeculativeContact_get);
DEFINE_PRIME2 (box3d_b3ShapeDef_enableSpeculativeContact_set);
DEFINE_PRIME1 (box3d_b3ShapeDef_internalValue_get);
DEFINE_PRIME2 (box3d_b3ShapeDef_internalValue_set);

static void box3d_b3Profile_gc (value handle) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	delete ptr;
}
static value box3d_b3Profile_new () {
	b3Profile* ptr = new b3Profile();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3Profile_gc);
	return retVal;
}
static float box3d_b3Profile_step_get ( value handle ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->step;
}
static float box3d_b3Profile_step_set ( value handle, float v ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->step = v;
}
static float box3d_b3Profile_pairs_get ( value handle ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->pairs;
}
static float box3d_b3Profile_pairs_set ( value handle, float v ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->pairs = v;
}
static float box3d_b3Profile_collide_get ( value handle ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->collide;
}
static float box3d_b3Profile_collide_set ( value handle, float v ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->collide = v;
}
static float box3d_b3Profile_solve_get ( value handle ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->solve;
}
static float box3d_b3Profile_solve_set ( value handle, float v ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->solve = v;
}
static float box3d_b3Profile_solverSetup_get ( value handle ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->solverSetup;
}
static float box3d_b3Profile_solverSetup_set ( value handle, float v ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->solverSetup = v;
}
static float box3d_b3Profile_constraints_get ( value handle ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->constraints;
}
static float box3d_b3Profile_constraints_set ( value handle, float v ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->constraints = v;
}
static float box3d_b3Profile_prepareConstraints_get ( value handle ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->prepareConstraints;
}
static float box3d_b3Profile_prepareConstraints_set ( value handle, float v ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->prepareConstraints = v;
}
static float box3d_b3Profile_integrateVelocities_get ( value handle ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->integrateVelocities;
}
static float box3d_b3Profile_integrateVelocities_set ( value handle, float v ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->integrateVelocities = v;
}
static float box3d_b3Profile_warmStart_get ( value handle ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->warmStart;
}
static float box3d_b3Profile_warmStart_set ( value handle, float v ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->warmStart = v;
}
static float box3d_b3Profile_solveImpulses_get ( value handle ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->solveImpulses;
}
static float box3d_b3Profile_solveImpulses_set ( value handle, float v ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->solveImpulses = v;
}
static float box3d_b3Profile_integratePositions_get ( value handle ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->integratePositions;
}
static float box3d_b3Profile_integratePositions_set ( value handle, float v ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->integratePositions = v;
}
static float box3d_b3Profile_relaxImpulses_get ( value handle ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->relaxImpulses;
}
static float box3d_b3Profile_relaxImpulses_set ( value handle, float v ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->relaxImpulses = v;
}
static float box3d_b3Profile_applyRestitution_get ( value handle ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->applyRestitution;
}
static float box3d_b3Profile_applyRestitution_set ( value handle, float v ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->applyRestitution = v;
}
static float box3d_b3Profile_storeImpulses_get ( value handle ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->storeImpulses;
}
static float box3d_b3Profile_storeImpulses_set ( value handle, float v ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->storeImpulses = v;
}
static float box3d_b3Profile_splitIslands_get ( value handle ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->splitIslands;
}
static float box3d_b3Profile_splitIslands_set ( value handle, float v ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->splitIslands = v;
}
static float box3d_b3Profile_transforms_get ( value handle ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->transforms;
}
static float box3d_b3Profile_transforms_set ( value handle, float v ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->transforms = v;
}
static float box3d_b3Profile_sensorHits_get ( value handle ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->sensorHits;
}
static float box3d_b3Profile_sensorHits_set ( value handle, float v ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->sensorHits = v;
}
static float box3d_b3Profile_jointEvents_get ( value handle ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->jointEvents;
}
static float box3d_b3Profile_jointEvents_set ( value handle, float v ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->jointEvents = v;
}
static float box3d_b3Profile_hitEvents_get ( value handle ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->hitEvents;
}
static float box3d_b3Profile_hitEvents_set ( value handle, float v ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->hitEvents = v;
}
static float box3d_b3Profile_refit_get ( value handle ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->refit;
}
static float box3d_b3Profile_refit_set ( value handle, float v ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->refit = v;
}
static float box3d_b3Profile_bullets_get ( value handle ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->bullets;
}
static float box3d_b3Profile_bullets_set ( value handle, float v ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->bullets = v;
}
static float box3d_b3Profile_sleepIslands_get ( value handle ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->sleepIslands;
}
static float box3d_b3Profile_sleepIslands_set ( value handle, float v ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->sleepIslands = v;
}
static float box3d_b3Profile_sensors_get ( value handle ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->sensors;
}
static float box3d_b3Profile_sensors_set ( value handle, float v ) {
	b3Profile* ptr = (b3Profile*)val_data(handle);
	return ptr->sensors = v;
}

DEFINE_PRIME0 (box3d_b3Profile_new);
DEFINE_PRIME1 (box3d_b3Profile_step_get);
DEFINE_PRIME2 (box3d_b3Profile_step_set);
DEFINE_PRIME1 (box3d_b3Profile_pairs_get);
DEFINE_PRIME2 (box3d_b3Profile_pairs_set);
DEFINE_PRIME1 (box3d_b3Profile_collide_get);
DEFINE_PRIME2 (box3d_b3Profile_collide_set);
DEFINE_PRIME1 (box3d_b3Profile_solve_get);
DEFINE_PRIME2 (box3d_b3Profile_solve_set);
DEFINE_PRIME1 (box3d_b3Profile_solverSetup_get);
DEFINE_PRIME2 (box3d_b3Profile_solverSetup_set);
DEFINE_PRIME1 (box3d_b3Profile_constraints_get);
DEFINE_PRIME2 (box3d_b3Profile_constraints_set);
DEFINE_PRIME1 (box3d_b3Profile_prepareConstraints_get);
DEFINE_PRIME2 (box3d_b3Profile_prepareConstraints_set);
DEFINE_PRIME1 (box3d_b3Profile_integrateVelocities_get);
DEFINE_PRIME2 (box3d_b3Profile_integrateVelocities_set);
DEFINE_PRIME1 (box3d_b3Profile_warmStart_get);
DEFINE_PRIME2 (box3d_b3Profile_warmStart_set);
DEFINE_PRIME1 (box3d_b3Profile_solveImpulses_get);
DEFINE_PRIME2 (box3d_b3Profile_solveImpulses_set);
DEFINE_PRIME1 (box3d_b3Profile_integratePositions_get);
DEFINE_PRIME2 (box3d_b3Profile_integratePositions_set);
DEFINE_PRIME1 (box3d_b3Profile_relaxImpulses_get);
DEFINE_PRIME2 (box3d_b3Profile_relaxImpulses_set);
DEFINE_PRIME1 (box3d_b3Profile_applyRestitution_get);
DEFINE_PRIME2 (box3d_b3Profile_applyRestitution_set);
DEFINE_PRIME1 (box3d_b3Profile_storeImpulses_get);
DEFINE_PRIME2 (box3d_b3Profile_storeImpulses_set);
DEFINE_PRIME1 (box3d_b3Profile_splitIslands_get);
DEFINE_PRIME2 (box3d_b3Profile_splitIslands_set);
DEFINE_PRIME1 (box3d_b3Profile_transforms_get);
DEFINE_PRIME2 (box3d_b3Profile_transforms_set);
DEFINE_PRIME1 (box3d_b3Profile_sensorHits_get);
DEFINE_PRIME2 (box3d_b3Profile_sensorHits_set);
DEFINE_PRIME1 (box3d_b3Profile_jointEvents_get);
DEFINE_PRIME2 (box3d_b3Profile_jointEvents_set);
DEFINE_PRIME1 (box3d_b3Profile_hitEvents_get);
DEFINE_PRIME2 (box3d_b3Profile_hitEvents_set);
DEFINE_PRIME1 (box3d_b3Profile_refit_get);
DEFINE_PRIME2 (box3d_b3Profile_refit_set);
DEFINE_PRIME1 (box3d_b3Profile_bullets_get);
DEFINE_PRIME2 (box3d_b3Profile_bullets_set);
DEFINE_PRIME1 (box3d_b3Profile_sleepIslands_get);
DEFINE_PRIME2 (box3d_b3Profile_sleepIslands_set);
DEFINE_PRIME1 (box3d_b3Profile_sensors_get);
DEFINE_PRIME2 (box3d_b3Profile_sensors_set);

static void box3d_b3Counters_gc (value handle) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	delete ptr;
}
static value box3d_b3Counters_new () {
	b3Counters* ptr = new b3Counters();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3Counters_gc);
	return retVal;
}
static int box3d_b3Counters_bodyCount_get ( value handle ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->bodyCount;
}
static int box3d_b3Counters_bodyCount_set ( value handle, int v ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->bodyCount = v;
}
static int box3d_b3Counters_shapeCount_get ( value handle ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->shapeCount;
}
static int box3d_b3Counters_shapeCount_set ( value handle, int v ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->shapeCount = v;
}
static int box3d_b3Counters_contactCount_get ( value handle ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->contactCount;
}
static int box3d_b3Counters_contactCount_set ( value handle, int v ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->contactCount = v;
}
static int box3d_b3Counters_jointCount_get ( value handle ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->jointCount;
}
static int box3d_b3Counters_jointCount_set ( value handle, int v ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->jointCount = v;
}
static int box3d_b3Counters_islandCount_get ( value handle ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->islandCount;
}
static int box3d_b3Counters_islandCount_set ( value handle, int v ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->islandCount = v;
}
static int box3d_b3Counters_stackUsed_get ( value handle ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->stackUsed;
}
static int box3d_b3Counters_stackUsed_set ( value handle, int v ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->stackUsed = v;
}
static int box3d_b3Counters_arenaCapacity_get ( value handle ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->arenaCapacity;
}
static int box3d_b3Counters_arenaCapacity_set ( value handle, int v ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->arenaCapacity = v;
}
static int box3d_b3Counters_staticTreeHeight_get ( value handle ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->staticTreeHeight;
}
static int box3d_b3Counters_staticTreeHeight_set ( value handle, int v ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->staticTreeHeight = v;
}
static int box3d_b3Counters_treeHeight_get ( value handle ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->treeHeight;
}
static int box3d_b3Counters_treeHeight_set ( value handle, int v ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->treeHeight = v;
}
static int box3d_b3Counters_satCallCount_get ( value handle ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->satCallCount;
}
static int box3d_b3Counters_satCallCount_set ( value handle, int v ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->satCallCount = v;
}
static int box3d_b3Counters_satCacheHitCount_get ( value handle ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->satCacheHitCount;
}
static int box3d_b3Counters_satCacheHitCount_set ( value handle, int v ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->satCacheHitCount = v;
}
static int box3d_b3Counters_byteCount_get ( value handle ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->byteCount;
}
static int box3d_b3Counters_byteCount_set ( value handle, int v ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->byteCount = v;
}
static int box3d_b3Counters_taskCount_get ( value handle ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->taskCount;
}
static int box3d_b3Counters_taskCount_set ( value handle, int v ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->taskCount = v;
}
static int box3d_b3Counters_awakeContactCount_get ( value handle ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->awakeContactCount;
}
static int box3d_b3Counters_awakeContactCount_set ( value handle, int v ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->awakeContactCount = v;
}
static int box3d_b3Counters_recycledContactCount_get ( value handle ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->recycledContactCount;
}
static int box3d_b3Counters_recycledContactCount_set ( value handle, int v ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->recycledContactCount = v;
}
static int box3d_b3Counters_distanceIterations_get ( value handle ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->distanceIterations;
}
static int box3d_b3Counters_distanceIterations_set ( value handle, int v ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->distanceIterations = v;
}
static int box3d_b3Counters_pushBackIterations_get ( value handle ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->pushBackIterations;
}
static int box3d_b3Counters_pushBackIterations_set ( value handle, int v ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->pushBackIterations = v;
}
static int box3d_b3Counters_rootIterations_get ( value handle ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->rootIterations;
}
static int box3d_b3Counters_rootIterations_set ( value handle, int v ) {
	b3Counters* ptr = (b3Counters*)val_data(handle);
	return ptr->rootIterations = v;
}

DEFINE_PRIME0 (box3d_b3Counters_new);
DEFINE_PRIME1 (box3d_b3Counters_bodyCount_get);
DEFINE_PRIME2 (box3d_b3Counters_bodyCount_set);
DEFINE_PRIME1 (box3d_b3Counters_shapeCount_get);
DEFINE_PRIME2 (box3d_b3Counters_shapeCount_set);
DEFINE_PRIME1 (box3d_b3Counters_contactCount_get);
DEFINE_PRIME2 (box3d_b3Counters_contactCount_set);
DEFINE_PRIME1 (box3d_b3Counters_jointCount_get);
DEFINE_PRIME2 (box3d_b3Counters_jointCount_set);
DEFINE_PRIME1 (box3d_b3Counters_islandCount_get);
DEFINE_PRIME2 (box3d_b3Counters_islandCount_set);
DEFINE_PRIME1 (box3d_b3Counters_stackUsed_get);
DEFINE_PRIME2 (box3d_b3Counters_stackUsed_set);
DEFINE_PRIME1 (box3d_b3Counters_arenaCapacity_get);
DEFINE_PRIME2 (box3d_b3Counters_arenaCapacity_set);
DEFINE_PRIME1 (box3d_b3Counters_staticTreeHeight_get);
DEFINE_PRIME2 (box3d_b3Counters_staticTreeHeight_set);
DEFINE_PRIME1 (box3d_b3Counters_treeHeight_get);
DEFINE_PRIME2 (box3d_b3Counters_treeHeight_set);
DEFINE_PRIME1 (box3d_b3Counters_satCallCount_get);
DEFINE_PRIME2 (box3d_b3Counters_satCallCount_set);
DEFINE_PRIME1 (box3d_b3Counters_satCacheHitCount_get);
DEFINE_PRIME2 (box3d_b3Counters_satCacheHitCount_set);
DEFINE_PRIME1 (box3d_b3Counters_byteCount_get);
DEFINE_PRIME2 (box3d_b3Counters_byteCount_set);
DEFINE_PRIME1 (box3d_b3Counters_taskCount_get);
DEFINE_PRIME2 (box3d_b3Counters_taskCount_set);
DEFINE_PRIME1 (box3d_b3Counters_awakeContactCount_get);
DEFINE_PRIME2 (box3d_b3Counters_awakeContactCount_set);
DEFINE_PRIME1 (box3d_b3Counters_recycledContactCount_get);
DEFINE_PRIME2 (box3d_b3Counters_recycledContactCount_set);
DEFINE_PRIME1 (box3d_b3Counters_distanceIterations_get);
DEFINE_PRIME2 (box3d_b3Counters_distanceIterations_set);
DEFINE_PRIME1 (box3d_b3Counters_pushBackIterations_get);
DEFINE_PRIME2 (box3d_b3Counters_pushBackIterations_set);
DEFINE_PRIME1 (box3d_b3Counters_rootIterations_get);
DEFINE_PRIME2 (box3d_b3Counters_rootIterations_set);

static void box3d_b3JointDef_gc (value handle) {
	b3JointDef* ptr = (b3JointDef*)val_data(handle);
	delete ptr;
}
static value box3d_b3JointDef_new () {
	b3JointDef* ptr = new b3JointDef();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3JointDef_gc);
	return retVal;
}
static value box3d_b3JointDef_bodyIdA_get ( value handle ) {
	b3JointDef* ptr = (b3JointDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->bodyIdA);
}
static value box3d_b3JointDef_bodyIdA_set ( value handle, value v ) {
	b3JointDef* ptr = (b3JointDef*)val_data(handle);
	memcpy(&ptr->bodyIdA, (void*)val_data(v), sizeof(b3BodyId));
	return cffi::alloc_pointer(&ptr->bodyIdA);
}
static value box3d_b3JointDef_bodyIdB_get ( value handle ) {
	b3JointDef* ptr = (b3JointDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->bodyIdB);
}
static value box3d_b3JointDef_bodyIdB_set ( value handle, value v ) {
	b3JointDef* ptr = (b3JointDef*)val_data(handle);
	memcpy(&ptr->bodyIdB, (void*)val_data(v), sizeof(b3BodyId));
	return cffi::alloc_pointer(&ptr->bodyIdB);
}
static value box3d_b3JointDef_localFrameA_get ( value handle ) {
	b3JointDef* ptr = (b3JointDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->localFrameA);
}
static value box3d_b3JointDef_localFrameA_set ( value handle, value v ) {
	b3JointDef* ptr = (b3JointDef*)val_data(handle);
	memcpy(&ptr->localFrameA, (void*)val_data(v), sizeof(b3Transform));
	return cffi::alloc_pointer(&ptr->localFrameA);
}
static value box3d_b3JointDef_localFrameB_get ( value handle ) {
	b3JointDef* ptr = (b3JointDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->localFrameB);
}
static value box3d_b3JointDef_localFrameB_set ( value handle, value v ) {
	b3JointDef* ptr = (b3JointDef*)val_data(handle);
	memcpy(&ptr->localFrameB, (void*)val_data(v), sizeof(b3Transform));
	return cffi::alloc_pointer(&ptr->localFrameB);
}
static float box3d_b3JointDef_forceThreshold_get ( value handle ) {
	b3JointDef* ptr = (b3JointDef*)val_data(handle);
	return ptr->forceThreshold;
}
static float box3d_b3JointDef_forceThreshold_set ( value handle, float v ) {
	b3JointDef* ptr = (b3JointDef*)val_data(handle);
	return ptr->forceThreshold = v;
}
static float box3d_b3JointDef_torqueThreshold_get ( value handle ) {
	b3JointDef* ptr = (b3JointDef*)val_data(handle);
	return ptr->torqueThreshold;
}
static float box3d_b3JointDef_torqueThreshold_set ( value handle, float v ) {
	b3JointDef* ptr = (b3JointDef*)val_data(handle);
	return ptr->torqueThreshold = v;
}
static float box3d_b3JointDef_constraintHertz_get ( value handle ) {
	b3JointDef* ptr = (b3JointDef*)val_data(handle);
	return ptr->constraintHertz;
}
static float box3d_b3JointDef_constraintHertz_set ( value handle, float v ) {
	b3JointDef* ptr = (b3JointDef*)val_data(handle);
	return ptr->constraintHertz = v;
}
static float box3d_b3JointDef_constraintDampingRatio_get ( value handle ) {
	b3JointDef* ptr = (b3JointDef*)val_data(handle);
	return ptr->constraintDampingRatio;
}
static float box3d_b3JointDef_constraintDampingRatio_set ( value handle, float v ) {
	b3JointDef* ptr = (b3JointDef*)val_data(handle);
	return ptr->constraintDampingRatio = v;
}
static float box3d_b3JointDef_drawScale_get ( value handle ) {
	b3JointDef* ptr = (b3JointDef*)val_data(handle);
	return ptr->drawScale;
}
static float box3d_b3JointDef_drawScale_set ( value handle, float v ) {
	b3JointDef* ptr = (b3JointDef*)val_data(handle);
	return ptr->drawScale = v;
}
static bool box3d_b3JointDef_collideConnected_get ( value handle ) {
	b3JointDef* ptr = (b3JointDef*)val_data(handle);
	return ptr->collideConnected;
}
static bool box3d_b3JointDef_collideConnected_set ( value handle, bool v ) {
	b3JointDef* ptr = (b3JointDef*)val_data(handle);
	return ptr->collideConnected = v;
}
static int box3d_b3JointDef_internalValue_get ( value handle ) {
	b3JointDef* ptr = (b3JointDef*)val_data(handle);
	return ptr->internalValue;
}
static int box3d_b3JointDef_internalValue_set ( value handle, int v ) {
	b3JointDef* ptr = (b3JointDef*)val_data(handle);
	return ptr->internalValue = v;
}

DEFINE_PRIME0 (box3d_b3JointDef_new);
DEFINE_PRIME1 (box3d_b3JointDef_bodyIdA_get);
DEFINE_PRIME2 (box3d_b3JointDef_bodyIdA_set);
DEFINE_PRIME1 (box3d_b3JointDef_bodyIdB_get);
DEFINE_PRIME2 (box3d_b3JointDef_bodyIdB_set);
DEFINE_PRIME1 (box3d_b3JointDef_localFrameA_get);
DEFINE_PRIME2 (box3d_b3JointDef_localFrameA_set);
DEFINE_PRIME1 (box3d_b3JointDef_localFrameB_get);
DEFINE_PRIME2 (box3d_b3JointDef_localFrameB_set);
DEFINE_PRIME1 (box3d_b3JointDef_forceThreshold_get);
DEFINE_PRIME2 (box3d_b3JointDef_forceThreshold_set);
DEFINE_PRIME1 (box3d_b3JointDef_torqueThreshold_get);
DEFINE_PRIME2 (box3d_b3JointDef_torqueThreshold_set);
DEFINE_PRIME1 (box3d_b3JointDef_constraintHertz_get);
DEFINE_PRIME2 (box3d_b3JointDef_constraintHertz_set);
DEFINE_PRIME1 (box3d_b3JointDef_constraintDampingRatio_get);
DEFINE_PRIME2 (box3d_b3JointDef_constraintDampingRatio_set);
DEFINE_PRIME1 (box3d_b3JointDef_drawScale_get);
DEFINE_PRIME2 (box3d_b3JointDef_drawScale_set);
DEFINE_PRIME1 (box3d_b3JointDef_collideConnected_get);
DEFINE_PRIME2 (box3d_b3JointDef_collideConnected_set);
DEFINE_PRIME1 (box3d_b3JointDef_internalValue_get);
DEFINE_PRIME2 (box3d_b3JointDef_internalValue_set);

static void box3d_b3DistanceJointDef_gc (value handle) {
	b3DistanceJointDef* ptr = (b3DistanceJointDef*)val_data(handle);
	delete ptr;
}
static value box3d_b3DistanceJointDef_new () {
	b3DistanceJointDef* ptr = new b3DistanceJointDef();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3DistanceJointDef_gc);
	return retVal;
}
static value box3d_b3DistanceJointDef_base_get ( value handle ) {
	b3DistanceJointDef* ptr = (b3DistanceJointDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->base);
}
static value box3d_b3DistanceJointDef_base_set ( value handle, value v ) {
	b3DistanceJointDef* ptr = (b3DistanceJointDef*)val_data(handle);
	memcpy(&ptr->base, (void*)val_data(v), sizeof(b3JointDef));
	return cffi::alloc_pointer(&ptr->base);
}
static float box3d_b3DistanceJointDef_length_get ( value handle ) {
	b3DistanceJointDef* ptr = (b3DistanceJointDef*)val_data(handle);
	return ptr->length;
}
static float box3d_b3DistanceJointDef_length_set ( value handle, float v ) {
	b3DistanceJointDef* ptr = (b3DistanceJointDef*)val_data(handle);
	return ptr->length = v;
}
static bool box3d_b3DistanceJointDef_enableSpring_get ( value handle ) {
	b3DistanceJointDef* ptr = (b3DistanceJointDef*)val_data(handle);
	return ptr->enableSpring;
}
static bool box3d_b3DistanceJointDef_enableSpring_set ( value handle, bool v ) {
	b3DistanceJointDef* ptr = (b3DistanceJointDef*)val_data(handle);
	return ptr->enableSpring = v;
}
static float box3d_b3DistanceJointDef_lowerSpringForce_get ( value handle ) {
	b3DistanceJointDef* ptr = (b3DistanceJointDef*)val_data(handle);
	return ptr->lowerSpringForce;
}
static float box3d_b3DistanceJointDef_lowerSpringForce_set ( value handle, float v ) {
	b3DistanceJointDef* ptr = (b3DistanceJointDef*)val_data(handle);
	return ptr->lowerSpringForce = v;
}
static float box3d_b3DistanceJointDef_upperSpringForce_get ( value handle ) {
	b3DistanceJointDef* ptr = (b3DistanceJointDef*)val_data(handle);
	return ptr->upperSpringForce;
}
static float box3d_b3DistanceJointDef_upperSpringForce_set ( value handle, float v ) {
	b3DistanceJointDef* ptr = (b3DistanceJointDef*)val_data(handle);
	return ptr->upperSpringForce = v;
}
static float box3d_b3DistanceJointDef_hertz_get ( value handle ) {
	b3DistanceJointDef* ptr = (b3DistanceJointDef*)val_data(handle);
	return ptr->hertz;
}
static float box3d_b3DistanceJointDef_hertz_set ( value handle, float v ) {
	b3DistanceJointDef* ptr = (b3DistanceJointDef*)val_data(handle);
	return ptr->hertz = v;
}
static float box3d_b3DistanceJointDef_dampingRatio_get ( value handle ) {
	b3DistanceJointDef* ptr = (b3DistanceJointDef*)val_data(handle);
	return ptr->dampingRatio;
}
static float box3d_b3DistanceJointDef_dampingRatio_set ( value handle, float v ) {
	b3DistanceJointDef* ptr = (b3DistanceJointDef*)val_data(handle);
	return ptr->dampingRatio = v;
}
static bool box3d_b3DistanceJointDef_enableLimit_get ( value handle ) {
	b3DistanceJointDef* ptr = (b3DistanceJointDef*)val_data(handle);
	return ptr->enableLimit;
}
static bool box3d_b3DistanceJointDef_enableLimit_set ( value handle, bool v ) {
	b3DistanceJointDef* ptr = (b3DistanceJointDef*)val_data(handle);
	return ptr->enableLimit = v;
}
static float box3d_b3DistanceJointDef_minLength_get ( value handle ) {
	b3DistanceJointDef* ptr = (b3DistanceJointDef*)val_data(handle);
	return ptr->minLength;
}
static float box3d_b3DistanceJointDef_minLength_set ( value handle, float v ) {
	b3DistanceJointDef* ptr = (b3DistanceJointDef*)val_data(handle);
	return ptr->minLength = v;
}
static float box3d_b3DistanceJointDef_maxLength_get ( value handle ) {
	b3DistanceJointDef* ptr = (b3DistanceJointDef*)val_data(handle);
	return ptr->maxLength;
}
static float box3d_b3DistanceJointDef_maxLength_set ( value handle, float v ) {
	b3DistanceJointDef* ptr = (b3DistanceJointDef*)val_data(handle);
	return ptr->maxLength = v;
}
static bool box3d_b3DistanceJointDef_enableMotor_get ( value handle ) {
	b3DistanceJointDef* ptr = (b3DistanceJointDef*)val_data(handle);
	return ptr->enableMotor;
}
static bool box3d_b3DistanceJointDef_enableMotor_set ( value handle, bool v ) {
	b3DistanceJointDef* ptr = (b3DistanceJointDef*)val_data(handle);
	return ptr->enableMotor = v;
}
static float box3d_b3DistanceJointDef_maxMotorForce_get ( value handle ) {
	b3DistanceJointDef* ptr = (b3DistanceJointDef*)val_data(handle);
	return ptr->maxMotorForce;
}
static float box3d_b3DistanceJointDef_maxMotorForce_set ( value handle, float v ) {
	b3DistanceJointDef* ptr = (b3DistanceJointDef*)val_data(handle);
	return ptr->maxMotorForce = v;
}
static float box3d_b3DistanceJointDef_motorSpeed_get ( value handle ) {
	b3DistanceJointDef* ptr = (b3DistanceJointDef*)val_data(handle);
	return ptr->motorSpeed;
}
static float box3d_b3DistanceJointDef_motorSpeed_set ( value handle, float v ) {
	b3DistanceJointDef* ptr = (b3DistanceJointDef*)val_data(handle);
	return ptr->motorSpeed = v;
}

DEFINE_PRIME0 (box3d_b3DistanceJointDef_new);
DEFINE_PRIME1 (box3d_b3DistanceJointDef_base_get);
DEFINE_PRIME2 (box3d_b3DistanceJointDef_base_set);
DEFINE_PRIME1 (box3d_b3DistanceJointDef_length_get);
DEFINE_PRIME2 (box3d_b3DistanceJointDef_length_set);
DEFINE_PRIME1 (box3d_b3DistanceJointDef_enableSpring_get);
DEFINE_PRIME2 (box3d_b3DistanceJointDef_enableSpring_set);
DEFINE_PRIME1 (box3d_b3DistanceJointDef_lowerSpringForce_get);
DEFINE_PRIME2 (box3d_b3DistanceJointDef_lowerSpringForce_set);
DEFINE_PRIME1 (box3d_b3DistanceJointDef_upperSpringForce_get);
DEFINE_PRIME2 (box3d_b3DistanceJointDef_upperSpringForce_set);
DEFINE_PRIME1 (box3d_b3DistanceJointDef_hertz_get);
DEFINE_PRIME2 (box3d_b3DistanceJointDef_hertz_set);
DEFINE_PRIME1 (box3d_b3DistanceJointDef_dampingRatio_get);
DEFINE_PRIME2 (box3d_b3DistanceJointDef_dampingRatio_set);
DEFINE_PRIME1 (box3d_b3DistanceJointDef_enableLimit_get);
DEFINE_PRIME2 (box3d_b3DistanceJointDef_enableLimit_set);
DEFINE_PRIME1 (box3d_b3DistanceJointDef_minLength_get);
DEFINE_PRIME2 (box3d_b3DistanceJointDef_minLength_set);
DEFINE_PRIME1 (box3d_b3DistanceJointDef_maxLength_get);
DEFINE_PRIME2 (box3d_b3DistanceJointDef_maxLength_set);
DEFINE_PRIME1 (box3d_b3DistanceJointDef_enableMotor_get);
DEFINE_PRIME2 (box3d_b3DistanceJointDef_enableMotor_set);
DEFINE_PRIME1 (box3d_b3DistanceJointDef_maxMotorForce_get);
DEFINE_PRIME2 (box3d_b3DistanceJointDef_maxMotorForce_set);
DEFINE_PRIME1 (box3d_b3DistanceJointDef_motorSpeed_get);
DEFINE_PRIME2 (box3d_b3DistanceJointDef_motorSpeed_set);

static void box3d_b3MotorJointDef_gc (value handle) {
	b3MotorJointDef* ptr = (b3MotorJointDef*)val_data(handle);
	delete ptr;
}
static value box3d_b3MotorJointDef_new () {
	b3MotorJointDef* ptr = new b3MotorJointDef();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3MotorJointDef_gc);
	return retVal;
}
static value box3d_b3MotorJointDef_base_get ( value handle ) {
	b3MotorJointDef* ptr = (b3MotorJointDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->base);
}
static value box3d_b3MotorJointDef_base_set ( value handle, value v ) {
	b3MotorJointDef* ptr = (b3MotorJointDef*)val_data(handle);
	memcpy(&ptr->base, (void*)val_data(v), sizeof(b3JointDef));
	return cffi::alloc_pointer(&ptr->base);
}
static value box3d_b3MotorJointDef_linearVelocity_get ( value handle ) {
	b3MotorJointDef* ptr = (b3MotorJointDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->linearVelocity);
}
static value box3d_b3MotorJointDef_linearVelocity_set ( value handle, value v ) {
	b3MotorJointDef* ptr = (b3MotorJointDef*)val_data(handle);
	memcpy(&ptr->linearVelocity, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->linearVelocity);
}
static float box3d_b3MotorJointDef_maxVelocityForce_get ( value handle ) {
	b3MotorJointDef* ptr = (b3MotorJointDef*)val_data(handle);
	return ptr->maxVelocityForce;
}
static float box3d_b3MotorJointDef_maxVelocityForce_set ( value handle, float v ) {
	b3MotorJointDef* ptr = (b3MotorJointDef*)val_data(handle);
	return ptr->maxVelocityForce = v;
}
static value box3d_b3MotorJointDef_angularVelocity_get ( value handle ) {
	b3MotorJointDef* ptr = (b3MotorJointDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->angularVelocity);
}
static value box3d_b3MotorJointDef_angularVelocity_set ( value handle, value v ) {
	b3MotorJointDef* ptr = (b3MotorJointDef*)val_data(handle);
	memcpy(&ptr->angularVelocity, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->angularVelocity);
}
static float box3d_b3MotorJointDef_maxVelocityTorque_get ( value handle ) {
	b3MotorJointDef* ptr = (b3MotorJointDef*)val_data(handle);
	return ptr->maxVelocityTorque;
}
static float box3d_b3MotorJointDef_maxVelocityTorque_set ( value handle, float v ) {
	b3MotorJointDef* ptr = (b3MotorJointDef*)val_data(handle);
	return ptr->maxVelocityTorque = v;
}
static float box3d_b3MotorJointDef_linearHertz_get ( value handle ) {
	b3MotorJointDef* ptr = (b3MotorJointDef*)val_data(handle);
	return ptr->linearHertz;
}
static float box3d_b3MotorJointDef_linearHertz_set ( value handle, float v ) {
	b3MotorJointDef* ptr = (b3MotorJointDef*)val_data(handle);
	return ptr->linearHertz = v;
}
static float box3d_b3MotorJointDef_linearDampingRatio_get ( value handle ) {
	b3MotorJointDef* ptr = (b3MotorJointDef*)val_data(handle);
	return ptr->linearDampingRatio;
}
static float box3d_b3MotorJointDef_linearDampingRatio_set ( value handle, float v ) {
	b3MotorJointDef* ptr = (b3MotorJointDef*)val_data(handle);
	return ptr->linearDampingRatio = v;
}
static float box3d_b3MotorJointDef_maxSpringForce_get ( value handle ) {
	b3MotorJointDef* ptr = (b3MotorJointDef*)val_data(handle);
	return ptr->maxSpringForce;
}
static float box3d_b3MotorJointDef_maxSpringForce_set ( value handle, float v ) {
	b3MotorJointDef* ptr = (b3MotorJointDef*)val_data(handle);
	return ptr->maxSpringForce = v;
}
static float box3d_b3MotorJointDef_angularHertz_get ( value handle ) {
	b3MotorJointDef* ptr = (b3MotorJointDef*)val_data(handle);
	return ptr->angularHertz;
}
static float box3d_b3MotorJointDef_angularHertz_set ( value handle, float v ) {
	b3MotorJointDef* ptr = (b3MotorJointDef*)val_data(handle);
	return ptr->angularHertz = v;
}
static float box3d_b3MotorJointDef_angularDampingRatio_get ( value handle ) {
	b3MotorJointDef* ptr = (b3MotorJointDef*)val_data(handle);
	return ptr->angularDampingRatio;
}
static float box3d_b3MotorJointDef_angularDampingRatio_set ( value handle, float v ) {
	b3MotorJointDef* ptr = (b3MotorJointDef*)val_data(handle);
	return ptr->angularDampingRatio = v;
}
static float box3d_b3MotorJointDef_maxSpringTorque_get ( value handle ) {
	b3MotorJointDef* ptr = (b3MotorJointDef*)val_data(handle);
	return ptr->maxSpringTorque;
}
static float box3d_b3MotorJointDef_maxSpringTorque_set ( value handle, float v ) {
	b3MotorJointDef* ptr = (b3MotorJointDef*)val_data(handle);
	return ptr->maxSpringTorque = v;
}

DEFINE_PRIME0 (box3d_b3MotorJointDef_new);
DEFINE_PRIME1 (box3d_b3MotorJointDef_base_get);
DEFINE_PRIME2 (box3d_b3MotorJointDef_base_set);
DEFINE_PRIME1 (box3d_b3MotorJointDef_linearVelocity_get);
DEFINE_PRIME2 (box3d_b3MotorJointDef_linearVelocity_set);
DEFINE_PRIME1 (box3d_b3MotorJointDef_maxVelocityForce_get);
DEFINE_PRIME2 (box3d_b3MotorJointDef_maxVelocityForce_set);
DEFINE_PRIME1 (box3d_b3MotorJointDef_angularVelocity_get);
DEFINE_PRIME2 (box3d_b3MotorJointDef_angularVelocity_set);
DEFINE_PRIME1 (box3d_b3MotorJointDef_maxVelocityTorque_get);
DEFINE_PRIME2 (box3d_b3MotorJointDef_maxVelocityTorque_set);
DEFINE_PRIME1 (box3d_b3MotorJointDef_linearHertz_get);
DEFINE_PRIME2 (box3d_b3MotorJointDef_linearHertz_set);
DEFINE_PRIME1 (box3d_b3MotorJointDef_linearDampingRatio_get);
DEFINE_PRIME2 (box3d_b3MotorJointDef_linearDampingRatio_set);
DEFINE_PRIME1 (box3d_b3MotorJointDef_maxSpringForce_get);
DEFINE_PRIME2 (box3d_b3MotorJointDef_maxSpringForce_set);
DEFINE_PRIME1 (box3d_b3MotorJointDef_angularHertz_get);
DEFINE_PRIME2 (box3d_b3MotorJointDef_angularHertz_set);
DEFINE_PRIME1 (box3d_b3MotorJointDef_angularDampingRatio_get);
DEFINE_PRIME2 (box3d_b3MotorJointDef_angularDampingRatio_set);
DEFINE_PRIME1 (box3d_b3MotorJointDef_maxSpringTorque_get);
DEFINE_PRIME2 (box3d_b3MotorJointDef_maxSpringTorque_set);

static void box3d_b3FilterJointDef_gc (value handle) {
	b3FilterJointDef* ptr = (b3FilterJointDef*)val_data(handle);
	delete ptr;
}
static value box3d_b3FilterJointDef_new () {
	b3FilterJointDef* ptr = new b3FilterJointDef();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3FilterJointDef_gc);
	return retVal;
}
static value box3d_b3FilterJointDef_base_get ( value handle ) {
	b3FilterJointDef* ptr = (b3FilterJointDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->base);
}
static value box3d_b3FilterJointDef_base_set ( value handle, value v ) {
	b3FilterJointDef* ptr = (b3FilterJointDef*)val_data(handle);
	memcpy(&ptr->base, (void*)val_data(v), sizeof(b3JointDef));
	return cffi::alloc_pointer(&ptr->base);
}

DEFINE_PRIME0 (box3d_b3FilterJointDef_new);
DEFINE_PRIME1 (box3d_b3FilterJointDef_base_get);
DEFINE_PRIME2 (box3d_b3FilterJointDef_base_set);

static void box3d_b3ParallelJointDef_gc (value handle) {
	b3ParallelJointDef* ptr = (b3ParallelJointDef*)val_data(handle);
	delete ptr;
}
static value box3d_b3ParallelJointDef_new () {
	b3ParallelJointDef* ptr = new b3ParallelJointDef();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3ParallelJointDef_gc);
	return retVal;
}
static value box3d_b3ParallelJointDef_base_get ( value handle ) {
	b3ParallelJointDef* ptr = (b3ParallelJointDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->base);
}
static value box3d_b3ParallelJointDef_base_set ( value handle, value v ) {
	b3ParallelJointDef* ptr = (b3ParallelJointDef*)val_data(handle);
	memcpy(&ptr->base, (void*)val_data(v), sizeof(b3JointDef));
	return cffi::alloc_pointer(&ptr->base);
}
static float box3d_b3ParallelJointDef_hertz_get ( value handle ) {
	b3ParallelJointDef* ptr = (b3ParallelJointDef*)val_data(handle);
	return ptr->hertz;
}
static float box3d_b3ParallelJointDef_hertz_set ( value handle, float v ) {
	b3ParallelJointDef* ptr = (b3ParallelJointDef*)val_data(handle);
	return ptr->hertz = v;
}
static float box3d_b3ParallelJointDef_dampingRatio_get ( value handle ) {
	b3ParallelJointDef* ptr = (b3ParallelJointDef*)val_data(handle);
	return ptr->dampingRatio;
}
static float box3d_b3ParallelJointDef_dampingRatio_set ( value handle, float v ) {
	b3ParallelJointDef* ptr = (b3ParallelJointDef*)val_data(handle);
	return ptr->dampingRatio = v;
}
static float box3d_b3ParallelJointDef_maxTorque_get ( value handle ) {
	b3ParallelJointDef* ptr = (b3ParallelJointDef*)val_data(handle);
	return ptr->maxTorque;
}
static float box3d_b3ParallelJointDef_maxTorque_set ( value handle, float v ) {
	b3ParallelJointDef* ptr = (b3ParallelJointDef*)val_data(handle);
	return ptr->maxTorque = v;
}

DEFINE_PRIME0 (box3d_b3ParallelJointDef_new);
DEFINE_PRIME1 (box3d_b3ParallelJointDef_base_get);
DEFINE_PRIME2 (box3d_b3ParallelJointDef_base_set);
DEFINE_PRIME1 (box3d_b3ParallelJointDef_hertz_get);
DEFINE_PRIME2 (box3d_b3ParallelJointDef_hertz_set);
DEFINE_PRIME1 (box3d_b3ParallelJointDef_dampingRatio_get);
DEFINE_PRIME2 (box3d_b3ParallelJointDef_dampingRatio_set);
DEFINE_PRIME1 (box3d_b3ParallelJointDef_maxTorque_get);
DEFINE_PRIME2 (box3d_b3ParallelJointDef_maxTorque_set);

static void box3d_b3PrismaticJointDef_gc (value handle) {
	b3PrismaticJointDef* ptr = (b3PrismaticJointDef*)val_data(handle);
	delete ptr;
}
static value box3d_b3PrismaticJointDef_new () {
	b3PrismaticJointDef* ptr = new b3PrismaticJointDef();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3PrismaticJointDef_gc);
	return retVal;
}
static value box3d_b3PrismaticJointDef_base_get ( value handle ) {
	b3PrismaticJointDef* ptr = (b3PrismaticJointDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->base);
}
static value box3d_b3PrismaticJointDef_base_set ( value handle, value v ) {
	b3PrismaticJointDef* ptr = (b3PrismaticJointDef*)val_data(handle);
	memcpy(&ptr->base, (void*)val_data(v), sizeof(b3JointDef));
	return cffi::alloc_pointer(&ptr->base);
}
static bool box3d_b3PrismaticJointDef_enableSpring_get ( value handle ) {
	b3PrismaticJointDef* ptr = (b3PrismaticJointDef*)val_data(handle);
	return ptr->enableSpring;
}
static bool box3d_b3PrismaticJointDef_enableSpring_set ( value handle, bool v ) {
	b3PrismaticJointDef* ptr = (b3PrismaticJointDef*)val_data(handle);
	return ptr->enableSpring = v;
}
static float box3d_b3PrismaticJointDef_hertz_get ( value handle ) {
	b3PrismaticJointDef* ptr = (b3PrismaticJointDef*)val_data(handle);
	return ptr->hertz;
}
static float box3d_b3PrismaticJointDef_hertz_set ( value handle, float v ) {
	b3PrismaticJointDef* ptr = (b3PrismaticJointDef*)val_data(handle);
	return ptr->hertz = v;
}
static float box3d_b3PrismaticJointDef_dampingRatio_get ( value handle ) {
	b3PrismaticJointDef* ptr = (b3PrismaticJointDef*)val_data(handle);
	return ptr->dampingRatio;
}
static float box3d_b3PrismaticJointDef_dampingRatio_set ( value handle, float v ) {
	b3PrismaticJointDef* ptr = (b3PrismaticJointDef*)val_data(handle);
	return ptr->dampingRatio = v;
}
static float box3d_b3PrismaticJointDef_targetTranslation_get ( value handle ) {
	b3PrismaticJointDef* ptr = (b3PrismaticJointDef*)val_data(handle);
	return ptr->targetTranslation;
}
static float box3d_b3PrismaticJointDef_targetTranslation_set ( value handle, float v ) {
	b3PrismaticJointDef* ptr = (b3PrismaticJointDef*)val_data(handle);
	return ptr->targetTranslation = v;
}
static bool box3d_b3PrismaticJointDef_enableLimit_get ( value handle ) {
	b3PrismaticJointDef* ptr = (b3PrismaticJointDef*)val_data(handle);
	return ptr->enableLimit;
}
static bool box3d_b3PrismaticJointDef_enableLimit_set ( value handle, bool v ) {
	b3PrismaticJointDef* ptr = (b3PrismaticJointDef*)val_data(handle);
	return ptr->enableLimit = v;
}
static float box3d_b3PrismaticJointDef_lowerTranslation_get ( value handle ) {
	b3PrismaticJointDef* ptr = (b3PrismaticJointDef*)val_data(handle);
	return ptr->lowerTranslation;
}
static float box3d_b3PrismaticJointDef_lowerTranslation_set ( value handle, float v ) {
	b3PrismaticJointDef* ptr = (b3PrismaticJointDef*)val_data(handle);
	return ptr->lowerTranslation = v;
}
static float box3d_b3PrismaticJointDef_upperTranslation_get ( value handle ) {
	b3PrismaticJointDef* ptr = (b3PrismaticJointDef*)val_data(handle);
	return ptr->upperTranslation;
}
static float box3d_b3PrismaticJointDef_upperTranslation_set ( value handle, float v ) {
	b3PrismaticJointDef* ptr = (b3PrismaticJointDef*)val_data(handle);
	return ptr->upperTranslation = v;
}
static bool box3d_b3PrismaticJointDef_enableMotor_get ( value handle ) {
	b3PrismaticJointDef* ptr = (b3PrismaticJointDef*)val_data(handle);
	return ptr->enableMotor;
}
static bool box3d_b3PrismaticJointDef_enableMotor_set ( value handle, bool v ) {
	b3PrismaticJointDef* ptr = (b3PrismaticJointDef*)val_data(handle);
	return ptr->enableMotor = v;
}
static float box3d_b3PrismaticJointDef_maxMotorForce_get ( value handle ) {
	b3PrismaticJointDef* ptr = (b3PrismaticJointDef*)val_data(handle);
	return ptr->maxMotorForce;
}
static float box3d_b3PrismaticJointDef_maxMotorForce_set ( value handle, float v ) {
	b3PrismaticJointDef* ptr = (b3PrismaticJointDef*)val_data(handle);
	return ptr->maxMotorForce = v;
}
static float box3d_b3PrismaticJointDef_motorSpeed_get ( value handle ) {
	b3PrismaticJointDef* ptr = (b3PrismaticJointDef*)val_data(handle);
	return ptr->motorSpeed;
}
static float box3d_b3PrismaticJointDef_motorSpeed_set ( value handle, float v ) {
	b3PrismaticJointDef* ptr = (b3PrismaticJointDef*)val_data(handle);
	return ptr->motorSpeed = v;
}

DEFINE_PRIME0 (box3d_b3PrismaticJointDef_new);
DEFINE_PRIME1 (box3d_b3PrismaticJointDef_base_get);
DEFINE_PRIME2 (box3d_b3PrismaticJointDef_base_set);
DEFINE_PRIME1 (box3d_b3PrismaticJointDef_enableSpring_get);
DEFINE_PRIME2 (box3d_b3PrismaticJointDef_enableSpring_set);
DEFINE_PRIME1 (box3d_b3PrismaticJointDef_hertz_get);
DEFINE_PRIME2 (box3d_b3PrismaticJointDef_hertz_set);
DEFINE_PRIME1 (box3d_b3PrismaticJointDef_dampingRatio_get);
DEFINE_PRIME2 (box3d_b3PrismaticJointDef_dampingRatio_set);
DEFINE_PRIME1 (box3d_b3PrismaticJointDef_targetTranslation_get);
DEFINE_PRIME2 (box3d_b3PrismaticJointDef_targetTranslation_set);
DEFINE_PRIME1 (box3d_b3PrismaticJointDef_enableLimit_get);
DEFINE_PRIME2 (box3d_b3PrismaticJointDef_enableLimit_set);
DEFINE_PRIME1 (box3d_b3PrismaticJointDef_lowerTranslation_get);
DEFINE_PRIME2 (box3d_b3PrismaticJointDef_lowerTranslation_set);
DEFINE_PRIME1 (box3d_b3PrismaticJointDef_upperTranslation_get);
DEFINE_PRIME2 (box3d_b3PrismaticJointDef_upperTranslation_set);
DEFINE_PRIME1 (box3d_b3PrismaticJointDef_enableMotor_get);
DEFINE_PRIME2 (box3d_b3PrismaticJointDef_enableMotor_set);
DEFINE_PRIME1 (box3d_b3PrismaticJointDef_maxMotorForce_get);
DEFINE_PRIME2 (box3d_b3PrismaticJointDef_maxMotorForce_set);
DEFINE_PRIME1 (box3d_b3PrismaticJointDef_motorSpeed_get);
DEFINE_PRIME2 (box3d_b3PrismaticJointDef_motorSpeed_set);

static void box3d_b3RevoluteJointDef_gc (value handle) {
	b3RevoluteJointDef* ptr = (b3RevoluteJointDef*)val_data(handle);
	delete ptr;
}
static value box3d_b3RevoluteJointDef_new () {
	b3RevoluteJointDef* ptr = new b3RevoluteJointDef();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3RevoluteJointDef_gc);
	return retVal;
}
static value box3d_b3RevoluteJointDef_base_get ( value handle ) {
	b3RevoluteJointDef* ptr = (b3RevoluteJointDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->base);
}
static value box3d_b3RevoluteJointDef_base_set ( value handle, value v ) {
	b3RevoluteJointDef* ptr = (b3RevoluteJointDef*)val_data(handle);
	memcpy(&ptr->base, (void*)val_data(v), sizeof(b3JointDef));
	return cffi::alloc_pointer(&ptr->base);
}
static float box3d_b3RevoluteJointDef_targetAngle_get ( value handle ) {
	b3RevoluteJointDef* ptr = (b3RevoluteJointDef*)val_data(handle);
	return ptr->targetAngle;
}
static float box3d_b3RevoluteJointDef_targetAngle_set ( value handle, float v ) {
	b3RevoluteJointDef* ptr = (b3RevoluteJointDef*)val_data(handle);
	return ptr->targetAngle = v;
}
static bool box3d_b3RevoluteJointDef_enableSpring_get ( value handle ) {
	b3RevoluteJointDef* ptr = (b3RevoluteJointDef*)val_data(handle);
	return ptr->enableSpring;
}
static bool box3d_b3RevoluteJointDef_enableSpring_set ( value handle, bool v ) {
	b3RevoluteJointDef* ptr = (b3RevoluteJointDef*)val_data(handle);
	return ptr->enableSpring = v;
}
static float box3d_b3RevoluteJointDef_hertz_get ( value handle ) {
	b3RevoluteJointDef* ptr = (b3RevoluteJointDef*)val_data(handle);
	return ptr->hertz;
}
static float box3d_b3RevoluteJointDef_hertz_set ( value handle, float v ) {
	b3RevoluteJointDef* ptr = (b3RevoluteJointDef*)val_data(handle);
	return ptr->hertz = v;
}
static float box3d_b3RevoluteJointDef_dampingRatio_get ( value handle ) {
	b3RevoluteJointDef* ptr = (b3RevoluteJointDef*)val_data(handle);
	return ptr->dampingRatio;
}
static float box3d_b3RevoluteJointDef_dampingRatio_set ( value handle, float v ) {
	b3RevoluteJointDef* ptr = (b3RevoluteJointDef*)val_data(handle);
	return ptr->dampingRatio = v;
}
static bool box3d_b3RevoluteJointDef_enableLimit_get ( value handle ) {
	b3RevoluteJointDef* ptr = (b3RevoluteJointDef*)val_data(handle);
	return ptr->enableLimit;
}
static bool box3d_b3RevoluteJointDef_enableLimit_set ( value handle, bool v ) {
	b3RevoluteJointDef* ptr = (b3RevoluteJointDef*)val_data(handle);
	return ptr->enableLimit = v;
}
static float box3d_b3RevoluteJointDef_lowerAngle_get ( value handle ) {
	b3RevoluteJointDef* ptr = (b3RevoluteJointDef*)val_data(handle);
	return ptr->lowerAngle;
}
static float box3d_b3RevoluteJointDef_lowerAngle_set ( value handle, float v ) {
	b3RevoluteJointDef* ptr = (b3RevoluteJointDef*)val_data(handle);
	return ptr->lowerAngle = v;
}
static float box3d_b3RevoluteJointDef_upperAngle_get ( value handle ) {
	b3RevoluteJointDef* ptr = (b3RevoluteJointDef*)val_data(handle);
	return ptr->upperAngle;
}
static float box3d_b3RevoluteJointDef_upperAngle_set ( value handle, float v ) {
	b3RevoluteJointDef* ptr = (b3RevoluteJointDef*)val_data(handle);
	return ptr->upperAngle = v;
}
static bool box3d_b3RevoluteJointDef_enableMotor_get ( value handle ) {
	b3RevoluteJointDef* ptr = (b3RevoluteJointDef*)val_data(handle);
	return ptr->enableMotor;
}
static bool box3d_b3RevoluteJointDef_enableMotor_set ( value handle, bool v ) {
	b3RevoluteJointDef* ptr = (b3RevoluteJointDef*)val_data(handle);
	return ptr->enableMotor = v;
}
static float box3d_b3RevoluteJointDef_maxMotorTorque_get ( value handle ) {
	b3RevoluteJointDef* ptr = (b3RevoluteJointDef*)val_data(handle);
	return ptr->maxMotorTorque;
}
static float box3d_b3RevoluteJointDef_maxMotorTorque_set ( value handle, float v ) {
	b3RevoluteJointDef* ptr = (b3RevoluteJointDef*)val_data(handle);
	return ptr->maxMotorTorque = v;
}
static float box3d_b3RevoluteJointDef_motorSpeed_get ( value handle ) {
	b3RevoluteJointDef* ptr = (b3RevoluteJointDef*)val_data(handle);
	return ptr->motorSpeed;
}
static float box3d_b3RevoluteJointDef_motorSpeed_set ( value handle, float v ) {
	b3RevoluteJointDef* ptr = (b3RevoluteJointDef*)val_data(handle);
	return ptr->motorSpeed = v;
}

DEFINE_PRIME0 (box3d_b3RevoluteJointDef_new);
DEFINE_PRIME1 (box3d_b3RevoluteJointDef_base_get);
DEFINE_PRIME2 (box3d_b3RevoluteJointDef_base_set);
DEFINE_PRIME1 (box3d_b3RevoluteJointDef_targetAngle_get);
DEFINE_PRIME2 (box3d_b3RevoluteJointDef_targetAngle_set);
DEFINE_PRIME1 (box3d_b3RevoluteJointDef_enableSpring_get);
DEFINE_PRIME2 (box3d_b3RevoluteJointDef_enableSpring_set);
DEFINE_PRIME1 (box3d_b3RevoluteJointDef_hertz_get);
DEFINE_PRIME2 (box3d_b3RevoluteJointDef_hertz_set);
DEFINE_PRIME1 (box3d_b3RevoluteJointDef_dampingRatio_get);
DEFINE_PRIME2 (box3d_b3RevoluteJointDef_dampingRatio_set);
DEFINE_PRIME1 (box3d_b3RevoluteJointDef_enableLimit_get);
DEFINE_PRIME2 (box3d_b3RevoluteJointDef_enableLimit_set);
DEFINE_PRIME1 (box3d_b3RevoluteJointDef_lowerAngle_get);
DEFINE_PRIME2 (box3d_b3RevoluteJointDef_lowerAngle_set);
DEFINE_PRIME1 (box3d_b3RevoluteJointDef_upperAngle_get);
DEFINE_PRIME2 (box3d_b3RevoluteJointDef_upperAngle_set);
DEFINE_PRIME1 (box3d_b3RevoluteJointDef_enableMotor_get);
DEFINE_PRIME2 (box3d_b3RevoluteJointDef_enableMotor_set);
DEFINE_PRIME1 (box3d_b3RevoluteJointDef_maxMotorTorque_get);
DEFINE_PRIME2 (box3d_b3RevoluteJointDef_maxMotorTorque_set);
DEFINE_PRIME1 (box3d_b3RevoluteJointDef_motorSpeed_get);
DEFINE_PRIME2 (box3d_b3RevoluteJointDef_motorSpeed_set);

static void box3d_b3SphericalJointDef_gc (value handle) {
	b3SphericalJointDef* ptr = (b3SphericalJointDef*)val_data(handle);
	delete ptr;
}
static value box3d_b3SphericalJointDef_new () {
	b3SphericalJointDef* ptr = new b3SphericalJointDef();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3SphericalJointDef_gc);
	return retVal;
}
static value box3d_b3SphericalJointDef_base_get ( value handle ) {
	b3SphericalJointDef* ptr = (b3SphericalJointDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->base);
}
static value box3d_b3SphericalJointDef_base_set ( value handle, value v ) {
	b3SphericalJointDef* ptr = (b3SphericalJointDef*)val_data(handle);
	memcpy(&ptr->base, (void*)val_data(v), sizeof(b3JointDef));
	return cffi::alloc_pointer(&ptr->base);
}
static bool box3d_b3SphericalJointDef_enableSpring_get ( value handle ) {
	b3SphericalJointDef* ptr = (b3SphericalJointDef*)val_data(handle);
	return ptr->enableSpring;
}
static bool box3d_b3SphericalJointDef_enableSpring_set ( value handle, bool v ) {
	b3SphericalJointDef* ptr = (b3SphericalJointDef*)val_data(handle);
	return ptr->enableSpring = v;
}
static float box3d_b3SphericalJointDef_hertz_get ( value handle ) {
	b3SphericalJointDef* ptr = (b3SphericalJointDef*)val_data(handle);
	return ptr->hertz;
}
static float box3d_b3SphericalJointDef_hertz_set ( value handle, float v ) {
	b3SphericalJointDef* ptr = (b3SphericalJointDef*)val_data(handle);
	return ptr->hertz = v;
}
static float box3d_b3SphericalJointDef_dampingRatio_get ( value handle ) {
	b3SphericalJointDef* ptr = (b3SphericalJointDef*)val_data(handle);
	return ptr->dampingRatio;
}
static float box3d_b3SphericalJointDef_dampingRatio_set ( value handle, float v ) {
	b3SphericalJointDef* ptr = (b3SphericalJointDef*)val_data(handle);
	return ptr->dampingRatio = v;
}
static value box3d_b3SphericalJointDef_targetRotation_get ( value handle ) {
	b3SphericalJointDef* ptr = (b3SphericalJointDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->targetRotation);
}
static value box3d_b3SphericalJointDef_targetRotation_set ( value handle, value v ) {
	b3SphericalJointDef* ptr = (b3SphericalJointDef*)val_data(handle);
	memcpy(&ptr->targetRotation, (void*)val_data(v), sizeof(b3Quat));
	return cffi::alloc_pointer(&ptr->targetRotation);
}
static bool box3d_b3SphericalJointDef_enableConeLimit_get ( value handle ) {
	b3SphericalJointDef* ptr = (b3SphericalJointDef*)val_data(handle);
	return ptr->enableConeLimit;
}
static bool box3d_b3SphericalJointDef_enableConeLimit_set ( value handle, bool v ) {
	b3SphericalJointDef* ptr = (b3SphericalJointDef*)val_data(handle);
	return ptr->enableConeLimit = v;
}
static float box3d_b3SphericalJointDef_coneAngle_get ( value handle ) {
	b3SphericalJointDef* ptr = (b3SphericalJointDef*)val_data(handle);
	return ptr->coneAngle;
}
static float box3d_b3SphericalJointDef_coneAngle_set ( value handle, float v ) {
	b3SphericalJointDef* ptr = (b3SphericalJointDef*)val_data(handle);
	return ptr->coneAngle = v;
}
static bool box3d_b3SphericalJointDef_enableTwistLimit_get ( value handle ) {
	b3SphericalJointDef* ptr = (b3SphericalJointDef*)val_data(handle);
	return ptr->enableTwistLimit;
}
static bool box3d_b3SphericalJointDef_enableTwistLimit_set ( value handle, bool v ) {
	b3SphericalJointDef* ptr = (b3SphericalJointDef*)val_data(handle);
	return ptr->enableTwistLimit = v;
}
static float box3d_b3SphericalJointDef_lowerTwistAngle_get ( value handle ) {
	b3SphericalJointDef* ptr = (b3SphericalJointDef*)val_data(handle);
	return ptr->lowerTwistAngle;
}
static float box3d_b3SphericalJointDef_lowerTwistAngle_set ( value handle, float v ) {
	b3SphericalJointDef* ptr = (b3SphericalJointDef*)val_data(handle);
	return ptr->lowerTwistAngle = v;
}
static float box3d_b3SphericalJointDef_upperTwistAngle_get ( value handle ) {
	b3SphericalJointDef* ptr = (b3SphericalJointDef*)val_data(handle);
	return ptr->upperTwistAngle;
}
static float box3d_b3SphericalJointDef_upperTwistAngle_set ( value handle, float v ) {
	b3SphericalJointDef* ptr = (b3SphericalJointDef*)val_data(handle);
	return ptr->upperTwistAngle = v;
}
static bool box3d_b3SphericalJointDef_enableMotor_get ( value handle ) {
	b3SphericalJointDef* ptr = (b3SphericalJointDef*)val_data(handle);
	return ptr->enableMotor;
}
static bool box3d_b3SphericalJointDef_enableMotor_set ( value handle, bool v ) {
	b3SphericalJointDef* ptr = (b3SphericalJointDef*)val_data(handle);
	return ptr->enableMotor = v;
}
static float box3d_b3SphericalJointDef_maxMotorTorque_get ( value handle ) {
	b3SphericalJointDef* ptr = (b3SphericalJointDef*)val_data(handle);
	return ptr->maxMotorTorque;
}
static float box3d_b3SphericalJointDef_maxMotorTorque_set ( value handle, float v ) {
	b3SphericalJointDef* ptr = (b3SphericalJointDef*)val_data(handle);
	return ptr->maxMotorTorque = v;
}
static value box3d_b3SphericalJointDef_motorVelocity_get ( value handle ) {
	b3SphericalJointDef* ptr = (b3SphericalJointDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->motorVelocity);
}
static value box3d_b3SphericalJointDef_motorVelocity_set ( value handle, value v ) {
	b3SphericalJointDef* ptr = (b3SphericalJointDef*)val_data(handle);
	memcpy(&ptr->motorVelocity, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->motorVelocity);
}

DEFINE_PRIME0 (box3d_b3SphericalJointDef_new);
DEFINE_PRIME1 (box3d_b3SphericalJointDef_base_get);
DEFINE_PRIME2 (box3d_b3SphericalJointDef_base_set);
DEFINE_PRIME1 (box3d_b3SphericalJointDef_enableSpring_get);
DEFINE_PRIME2 (box3d_b3SphericalJointDef_enableSpring_set);
DEFINE_PRIME1 (box3d_b3SphericalJointDef_hertz_get);
DEFINE_PRIME2 (box3d_b3SphericalJointDef_hertz_set);
DEFINE_PRIME1 (box3d_b3SphericalJointDef_dampingRatio_get);
DEFINE_PRIME2 (box3d_b3SphericalJointDef_dampingRatio_set);
DEFINE_PRIME1 (box3d_b3SphericalJointDef_targetRotation_get);
DEFINE_PRIME2 (box3d_b3SphericalJointDef_targetRotation_set);
DEFINE_PRIME1 (box3d_b3SphericalJointDef_enableConeLimit_get);
DEFINE_PRIME2 (box3d_b3SphericalJointDef_enableConeLimit_set);
DEFINE_PRIME1 (box3d_b3SphericalJointDef_coneAngle_get);
DEFINE_PRIME2 (box3d_b3SphericalJointDef_coneAngle_set);
DEFINE_PRIME1 (box3d_b3SphericalJointDef_enableTwistLimit_get);
DEFINE_PRIME2 (box3d_b3SphericalJointDef_enableTwistLimit_set);
DEFINE_PRIME1 (box3d_b3SphericalJointDef_lowerTwistAngle_get);
DEFINE_PRIME2 (box3d_b3SphericalJointDef_lowerTwistAngle_set);
DEFINE_PRIME1 (box3d_b3SphericalJointDef_upperTwistAngle_get);
DEFINE_PRIME2 (box3d_b3SphericalJointDef_upperTwistAngle_set);
DEFINE_PRIME1 (box3d_b3SphericalJointDef_enableMotor_get);
DEFINE_PRIME2 (box3d_b3SphericalJointDef_enableMotor_set);
DEFINE_PRIME1 (box3d_b3SphericalJointDef_maxMotorTorque_get);
DEFINE_PRIME2 (box3d_b3SphericalJointDef_maxMotorTorque_set);
DEFINE_PRIME1 (box3d_b3SphericalJointDef_motorVelocity_get);
DEFINE_PRIME2 (box3d_b3SphericalJointDef_motorVelocity_set);

static void box3d_b3WeldJointDef_gc (value handle) {
	b3WeldJointDef* ptr = (b3WeldJointDef*)val_data(handle);
	delete ptr;
}
static value box3d_b3WeldJointDef_new () {
	b3WeldJointDef* ptr = new b3WeldJointDef();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3WeldJointDef_gc);
	return retVal;
}
static value box3d_b3WeldJointDef_base_get ( value handle ) {
	b3WeldJointDef* ptr = (b3WeldJointDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->base);
}
static value box3d_b3WeldJointDef_base_set ( value handle, value v ) {
	b3WeldJointDef* ptr = (b3WeldJointDef*)val_data(handle);
	memcpy(&ptr->base, (void*)val_data(v), sizeof(b3JointDef));
	return cffi::alloc_pointer(&ptr->base);
}
static float box3d_b3WeldJointDef_linearHertz_get ( value handle ) {
	b3WeldJointDef* ptr = (b3WeldJointDef*)val_data(handle);
	return ptr->linearHertz;
}
static float box3d_b3WeldJointDef_linearHertz_set ( value handle, float v ) {
	b3WeldJointDef* ptr = (b3WeldJointDef*)val_data(handle);
	return ptr->linearHertz = v;
}
static float box3d_b3WeldJointDef_angularHertz_get ( value handle ) {
	b3WeldJointDef* ptr = (b3WeldJointDef*)val_data(handle);
	return ptr->angularHertz;
}
static float box3d_b3WeldJointDef_angularHertz_set ( value handle, float v ) {
	b3WeldJointDef* ptr = (b3WeldJointDef*)val_data(handle);
	return ptr->angularHertz = v;
}
static float box3d_b3WeldJointDef_linearDampingRatio_get ( value handle ) {
	b3WeldJointDef* ptr = (b3WeldJointDef*)val_data(handle);
	return ptr->linearDampingRatio;
}
static float box3d_b3WeldJointDef_linearDampingRatio_set ( value handle, float v ) {
	b3WeldJointDef* ptr = (b3WeldJointDef*)val_data(handle);
	return ptr->linearDampingRatio = v;
}
static float box3d_b3WeldJointDef_angularDampingRatio_get ( value handle ) {
	b3WeldJointDef* ptr = (b3WeldJointDef*)val_data(handle);
	return ptr->angularDampingRatio;
}
static float box3d_b3WeldJointDef_angularDampingRatio_set ( value handle, float v ) {
	b3WeldJointDef* ptr = (b3WeldJointDef*)val_data(handle);
	return ptr->angularDampingRatio = v;
}

DEFINE_PRIME0 (box3d_b3WeldJointDef_new);
DEFINE_PRIME1 (box3d_b3WeldJointDef_base_get);
DEFINE_PRIME2 (box3d_b3WeldJointDef_base_set);
DEFINE_PRIME1 (box3d_b3WeldJointDef_linearHertz_get);
DEFINE_PRIME2 (box3d_b3WeldJointDef_linearHertz_set);
DEFINE_PRIME1 (box3d_b3WeldJointDef_angularHertz_get);
DEFINE_PRIME2 (box3d_b3WeldJointDef_angularHertz_set);
DEFINE_PRIME1 (box3d_b3WeldJointDef_linearDampingRatio_get);
DEFINE_PRIME2 (box3d_b3WeldJointDef_linearDampingRatio_set);
DEFINE_PRIME1 (box3d_b3WeldJointDef_angularDampingRatio_get);
DEFINE_PRIME2 (box3d_b3WeldJointDef_angularDampingRatio_set);

static void box3d_b3WheelJointDef_gc (value handle) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	delete ptr;
}
static value box3d_b3WheelJointDef_new () {
	b3WheelJointDef* ptr = new b3WheelJointDef();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3WheelJointDef_gc);
	return retVal;
}
static value box3d_b3WheelJointDef_base_get ( value handle ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->base);
}
static value box3d_b3WheelJointDef_base_set ( value handle, value v ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	memcpy(&ptr->base, (void*)val_data(v), sizeof(b3JointDef));
	return cffi::alloc_pointer(&ptr->base);
}
static bool box3d_b3WheelJointDef_enableSuspensionSpring_get ( value handle ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->enableSuspensionSpring;
}
static bool box3d_b3WheelJointDef_enableSuspensionSpring_set ( value handle, bool v ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->enableSuspensionSpring = v;
}
static float box3d_b3WheelJointDef_suspensionHertz_get ( value handle ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->suspensionHertz;
}
static float box3d_b3WheelJointDef_suspensionHertz_set ( value handle, float v ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->suspensionHertz = v;
}
static float box3d_b3WheelJointDef_suspensionDampingRatio_get ( value handle ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->suspensionDampingRatio;
}
static float box3d_b3WheelJointDef_suspensionDampingRatio_set ( value handle, float v ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->suspensionDampingRatio = v;
}
static bool box3d_b3WheelJointDef_enableSuspensionLimit_get ( value handle ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->enableSuspensionLimit;
}
static bool box3d_b3WheelJointDef_enableSuspensionLimit_set ( value handle, bool v ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->enableSuspensionLimit = v;
}
static float box3d_b3WheelJointDef_lowerSuspensionLimit_get ( value handle ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->lowerSuspensionLimit;
}
static float box3d_b3WheelJointDef_lowerSuspensionLimit_set ( value handle, float v ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->lowerSuspensionLimit = v;
}
static float box3d_b3WheelJointDef_upperSuspensionLimit_get ( value handle ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->upperSuspensionLimit;
}
static float box3d_b3WheelJointDef_upperSuspensionLimit_set ( value handle, float v ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->upperSuspensionLimit = v;
}
static bool box3d_b3WheelJointDef_enableSpinMotor_get ( value handle ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->enableSpinMotor;
}
static bool box3d_b3WheelJointDef_enableSpinMotor_set ( value handle, bool v ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->enableSpinMotor = v;
}
static float box3d_b3WheelJointDef_maxSpinTorque_get ( value handle ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->maxSpinTorque;
}
static float box3d_b3WheelJointDef_maxSpinTorque_set ( value handle, float v ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->maxSpinTorque = v;
}
static float box3d_b3WheelJointDef_spinSpeed_get ( value handle ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->spinSpeed;
}
static float box3d_b3WheelJointDef_spinSpeed_set ( value handle, float v ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->spinSpeed = v;
}
static bool box3d_b3WheelJointDef_enableSteering_get ( value handle ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->enableSteering;
}
static bool box3d_b3WheelJointDef_enableSteering_set ( value handle, bool v ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->enableSteering = v;
}
static float box3d_b3WheelJointDef_steeringHertz_get ( value handle ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->steeringHertz;
}
static float box3d_b3WheelJointDef_steeringHertz_set ( value handle, float v ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->steeringHertz = v;
}
static float box3d_b3WheelJointDef_steeringDampingRatio_get ( value handle ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->steeringDampingRatio;
}
static float box3d_b3WheelJointDef_steeringDampingRatio_set ( value handle, float v ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->steeringDampingRatio = v;
}
static float box3d_b3WheelJointDef_targetSteeringAngle_get ( value handle ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->targetSteeringAngle;
}
static float box3d_b3WheelJointDef_targetSteeringAngle_set ( value handle, float v ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->targetSteeringAngle = v;
}
static float box3d_b3WheelJointDef_maxSteeringTorque_get ( value handle ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->maxSteeringTorque;
}
static float box3d_b3WheelJointDef_maxSteeringTorque_set ( value handle, float v ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->maxSteeringTorque = v;
}
static bool box3d_b3WheelJointDef_enableSteeringLimit_get ( value handle ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->enableSteeringLimit;
}
static bool box3d_b3WheelJointDef_enableSteeringLimit_set ( value handle, bool v ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->enableSteeringLimit = v;
}
static float box3d_b3WheelJointDef_lowerSteeringLimit_get ( value handle ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->lowerSteeringLimit;
}
static float box3d_b3WheelJointDef_lowerSteeringLimit_set ( value handle, float v ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->lowerSteeringLimit = v;
}
static float box3d_b3WheelJointDef_upperSteeringLimit_get ( value handle ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->upperSteeringLimit;
}
static float box3d_b3WheelJointDef_upperSteeringLimit_set ( value handle, float v ) {
	b3WheelJointDef* ptr = (b3WheelJointDef*)val_data(handle);
	return ptr->upperSteeringLimit = v;
}

DEFINE_PRIME0 (box3d_b3WheelJointDef_new);
DEFINE_PRIME1 (box3d_b3WheelJointDef_base_get);
DEFINE_PRIME2 (box3d_b3WheelJointDef_base_set);
DEFINE_PRIME1 (box3d_b3WheelJointDef_enableSuspensionSpring_get);
DEFINE_PRIME2 (box3d_b3WheelJointDef_enableSuspensionSpring_set);
DEFINE_PRIME1 (box3d_b3WheelJointDef_suspensionHertz_get);
DEFINE_PRIME2 (box3d_b3WheelJointDef_suspensionHertz_set);
DEFINE_PRIME1 (box3d_b3WheelJointDef_suspensionDampingRatio_get);
DEFINE_PRIME2 (box3d_b3WheelJointDef_suspensionDampingRatio_set);
DEFINE_PRIME1 (box3d_b3WheelJointDef_enableSuspensionLimit_get);
DEFINE_PRIME2 (box3d_b3WheelJointDef_enableSuspensionLimit_set);
DEFINE_PRIME1 (box3d_b3WheelJointDef_lowerSuspensionLimit_get);
DEFINE_PRIME2 (box3d_b3WheelJointDef_lowerSuspensionLimit_set);
DEFINE_PRIME1 (box3d_b3WheelJointDef_upperSuspensionLimit_get);
DEFINE_PRIME2 (box3d_b3WheelJointDef_upperSuspensionLimit_set);
DEFINE_PRIME1 (box3d_b3WheelJointDef_enableSpinMotor_get);
DEFINE_PRIME2 (box3d_b3WheelJointDef_enableSpinMotor_set);
DEFINE_PRIME1 (box3d_b3WheelJointDef_maxSpinTorque_get);
DEFINE_PRIME2 (box3d_b3WheelJointDef_maxSpinTorque_set);
DEFINE_PRIME1 (box3d_b3WheelJointDef_spinSpeed_get);
DEFINE_PRIME2 (box3d_b3WheelJointDef_spinSpeed_set);
DEFINE_PRIME1 (box3d_b3WheelJointDef_enableSteering_get);
DEFINE_PRIME2 (box3d_b3WheelJointDef_enableSteering_set);
DEFINE_PRIME1 (box3d_b3WheelJointDef_steeringHertz_get);
DEFINE_PRIME2 (box3d_b3WheelJointDef_steeringHertz_set);
DEFINE_PRIME1 (box3d_b3WheelJointDef_steeringDampingRatio_get);
DEFINE_PRIME2 (box3d_b3WheelJointDef_steeringDampingRatio_set);
DEFINE_PRIME1 (box3d_b3WheelJointDef_targetSteeringAngle_get);
DEFINE_PRIME2 (box3d_b3WheelJointDef_targetSteeringAngle_set);
DEFINE_PRIME1 (box3d_b3WheelJointDef_maxSteeringTorque_get);
DEFINE_PRIME2 (box3d_b3WheelJointDef_maxSteeringTorque_set);
DEFINE_PRIME1 (box3d_b3WheelJointDef_enableSteeringLimit_get);
DEFINE_PRIME2 (box3d_b3WheelJointDef_enableSteeringLimit_set);
DEFINE_PRIME1 (box3d_b3WheelJointDef_lowerSteeringLimit_get);
DEFINE_PRIME2 (box3d_b3WheelJointDef_lowerSteeringLimit_set);
DEFINE_PRIME1 (box3d_b3WheelJointDef_upperSteeringLimit_get);
DEFINE_PRIME2 (box3d_b3WheelJointDef_upperSteeringLimit_set);

static void box3d_b3ExplosionDef_gc (value handle) {
	b3ExplosionDef* ptr = (b3ExplosionDef*)val_data(handle);
	delete ptr;
}
static value box3d_b3ExplosionDef_new () {
	b3ExplosionDef* ptr = new b3ExplosionDef();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3ExplosionDef_gc);
	return retVal;
}
static value box3d_b3ExplosionDef_maskBits_get ( value handle ) {
	b3ExplosionDef* ptr = (b3ExplosionDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->maskBits);
}
static value box3d_b3ExplosionDef_maskBits_set ( value handle, value v ) {
	b3ExplosionDef* ptr = (b3ExplosionDef*)val_data(handle);
	memcpy(&ptr->maskBits, (void*)val_data(v), sizeof(uint64_t));
	return cffi::alloc_pointer(&ptr->maskBits);
}
static value box3d_b3ExplosionDef_position_get ( value handle ) {
	b3ExplosionDef* ptr = (b3ExplosionDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->position);
}
static value box3d_b3ExplosionDef_position_set ( value handle, value v ) {
	b3ExplosionDef* ptr = (b3ExplosionDef*)val_data(handle);
	memcpy(&ptr->position, (void*)val_data(v), sizeof(b3Pos));
	return cffi::alloc_pointer(&ptr->position);
}
static float box3d_b3ExplosionDef_radius_get ( value handle ) {
	b3ExplosionDef* ptr = (b3ExplosionDef*)val_data(handle);
	return ptr->radius;
}
static float box3d_b3ExplosionDef_radius_set ( value handle, float v ) {
	b3ExplosionDef* ptr = (b3ExplosionDef*)val_data(handle);
	return ptr->radius = v;
}
static float box3d_b3ExplosionDef_falloff_get ( value handle ) {
	b3ExplosionDef* ptr = (b3ExplosionDef*)val_data(handle);
	return ptr->falloff;
}
static float box3d_b3ExplosionDef_falloff_set ( value handle, float v ) {
	b3ExplosionDef* ptr = (b3ExplosionDef*)val_data(handle);
	return ptr->falloff = v;
}
static float box3d_b3ExplosionDef_impulsePerArea_get ( value handle ) {
	b3ExplosionDef* ptr = (b3ExplosionDef*)val_data(handle);
	return ptr->impulsePerArea;
}
static float box3d_b3ExplosionDef_impulsePerArea_set ( value handle, float v ) {
	b3ExplosionDef* ptr = (b3ExplosionDef*)val_data(handle);
	return ptr->impulsePerArea = v;
}

DEFINE_PRIME0 (box3d_b3ExplosionDef_new);
DEFINE_PRIME1 (box3d_b3ExplosionDef_maskBits_get);
DEFINE_PRIME2 (box3d_b3ExplosionDef_maskBits_set);
DEFINE_PRIME1 (box3d_b3ExplosionDef_position_get);
DEFINE_PRIME2 (box3d_b3ExplosionDef_position_set);
DEFINE_PRIME1 (box3d_b3ExplosionDef_radius_get);
DEFINE_PRIME2 (box3d_b3ExplosionDef_radius_set);
DEFINE_PRIME1 (box3d_b3ExplosionDef_falloff_get);
DEFINE_PRIME2 (box3d_b3ExplosionDef_falloff_set);
DEFINE_PRIME1 (box3d_b3ExplosionDef_impulsePerArea_get);
DEFINE_PRIME2 (box3d_b3ExplosionDef_impulsePerArea_set);

static void box3d_b3SensorBeginTouchEvent_gc (value handle) {
	b3SensorBeginTouchEvent* ptr = (b3SensorBeginTouchEvent*)val_data(handle);
	delete ptr;
}
static value box3d_b3SensorBeginTouchEvent_new () {
	b3SensorBeginTouchEvent* ptr = new b3SensorBeginTouchEvent();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3SensorBeginTouchEvent_gc);
	return retVal;
}
static value box3d_b3SensorBeginTouchEvent_sensorShapeId_get ( value handle ) {
	b3SensorBeginTouchEvent* ptr = (b3SensorBeginTouchEvent*)val_data(handle);
	return cffi::alloc_pointer(&ptr->sensorShapeId);
}
static value box3d_b3SensorBeginTouchEvent_sensorShapeId_set ( value handle, value v ) {
	b3SensorBeginTouchEvent* ptr = (b3SensorBeginTouchEvent*)val_data(handle);
	memcpy(&ptr->sensorShapeId, (void*)val_data(v), sizeof(b3ShapeId));
	return cffi::alloc_pointer(&ptr->sensorShapeId);
}
static value box3d_b3SensorBeginTouchEvent_visitorShapeId_get ( value handle ) {
	b3SensorBeginTouchEvent* ptr = (b3SensorBeginTouchEvent*)val_data(handle);
	return cffi::alloc_pointer(&ptr->visitorShapeId);
}
static value box3d_b3SensorBeginTouchEvent_visitorShapeId_set ( value handle, value v ) {
	b3SensorBeginTouchEvent* ptr = (b3SensorBeginTouchEvent*)val_data(handle);
	memcpy(&ptr->visitorShapeId, (void*)val_data(v), sizeof(b3ShapeId));
	return cffi::alloc_pointer(&ptr->visitorShapeId);
}

DEFINE_PRIME0 (box3d_b3SensorBeginTouchEvent_new);
DEFINE_PRIME1 (box3d_b3SensorBeginTouchEvent_sensorShapeId_get);
DEFINE_PRIME2 (box3d_b3SensorBeginTouchEvent_sensorShapeId_set);
DEFINE_PRIME1 (box3d_b3SensorBeginTouchEvent_visitorShapeId_get);
DEFINE_PRIME2 (box3d_b3SensorBeginTouchEvent_visitorShapeId_set);

static void box3d_b3SensorEndTouchEvent_gc (value handle) {
	b3SensorEndTouchEvent* ptr = (b3SensorEndTouchEvent*)val_data(handle);
	delete ptr;
}
static value box3d_b3SensorEndTouchEvent_new () {
	b3SensorEndTouchEvent* ptr = new b3SensorEndTouchEvent();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3SensorEndTouchEvent_gc);
	return retVal;
}
static value box3d_b3SensorEndTouchEvent_sensorShapeId_get ( value handle ) {
	b3SensorEndTouchEvent* ptr = (b3SensorEndTouchEvent*)val_data(handle);
	return cffi::alloc_pointer(&ptr->sensorShapeId);
}
static value box3d_b3SensorEndTouchEvent_sensorShapeId_set ( value handle, value v ) {
	b3SensorEndTouchEvent* ptr = (b3SensorEndTouchEvent*)val_data(handle);
	memcpy(&ptr->sensorShapeId, (void*)val_data(v), sizeof(b3ShapeId));
	return cffi::alloc_pointer(&ptr->sensorShapeId);
}
static value box3d_b3SensorEndTouchEvent_visitorShapeId_get ( value handle ) {
	b3SensorEndTouchEvent* ptr = (b3SensorEndTouchEvent*)val_data(handle);
	return cffi::alloc_pointer(&ptr->visitorShapeId);
}
static value box3d_b3SensorEndTouchEvent_visitorShapeId_set ( value handle, value v ) {
	b3SensorEndTouchEvent* ptr = (b3SensorEndTouchEvent*)val_data(handle);
	memcpy(&ptr->visitorShapeId, (void*)val_data(v), sizeof(b3ShapeId));
	return cffi::alloc_pointer(&ptr->visitorShapeId);
}

DEFINE_PRIME0 (box3d_b3SensorEndTouchEvent_new);
DEFINE_PRIME1 (box3d_b3SensorEndTouchEvent_sensorShapeId_get);
DEFINE_PRIME2 (box3d_b3SensorEndTouchEvent_sensorShapeId_set);
DEFINE_PRIME1 (box3d_b3SensorEndTouchEvent_visitorShapeId_get);
DEFINE_PRIME2 (box3d_b3SensorEndTouchEvent_visitorShapeId_set);

static void box3d_b3SensorEvents_gc (value handle) {
	b3SensorEvents* ptr = (b3SensorEvents*)val_data(handle);
	delete ptr;
}
static value box3d_b3SensorEvents_new () {
	b3SensorEvents* ptr = new b3SensorEvents();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3SensorEvents_gc);
	return retVal;
}
static int box3d_b3SensorEvents_beginCount_get ( value handle ) {
	b3SensorEvents* ptr = (b3SensorEvents*)val_data(handle);
	return ptr->beginCount;
}
static int box3d_b3SensorEvents_beginCount_set ( value handle, int v ) {
	b3SensorEvents* ptr = (b3SensorEvents*)val_data(handle);
	return ptr->beginCount = v;
}
static int box3d_b3SensorEvents_endCount_get ( value handle ) {
	b3SensorEvents* ptr = (b3SensorEvents*)val_data(handle);
	return ptr->endCount;
}
static int box3d_b3SensorEvents_endCount_set ( value handle, int v ) {
	b3SensorEvents* ptr = (b3SensorEvents*)val_data(handle);
	return ptr->endCount = v;
}

DEFINE_PRIME0 (box3d_b3SensorEvents_new);
DEFINE_PRIME1 (box3d_b3SensorEvents_beginCount_get);
DEFINE_PRIME2 (box3d_b3SensorEvents_beginCount_set);
DEFINE_PRIME1 (box3d_b3SensorEvents_endCount_get);
DEFINE_PRIME2 (box3d_b3SensorEvents_endCount_set);

static void box3d_b3ContactBeginTouchEvent_gc (value handle) {
	b3ContactBeginTouchEvent* ptr = (b3ContactBeginTouchEvent*)val_data(handle);
	delete ptr;
}
static value box3d_b3ContactBeginTouchEvent_new () {
	b3ContactBeginTouchEvent* ptr = new b3ContactBeginTouchEvent();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3ContactBeginTouchEvent_gc);
	return retVal;
}
static value box3d_b3ContactBeginTouchEvent_shapeIdA_get ( value handle ) {
	b3ContactBeginTouchEvent* ptr = (b3ContactBeginTouchEvent*)val_data(handle);
	return cffi::alloc_pointer(&ptr->shapeIdA);
}
static value box3d_b3ContactBeginTouchEvent_shapeIdA_set ( value handle, value v ) {
	b3ContactBeginTouchEvent* ptr = (b3ContactBeginTouchEvent*)val_data(handle);
	memcpy(&ptr->shapeIdA, (void*)val_data(v), sizeof(b3ShapeId));
	return cffi::alloc_pointer(&ptr->shapeIdA);
}
static value box3d_b3ContactBeginTouchEvent_shapeIdB_get ( value handle ) {
	b3ContactBeginTouchEvent* ptr = (b3ContactBeginTouchEvent*)val_data(handle);
	return cffi::alloc_pointer(&ptr->shapeIdB);
}
static value box3d_b3ContactBeginTouchEvent_shapeIdB_set ( value handle, value v ) {
	b3ContactBeginTouchEvent* ptr = (b3ContactBeginTouchEvent*)val_data(handle);
	memcpy(&ptr->shapeIdB, (void*)val_data(v), sizeof(b3ShapeId));
	return cffi::alloc_pointer(&ptr->shapeIdB);
}
static value box3d_b3ContactBeginTouchEvent_contactId_get ( value handle ) {
	b3ContactBeginTouchEvent* ptr = (b3ContactBeginTouchEvent*)val_data(handle);
	return cffi::alloc_pointer(&ptr->contactId);
}
static value box3d_b3ContactBeginTouchEvent_contactId_set ( value handle, value v ) {
	b3ContactBeginTouchEvent* ptr = (b3ContactBeginTouchEvent*)val_data(handle);
	memcpy(&ptr->contactId, (void*)val_data(v), sizeof(b3ContactId));
	return cffi::alloc_pointer(&ptr->contactId);
}

DEFINE_PRIME0 (box3d_b3ContactBeginTouchEvent_new);
DEFINE_PRIME1 (box3d_b3ContactBeginTouchEvent_shapeIdA_get);
DEFINE_PRIME2 (box3d_b3ContactBeginTouchEvent_shapeIdA_set);
DEFINE_PRIME1 (box3d_b3ContactBeginTouchEvent_shapeIdB_get);
DEFINE_PRIME2 (box3d_b3ContactBeginTouchEvent_shapeIdB_set);
DEFINE_PRIME1 (box3d_b3ContactBeginTouchEvent_contactId_get);
DEFINE_PRIME2 (box3d_b3ContactBeginTouchEvent_contactId_set);

static void box3d_b3ContactEndTouchEvent_gc (value handle) {
	b3ContactEndTouchEvent* ptr = (b3ContactEndTouchEvent*)val_data(handle);
	delete ptr;
}
static value box3d_b3ContactEndTouchEvent_new () {
	b3ContactEndTouchEvent* ptr = new b3ContactEndTouchEvent();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3ContactEndTouchEvent_gc);
	return retVal;
}
static value box3d_b3ContactEndTouchEvent_shapeIdA_get ( value handle ) {
	b3ContactEndTouchEvent* ptr = (b3ContactEndTouchEvent*)val_data(handle);
	return cffi::alloc_pointer(&ptr->shapeIdA);
}
static value box3d_b3ContactEndTouchEvent_shapeIdA_set ( value handle, value v ) {
	b3ContactEndTouchEvent* ptr = (b3ContactEndTouchEvent*)val_data(handle);
	memcpy(&ptr->shapeIdA, (void*)val_data(v), sizeof(b3ShapeId));
	return cffi::alloc_pointer(&ptr->shapeIdA);
}
static value box3d_b3ContactEndTouchEvent_shapeIdB_get ( value handle ) {
	b3ContactEndTouchEvent* ptr = (b3ContactEndTouchEvent*)val_data(handle);
	return cffi::alloc_pointer(&ptr->shapeIdB);
}
static value box3d_b3ContactEndTouchEvent_shapeIdB_set ( value handle, value v ) {
	b3ContactEndTouchEvent* ptr = (b3ContactEndTouchEvent*)val_data(handle);
	memcpy(&ptr->shapeIdB, (void*)val_data(v), sizeof(b3ShapeId));
	return cffi::alloc_pointer(&ptr->shapeIdB);
}
static value box3d_b3ContactEndTouchEvent_contactId_get ( value handle ) {
	b3ContactEndTouchEvent* ptr = (b3ContactEndTouchEvent*)val_data(handle);
	return cffi::alloc_pointer(&ptr->contactId);
}
static value box3d_b3ContactEndTouchEvent_contactId_set ( value handle, value v ) {
	b3ContactEndTouchEvent* ptr = (b3ContactEndTouchEvent*)val_data(handle);
	memcpy(&ptr->contactId, (void*)val_data(v), sizeof(b3ContactId));
	return cffi::alloc_pointer(&ptr->contactId);
}

DEFINE_PRIME0 (box3d_b3ContactEndTouchEvent_new);
DEFINE_PRIME1 (box3d_b3ContactEndTouchEvent_shapeIdA_get);
DEFINE_PRIME2 (box3d_b3ContactEndTouchEvent_shapeIdA_set);
DEFINE_PRIME1 (box3d_b3ContactEndTouchEvent_shapeIdB_get);
DEFINE_PRIME2 (box3d_b3ContactEndTouchEvent_shapeIdB_set);
DEFINE_PRIME1 (box3d_b3ContactEndTouchEvent_contactId_get);
DEFINE_PRIME2 (box3d_b3ContactEndTouchEvent_contactId_set);

static void box3d_b3ContactHitEvent_gc (value handle) {
	b3ContactHitEvent* ptr = (b3ContactHitEvent*)val_data(handle);
	delete ptr;
}
static value box3d_b3ContactHitEvent_new () {
	b3ContactHitEvent* ptr = new b3ContactHitEvent();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3ContactHitEvent_gc);
	return retVal;
}
static value box3d_b3ContactHitEvent_shapeIdA_get ( value handle ) {
	b3ContactHitEvent* ptr = (b3ContactHitEvent*)val_data(handle);
	return cffi::alloc_pointer(&ptr->shapeIdA);
}
static value box3d_b3ContactHitEvent_shapeIdA_set ( value handle, value v ) {
	b3ContactHitEvent* ptr = (b3ContactHitEvent*)val_data(handle);
	memcpy(&ptr->shapeIdA, (void*)val_data(v), sizeof(b3ShapeId));
	return cffi::alloc_pointer(&ptr->shapeIdA);
}
static value box3d_b3ContactHitEvent_shapeIdB_get ( value handle ) {
	b3ContactHitEvent* ptr = (b3ContactHitEvent*)val_data(handle);
	return cffi::alloc_pointer(&ptr->shapeIdB);
}
static value box3d_b3ContactHitEvent_shapeIdB_set ( value handle, value v ) {
	b3ContactHitEvent* ptr = (b3ContactHitEvent*)val_data(handle);
	memcpy(&ptr->shapeIdB, (void*)val_data(v), sizeof(b3ShapeId));
	return cffi::alloc_pointer(&ptr->shapeIdB);
}
static value box3d_b3ContactHitEvent_contactId_get ( value handle ) {
	b3ContactHitEvent* ptr = (b3ContactHitEvent*)val_data(handle);
	return cffi::alloc_pointer(&ptr->contactId);
}
static value box3d_b3ContactHitEvent_contactId_set ( value handle, value v ) {
	b3ContactHitEvent* ptr = (b3ContactHitEvent*)val_data(handle);
	memcpy(&ptr->contactId, (void*)val_data(v), sizeof(b3ContactId));
	return cffi::alloc_pointer(&ptr->contactId);
}
static value box3d_b3ContactHitEvent_point_get ( value handle ) {
	b3ContactHitEvent* ptr = (b3ContactHitEvent*)val_data(handle);
	return cffi::alloc_pointer(&ptr->point);
}
static value box3d_b3ContactHitEvent_point_set ( value handle, value v ) {
	b3ContactHitEvent* ptr = (b3ContactHitEvent*)val_data(handle);
	memcpy(&ptr->point, (void*)val_data(v), sizeof(b3Pos));
	return cffi::alloc_pointer(&ptr->point);
}
static value box3d_b3ContactHitEvent_normal_get ( value handle ) {
	b3ContactHitEvent* ptr = (b3ContactHitEvent*)val_data(handle);
	return cffi::alloc_pointer(&ptr->normal);
}
static value box3d_b3ContactHitEvent_normal_set ( value handle, value v ) {
	b3ContactHitEvent* ptr = (b3ContactHitEvent*)val_data(handle);
	memcpy(&ptr->normal, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->normal);
}
static float box3d_b3ContactHitEvent_approachSpeed_get ( value handle ) {
	b3ContactHitEvent* ptr = (b3ContactHitEvent*)val_data(handle);
	return ptr->approachSpeed;
}
static float box3d_b3ContactHitEvent_approachSpeed_set ( value handle, float v ) {
	b3ContactHitEvent* ptr = (b3ContactHitEvent*)val_data(handle);
	return ptr->approachSpeed = v;
}
static value box3d_b3ContactHitEvent_userMaterialIdA_get ( value handle ) {
	b3ContactHitEvent* ptr = (b3ContactHitEvent*)val_data(handle);
	return cffi::alloc_pointer(&ptr->userMaterialIdA);
}
static value box3d_b3ContactHitEvent_userMaterialIdA_set ( value handle, value v ) {
	b3ContactHitEvent* ptr = (b3ContactHitEvent*)val_data(handle);
	memcpy(&ptr->userMaterialIdA, (void*)val_data(v), sizeof(uint64_t));
	return cffi::alloc_pointer(&ptr->userMaterialIdA);
}
static value box3d_b3ContactHitEvent_userMaterialIdB_get ( value handle ) {
	b3ContactHitEvent* ptr = (b3ContactHitEvent*)val_data(handle);
	return cffi::alloc_pointer(&ptr->userMaterialIdB);
}
static value box3d_b3ContactHitEvent_userMaterialIdB_set ( value handle, value v ) {
	b3ContactHitEvent* ptr = (b3ContactHitEvent*)val_data(handle);
	memcpy(&ptr->userMaterialIdB, (void*)val_data(v), sizeof(uint64_t));
	return cffi::alloc_pointer(&ptr->userMaterialIdB);
}

DEFINE_PRIME0 (box3d_b3ContactHitEvent_new);
DEFINE_PRIME1 (box3d_b3ContactHitEvent_shapeIdA_get);
DEFINE_PRIME2 (box3d_b3ContactHitEvent_shapeIdA_set);
DEFINE_PRIME1 (box3d_b3ContactHitEvent_shapeIdB_get);
DEFINE_PRIME2 (box3d_b3ContactHitEvent_shapeIdB_set);
DEFINE_PRIME1 (box3d_b3ContactHitEvent_contactId_get);
DEFINE_PRIME2 (box3d_b3ContactHitEvent_contactId_set);
DEFINE_PRIME1 (box3d_b3ContactHitEvent_point_get);
DEFINE_PRIME2 (box3d_b3ContactHitEvent_point_set);
DEFINE_PRIME1 (box3d_b3ContactHitEvent_normal_get);
DEFINE_PRIME2 (box3d_b3ContactHitEvent_normal_set);
DEFINE_PRIME1 (box3d_b3ContactHitEvent_approachSpeed_get);
DEFINE_PRIME2 (box3d_b3ContactHitEvent_approachSpeed_set);
DEFINE_PRIME1 (box3d_b3ContactHitEvent_userMaterialIdA_get);
DEFINE_PRIME2 (box3d_b3ContactHitEvent_userMaterialIdA_set);
DEFINE_PRIME1 (box3d_b3ContactHitEvent_userMaterialIdB_get);
DEFINE_PRIME2 (box3d_b3ContactHitEvent_userMaterialIdB_set);

static void box3d_b3ContactEvents_gc (value handle) {
	b3ContactEvents* ptr = (b3ContactEvents*)val_data(handle);
	delete ptr;
}
static value box3d_b3ContactEvents_new () {
	b3ContactEvents* ptr = new b3ContactEvents();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3ContactEvents_gc);
	return retVal;
}
static int box3d_b3ContactEvents_beginCount_get ( value handle ) {
	b3ContactEvents* ptr = (b3ContactEvents*)val_data(handle);
	return ptr->beginCount;
}
static int box3d_b3ContactEvents_beginCount_set ( value handle, int v ) {
	b3ContactEvents* ptr = (b3ContactEvents*)val_data(handle);
	return ptr->beginCount = v;
}
static int box3d_b3ContactEvents_endCount_get ( value handle ) {
	b3ContactEvents* ptr = (b3ContactEvents*)val_data(handle);
	return ptr->endCount;
}
static int box3d_b3ContactEvents_endCount_set ( value handle, int v ) {
	b3ContactEvents* ptr = (b3ContactEvents*)val_data(handle);
	return ptr->endCount = v;
}
static int box3d_b3ContactEvents_hitCount_get ( value handle ) {
	b3ContactEvents* ptr = (b3ContactEvents*)val_data(handle);
	return ptr->hitCount;
}
static int box3d_b3ContactEvents_hitCount_set ( value handle, int v ) {
	b3ContactEvents* ptr = (b3ContactEvents*)val_data(handle);
	return ptr->hitCount = v;
}

DEFINE_PRIME0 (box3d_b3ContactEvents_new);
DEFINE_PRIME1 (box3d_b3ContactEvents_beginCount_get);
DEFINE_PRIME2 (box3d_b3ContactEvents_beginCount_set);
DEFINE_PRIME1 (box3d_b3ContactEvents_endCount_get);
DEFINE_PRIME2 (box3d_b3ContactEvents_endCount_set);
DEFINE_PRIME1 (box3d_b3ContactEvents_hitCount_get);
DEFINE_PRIME2 (box3d_b3ContactEvents_hitCount_set);

static void box3d_b3BodyMoveEvent_gc (value handle) {
	b3BodyMoveEvent* ptr = (b3BodyMoveEvent*)val_data(handle);
	delete ptr;
}
static value box3d_b3BodyMoveEvent_new () {
	b3BodyMoveEvent* ptr = new b3BodyMoveEvent();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3BodyMoveEvent_gc);
	return retVal;
}
static value box3d_b3BodyMoveEvent_transform_get ( value handle ) {
	b3BodyMoveEvent* ptr = (b3BodyMoveEvent*)val_data(handle);
	return cffi::alloc_pointer(&ptr->transform);
}
static value box3d_b3BodyMoveEvent_transform_set ( value handle, value v ) {
	b3BodyMoveEvent* ptr = (b3BodyMoveEvent*)val_data(handle);
	memcpy(&ptr->transform, (void*)val_data(v), sizeof(b3WorldTransform));
	return cffi::alloc_pointer(&ptr->transform);
}
static value box3d_b3BodyMoveEvent_bodyId_get ( value handle ) {
	b3BodyMoveEvent* ptr = (b3BodyMoveEvent*)val_data(handle);
	return cffi::alloc_pointer(&ptr->bodyId);
}
static value box3d_b3BodyMoveEvent_bodyId_set ( value handle, value v ) {
	b3BodyMoveEvent* ptr = (b3BodyMoveEvent*)val_data(handle);
	memcpy(&ptr->bodyId, (void*)val_data(v), sizeof(b3BodyId));
	return cffi::alloc_pointer(&ptr->bodyId);
}
static bool box3d_b3BodyMoveEvent_fellAsleep_get ( value handle ) {
	b3BodyMoveEvent* ptr = (b3BodyMoveEvent*)val_data(handle);
	return ptr->fellAsleep;
}
static bool box3d_b3BodyMoveEvent_fellAsleep_set ( value handle, bool v ) {
	b3BodyMoveEvent* ptr = (b3BodyMoveEvent*)val_data(handle);
	return ptr->fellAsleep = v;
}

DEFINE_PRIME0 (box3d_b3BodyMoveEvent_new);
DEFINE_PRIME1 (box3d_b3BodyMoveEvent_transform_get);
DEFINE_PRIME2 (box3d_b3BodyMoveEvent_transform_set);
DEFINE_PRIME1 (box3d_b3BodyMoveEvent_bodyId_get);
DEFINE_PRIME2 (box3d_b3BodyMoveEvent_bodyId_set);
DEFINE_PRIME1 (box3d_b3BodyMoveEvent_fellAsleep_get);
DEFINE_PRIME2 (box3d_b3BodyMoveEvent_fellAsleep_set);

static void box3d_b3BodyEvents_gc (value handle) {
	b3BodyEvents* ptr = (b3BodyEvents*)val_data(handle);
	delete ptr;
}
static value box3d_b3BodyEvents_new () {
	b3BodyEvents* ptr = new b3BodyEvents();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3BodyEvents_gc);
	return retVal;
}
static int box3d_b3BodyEvents_moveCount_get ( value handle ) {
	b3BodyEvents* ptr = (b3BodyEvents*)val_data(handle);
	return ptr->moveCount;
}
static int box3d_b3BodyEvents_moveCount_set ( value handle, int v ) {
	b3BodyEvents* ptr = (b3BodyEvents*)val_data(handle);
	return ptr->moveCount = v;
}

DEFINE_PRIME0 (box3d_b3BodyEvents_new);
DEFINE_PRIME1 (box3d_b3BodyEvents_moveCount_get);
DEFINE_PRIME2 (box3d_b3BodyEvents_moveCount_set);

static void box3d_b3JointEvent_gc (value handle) {
	b3JointEvent* ptr = (b3JointEvent*)val_data(handle);
	delete ptr;
}
static value box3d_b3JointEvent_new () {
	b3JointEvent* ptr = new b3JointEvent();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3JointEvent_gc);
	return retVal;
}
static value box3d_b3JointEvent_jointId_get ( value handle ) {
	b3JointEvent* ptr = (b3JointEvent*)val_data(handle);
	return cffi::alloc_pointer(&ptr->jointId);
}
static value box3d_b3JointEvent_jointId_set ( value handle, value v ) {
	b3JointEvent* ptr = (b3JointEvent*)val_data(handle);
	memcpy(&ptr->jointId, (void*)val_data(v), sizeof(b3JointId));
	return cffi::alloc_pointer(&ptr->jointId);
}

DEFINE_PRIME0 (box3d_b3JointEvent_new);
DEFINE_PRIME1 (box3d_b3JointEvent_jointId_get);
DEFINE_PRIME2 (box3d_b3JointEvent_jointId_set);

static void box3d_b3JointEvents_gc (value handle) {
	b3JointEvents* ptr = (b3JointEvents*)val_data(handle);
	delete ptr;
}
static value box3d_b3JointEvents_new () {
	b3JointEvents* ptr = new b3JointEvents();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3JointEvents_gc);
	return retVal;
}
static int box3d_b3JointEvents_count_get ( value handle ) {
	b3JointEvents* ptr = (b3JointEvents*)val_data(handle);
	return ptr->count;
}
static int box3d_b3JointEvents_count_set ( value handle, int v ) {
	b3JointEvents* ptr = (b3JointEvents*)val_data(handle);
	return ptr->count = v;
}

DEFINE_PRIME0 (box3d_b3JointEvents_new);
DEFINE_PRIME1 (box3d_b3JointEvents_count_get);
DEFINE_PRIME2 (box3d_b3JointEvents_count_set);

static void box3d_b3ContactData_gc (value handle) {
	b3ContactData* ptr = (b3ContactData*)val_data(handle);
	delete ptr;
}
static value box3d_b3ContactData_new () {
	b3ContactData* ptr = new b3ContactData();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3ContactData_gc);
	return retVal;
}
static value box3d_b3ContactData_contactId_get ( value handle ) {
	b3ContactData* ptr = (b3ContactData*)val_data(handle);
	return cffi::alloc_pointer(&ptr->contactId);
}
static value box3d_b3ContactData_contactId_set ( value handle, value v ) {
	b3ContactData* ptr = (b3ContactData*)val_data(handle);
	memcpy(&ptr->contactId, (void*)val_data(v), sizeof(b3ContactId));
	return cffi::alloc_pointer(&ptr->contactId);
}
static value box3d_b3ContactData_shapeIdA_get ( value handle ) {
	b3ContactData* ptr = (b3ContactData*)val_data(handle);
	return cffi::alloc_pointer(&ptr->shapeIdA);
}
static value box3d_b3ContactData_shapeIdA_set ( value handle, value v ) {
	b3ContactData* ptr = (b3ContactData*)val_data(handle);
	memcpy(&ptr->shapeIdA, (void*)val_data(v), sizeof(b3ShapeId));
	return cffi::alloc_pointer(&ptr->shapeIdA);
}
static value box3d_b3ContactData_shapeIdB_get ( value handle ) {
	b3ContactData* ptr = (b3ContactData*)val_data(handle);
	return cffi::alloc_pointer(&ptr->shapeIdB);
}
static value box3d_b3ContactData_shapeIdB_set ( value handle, value v ) {
	b3ContactData* ptr = (b3ContactData*)val_data(handle);
	memcpy(&ptr->shapeIdB, (void*)val_data(v), sizeof(b3ShapeId));
	return cffi::alloc_pointer(&ptr->shapeIdB);
}
static int box3d_b3ContactData_manifoldCount_get ( value handle ) {
	b3ContactData* ptr = (b3ContactData*)val_data(handle);
	return ptr->manifoldCount;
}
static int box3d_b3ContactData_manifoldCount_set ( value handle, int v ) {
	b3ContactData* ptr = (b3ContactData*)val_data(handle);
	return ptr->manifoldCount = v;
}

DEFINE_PRIME0 (box3d_b3ContactData_new);
DEFINE_PRIME1 (box3d_b3ContactData_contactId_get);
DEFINE_PRIME2 (box3d_b3ContactData_contactId_set);
DEFINE_PRIME1 (box3d_b3ContactData_shapeIdA_get);
DEFINE_PRIME2 (box3d_b3ContactData_shapeIdA_set);
DEFINE_PRIME1 (box3d_b3ContactData_shapeIdB_get);
DEFINE_PRIME2 (box3d_b3ContactData_shapeIdB_set);
DEFINE_PRIME1 (box3d_b3ContactData_manifoldCount_get);
DEFINE_PRIME2 (box3d_b3ContactData_manifoldCount_set);

static void box3d_b3QueryFilter_gc (value handle) {
	b3QueryFilter* ptr = (b3QueryFilter*)val_data(handle);
	delete ptr;
}
static value box3d_b3QueryFilter_new () {
	b3QueryFilter* ptr = new b3QueryFilter();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3QueryFilter_gc);
	return retVal;
}
static value box3d_b3QueryFilter_categoryBits_get ( value handle ) {
	b3QueryFilter* ptr = (b3QueryFilter*)val_data(handle);
	return cffi::alloc_pointer(&ptr->categoryBits);
}
static value box3d_b3QueryFilter_categoryBits_set ( value handle, value v ) {
	b3QueryFilter* ptr = (b3QueryFilter*)val_data(handle);
	memcpy(&ptr->categoryBits, (void*)val_data(v), sizeof(uint64_t));
	return cffi::alloc_pointer(&ptr->categoryBits);
}
static value box3d_b3QueryFilter_maskBits_get ( value handle ) {
	b3QueryFilter* ptr = (b3QueryFilter*)val_data(handle);
	return cffi::alloc_pointer(&ptr->maskBits);
}
static value box3d_b3QueryFilter_maskBits_set ( value handle, value v ) {
	b3QueryFilter* ptr = (b3QueryFilter*)val_data(handle);
	memcpy(&ptr->maskBits, (void*)val_data(v), sizeof(uint64_t));
	return cffi::alloc_pointer(&ptr->maskBits);
}
static value box3d_b3QueryFilter_id_get ( value handle ) {
	b3QueryFilter* ptr = (b3QueryFilter*)val_data(handle);
	return cffi::alloc_pointer(&ptr->id);
}
static value box3d_b3QueryFilter_id_set ( value handle, value v ) {
	b3QueryFilter* ptr = (b3QueryFilter*)val_data(handle);
	memcpy(&ptr->id, (void*)val_data(v), sizeof(uint64_t));
	return cffi::alloc_pointer(&ptr->id);
}
static HxString box3d_b3QueryFilter_name_get ( value handle ) {
	b3QueryFilter* ptr = (b3QueryFilter*)val_data(handle);
	return HxString(ptr->name);
}
static HxString box3d_b3QueryFilter_name_set ( value handle, HxString v ) {
	b3QueryFilter* ptr = (b3QueryFilter*)val_data(handle);
	return HxString(ptr->name = v.__s);
}

DEFINE_PRIME0 (box3d_b3QueryFilter_new);
DEFINE_PRIME1 (box3d_b3QueryFilter_categoryBits_get);
DEFINE_PRIME2 (box3d_b3QueryFilter_categoryBits_set);
DEFINE_PRIME1 (box3d_b3QueryFilter_maskBits_get);
DEFINE_PRIME2 (box3d_b3QueryFilter_maskBits_set);
DEFINE_PRIME1 (box3d_b3QueryFilter_id_get);
DEFINE_PRIME2 (box3d_b3QueryFilter_id_set);
DEFINE_PRIME1 (box3d_b3QueryFilter_name_get);
DEFINE_PRIME2 (box3d_b3QueryFilter_name_set);

static void box3d_b3RayCastInput_gc (value handle) {
	b3RayCastInput* ptr = (b3RayCastInput*)val_data(handle);
	delete ptr;
}
static value box3d_b3RayCastInput_new () {
	b3RayCastInput* ptr = new b3RayCastInput();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3RayCastInput_gc);
	return retVal;
}
static value box3d_b3RayCastInput_origin_get ( value handle ) {
	b3RayCastInput* ptr = (b3RayCastInput*)val_data(handle);
	return cffi::alloc_pointer(&ptr->origin);
}
static value box3d_b3RayCastInput_origin_set ( value handle, value v ) {
	b3RayCastInput* ptr = (b3RayCastInput*)val_data(handle);
	memcpy(&ptr->origin, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->origin);
}
static value box3d_b3RayCastInput_translation_get ( value handle ) {
	b3RayCastInput* ptr = (b3RayCastInput*)val_data(handle);
	return cffi::alloc_pointer(&ptr->translation);
}
static value box3d_b3RayCastInput_translation_set ( value handle, value v ) {
	b3RayCastInput* ptr = (b3RayCastInput*)val_data(handle);
	memcpy(&ptr->translation, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->translation);
}
static float box3d_b3RayCastInput_maxFraction_get ( value handle ) {
	b3RayCastInput* ptr = (b3RayCastInput*)val_data(handle);
	return ptr->maxFraction;
}
static float box3d_b3RayCastInput_maxFraction_set ( value handle, float v ) {
	b3RayCastInput* ptr = (b3RayCastInput*)val_data(handle);
	return ptr->maxFraction = v;
}

DEFINE_PRIME0 (box3d_b3RayCastInput_new);
DEFINE_PRIME1 (box3d_b3RayCastInput_origin_get);
DEFINE_PRIME2 (box3d_b3RayCastInput_origin_set);
DEFINE_PRIME1 (box3d_b3RayCastInput_translation_get);
DEFINE_PRIME2 (box3d_b3RayCastInput_translation_set);
DEFINE_PRIME1 (box3d_b3RayCastInput_maxFraction_get);
DEFINE_PRIME2 (box3d_b3RayCastInput_maxFraction_set);

static void box3d_b3RayResult_gc (value handle) {
	b3RayResult* ptr = (b3RayResult*)val_data(handle);
	delete ptr;
}
static value box3d_b3RayResult_new () {
	b3RayResult* ptr = new b3RayResult();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3RayResult_gc);
	return retVal;
}
static value box3d_b3RayResult_shapeId_get ( value handle ) {
	b3RayResult* ptr = (b3RayResult*)val_data(handle);
	return cffi::alloc_pointer(&ptr->shapeId);
}
static value box3d_b3RayResult_shapeId_set ( value handle, value v ) {
	b3RayResult* ptr = (b3RayResult*)val_data(handle);
	memcpy(&ptr->shapeId, (void*)val_data(v), sizeof(b3ShapeId));
	return cffi::alloc_pointer(&ptr->shapeId);
}
static value box3d_b3RayResult_point_get ( value handle ) {
	b3RayResult* ptr = (b3RayResult*)val_data(handle);
	return cffi::alloc_pointer(&ptr->point);
}
static value box3d_b3RayResult_point_set ( value handle, value v ) {
	b3RayResult* ptr = (b3RayResult*)val_data(handle);
	memcpy(&ptr->point, (void*)val_data(v), sizeof(b3Pos));
	return cffi::alloc_pointer(&ptr->point);
}
static value box3d_b3RayResult_normal_get ( value handle ) {
	b3RayResult* ptr = (b3RayResult*)val_data(handle);
	return cffi::alloc_pointer(&ptr->normal);
}
static value box3d_b3RayResult_normal_set ( value handle, value v ) {
	b3RayResult* ptr = (b3RayResult*)val_data(handle);
	memcpy(&ptr->normal, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->normal);
}
static value box3d_b3RayResult_userMaterialId_get ( value handle ) {
	b3RayResult* ptr = (b3RayResult*)val_data(handle);
	return cffi::alloc_pointer(&ptr->userMaterialId);
}
static value box3d_b3RayResult_userMaterialId_set ( value handle, value v ) {
	b3RayResult* ptr = (b3RayResult*)val_data(handle);
	memcpy(&ptr->userMaterialId, (void*)val_data(v), sizeof(uint64_t));
	return cffi::alloc_pointer(&ptr->userMaterialId);
}
static float box3d_b3RayResult_fraction_get ( value handle ) {
	b3RayResult* ptr = (b3RayResult*)val_data(handle);
	return ptr->fraction;
}
static float box3d_b3RayResult_fraction_set ( value handle, float v ) {
	b3RayResult* ptr = (b3RayResult*)val_data(handle);
	return ptr->fraction = v;
}
static int box3d_b3RayResult_triangleIndex_get ( value handle ) {
	b3RayResult* ptr = (b3RayResult*)val_data(handle);
	return ptr->triangleIndex;
}
static int box3d_b3RayResult_triangleIndex_set ( value handle, int v ) {
	b3RayResult* ptr = (b3RayResult*)val_data(handle);
	return ptr->triangleIndex = v;
}
static int box3d_b3RayResult_childIndex_get ( value handle ) {
	b3RayResult* ptr = (b3RayResult*)val_data(handle);
	return ptr->childIndex;
}
static int box3d_b3RayResult_childIndex_set ( value handle, int v ) {
	b3RayResult* ptr = (b3RayResult*)val_data(handle);
	return ptr->childIndex = v;
}
static int box3d_b3RayResult_nodeVisits_get ( value handle ) {
	b3RayResult* ptr = (b3RayResult*)val_data(handle);
	return ptr->nodeVisits;
}
static int box3d_b3RayResult_nodeVisits_set ( value handle, int v ) {
	b3RayResult* ptr = (b3RayResult*)val_data(handle);
	return ptr->nodeVisits = v;
}
static int box3d_b3RayResult_leafVisits_get ( value handle ) {
	b3RayResult* ptr = (b3RayResult*)val_data(handle);
	return ptr->leafVisits;
}
static int box3d_b3RayResult_leafVisits_set ( value handle, int v ) {
	b3RayResult* ptr = (b3RayResult*)val_data(handle);
	return ptr->leafVisits = v;
}
static bool box3d_b3RayResult_hit_get ( value handle ) {
	b3RayResult* ptr = (b3RayResult*)val_data(handle);
	return ptr->hit;
}
static bool box3d_b3RayResult_hit_set ( value handle, bool v ) {
	b3RayResult* ptr = (b3RayResult*)val_data(handle);
	return ptr->hit = v;
}

DEFINE_PRIME0 (box3d_b3RayResult_new);
DEFINE_PRIME1 (box3d_b3RayResult_shapeId_get);
DEFINE_PRIME2 (box3d_b3RayResult_shapeId_set);
DEFINE_PRIME1 (box3d_b3RayResult_point_get);
DEFINE_PRIME2 (box3d_b3RayResult_point_set);
DEFINE_PRIME1 (box3d_b3RayResult_normal_get);
DEFINE_PRIME2 (box3d_b3RayResult_normal_set);
DEFINE_PRIME1 (box3d_b3RayResult_userMaterialId_get);
DEFINE_PRIME2 (box3d_b3RayResult_userMaterialId_set);
DEFINE_PRIME1 (box3d_b3RayResult_fraction_get);
DEFINE_PRIME2 (box3d_b3RayResult_fraction_set);
DEFINE_PRIME1 (box3d_b3RayResult_triangleIndex_get);
DEFINE_PRIME2 (box3d_b3RayResult_triangleIndex_set);
DEFINE_PRIME1 (box3d_b3RayResult_childIndex_get);
DEFINE_PRIME2 (box3d_b3RayResult_childIndex_set);
DEFINE_PRIME1 (box3d_b3RayResult_nodeVisits_get);
DEFINE_PRIME2 (box3d_b3RayResult_nodeVisits_set);
DEFINE_PRIME1 (box3d_b3RayResult_leafVisits_get);
DEFINE_PRIME2 (box3d_b3RayResult_leafVisits_set);
DEFINE_PRIME1 (box3d_b3RayResult_hit_get);
DEFINE_PRIME2 (box3d_b3RayResult_hit_set);

static void box3d_b3ShapeProxy_gc (value handle) {
	b3ShapeProxy* ptr = (b3ShapeProxy*)val_data(handle);
	delete ptr;
}
static value box3d_b3ShapeProxy_new () {
	b3ShapeProxy* ptr = new b3ShapeProxy();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3ShapeProxy_gc);
	return retVal;
}
static int box3d_b3ShapeProxy_count_get ( value handle ) {
	b3ShapeProxy* ptr = (b3ShapeProxy*)val_data(handle);
	return ptr->count;
}
static int box3d_b3ShapeProxy_count_set ( value handle, int v ) {
	b3ShapeProxy* ptr = (b3ShapeProxy*)val_data(handle);
	return ptr->count = v;
}
static float box3d_b3ShapeProxy_radius_get ( value handle ) {
	b3ShapeProxy* ptr = (b3ShapeProxy*)val_data(handle);
	return ptr->radius;
}
static float box3d_b3ShapeProxy_radius_set ( value handle, float v ) {
	b3ShapeProxy* ptr = (b3ShapeProxy*)val_data(handle);
	return ptr->radius = v;
}

DEFINE_PRIME0 (box3d_b3ShapeProxy_new);
DEFINE_PRIME1 (box3d_b3ShapeProxy_count_get);
DEFINE_PRIME2 (box3d_b3ShapeProxy_count_set);
DEFINE_PRIME1 (box3d_b3ShapeProxy_radius_get);
DEFINE_PRIME2 (box3d_b3ShapeProxy_radius_set);

static void box3d_b3ShapeCastInput_gc (value handle) {
	b3ShapeCastInput* ptr = (b3ShapeCastInput*)val_data(handle);
	delete ptr;
}
static value box3d_b3ShapeCastInput_new () {
	b3ShapeCastInput* ptr = new b3ShapeCastInput();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3ShapeCastInput_gc);
	return retVal;
}
static value box3d_b3ShapeCastInput_proxy_get ( value handle ) {
	b3ShapeCastInput* ptr = (b3ShapeCastInput*)val_data(handle);
	return cffi::alloc_pointer(&ptr->proxy);
}
static value box3d_b3ShapeCastInput_proxy_set ( value handle, value v ) {
	b3ShapeCastInput* ptr = (b3ShapeCastInput*)val_data(handle);
	memcpy(&ptr->proxy, (void*)val_data(v), sizeof(b3ShapeProxy));
	return cffi::alloc_pointer(&ptr->proxy);
}
static value box3d_b3ShapeCastInput_translation_get ( value handle ) {
	b3ShapeCastInput* ptr = (b3ShapeCastInput*)val_data(handle);
	return cffi::alloc_pointer(&ptr->translation);
}
static value box3d_b3ShapeCastInput_translation_set ( value handle, value v ) {
	b3ShapeCastInput* ptr = (b3ShapeCastInput*)val_data(handle);
	memcpy(&ptr->translation, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->translation);
}
static float box3d_b3ShapeCastInput_maxFraction_get ( value handle ) {
	b3ShapeCastInput* ptr = (b3ShapeCastInput*)val_data(handle);
	return ptr->maxFraction;
}
static float box3d_b3ShapeCastInput_maxFraction_set ( value handle, float v ) {
	b3ShapeCastInput* ptr = (b3ShapeCastInput*)val_data(handle);
	return ptr->maxFraction = v;
}
static bool box3d_b3ShapeCastInput_canEncroach_get ( value handle ) {
	b3ShapeCastInput* ptr = (b3ShapeCastInput*)val_data(handle);
	return ptr->canEncroach;
}
static bool box3d_b3ShapeCastInput_canEncroach_set ( value handle, bool v ) {
	b3ShapeCastInput* ptr = (b3ShapeCastInput*)val_data(handle);
	return ptr->canEncroach = v;
}

DEFINE_PRIME0 (box3d_b3ShapeCastInput_new);
DEFINE_PRIME1 (box3d_b3ShapeCastInput_proxy_get);
DEFINE_PRIME2 (box3d_b3ShapeCastInput_proxy_set);
DEFINE_PRIME1 (box3d_b3ShapeCastInput_translation_get);
DEFINE_PRIME2 (box3d_b3ShapeCastInput_translation_set);
DEFINE_PRIME1 (box3d_b3ShapeCastInput_maxFraction_get);
DEFINE_PRIME2 (box3d_b3ShapeCastInput_maxFraction_set);
DEFINE_PRIME1 (box3d_b3ShapeCastInput_canEncroach_get);
DEFINE_PRIME2 (box3d_b3ShapeCastInput_canEncroach_set);

static void box3d_b3BoxCastInput_gc (value handle) {
	b3BoxCastInput* ptr = (b3BoxCastInput*)val_data(handle);
	delete ptr;
}
static value box3d_b3BoxCastInput_new () {
	b3BoxCastInput* ptr = new b3BoxCastInput();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3BoxCastInput_gc);
	return retVal;
}
static value box3d_b3BoxCastInput_box_get ( value handle ) {
	b3BoxCastInput* ptr = (b3BoxCastInput*)val_data(handle);
	return cffi::alloc_pointer(&ptr->box);
}
static value box3d_b3BoxCastInput_box_set ( value handle, value v ) {
	b3BoxCastInput* ptr = (b3BoxCastInput*)val_data(handle);
	memcpy(&ptr->box, (void*)val_data(v), sizeof(b3AABB));
	return cffi::alloc_pointer(&ptr->box);
}
static value box3d_b3BoxCastInput_translation_get ( value handle ) {
	b3BoxCastInput* ptr = (b3BoxCastInput*)val_data(handle);
	return cffi::alloc_pointer(&ptr->translation);
}
static value box3d_b3BoxCastInput_translation_set ( value handle, value v ) {
	b3BoxCastInput* ptr = (b3BoxCastInput*)val_data(handle);
	memcpy(&ptr->translation, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->translation);
}
static float box3d_b3BoxCastInput_maxFraction_get ( value handle ) {
	b3BoxCastInput* ptr = (b3BoxCastInput*)val_data(handle);
	return ptr->maxFraction;
}
static float box3d_b3BoxCastInput_maxFraction_set ( value handle, float v ) {
	b3BoxCastInput* ptr = (b3BoxCastInput*)val_data(handle);
	return ptr->maxFraction = v;
}

DEFINE_PRIME0 (box3d_b3BoxCastInput_new);
DEFINE_PRIME1 (box3d_b3BoxCastInput_box_get);
DEFINE_PRIME2 (box3d_b3BoxCastInput_box_set);
DEFINE_PRIME1 (box3d_b3BoxCastInput_translation_get);
DEFINE_PRIME2 (box3d_b3BoxCastInput_translation_set);
DEFINE_PRIME1 (box3d_b3BoxCastInput_maxFraction_get);
DEFINE_PRIME2 (box3d_b3BoxCastInput_maxFraction_set);

static void box3d_b3BodyCastResult_gc (value handle) {
	b3BodyCastResult* ptr = (b3BodyCastResult*)val_data(handle);
	delete ptr;
}
static value box3d_b3BodyCastResult_new () {
	b3BodyCastResult* ptr = new b3BodyCastResult();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3BodyCastResult_gc);
	return retVal;
}
static value box3d_b3BodyCastResult_shapeId_get ( value handle ) {
	b3BodyCastResult* ptr = (b3BodyCastResult*)val_data(handle);
	return cffi::alloc_pointer(&ptr->shapeId);
}
static value box3d_b3BodyCastResult_shapeId_set ( value handle, value v ) {
	b3BodyCastResult* ptr = (b3BodyCastResult*)val_data(handle);
	memcpy(&ptr->shapeId, (void*)val_data(v), sizeof(b3ShapeId));
	return cffi::alloc_pointer(&ptr->shapeId);
}
static value box3d_b3BodyCastResult_point_get ( value handle ) {
	b3BodyCastResult* ptr = (b3BodyCastResult*)val_data(handle);
	return cffi::alloc_pointer(&ptr->point);
}
static value box3d_b3BodyCastResult_point_set ( value handle, value v ) {
	b3BodyCastResult* ptr = (b3BodyCastResult*)val_data(handle);
	memcpy(&ptr->point, (void*)val_data(v), sizeof(b3Pos));
	return cffi::alloc_pointer(&ptr->point);
}
static value box3d_b3BodyCastResult_normal_get ( value handle ) {
	b3BodyCastResult* ptr = (b3BodyCastResult*)val_data(handle);
	return cffi::alloc_pointer(&ptr->normal);
}
static value box3d_b3BodyCastResult_normal_set ( value handle, value v ) {
	b3BodyCastResult* ptr = (b3BodyCastResult*)val_data(handle);
	memcpy(&ptr->normal, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->normal);
}
static float box3d_b3BodyCastResult_fraction_get ( value handle ) {
	b3BodyCastResult* ptr = (b3BodyCastResult*)val_data(handle);
	return ptr->fraction;
}
static float box3d_b3BodyCastResult_fraction_set ( value handle, float v ) {
	b3BodyCastResult* ptr = (b3BodyCastResult*)val_data(handle);
	return ptr->fraction = v;
}
static int box3d_b3BodyCastResult_triangleIndex_get ( value handle ) {
	b3BodyCastResult* ptr = (b3BodyCastResult*)val_data(handle);
	return ptr->triangleIndex;
}
static int box3d_b3BodyCastResult_triangleIndex_set ( value handle, int v ) {
	b3BodyCastResult* ptr = (b3BodyCastResult*)val_data(handle);
	return ptr->triangleIndex = v;
}
static value box3d_b3BodyCastResult_userMaterialId_get ( value handle ) {
	b3BodyCastResult* ptr = (b3BodyCastResult*)val_data(handle);
	return cffi::alloc_pointer(&ptr->userMaterialId);
}
static value box3d_b3BodyCastResult_userMaterialId_set ( value handle, value v ) {
	b3BodyCastResult* ptr = (b3BodyCastResult*)val_data(handle);
	memcpy(&ptr->userMaterialId, (void*)val_data(v), sizeof(uint64_t));
	return cffi::alloc_pointer(&ptr->userMaterialId);
}
static int box3d_b3BodyCastResult_iterations_get ( value handle ) {
	b3BodyCastResult* ptr = (b3BodyCastResult*)val_data(handle);
	return ptr->iterations;
}
static int box3d_b3BodyCastResult_iterations_set ( value handle, int v ) {
	b3BodyCastResult* ptr = (b3BodyCastResult*)val_data(handle);
	return ptr->iterations = v;
}
static bool box3d_b3BodyCastResult_hit_get ( value handle ) {
	b3BodyCastResult* ptr = (b3BodyCastResult*)val_data(handle);
	return ptr->hit;
}
static bool box3d_b3BodyCastResult_hit_set ( value handle, bool v ) {
	b3BodyCastResult* ptr = (b3BodyCastResult*)val_data(handle);
	return ptr->hit = v;
}

DEFINE_PRIME0 (box3d_b3BodyCastResult_new);
DEFINE_PRIME1 (box3d_b3BodyCastResult_shapeId_get);
DEFINE_PRIME2 (box3d_b3BodyCastResult_shapeId_set);
DEFINE_PRIME1 (box3d_b3BodyCastResult_point_get);
DEFINE_PRIME2 (box3d_b3BodyCastResult_point_set);
DEFINE_PRIME1 (box3d_b3BodyCastResult_normal_get);
DEFINE_PRIME2 (box3d_b3BodyCastResult_normal_set);
DEFINE_PRIME1 (box3d_b3BodyCastResult_fraction_get);
DEFINE_PRIME2 (box3d_b3BodyCastResult_fraction_set);
DEFINE_PRIME1 (box3d_b3BodyCastResult_triangleIndex_get);
DEFINE_PRIME2 (box3d_b3BodyCastResult_triangleIndex_set);
DEFINE_PRIME1 (box3d_b3BodyCastResult_userMaterialId_get);
DEFINE_PRIME2 (box3d_b3BodyCastResult_userMaterialId_set);
DEFINE_PRIME1 (box3d_b3BodyCastResult_iterations_get);
DEFINE_PRIME2 (box3d_b3BodyCastResult_iterations_set);
DEFINE_PRIME1 (box3d_b3BodyCastResult_hit_get);
DEFINE_PRIME2 (box3d_b3BodyCastResult_hit_set);

static void box3d_b3SimplexCache_gc (value handle) {
	b3SimplexCache* ptr = (b3SimplexCache*)val_data(handle);
	delete ptr;
}
static value box3d_b3SimplexCache_new () {
	b3SimplexCache* ptr = new b3SimplexCache();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3SimplexCache_gc);
	return retVal;
}
static float box3d_b3SimplexCache_metric_get ( value handle ) {
	b3SimplexCache* ptr = (b3SimplexCache*)val_data(handle);
	return ptr->metric;
}
static float box3d_b3SimplexCache_metric_set ( value handle, float v ) {
	b3SimplexCache* ptr = (b3SimplexCache*)val_data(handle);
	return ptr->metric = v;
}
static int box3d_b3SimplexCache_count_get ( value handle ) {
	b3SimplexCache* ptr = (b3SimplexCache*)val_data(handle);
	return ptr->count;
}
static int box3d_b3SimplexCache_count_set ( value handle, int v ) {
	b3SimplexCache* ptr = (b3SimplexCache*)val_data(handle);
	return ptr->count = v;
}

DEFINE_PRIME0 (box3d_b3SimplexCache_new);
DEFINE_PRIME1 (box3d_b3SimplexCache_metric_get);
DEFINE_PRIME2 (box3d_b3SimplexCache_metric_set);
DEFINE_PRIME1 (box3d_b3SimplexCache_count_get);
DEFINE_PRIME2 (box3d_b3SimplexCache_count_set);

static void box3d_b3ShapeCastPairInput_gc (value handle) {
	b3ShapeCastPairInput* ptr = (b3ShapeCastPairInput*)val_data(handle);
	delete ptr;
}
static value box3d_b3ShapeCastPairInput_new () {
	b3ShapeCastPairInput* ptr = new b3ShapeCastPairInput();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3ShapeCastPairInput_gc);
	return retVal;
}
static value box3d_b3ShapeCastPairInput_proxyA_get ( value handle ) {
	b3ShapeCastPairInput* ptr = (b3ShapeCastPairInput*)val_data(handle);
	return cffi::alloc_pointer(&ptr->proxyA);
}
static value box3d_b3ShapeCastPairInput_proxyA_set ( value handle, value v ) {
	b3ShapeCastPairInput* ptr = (b3ShapeCastPairInput*)val_data(handle);
	memcpy(&ptr->proxyA, (void*)val_data(v), sizeof(b3ShapeProxy));
	return cffi::alloc_pointer(&ptr->proxyA);
}
static value box3d_b3ShapeCastPairInput_proxyB_get ( value handle ) {
	b3ShapeCastPairInput* ptr = (b3ShapeCastPairInput*)val_data(handle);
	return cffi::alloc_pointer(&ptr->proxyB);
}
static value box3d_b3ShapeCastPairInput_proxyB_set ( value handle, value v ) {
	b3ShapeCastPairInput* ptr = (b3ShapeCastPairInput*)val_data(handle);
	memcpy(&ptr->proxyB, (void*)val_data(v), sizeof(b3ShapeProxy));
	return cffi::alloc_pointer(&ptr->proxyB);
}
static value box3d_b3ShapeCastPairInput_transform_get ( value handle ) {
	b3ShapeCastPairInput* ptr = (b3ShapeCastPairInput*)val_data(handle);
	return cffi::alloc_pointer(&ptr->transform);
}
static value box3d_b3ShapeCastPairInput_transform_set ( value handle, value v ) {
	b3ShapeCastPairInput* ptr = (b3ShapeCastPairInput*)val_data(handle);
	memcpy(&ptr->transform, (void*)val_data(v), sizeof(b3Transform));
	return cffi::alloc_pointer(&ptr->transform);
}
static value box3d_b3ShapeCastPairInput_translationB_get ( value handle ) {
	b3ShapeCastPairInput* ptr = (b3ShapeCastPairInput*)val_data(handle);
	return cffi::alloc_pointer(&ptr->translationB);
}
static value box3d_b3ShapeCastPairInput_translationB_set ( value handle, value v ) {
	b3ShapeCastPairInput* ptr = (b3ShapeCastPairInput*)val_data(handle);
	memcpy(&ptr->translationB, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->translationB);
}
static float box3d_b3ShapeCastPairInput_maxFraction_get ( value handle ) {
	b3ShapeCastPairInput* ptr = (b3ShapeCastPairInput*)val_data(handle);
	return ptr->maxFraction;
}
static float box3d_b3ShapeCastPairInput_maxFraction_set ( value handle, float v ) {
	b3ShapeCastPairInput* ptr = (b3ShapeCastPairInput*)val_data(handle);
	return ptr->maxFraction = v;
}
static bool box3d_b3ShapeCastPairInput_canEncroach_get ( value handle ) {
	b3ShapeCastPairInput* ptr = (b3ShapeCastPairInput*)val_data(handle);
	return ptr->canEncroach;
}
static bool box3d_b3ShapeCastPairInput_canEncroach_set ( value handle, bool v ) {
	b3ShapeCastPairInput* ptr = (b3ShapeCastPairInput*)val_data(handle);
	return ptr->canEncroach = v;
}

DEFINE_PRIME0 (box3d_b3ShapeCastPairInput_new);
DEFINE_PRIME1 (box3d_b3ShapeCastPairInput_proxyA_get);
DEFINE_PRIME2 (box3d_b3ShapeCastPairInput_proxyA_set);
DEFINE_PRIME1 (box3d_b3ShapeCastPairInput_proxyB_get);
DEFINE_PRIME2 (box3d_b3ShapeCastPairInput_proxyB_set);
DEFINE_PRIME1 (box3d_b3ShapeCastPairInput_transform_get);
DEFINE_PRIME2 (box3d_b3ShapeCastPairInput_transform_set);
DEFINE_PRIME1 (box3d_b3ShapeCastPairInput_translationB_get);
DEFINE_PRIME2 (box3d_b3ShapeCastPairInput_translationB_set);
DEFINE_PRIME1 (box3d_b3ShapeCastPairInput_maxFraction_get);
DEFINE_PRIME2 (box3d_b3ShapeCastPairInput_maxFraction_set);
DEFINE_PRIME1 (box3d_b3ShapeCastPairInput_canEncroach_get);
DEFINE_PRIME2 (box3d_b3ShapeCastPairInput_canEncroach_set);

static void box3d_b3DistanceInput_gc (value handle) {
	b3DistanceInput* ptr = (b3DistanceInput*)val_data(handle);
	delete ptr;
}
static value box3d_b3DistanceInput_new () {
	b3DistanceInput* ptr = new b3DistanceInput();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3DistanceInput_gc);
	return retVal;
}
static value box3d_b3DistanceInput_proxyA_get ( value handle ) {
	b3DistanceInput* ptr = (b3DistanceInput*)val_data(handle);
	return cffi::alloc_pointer(&ptr->proxyA);
}
static value box3d_b3DistanceInput_proxyA_set ( value handle, value v ) {
	b3DistanceInput* ptr = (b3DistanceInput*)val_data(handle);
	memcpy(&ptr->proxyA, (void*)val_data(v), sizeof(b3ShapeProxy));
	return cffi::alloc_pointer(&ptr->proxyA);
}
static value box3d_b3DistanceInput_proxyB_get ( value handle ) {
	b3DistanceInput* ptr = (b3DistanceInput*)val_data(handle);
	return cffi::alloc_pointer(&ptr->proxyB);
}
static value box3d_b3DistanceInput_proxyB_set ( value handle, value v ) {
	b3DistanceInput* ptr = (b3DistanceInput*)val_data(handle);
	memcpy(&ptr->proxyB, (void*)val_data(v), sizeof(b3ShapeProxy));
	return cffi::alloc_pointer(&ptr->proxyB);
}
static value box3d_b3DistanceInput_transform_get ( value handle ) {
	b3DistanceInput* ptr = (b3DistanceInput*)val_data(handle);
	return cffi::alloc_pointer(&ptr->transform);
}
static value box3d_b3DistanceInput_transform_set ( value handle, value v ) {
	b3DistanceInput* ptr = (b3DistanceInput*)val_data(handle);
	memcpy(&ptr->transform, (void*)val_data(v), sizeof(b3Transform));
	return cffi::alloc_pointer(&ptr->transform);
}
static bool box3d_b3DistanceInput_useRadii_get ( value handle ) {
	b3DistanceInput* ptr = (b3DistanceInput*)val_data(handle);
	return ptr->useRadii;
}
static bool box3d_b3DistanceInput_useRadii_set ( value handle, bool v ) {
	b3DistanceInput* ptr = (b3DistanceInput*)val_data(handle);
	return ptr->useRadii = v;
}

DEFINE_PRIME0 (box3d_b3DistanceInput_new);
DEFINE_PRIME1 (box3d_b3DistanceInput_proxyA_get);
DEFINE_PRIME2 (box3d_b3DistanceInput_proxyA_set);
DEFINE_PRIME1 (box3d_b3DistanceInput_proxyB_get);
DEFINE_PRIME2 (box3d_b3DistanceInput_proxyB_set);
DEFINE_PRIME1 (box3d_b3DistanceInput_transform_get);
DEFINE_PRIME2 (box3d_b3DistanceInput_transform_set);
DEFINE_PRIME1 (box3d_b3DistanceInput_useRadii_get);
DEFINE_PRIME2 (box3d_b3DistanceInput_useRadii_set);

static void box3d_b3DistanceOutput_gc (value handle) {
	b3DistanceOutput* ptr = (b3DistanceOutput*)val_data(handle);
	delete ptr;
}
static value box3d_b3DistanceOutput_new () {
	b3DistanceOutput* ptr = new b3DistanceOutput();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3DistanceOutput_gc);
	return retVal;
}
static value box3d_b3DistanceOutput_pointA_get ( value handle ) {
	b3DistanceOutput* ptr = (b3DistanceOutput*)val_data(handle);
	return cffi::alloc_pointer(&ptr->pointA);
}
static value box3d_b3DistanceOutput_pointA_set ( value handle, value v ) {
	b3DistanceOutput* ptr = (b3DistanceOutput*)val_data(handle);
	memcpy(&ptr->pointA, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->pointA);
}
static value box3d_b3DistanceOutput_pointB_get ( value handle ) {
	b3DistanceOutput* ptr = (b3DistanceOutput*)val_data(handle);
	return cffi::alloc_pointer(&ptr->pointB);
}
static value box3d_b3DistanceOutput_pointB_set ( value handle, value v ) {
	b3DistanceOutput* ptr = (b3DistanceOutput*)val_data(handle);
	memcpy(&ptr->pointB, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->pointB);
}
static value box3d_b3DistanceOutput_normal_get ( value handle ) {
	b3DistanceOutput* ptr = (b3DistanceOutput*)val_data(handle);
	return cffi::alloc_pointer(&ptr->normal);
}
static value box3d_b3DistanceOutput_normal_set ( value handle, value v ) {
	b3DistanceOutput* ptr = (b3DistanceOutput*)val_data(handle);
	memcpy(&ptr->normal, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->normal);
}
static float box3d_b3DistanceOutput_distance_get ( value handle ) {
	b3DistanceOutput* ptr = (b3DistanceOutput*)val_data(handle);
	return ptr->distance;
}
static float box3d_b3DistanceOutput_distance_set ( value handle, float v ) {
	b3DistanceOutput* ptr = (b3DistanceOutput*)val_data(handle);
	return ptr->distance = v;
}
static int box3d_b3DistanceOutput_iterations_get ( value handle ) {
	b3DistanceOutput* ptr = (b3DistanceOutput*)val_data(handle);
	return ptr->iterations;
}
static int box3d_b3DistanceOutput_iterations_set ( value handle, int v ) {
	b3DistanceOutput* ptr = (b3DistanceOutput*)val_data(handle);
	return ptr->iterations = v;
}
static int box3d_b3DistanceOutput_simplexCount_get ( value handle ) {
	b3DistanceOutput* ptr = (b3DistanceOutput*)val_data(handle);
	return ptr->simplexCount;
}
static int box3d_b3DistanceOutput_simplexCount_set ( value handle, int v ) {
	b3DistanceOutput* ptr = (b3DistanceOutput*)val_data(handle);
	return ptr->simplexCount = v;
}

DEFINE_PRIME0 (box3d_b3DistanceOutput_new);
DEFINE_PRIME1 (box3d_b3DistanceOutput_pointA_get);
DEFINE_PRIME2 (box3d_b3DistanceOutput_pointA_set);
DEFINE_PRIME1 (box3d_b3DistanceOutput_pointB_get);
DEFINE_PRIME2 (box3d_b3DistanceOutput_pointB_set);
DEFINE_PRIME1 (box3d_b3DistanceOutput_normal_get);
DEFINE_PRIME2 (box3d_b3DistanceOutput_normal_set);
DEFINE_PRIME1 (box3d_b3DistanceOutput_distance_get);
DEFINE_PRIME2 (box3d_b3DistanceOutput_distance_set);
DEFINE_PRIME1 (box3d_b3DistanceOutput_iterations_get);
DEFINE_PRIME2 (box3d_b3DistanceOutput_iterations_set);
DEFINE_PRIME1 (box3d_b3DistanceOutput_simplexCount_get);
DEFINE_PRIME2 (box3d_b3DistanceOutput_simplexCount_set);

static void box3d_b3SimplexVertex_gc (value handle) {
	b3SimplexVertex* ptr = (b3SimplexVertex*)val_data(handle);
	delete ptr;
}
static value box3d_b3SimplexVertex_new () {
	b3SimplexVertex* ptr = new b3SimplexVertex();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3SimplexVertex_gc);
	return retVal;
}
static value box3d_b3SimplexVertex_wA_get ( value handle ) {
	b3SimplexVertex* ptr = (b3SimplexVertex*)val_data(handle);
	return cffi::alloc_pointer(&ptr->wA);
}
static value box3d_b3SimplexVertex_wA_set ( value handle, value v ) {
	b3SimplexVertex* ptr = (b3SimplexVertex*)val_data(handle);
	memcpy(&ptr->wA, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->wA);
}
static value box3d_b3SimplexVertex_wB_get ( value handle ) {
	b3SimplexVertex* ptr = (b3SimplexVertex*)val_data(handle);
	return cffi::alloc_pointer(&ptr->wB);
}
static value box3d_b3SimplexVertex_wB_set ( value handle, value v ) {
	b3SimplexVertex* ptr = (b3SimplexVertex*)val_data(handle);
	memcpy(&ptr->wB, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->wB);
}
static value box3d_b3SimplexVertex_w_get ( value handle ) {
	b3SimplexVertex* ptr = (b3SimplexVertex*)val_data(handle);
	return cffi::alloc_pointer(&ptr->w);
}
static value box3d_b3SimplexVertex_w_set ( value handle, value v ) {
	b3SimplexVertex* ptr = (b3SimplexVertex*)val_data(handle);
	memcpy(&ptr->w, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->w);
}
static float box3d_b3SimplexVertex_a_get ( value handle ) {
	b3SimplexVertex* ptr = (b3SimplexVertex*)val_data(handle);
	return ptr->a;
}
static float box3d_b3SimplexVertex_a_set ( value handle, float v ) {
	b3SimplexVertex* ptr = (b3SimplexVertex*)val_data(handle);
	return ptr->a = v;
}
static int box3d_b3SimplexVertex_indexA_get ( value handle ) {
	b3SimplexVertex* ptr = (b3SimplexVertex*)val_data(handle);
	return ptr->indexA;
}
static int box3d_b3SimplexVertex_indexA_set ( value handle, int v ) {
	b3SimplexVertex* ptr = (b3SimplexVertex*)val_data(handle);
	return ptr->indexA = v;
}
static int box3d_b3SimplexVertex_indexB_get ( value handle ) {
	b3SimplexVertex* ptr = (b3SimplexVertex*)val_data(handle);
	return ptr->indexB;
}
static int box3d_b3SimplexVertex_indexB_set ( value handle, int v ) {
	b3SimplexVertex* ptr = (b3SimplexVertex*)val_data(handle);
	return ptr->indexB = v;
}

DEFINE_PRIME0 (box3d_b3SimplexVertex_new);
DEFINE_PRIME1 (box3d_b3SimplexVertex_wA_get);
DEFINE_PRIME2 (box3d_b3SimplexVertex_wA_set);
DEFINE_PRIME1 (box3d_b3SimplexVertex_wB_get);
DEFINE_PRIME2 (box3d_b3SimplexVertex_wB_set);
DEFINE_PRIME1 (box3d_b3SimplexVertex_w_get);
DEFINE_PRIME2 (box3d_b3SimplexVertex_w_set);
DEFINE_PRIME1 (box3d_b3SimplexVertex_a_get);
DEFINE_PRIME2 (box3d_b3SimplexVertex_a_set);
DEFINE_PRIME1 (box3d_b3SimplexVertex_indexA_get);
DEFINE_PRIME2 (box3d_b3SimplexVertex_indexA_set);
DEFINE_PRIME1 (box3d_b3SimplexVertex_indexB_get);
DEFINE_PRIME2 (box3d_b3SimplexVertex_indexB_set);

static void box3d_b3Simplex_gc (value handle) {
	b3Simplex* ptr = (b3Simplex*)val_data(handle);
	delete ptr;
}
static value box3d_b3Simplex_new () {
	b3Simplex* ptr = new b3Simplex();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3Simplex_gc);
	return retVal;
}
static int box3d_b3Simplex_count_get ( value handle ) {
	b3Simplex* ptr = (b3Simplex*)val_data(handle);
	return ptr->count;
}
static int box3d_b3Simplex_count_set ( value handle, int v ) {
	b3Simplex* ptr = (b3Simplex*)val_data(handle);
	return ptr->count = v;
}

DEFINE_PRIME0 (box3d_b3Simplex_new);
DEFINE_PRIME1 (box3d_b3Simplex_count_get);
DEFINE_PRIME2 (box3d_b3Simplex_count_set);

static void box3d_b3Sweep_gc (value handle) {
	b3Sweep* ptr = (b3Sweep*)val_data(handle);
	delete ptr;
}
static value box3d_b3Sweep_new () {
	b3Sweep* ptr = new b3Sweep();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3Sweep_gc);
	return retVal;
}
static value box3d_b3Sweep_localCenter_get ( value handle ) {
	b3Sweep* ptr = (b3Sweep*)val_data(handle);
	return cffi::alloc_pointer(&ptr->localCenter);
}
static value box3d_b3Sweep_localCenter_set ( value handle, value v ) {
	b3Sweep* ptr = (b3Sweep*)val_data(handle);
	memcpy(&ptr->localCenter, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->localCenter);
}
static value box3d_b3Sweep_c1_get ( value handle ) {
	b3Sweep* ptr = (b3Sweep*)val_data(handle);
	return cffi::alloc_pointer(&ptr->c1);
}
static value box3d_b3Sweep_c1_set ( value handle, value v ) {
	b3Sweep* ptr = (b3Sweep*)val_data(handle);
	memcpy(&ptr->c1, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->c1);
}
static value box3d_b3Sweep_c2_get ( value handle ) {
	b3Sweep* ptr = (b3Sweep*)val_data(handle);
	return cffi::alloc_pointer(&ptr->c2);
}
static value box3d_b3Sweep_c2_set ( value handle, value v ) {
	b3Sweep* ptr = (b3Sweep*)val_data(handle);
	memcpy(&ptr->c2, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->c2);
}
static value box3d_b3Sweep_q1_get ( value handle ) {
	b3Sweep* ptr = (b3Sweep*)val_data(handle);
	return cffi::alloc_pointer(&ptr->q1);
}
static value box3d_b3Sweep_q1_set ( value handle, value v ) {
	b3Sweep* ptr = (b3Sweep*)val_data(handle);
	memcpy(&ptr->q1, (void*)val_data(v), sizeof(b3Quat));
	return cffi::alloc_pointer(&ptr->q1);
}
static value box3d_b3Sweep_q2_get ( value handle ) {
	b3Sweep* ptr = (b3Sweep*)val_data(handle);
	return cffi::alloc_pointer(&ptr->q2);
}
static value box3d_b3Sweep_q2_set ( value handle, value v ) {
	b3Sweep* ptr = (b3Sweep*)val_data(handle);
	memcpy(&ptr->q2, (void*)val_data(v), sizeof(b3Quat));
	return cffi::alloc_pointer(&ptr->q2);
}

DEFINE_PRIME0 (box3d_b3Sweep_new);
DEFINE_PRIME1 (box3d_b3Sweep_localCenter_get);
DEFINE_PRIME2 (box3d_b3Sweep_localCenter_set);
DEFINE_PRIME1 (box3d_b3Sweep_c1_get);
DEFINE_PRIME2 (box3d_b3Sweep_c1_set);
DEFINE_PRIME1 (box3d_b3Sweep_c2_get);
DEFINE_PRIME2 (box3d_b3Sweep_c2_set);
DEFINE_PRIME1 (box3d_b3Sweep_q1_get);
DEFINE_PRIME2 (box3d_b3Sweep_q1_set);
DEFINE_PRIME1 (box3d_b3Sweep_q2_get);
DEFINE_PRIME2 (box3d_b3Sweep_q2_set);

static void box3d_b3TOIInput_gc (value handle) {
	b3TOIInput* ptr = (b3TOIInput*)val_data(handle);
	delete ptr;
}
static value box3d_b3TOIInput_new () {
	b3TOIInput* ptr = new b3TOIInput();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3TOIInput_gc);
	return retVal;
}
static value box3d_b3TOIInput_proxyA_get ( value handle ) {
	b3TOIInput* ptr = (b3TOIInput*)val_data(handle);
	return cffi::alloc_pointer(&ptr->proxyA);
}
static value box3d_b3TOIInput_proxyA_set ( value handle, value v ) {
	b3TOIInput* ptr = (b3TOIInput*)val_data(handle);
	memcpy(&ptr->proxyA, (void*)val_data(v), sizeof(b3ShapeProxy));
	return cffi::alloc_pointer(&ptr->proxyA);
}
static value box3d_b3TOIInput_proxyB_get ( value handle ) {
	b3TOIInput* ptr = (b3TOIInput*)val_data(handle);
	return cffi::alloc_pointer(&ptr->proxyB);
}
static value box3d_b3TOIInput_proxyB_set ( value handle, value v ) {
	b3TOIInput* ptr = (b3TOIInput*)val_data(handle);
	memcpy(&ptr->proxyB, (void*)val_data(v), sizeof(b3ShapeProxy));
	return cffi::alloc_pointer(&ptr->proxyB);
}
static value box3d_b3TOIInput_sweepA_get ( value handle ) {
	b3TOIInput* ptr = (b3TOIInput*)val_data(handle);
	return cffi::alloc_pointer(&ptr->sweepA);
}
static value box3d_b3TOIInput_sweepA_set ( value handle, value v ) {
	b3TOIInput* ptr = (b3TOIInput*)val_data(handle);
	memcpy(&ptr->sweepA, (void*)val_data(v), sizeof(b3Sweep));
	return cffi::alloc_pointer(&ptr->sweepA);
}
static value box3d_b3TOIInput_sweepB_get ( value handle ) {
	b3TOIInput* ptr = (b3TOIInput*)val_data(handle);
	return cffi::alloc_pointer(&ptr->sweepB);
}
static value box3d_b3TOIInput_sweepB_set ( value handle, value v ) {
	b3TOIInput* ptr = (b3TOIInput*)val_data(handle);
	memcpy(&ptr->sweepB, (void*)val_data(v), sizeof(b3Sweep));
	return cffi::alloc_pointer(&ptr->sweepB);
}
static float box3d_b3TOIInput_maxFraction_get ( value handle ) {
	b3TOIInput* ptr = (b3TOIInput*)val_data(handle);
	return ptr->maxFraction;
}
static float box3d_b3TOIInput_maxFraction_set ( value handle, float v ) {
	b3TOIInput* ptr = (b3TOIInput*)val_data(handle);
	return ptr->maxFraction = v;
}

DEFINE_PRIME0 (box3d_b3TOIInput_new);
DEFINE_PRIME1 (box3d_b3TOIInput_proxyA_get);
DEFINE_PRIME2 (box3d_b3TOIInput_proxyA_set);
DEFINE_PRIME1 (box3d_b3TOIInput_proxyB_get);
DEFINE_PRIME2 (box3d_b3TOIInput_proxyB_set);
DEFINE_PRIME1 (box3d_b3TOIInput_sweepA_get);
DEFINE_PRIME2 (box3d_b3TOIInput_sweepA_set);
DEFINE_PRIME1 (box3d_b3TOIInput_sweepB_get);
DEFINE_PRIME2 (box3d_b3TOIInput_sweepB_set);
DEFINE_PRIME1 (box3d_b3TOIInput_maxFraction_get);
DEFINE_PRIME2 (box3d_b3TOIInput_maxFraction_set);

static void box3d_b3TOIOutput_gc (value handle) {
	b3TOIOutput* ptr = (b3TOIOutput*)val_data(handle);
	delete ptr;
}
static value box3d_b3TOIOutput_new () {
	b3TOIOutput* ptr = new b3TOIOutput();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3TOIOutput_gc);
	return retVal;
}
static int box3d_b3TOIOutput_state_get ( value handle ) {
	b3TOIOutput* ptr = (b3TOIOutput*)val_data(handle);
	return ptr->state;
}
static int box3d_b3TOIOutput_state_set ( value handle, int v ) {
	b3TOIOutput* ptr = (b3TOIOutput*)val_data(handle);
	return ptr->state = (b3TOIState)v;
}
static value box3d_b3TOIOutput_point_get ( value handle ) {
	b3TOIOutput* ptr = (b3TOIOutput*)val_data(handle);
	return cffi::alloc_pointer(&ptr->point);
}
static value box3d_b3TOIOutput_point_set ( value handle, value v ) {
	b3TOIOutput* ptr = (b3TOIOutput*)val_data(handle);
	memcpy(&ptr->point, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->point);
}
static value box3d_b3TOIOutput_normal_get ( value handle ) {
	b3TOIOutput* ptr = (b3TOIOutput*)val_data(handle);
	return cffi::alloc_pointer(&ptr->normal);
}
static value box3d_b3TOIOutput_normal_set ( value handle, value v ) {
	b3TOIOutput* ptr = (b3TOIOutput*)val_data(handle);
	memcpy(&ptr->normal, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->normal);
}
static float box3d_b3TOIOutput_fraction_get ( value handle ) {
	b3TOIOutput* ptr = (b3TOIOutput*)val_data(handle);
	return ptr->fraction;
}
static float box3d_b3TOIOutput_fraction_set ( value handle, float v ) {
	b3TOIOutput* ptr = (b3TOIOutput*)val_data(handle);
	return ptr->fraction = v;
}
static float box3d_b3TOIOutput_distance_get ( value handle ) {
	b3TOIOutput* ptr = (b3TOIOutput*)val_data(handle);
	return ptr->distance;
}
static float box3d_b3TOIOutput_distance_set ( value handle, float v ) {
	b3TOIOutput* ptr = (b3TOIOutput*)val_data(handle);
	return ptr->distance = v;
}
static int box3d_b3TOIOutput_distanceIterations_get ( value handle ) {
	b3TOIOutput* ptr = (b3TOIOutput*)val_data(handle);
	return ptr->distanceIterations;
}
static int box3d_b3TOIOutput_distanceIterations_set ( value handle, int v ) {
	b3TOIOutput* ptr = (b3TOIOutput*)val_data(handle);
	return ptr->distanceIterations = v;
}
static int box3d_b3TOIOutput_pushBackIterations_get ( value handle ) {
	b3TOIOutput* ptr = (b3TOIOutput*)val_data(handle);
	return ptr->pushBackIterations;
}
static int box3d_b3TOIOutput_pushBackIterations_set ( value handle, int v ) {
	b3TOIOutput* ptr = (b3TOIOutput*)val_data(handle);
	return ptr->pushBackIterations = v;
}
static int box3d_b3TOIOutput_rootIterations_get ( value handle ) {
	b3TOIOutput* ptr = (b3TOIOutput*)val_data(handle);
	return ptr->rootIterations;
}
static int box3d_b3TOIOutput_rootIterations_set ( value handle, int v ) {
	b3TOIOutput* ptr = (b3TOIOutput*)val_data(handle);
	return ptr->rootIterations = v;
}
static bool box3d_b3TOIOutput_usedFallback_get ( value handle ) {
	b3TOIOutput* ptr = (b3TOIOutput*)val_data(handle);
	return ptr->usedFallback;
}
static bool box3d_b3TOIOutput_usedFallback_set ( value handle, bool v ) {
	b3TOIOutput* ptr = (b3TOIOutput*)val_data(handle);
	return ptr->usedFallback = v;
}

DEFINE_PRIME0 (box3d_b3TOIOutput_new);
DEFINE_PRIME1 (box3d_b3TOIOutput_state_get);
DEFINE_PRIME2 (box3d_b3TOIOutput_state_set);
DEFINE_PRIME1 (box3d_b3TOIOutput_point_get);
DEFINE_PRIME2 (box3d_b3TOIOutput_point_set);
DEFINE_PRIME1 (box3d_b3TOIOutput_normal_get);
DEFINE_PRIME2 (box3d_b3TOIOutput_normal_set);
DEFINE_PRIME1 (box3d_b3TOIOutput_fraction_get);
DEFINE_PRIME2 (box3d_b3TOIOutput_fraction_set);
DEFINE_PRIME1 (box3d_b3TOIOutput_distance_get);
DEFINE_PRIME2 (box3d_b3TOIOutput_distance_set);
DEFINE_PRIME1 (box3d_b3TOIOutput_distanceIterations_get);
DEFINE_PRIME2 (box3d_b3TOIOutput_distanceIterations_set);
DEFINE_PRIME1 (box3d_b3TOIOutput_pushBackIterations_get);
DEFINE_PRIME2 (box3d_b3TOIOutput_pushBackIterations_set);
DEFINE_PRIME1 (box3d_b3TOIOutput_rootIterations_get);
DEFINE_PRIME2 (box3d_b3TOIOutput_rootIterations_set);
DEFINE_PRIME1 (box3d_b3TOIOutput_usedFallback_get);
DEFINE_PRIME2 (box3d_b3TOIOutput_usedFallback_set);

static void box3d_b3TreeNodeChildren_gc (value handle) {
	b3TreeNodeChildren* ptr = (b3TreeNodeChildren*)val_data(handle);
	delete ptr;
}
static value box3d_b3TreeNodeChildren_new () {
	b3TreeNodeChildren* ptr = new b3TreeNodeChildren();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3TreeNodeChildren_gc);
	return retVal;
}
static int box3d_b3TreeNodeChildren_child1_get ( value handle ) {
	b3TreeNodeChildren* ptr = (b3TreeNodeChildren*)val_data(handle);
	return ptr->child1;
}
static int box3d_b3TreeNodeChildren_child1_set ( value handle, int v ) {
	b3TreeNodeChildren* ptr = (b3TreeNodeChildren*)val_data(handle);
	return ptr->child1 = v;
}
static int box3d_b3TreeNodeChildren_child2_get ( value handle ) {
	b3TreeNodeChildren* ptr = (b3TreeNodeChildren*)val_data(handle);
	return ptr->child2;
}
static int box3d_b3TreeNodeChildren_child2_set ( value handle, int v ) {
	b3TreeNodeChildren* ptr = (b3TreeNodeChildren*)val_data(handle);
	return ptr->child2 = v;
}

DEFINE_PRIME0 (box3d_b3TreeNodeChildren_new);
DEFINE_PRIME1 (box3d_b3TreeNodeChildren_child1_get);
DEFINE_PRIME2 (box3d_b3TreeNodeChildren_child1_set);
DEFINE_PRIME1 (box3d_b3TreeNodeChildren_child2_get);
DEFINE_PRIME2 (box3d_b3TreeNodeChildren_child2_set);

static void box3d_b3TreeNode_gc (value handle) {
	b3TreeNode* ptr = (b3TreeNode*)val_data(handle);
	delete ptr;
}
static value box3d_b3TreeNode_new () {
	b3TreeNode* ptr = new b3TreeNode();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3TreeNode_gc);
	return retVal;
}
static value box3d_b3TreeNode_aabb_get ( value handle ) {
	b3TreeNode* ptr = (b3TreeNode*)val_data(handle);
	return cffi::alloc_pointer(&ptr->aabb);
}
static value box3d_b3TreeNode_aabb_set ( value handle, value v ) {
	b3TreeNode* ptr = (b3TreeNode*)val_data(handle);
	memcpy(&ptr->aabb, (void*)val_data(v), sizeof(b3AABB));
	return cffi::alloc_pointer(&ptr->aabb);
}
static value box3d_b3TreeNode_categoryBits_get ( value handle ) {
	b3TreeNode* ptr = (b3TreeNode*)val_data(handle);
	return cffi::alloc_pointer(&ptr->categoryBits);
}
static value box3d_b3TreeNode_categoryBits_set ( value handle, value v ) {
	b3TreeNode* ptr = (b3TreeNode*)val_data(handle);
	memcpy(&ptr->categoryBits, (void*)val_data(v), sizeof(uint64_t));
	return cffi::alloc_pointer(&ptr->categoryBits);
}
static value box3d_b3TreeNode_children_get ( value handle ) {
	b3TreeNode* ptr = (b3TreeNode*)val_data(handle);
	return cffi::alloc_pointer(&ptr->children);
}
static value box3d_b3TreeNode_children_set ( value handle, value v ) {
	b3TreeNode* ptr = (b3TreeNode*)val_data(handle);
	memcpy(&ptr->children, (void*)val_data(v), sizeof(b3TreeNodeChildren));
	return cffi::alloc_pointer(&ptr->children);
}
static value box3d_b3TreeNode_userData_get ( value handle ) {
	b3TreeNode* ptr = (b3TreeNode*)val_data(handle);
	return cffi::alloc_pointer(&ptr->userData);
}
static value box3d_b3TreeNode_userData_set ( value handle, value v ) {
	b3TreeNode* ptr = (b3TreeNode*)val_data(handle);
	memcpy(&ptr->userData, (void*)val_data(v), sizeof(uint64_t));
	return cffi::alloc_pointer(&ptr->userData);
}
static int box3d_b3TreeNode_parent_get ( value handle ) {
	b3TreeNode* ptr = (b3TreeNode*)val_data(handle);
	return ptr->parent;
}
static int box3d_b3TreeNode_parent_set ( value handle, int v ) {
	b3TreeNode* ptr = (b3TreeNode*)val_data(handle);
	return ptr->parent = v;
}
static int box3d_b3TreeNode_next_get ( value handle ) {
	b3TreeNode* ptr = (b3TreeNode*)val_data(handle);
	return ptr->next;
}
static int box3d_b3TreeNode_next_set ( value handle, int v ) {
	b3TreeNode* ptr = (b3TreeNode*)val_data(handle);
	return ptr->next = v;
}
static int box3d_b3TreeNode_height_get ( value handle ) {
	b3TreeNode* ptr = (b3TreeNode*)val_data(handle);
	return ptr->height;
}
static int box3d_b3TreeNode_height_set ( value handle, int v ) {
	b3TreeNode* ptr = (b3TreeNode*)val_data(handle);
	return ptr->height = v;
}
static int box3d_b3TreeNode_flags_get ( value handle ) {
	b3TreeNode* ptr = (b3TreeNode*)val_data(handle);
	return ptr->flags;
}
static int box3d_b3TreeNode_flags_set ( value handle, int v ) {
	b3TreeNode* ptr = (b3TreeNode*)val_data(handle);
	return ptr->flags = v;
}

DEFINE_PRIME0 (box3d_b3TreeNode_new);
DEFINE_PRIME1 (box3d_b3TreeNode_aabb_get);
DEFINE_PRIME2 (box3d_b3TreeNode_aabb_set);
DEFINE_PRIME1 (box3d_b3TreeNode_categoryBits_get);
DEFINE_PRIME2 (box3d_b3TreeNode_categoryBits_set);
DEFINE_PRIME1 (box3d_b3TreeNode_children_get);
DEFINE_PRIME2 (box3d_b3TreeNode_children_set);
DEFINE_PRIME1 (box3d_b3TreeNode_userData_get);
DEFINE_PRIME2 (box3d_b3TreeNode_userData_set);
DEFINE_PRIME1 (box3d_b3TreeNode_parent_get);
DEFINE_PRIME2 (box3d_b3TreeNode_parent_set);
DEFINE_PRIME1 (box3d_b3TreeNode_next_get);
DEFINE_PRIME2 (box3d_b3TreeNode_next_set);
DEFINE_PRIME1 (box3d_b3TreeNode_height_get);
DEFINE_PRIME2 (box3d_b3TreeNode_height_set);
DEFINE_PRIME1 (box3d_b3TreeNode_flags_get);
DEFINE_PRIME2 (box3d_b3TreeNode_flags_set);

static void box3d_b3DynamicTree_gc (value handle) {
	b3DynamicTree* ptr = (b3DynamicTree*)val_data(handle);
	delete ptr;
}
static value box3d_b3DynamicTree_new () {
	b3DynamicTree* ptr = new b3DynamicTree();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3DynamicTree_gc);
	return retVal;
}
static value box3d_b3DynamicTree_version_get ( value handle ) {
	b3DynamicTree* ptr = (b3DynamicTree*)val_data(handle);
	return cffi::alloc_pointer(&ptr->version);
}
static value box3d_b3DynamicTree_version_set ( value handle, value v ) {
	b3DynamicTree* ptr = (b3DynamicTree*)val_data(handle);
	memcpy(&ptr->version, (void*)val_data(v), sizeof(uint64_t));
	return cffi::alloc_pointer(&ptr->version);
}
static int box3d_b3DynamicTree_root_get ( value handle ) {
	b3DynamicTree* ptr = (b3DynamicTree*)val_data(handle);
	return ptr->root;
}
static int box3d_b3DynamicTree_root_set ( value handle, int v ) {
	b3DynamicTree* ptr = (b3DynamicTree*)val_data(handle);
	return ptr->root = v;
}
static int box3d_b3DynamicTree_nodeCount_get ( value handle ) {
	b3DynamicTree* ptr = (b3DynamicTree*)val_data(handle);
	return ptr->nodeCount;
}
static int box3d_b3DynamicTree_nodeCount_set ( value handle, int v ) {
	b3DynamicTree* ptr = (b3DynamicTree*)val_data(handle);
	return ptr->nodeCount = v;
}
static int box3d_b3DynamicTree_nodeCapacity_get ( value handle ) {
	b3DynamicTree* ptr = (b3DynamicTree*)val_data(handle);
	return ptr->nodeCapacity;
}
static int box3d_b3DynamicTree_nodeCapacity_set ( value handle, int v ) {
	b3DynamicTree* ptr = (b3DynamicTree*)val_data(handle);
	return ptr->nodeCapacity = v;
}
static int box3d_b3DynamicTree_proxyCount_get ( value handle ) {
	b3DynamicTree* ptr = (b3DynamicTree*)val_data(handle);
	return ptr->proxyCount;
}
static int box3d_b3DynamicTree_proxyCount_set ( value handle, int v ) {
	b3DynamicTree* ptr = (b3DynamicTree*)val_data(handle);
	return ptr->proxyCount = v;
}
static int box3d_b3DynamicTree_freeList_get ( value handle ) {
	b3DynamicTree* ptr = (b3DynamicTree*)val_data(handle);
	return ptr->freeList;
}
static int box3d_b3DynamicTree_freeList_set ( value handle, int v ) {
	b3DynamicTree* ptr = (b3DynamicTree*)val_data(handle);
	return ptr->freeList = v;
}
static int box3d_b3DynamicTree_rebuildCapacity_get ( value handle ) {
	b3DynamicTree* ptr = (b3DynamicTree*)val_data(handle);
	return ptr->rebuildCapacity;
}
static int box3d_b3DynamicTree_rebuildCapacity_set ( value handle, int v ) {
	b3DynamicTree* ptr = (b3DynamicTree*)val_data(handle);
	return ptr->rebuildCapacity = v;
}

DEFINE_PRIME0 (box3d_b3DynamicTree_new);
DEFINE_PRIME1 (box3d_b3DynamicTree_version_get);
DEFINE_PRIME2 (box3d_b3DynamicTree_version_set);
DEFINE_PRIME1 (box3d_b3DynamicTree_root_get);
DEFINE_PRIME2 (box3d_b3DynamicTree_root_set);
DEFINE_PRIME1 (box3d_b3DynamicTree_nodeCount_get);
DEFINE_PRIME2 (box3d_b3DynamicTree_nodeCount_set);
DEFINE_PRIME1 (box3d_b3DynamicTree_nodeCapacity_get);
DEFINE_PRIME2 (box3d_b3DynamicTree_nodeCapacity_set);
DEFINE_PRIME1 (box3d_b3DynamicTree_proxyCount_get);
DEFINE_PRIME2 (box3d_b3DynamicTree_proxyCount_set);
DEFINE_PRIME1 (box3d_b3DynamicTree_freeList_get);
DEFINE_PRIME2 (box3d_b3DynamicTree_freeList_set);
DEFINE_PRIME1 (box3d_b3DynamicTree_rebuildCapacity_get);
DEFINE_PRIME2 (box3d_b3DynamicTree_rebuildCapacity_set);

static void box3d_b3TreeStats_gc (value handle) {
	b3TreeStats* ptr = (b3TreeStats*)val_data(handle);
	delete ptr;
}
static value box3d_b3TreeStats_new () {
	b3TreeStats* ptr = new b3TreeStats();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3TreeStats_gc);
	return retVal;
}
static int box3d_b3TreeStats_nodeVisits_get ( value handle ) {
	b3TreeStats* ptr = (b3TreeStats*)val_data(handle);
	return ptr->nodeVisits;
}
static int box3d_b3TreeStats_nodeVisits_set ( value handle, int v ) {
	b3TreeStats* ptr = (b3TreeStats*)val_data(handle);
	return ptr->nodeVisits = v;
}
static int box3d_b3TreeStats_leafVisits_get ( value handle ) {
	b3TreeStats* ptr = (b3TreeStats*)val_data(handle);
	return ptr->leafVisits;
}
static int box3d_b3TreeStats_leafVisits_set ( value handle, int v ) {
	b3TreeStats* ptr = (b3TreeStats*)val_data(handle);
	return ptr->leafVisits = v;
}

DEFINE_PRIME0 (box3d_b3TreeStats_new);
DEFINE_PRIME1 (box3d_b3TreeStats_nodeVisits_get);
DEFINE_PRIME2 (box3d_b3TreeStats_nodeVisits_set);
DEFINE_PRIME1 (box3d_b3TreeStats_leafVisits_get);
DEFINE_PRIME2 (box3d_b3TreeStats_leafVisits_set);

static void box3d_b3PlaneResult_gc (value handle) {
	b3PlaneResult* ptr = (b3PlaneResult*)val_data(handle);
	delete ptr;
}
static value box3d_b3PlaneResult_new () {
	b3PlaneResult* ptr = new b3PlaneResult();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3PlaneResult_gc);
	return retVal;
}
static value box3d_b3PlaneResult_plane_get ( value handle ) {
	b3PlaneResult* ptr = (b3PlaneResult*)val_data(handle);
	return cffi::alloc_pointer(&ptr->plane);
}
static value box3d_b3PlaneResult_plane_set ( value handle, value v ) {
	b3PlaneResult* ptr = (b3PlaneResult*)val_data(handle);
	memcpy(&ptr->plane, (void*)val_data(v), sizeof(b3Plane));
	return cffi::alloc_pointer(&ptr->plane);
}
static value box3d_b3PlaneResult_point_get ( value handle ) {
	b3PlaneResult* ptr = (b3PlaneResult*)val_data(handle);
	return cffi::alloc_pointer(&ptr->point);
}
static value box3d_b3PlaneResult_point_set ( value handle, value v ) {
	b3PlaneResult* ptr = (b3PlaneResult*)val_data(handle);
	memcpy(&ptr->point, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->point);
}
static int box3d_b3PlaneResult_triangleIndex_get ( value handle ) {
	b3PlaneResult* ptr = (b3PlaneResult*)val_data(handle);
	return ptr->triangleIndex;
}
static int box3d_b3PlaneResult_triangleIndex_set ( value handle, int v ) {
	b3PlaneResult* ptr = (b3PlaneResult*)val_data(handle);
	return ptr->triangleIndex = v;
}
static int box3d_b3PlaneResult_childIndex_get ( value handle ) {
	b3PlaneResult* ptr = (b3PlaneResult*)val_data(handle);
	return ptr->childIndex;
}
static int box3d_b3PlaneResult_childIndex_set ( value handle, int v ) {
	b3PlaneResult* ptr = (b3PlaneResult*)val_data(handle);
	return ptr->childIndex = v;
}
static int box3d_b3PlaneResult_materialIndex_get ( value handle ) {
	b3PlaneResult* ptr = (b3PlaneResult*)val_data(handle);
	return ptr->materialIndex;
}
static int box3d_b3PlaneResult_materialIndex_set ( value handle, int v ) {
	b3PlaneResult* ptr = (b3PlaneResult*)val_data(handle);
	return ptr->materialIndex = v;
}

DEFINE_PRIME0 (box3d_b3PlaneResult_new);
DEFINE_PRIME1 (box3d_b3PlaneResult_plane_get);
DEFINE_PRIME2 (box3d_b3PlaneResult_plane_set);
DEFINE_PRIME1 (box3d_b3PlaneResult_point_get);
DEFINE_PRIME2 (box3d_b3PlaneResult_point_set);
DEFINE_PRIME1 (box3d_b3PlaneResult_triangleIndex_get);
DEFINE_PRIME2 (box3d_b3PlaneResult_triangleIndex_set);
DEFINE_PRIME1 (box3d_b3PlaneResult_childIndex_get);
DEFINE_PRIME2 (box3d_b3PlaneResult_childIndex_set);
DEFINE_PRIME1 (box3d_b3PlaneResult_materialIndex_get);
DEFINE_PRIME2 (box3d_b3PlaneResult_materialIndex_set);

static void box3d_b3CollisionPlane_gc (value handle) {
	b3CollisionPlane* ptr = (b3CollisionPlane*)val_data(handle);
	delete ptr;
}
static value box3d_b3CollisionPlane_new () {
	b3CollisionPlane* ptr = new b3CollisionPlane();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3CollisionPlane_gc);
	return retVal;
}
static value box3d_b3CollisionPlane_plane_get ( value handle ) {
	b3CollisionPlane* ptr = (b3CollisionPlane*)val_data(handle);
	return cffi::alloc_pointer(&ptr->plane);
}
static value box3d_b3CollisionPlane_plane_set ( value handle, value v ) {
	b3CollisionPlane* ptr = (b3CollisionPlane*)val_data(handle);
	memcpy(&ptr->plane, (void*)val_data(v), sizeof(b3Plane));
	return cffi::alloc_pointer(&ptr->plane);
}
static float box3d_b3CollisionPlane_pushLimit_get ( value handle ) {
	b3CollisionPlane* ptr = (b3CollisionPlane*)val_data(handle);
	return ptr->pushLimit;
}
static float box3d_b3CollisionPlane_pushLimit_set ( value handle, float v ) {
	b3CollisionPlane* ptr = (b3CollisionPlane*)val_data(handle);
	return ptr->pushLimit = v;
}
static float box3d_b3CollisionPlane_push_get ( value handle ) {
	b3CollisionPlane* ptr = (b3CollisionPlane*)val_data(handle);
	return ptr->push;
}
static float box3d_b3CollisionPlane_push_set ( value handle, float v ) {
	b3CollisionPlane* ptr = (b3CollisionPlane*)val_data(handle);
	return ptr->push = v;
}
static bool box3d_b3CollisionPlane_clipVelocity_get ( value handle ) {
	b3CollisionPlane* ptr = (b3CollisionPlane*)val_data(handle);
	return ptr->clipVelocity;
}
static bool box3d_b3CollisionPlane_clipVelocity_set ( value handle, bool v ) {
	b3CollisionPlane* ptr = (b3CollisionPlane*)val_data(handle);
	return ptr->clipVelocity = v;
}

DEFINE_PRIME0 (box3d_b3CollisionPlane_new);
DEFINE_PRIME1 (box3d_b3CollisionPlane_plane_get);
DEFINE_PRIME2 (box3d_b3CollisionPlane_plane_set);
DEFINE_PRIME1 (box3d_b3CollisionPlane_pushLimit_get);
DEFINE_PRIME2 (box3d_b3CollisionPlane_pushLimit_set);
DEFINE_PRIME1 (box3d_b3CollisionPlane_push_get);
DEFINE_PRIME2 (box3d_b3CollisionPlane_push_set);
DEFINE_PRIME1 (box3d_b3CollisionPlane_clipVelocity_get);
DEFINE_PRIME2 (box3d_b3CollisionPlane_clipVelocity_set);

static void box3d_b3PlaneSolverResult_gc (value handle) {
	b3PlaneSolverResult* ptr = (b3PlaneSolverResult*)val_data(handle);
	delete ptr;
}
static value box3d_b3PlaneSolverResult_new () {
	b3PlaneSolverResult* ptr = new b3PlaneSolverResult();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3PlaneSolverResult_gc);
	return retVal;
}
static value box3d_b3PlaneSolverResult_delta_get ( value handle ) {
	b3PlaneSolverResult* ptr = (b3PlaneSolverResult*)val_data(handle);
	return cffi::alloc_pointer(&ptr->delta);
}
static value box3d_b3PlaneSolverResult_delta_set ( value handle, value v ) {
	b3PlaneSolverResult* ptr = (b3PlaneSolverResult*)val_data(handle);
	memcpy(&ptr->delta, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->delta);
}
static int box3d_b3PlaneSolverResult_iterationCount_get ( value handle ) {
	b3PlaneSolverResult* ptr = (b3PlaneSolverResult*)val_data(handle);
	return ptr->iterationCount;
}
static int box3d_b3PlaneSolverResult_iterationCount_set ( value handle, int v ) {
	b3PlaneSolverResult* ptr = (b3PlaneSolverResult*)val_data(handle);
	return ptr->iterationCount = v;
}

DEFINE_PRIME0 (box3d_b3PlaneSolverResult_new);
DEFINE_PRIME1 (box3d_b3PlaneSolverResult_delta_get);
DEFINE_PRIME2 (box3d_b3PlaneSolverResult_delta_set);
DEFINE_PRIME1 (box3d_b3PlaneSolverResult_iterationCount_get);
DEFINE_PRIME2 (box3d_b3PlaneSolverResult_iterationCount_set);

static void box3d_b3BodyPlaneResult_gc (value handle) {
	b3BodyPlaneResult* ptr = (b3BodyPlaneResult*)val_data(handle);
	delete ptr;
}
static value box3d_b3BodyPlaneResult_new () {
	b3BodyPlaneResult* ptr = new b3BodyPlaneResult();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3BodyPlaneResult_gc);
	return retVal;
}
static value box3d_b3BodyPlaneResult_shapeId_get ( value handle ) {
	b3BodyPlaneResult* ptr = (b3BodyPlaneResult*)val_data(handle);
	return cffi::alloc_pointer(&ptr->shapeId);
}
static value box3d_b3BodyPlaneResult_shapeId_set ( value handle, value v ) {
	b3BodyPlaneResult* ptr = (b3BodyPlaneResult*)val_data(handle);
	memcpy(&ptr->shapeId, (void*)val_data(v), sizeof(b3ShapeId));
	return cffi::alloc_pointer(&ptr->shapeId);
}
static value box3d_b3BodyPlaneResult_result_get ( value handle ) {
	b3BodyPlaneResult* ptr = (b3BodyPlaneResult*)val_data(handle);
	return cffi::alloc_pointer(&ptr->result);
}
static value box3d_b3BodyPlaneResult_result_set ( value handle, value v ) {
	b3BodyPlaneResult* ptr = (b3BodyPlaneResult*)val_data(handle);
	memcpy(&ptr->result, (void*)val_data(v), sizeof(b3PlaneResult));
	return cffi::alloc_pointer(&ptr->result);
}

DEFINE_PRIME0 (box3d_b3BodyPlaneResult_new);
DEFINE_PRIME1 (box3d_b3BodyPlaneResult_shapeId_get);
DEFINE_PRIME2 (box3d_b3BodyPlaneResult_shapeId_set);
DEFINE_PRIME1 (box3d_b3BodyPlaneResult_result_get);
DEFINE_PRIME2 (box3d_b3BodyPlaneResult_result_set);

static void box3d_b3BodyTOIResult_gc (value handle) {
	b3BodyTOIResult* ptr = (b3BodyTOIResult*)val_data(handle);
	delete ptr;
}
static value box3d_b3BodyTOIResult_new () {
	b3BodyTOIResult* ptr = new b3BodyTOIResult();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3BodyTOIResult_gc);
	return retVal;
}
static value box3d_b3BodyTOIResult_point_get ( value handle ) {
	b3BodyTOIResult* ptr = (b3BodyTOIResult*)val_data(handle);
	return cffi::alloc_pointer(&ptr->point);
}
static value box3d_b3BodyTOIResult_point_set ( value handle, value v ) {
	b3BodyTOIResult* ptr = (b3BodyTOIResult*)val_data(handle);
	memcpy(&ptr->point, (void*)val_data(v), sizeof(b3Pos));
	return cffi::alloc_pointer(&ptr->point);
}
static value box3d_b3BodyTOIResult_normal_get ( value handle ) {
	b3BodyTOIResult* ptr = (b3BodyTOIResult*)val_data(handle);
	return cffi::alloc_pointer(&ptr->normal);
}
static value box3d_b3BodyTOIResult_normal_set ( value handle, value v ) {
	b3BodyTOIResult* ptr = (b3BodyTOIResult*)val_data(handle);
	memcpy(&ptr->normal, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->normal);
}
static float box3d_b3BodyTOIResult_fraction_get ( value handle ) {
	b3BodyTOIResult* ptr = (b3BodyTOIResult*)val_data(handle);
	return ptr->fraction;
}
static float box3d_b3BodyTOIResult_fraction_set ( value handle, float v ) {
	b3BodyTOIResult* ptr = (b3BodyTOIResult*)val_data(handle);
	return ptr->fraction = v;
}
static value box3d_b3BodyTOIResult_shapeId_get ( value handle ) {
	b3BodyTOIResult* ptr = (b3BodyTOIResult*)val_data(handle);
	return cffi::alloc_pointer(&ptr->shapeId);
}
static value box3d_b3BodyTOIResult_shapeId_set ( value handle, value v ) {
	b3BodyTOIResult* ptr = (b3BodyTOIResult*)val_data(handle);
	memcpy(&ptr->shapeId, (void*)val_data(v), sizeof(b3ShapeId));
	return cffi::alloc_pointer(&ptr->shapeId);
}

DEFINE_PRIME0 (box3d_b3BodyTOIResult_new);
DEFINE_PRIME1 (box3d_b3BodyTOIResult_point_get);
DEFINE_PRIME2 (box3d_b3BodyTOIResult_point_set);
DEFINE_PRIME1 (box3d_b3BodyTOIResult_normal_get);
DEFINE_PRIME2 (box3d_b3BodyTOIResult_normal_set);
DEFINE_PRIME1 (box3d_b3BodyTOIResult_fraction_get);
DEFINE_PRIME2 (box3d_b3BodyTOIResult_fraction_set);
DEFINE_PRIME1 (box3d_b3BodyTOIResult_shapeId_get);
DEFINE_PRIME2 (box3d_b3BodyTOIResult_shapeId_set);

static void box3d_b3MassData_gc (value handle) {
	b3MassData* ptr = (b3MassData*)val_data(handle);
	delete ptr;
}
static value box3d_b3MassData_new () {
	b3MassData* ptr = new b3MassData();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3MassData_gc);
	return retVal;
}
static float box3d_b3MassData_mass_get ( value handle ) {
	b3MassData* ptr = (b3MassData*)val_data(handle);
	return ptr->mass;
}
static float box3d_b3MassData_mass_set ( value handle, float v ) {
	b3MassData* ptr = (b3MassData*)val_data(handle);
	return ptr->mass = v;
}
static value box3d_b3MassData_center_get ( value handle ) {
	b3MassData* ptr = (b3MassData*)val_data(handle);
	return cffi::alloc_pointer(&ptr->center);
}
static value box3d_b3MassData_center_set ( value handle, value v ) {
	b3MassData* ptr = (b3MassData*)val_data(handle);
	memcpy(&ptr->center, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->center);
}
static value box3d_b3MassData_inertia_get ( value handle ) {
	b3MassData* ptr = (b3MassData*)val_data(handle);
	return cffi::alloc_pointer(&ptr->inertia);
}
static value box3d_b3MassData_inertia_set ( value handle, value v ) {
	b3MassData* ptr = (b3MassData*)val_data(handle);
	memcpy(&ptr->inertia, (void*)val_data(v), sizeof(b3Matrix3));
	return cffi::alloc_pointer(&ptr->inertia);
}

DEFINE_PRIME0 (box3d_b3MassData_new);
DEFINE_PRIME1 (box3d_b3MassData_mass_get);
DEFINE_PRIME2 (box3d_b3MassData_mass_set);
DEFINE_PRIME1 (box3d_b3MassData_center_get);
DEFINE_PRIME2 (box3d_b3MassData_center_set);
DEFINE_PRIME1 (box3d_b3MassData_inertia_get);
DEFINE_PRIME2 (box3d_b3MassData_inertia_set);

static void box3d_b3Sphere_gc (value handle) {
	b3Sphere* ptr = (b3Sphere*)val_data(handle);
	delete ptr;
}
static value box3d_b3Sphere_new () {
	b3Sphere* ptr = new b3Sphere();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3Sphere_gc);
	return retVal;
}
static value box3d_b3Sphere_center_get ( value handle ) {
	b3Sphere* ptr = (b3Sphere*)val_data(handle);
	return cffi::alloc_pointer(&ptr->center);
}
static value box3d_b3Sphere_center_set ( value handle, value v ) {
	b3Sphere* ptr = (b3Sphere*)val_data(handle);
	memcpy(&ptr->center, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->center);
}
static float box3d_b3Sphere_radius_get ( value handle ) {
	b3Sphere* ptr = (b3Sphere*)val_data(handle);
	return ptr->radius;
}
static float box3d_b3Sphere_radius_set ( value handle, float v ) {
	b3Sphere* ptr = (b3Sphere*)val_data(handle);
	return ptr->radius = v;
}

DEFINE_PRIME0 (box3d_b3Sphere_new);
DEFINE_PRIME1 (box3d_b3Sphere_center_get);
DEFINE_PRIME2 (box3d_b3Sphere_center_set);
DEFINE_PRIME1 (box3d_b3Sphere_radius_get);
DEFINE_PRIME2 (box3d_b3Sphere_radius_set);

static void box3d_b3Capsule_gc (value handle) {
	b3Capsule* ptr = (b3Capsule*)val_data(handle);
	delete ptr;
}
static value box3d_b3Capsule_new () {
	b3Capsule* ptr = new b3Capsule();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3Capsule_gc);
	return retVal;
}
static value box3d_b3Capsule_center1_get ( value handle ) {
	b3Capsule* ptr = (b3Capsule*)val_data(handle);
	return cffi::alloc_pointer(&ptr->center1);
}
static value box3d_b3Capsule_center1_set ( value handle, value v ) {
	b3Capsule* ptr = (b3Capsule*)val_data(handle);
	memcpy(&ptr->center1, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->center1);
}
static value box3d_b3Capsule_center2_get ( value handle ) {
	b3Capsule* ptr = (b3Capsule*)val_data(handle);
	return cffi::alloc_pointer(&ptr->center2);
}
static value box3d_b3Capsule_center2_set ( value handle, value v ) {
	b3Capsule* ptr = (b3Capsule*)val_data(handle);
	memcpy(&ptr->center2, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->center2);
}
static float box3d_b3Capsule_radius_get ( value handle ) {
	b3Capsule* ptr = (b3Capsule*)val_data(handle);
	return ptr->radius;
}
static float box3d_b3Capsule_radius_set ( value handle, float v ) {
	b3Capsule* ptr = (b3Capsule*)val_data(handle);
	return ptr->radius = v;
}

DEFINE_PRIME0 (box3d_b3Capsule_new);
DEFINE_PRIME1 (box3d_b3Capsule_center1_get);
DEFINE_PRIME2 (box3d_b3Capsule_center1_set);
DEFINE_PRIME1 (box3d_b3Capsule_center2_get);
DEFINE_PRIME2 (box3d_b3Capsule_center2_set);
DEFINE_PRIME1 (box3d_b3Capsule_radius_get);
DEFINE_PRIME2 (box3d_b3Capsule_radius_set);

static void box3d_b3HullVertex_gc (value handle) {
	b3HullVertex* ptr = (b3HullVertex*)val_data(handle);
	delete ptr;
}
static value box3d_b3HullVertex_new () {
	b3HullVertex* ptr = new b3HullVertex();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3HullVertex_gc);
	return retVal;
}
static int box3d_b3HullVertex_edge_get ( value handle ) {
	b3HullVertex* ptr = (b3HullVertex*)val_data(handle);
	return ptr->edge;
}
static int box3d_b3HullVertex_edge_set ( value handle, int v ) {
	b3HullVertex* ptr = (b3HullVertex*)val_data(handle);
	return ptr->edge = v;
}

DEFINE_PRIME0 (box3d_b3HullVertex_new);
DEFINE_PRIME1 (box3d_b3HullVertex_edge_get);
DEFINE_PRIME2 (box3d_b3HullVertex_edge_set);

static void box3d_b3HullHalfEdge_gc (value handle) {
	b3HullHalfEdge* ptr = (b3HullHalfEdge*)val_data(handle);
	delete ptr;
}
static value box3d_b3HullHalfEdge_new () {
	b3HullHalfEdge* ptr = new b3HullHalfEdge();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3HullHalfEdge_gc);
	return retVal;
}
static int box3d_b3HullHalfEdge_next_get ( value handle ) {
	b3HullHalfEdge* ptr = (b3HullHalfEdge*)val_data(handle);
	return ptr->next;
}
static int box3d_b3HullHalfEdge_next_set ( value handle, int v ) {
	b3HullHalfEdge* ptr = (b3HullHalfEdge*)val_data(handle);
	return ptr->next = v;
}
static int box3d_b3HullHalfEdge_twin_get ( value handle ) {
	b3HullHalfEdge* ptr = (b3HullHalfEdge*)val_data(handle);
	return ptr->twin;
}
static int box3d_b3HullHalfEdge_twin_set ( value handle, int v ) {
	b3HullHalfEdge* ptr = (b3HullHalfEdge*)val_data(handle);
	return ptr->twin = v;
}
static int box3d_b3HullHalfEdge_origin_get ( value handle ) {
	b3HullHalfEdge* ptr = (b3HullHalfEdge*)val_data(handle);
	return ptr->origin;
}
static int box3d_b3HullHalfEdge_origin_set ( value handle, int v ) {
	b3HullHalfEdge* ptr = (b3HullHalfEdge*)val_data(handle);
	return ptr->origin = v;
}
static int box3d_b3HullHalfEdge_face_get ( value handle ) {
	b3HullHalfEdge* ptr = (b3HullHalfEdge*)val_data(handle);
	return ptr->face;
}
static int box3d_b3HullHalfEdge_face_set ( value handle, int v ) {
	b3HullHalfEdge* ptr = (b3HullHalfEdge*)val_data(handle);
	return ptr->face = v;
}

DEFINE_PRIME0 (box3d_b3HullHalfEdge_new);
DEFINE_PRIME1 (box3d_b3HullHalfEdge_next_get);
DEFINE_PRIME2 (box3d_b3HullHalfEdge_next_set);
DEFINE_PRIME1 (box3d_b3HullHalfEdge_twin_get);
DEFINE_PRIME2 (box3d_b3HullHalfEdge_twin_set);
DEFINE_PRIME1 (box3d_b3HullHalfEdge_origin_get);
DEFINE_PRIME2 (box3d_b3HullHalfEdge_origin_set);
DEFINE_PRIME1 (box3d_b3HullHalfEdge_face_get);
DEFINE_PRIME2 (box3d_b3HullHalfEdge_face_set);

static void box3d_b3HullFace_gc (value handle) {
	b3HullFace* ptr = (b3HullFace*)val_data(handle);
	delete ptr;
}
static value box3d_b3HullFace_new () {
	b3HullFace* ptr = new b3HullFace();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3HullFace_gc);
	return retVal;
}
static int box3d_b3HullFace_edge_get ( value handle ) {
	b3HullFace* ptr = (b3HullFace*)val_data(handle);
	return ptr->edge;
}
static int box3d_b3HullFace_edge_set ( value handle, int v ) {
	b3HullFace* ptr = (b3HullFace*)val_data(handle);
	return ptr->edge = v;
}

DEFINE_PRIME0 (box3d_b3HullFace_new);
DEFINE_PRIME1 (box3d_b3HullFace_edge_get);
DEFINE_PRIME2 (box3d_b3HullFace_edge_set);

static void box3d_b3HullData_gc (value handle) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	delete ptr;
}
static value box3d_b3HullData_new () {
	b3HullData* ptr = new b3HullData();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3HullData_gc);
	return retVal;
}
static value box3d_b3HullData_version_get ( value handle ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return cffi::alloc_pointer(&ptr->version);
}
static value box3d_b3HullData_version_set ( value handle, value v ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	memcpy(&ptr->version, (void*)val_data(v), sizeof(uint64_t));
	return cffi::alloc_pointer(&ptr->version);
}
static value box3d_b3HullData_hash_get ( value handle ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return cffi::alloc_pointer(&ptr->hash);
}
static value box3d_b3HullData_hash_set ( value handle, value v ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	memcpy(&ptr->hash, (void*)val_data(v), sizeof(uint64_t));
	return cffi::alloc_pointer(&ptr->hash);
}
static value box3d_b3HullData_aabb_get ( value handle ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return cffi::alloc_pointer(&ptr->aabb);
}
static value box3d_b3HullData_aabb_set ( value handle, value v ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	memcpy(&ptr->aabb, (void*)val_data(v), sizeof(b3AABB));
	return cffi::alloc_pointer(&ptr->aabb);
}
static float box3d_b3HullData_surfaceArea_get ( value handle ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return ptr->surfaceArea;
}
static float box3d_b3HullData_surfaceArea_set ( value handle, float v ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return ptr->surfaceArea = v;
}
static float box3d_b3HullData_volume_get ( value handle ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return ptr->volume;
}
static float box3d_b3HullData_volume_set ( value handle, float v ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return ptr->volume = v;
}
static float box3d_b3HullData_innerRadius_get ( value handle ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return ptr->innerRadius;
}
static float box3d_b3HullData_innerRadius_set ( value handle, float v ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return ptr->innerRadius = v;
}
static value box3d_b3HullData_center_get ( value handle ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return cffi::alloc_pointer(&ptr->center);
}
static value box3d_b3HullData_center_set ( value handle, value v ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	memcpy(&ptr->center, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->center);
}
static value box3d_b3HullData_centralInertia_get ( value handle ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return cffi::alloc_pointer(&ptr->centralInertia);
}
static value box3d_b3HullData_centralInertia_set ( value handle, value v ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	memcpy(&ptr->centralInertia, (void*)val_data(v), sizeof(b3Matrix3));
	return cffi::alloc_pointer(&ptr->centralInertia);
}
static int box3d_b3HullData_vertexCount_get ( value handle ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return ptr->vertexCount;
}
static int box3d_b3HullData_vertexCount_set ( value handle, int v ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return ptr->vertexCount = v;
}
static int box3d_b3HullData_vertexOffset_get ( value handle ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return ptr->vertexOffset;
}
static int box3d_b3HullData_vertexOffset_set ( value handle, int v ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return ptr->vertexOffset = v;
}
static int box3d_b3HullData_pointOffset_get ( value handle ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return ptr->pointOffset;
}
static int box3d_b3HullData_pointOffset_set ( value handle, int v ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return ptr->pointOffset = v;
}
static int box3d_b3HullData_edgeCount_get ( value handle ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return ptr->edgeCount;
}
static int box3d_b3HullData_edgeCount_set ( value handle, int v ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return ptr->edgeCount = v;
}
static int box3d_b3HullData_edgeOffset_get ( value handle ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return ptr->edgeOffset;
}
static int box3d_b3HullData_edgeOffset_set ( value handle, int v ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return ptr->edgeOffset = v;
}
static int box3d_b3HullData_faceCount_get ( value handle ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return ptr->faceCount;
}
static int box3d_b3HullData_faceCount_set ( value handle, int v ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return ptr->faceCount = v;
}
static int box3d_b3HullData_planeOffset_get ( value handle ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return ptr->planeOffset;
}
static int box3d_b3HullData_planeOffset_set ( value handle, int v ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return ptr->planeOffset = v;
}
static int box3d_b3HullData_faceOffset_get ( value handle ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return ptr->faceOffset;
}
static int box3d_b3HullData_faceOffset_set ( value handle, int v ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return ptr->faceOffset = v;
}
static int box3d_b3HullData_soaVertexOffset_get ( value handle ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return ptr->soaVertexOffset;
}
static int box3d_b3HullData_soaVertexOffset_set ( value handle, int v ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return ptr->soaVertexOffset = v;
}
static int box3d_b3HullData_soaNormalOffset_get ( value handle ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return ptr->soaNormalOffset;
}
static int box3d_b3HullData_soaNormalOffset_set ( value handle, int v ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return ptr->soaNormalOffset = v;
}
static int box3d_b3HullData_byteCount_get ( value handle ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return ptr->byteCount;
}
static int box3d_b3HullData_byteCount_set ( value handle, int v ) {
	b3HullData* ptr = (b3HullData*)val_data(handle);
	return ptr->byteCount = v;
}

DEFINE_PRIME0 (box3d_b3HullData_new);
DEFINE_PRIME1 (box3d_b3HullData_version_get);
DEFINE_PRIME2 (box3d_b3HullData_version_set);
DEFINE_PRIME1 (box3d_b3HullData_hash_get);
DEFINE_PRIME2 (box3d_b3HullData_hash_set);
DEFINE_PRIME1 (box3d_b3HullData_aabb_get);
DEFINE_PRIME2 (box3d_b3HullData_aabb_set);
DEFINE_PRIME1 (box3d_b3HullData_surfaceArea_get);
DEFINE_PRIME2 (box3d_b3HullData_surfaceArea_set);
DEFINE_PRIME1 (box3d_b3HullData_volume_get);
DEFINE_PRIME2 (box3d_b3HullData_volume_set);
DEFINE_PRIME1 (box3d_b3HullData_innerRadius_get);
DEFINE_PRIME2 (box3d_b3HullData_innerRadius_set);
DEFINE_PRIME1 (box3d_b3HullData_center_get);
DEFINE_PRIME2 (box3d_b3HullData_center_set);
DEFINE_PRIME1 (box3d_b3HullData_centralInertia_get);
DEFINE_PRIME2 (box3d_b3HullData_centralInertia_set);
DEFINE_PRIME1 (box3d_b3HullData_vertexCount_get);
DEFINE_PRIME2 (box3d_b3HullData_vertexCount_set);
DEFINE_PRIME1 (box3d_b3HullData_vertexOffset_get);
DEFINE_PRIME2 (box3d_b3HullData_vertexOffset_set);
DEFINE_PRIME1 (box3d_b3HullData_pointOffset_get);
DEFINE_PRIME2 (box3d_b3HullData_pointOffset_set);
DEFINE_PRIME1 (box3d_b3HullData_edgeCount_get);
DEFINE_PRIME2 (box3d_b3HullData_edgeCount_set);
DEFINE_PRIME1 (box3d_b3HullData_edgeOffset_get);
DEFINE_PRIME2 (box3d_b3HullData_edgeOffset_set);
DEFINE_PRIME1 (box3d_b3HullData_faceCount_get);
DEFINE_PRIME2 (box3d_b3HullData_faceCount_set);
DEFINE_PRIME1 (box3d_b3HullData_planeOffset_get);
DEFINE_PRIME2 (box3d_b3HullData_planeOffset_set);
DEFINE_PRIME1 (box3d_b3HullData_faceOffset_get);
DEFINE_PRIME2 (box3d_b3HullData_faceOffset_set);
DEFINE_PRIME1 (box3d_b3HullData_soaVertexOffset_get);
DEFINE_PRIME2 (box3d_b3HullData_soaVertexOffset_set);
DEFINE_PRIME1 (box3d_b3HullData_soaNormalOffset_get);
DEFINE_PRIME2 (box3d_b3HullData_soaNormalOffset_set);
DEFINE_PRIME1 (box3d_b3HullData_byteCount_get);
DEFINE_PRIME2 (box3d_b3HullData_byteCount_set);

static void box3d_b3BoxHull_gc (value handle) {
	b3BoxHull* ptr = (b3BoxHull*)val_data(handle);
	delete ptr;
}
static value box3d_b3BoxHull_new () {
	b3BoxHull* ptr = new b3BoxHull();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3BoxHull_gc);
	return retVal;
}
static value box3d_b3BoxHull_base_get ( value handle ) {
	b3BoxHull* ptr = (b3BoxHull*)val_data(handle);
	return cffi::alloc_pointer(&ptr->base);
}
static value box3d_b3BoxHull_base_set ( value handle, value v ) {
	b3BoxHull* ptr = (b3BoxHull*)val_data(handle);
	memcpy(&ptr->base, (void*)val_data(v), sizeof(b3HullData));
	return cffi::alloc_pointer(&ptr->base);
}

DEFINE_PRIME0 (box3d_b3BoxHull_new);
DEFINE_PRIME1 (box3d_b3BoxHull_base_get);
DEFINE_PRIME2 (box3d_b3BoxHull_base_set);

static void box3d_b3MeshDef_gc (value handle) {
	b3MeshDef* ptr = (b3MeshDef*)val_data(handle);
	delete ptr;
}
static value box3d_b3MeshDef_new () {
	b3MeshDef* ptr = new b3MeshDef();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3MeshDef_gc);
	return retVal;
}
static value box3d_b3MeshDef_stride_get ( value handle ) {
	b3MeshDef* ptr = (b3MeshDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->stride);
}
static value box3d_b3MeshDef_stride_set ( value handle, value v ) {
	b3MeshDef* ptr = (b3MeshDef*)val_data(handle);
	memcpy(&ptr->stride, (void*)val_data(v), sizeof(size_t));
	return cffi::alloc_pointer(&ptr->stride);
}
static float box3d_b3MeshDef_weldTolerance_get ( value handle ) {
	b3MeshDef* ptr = (b3MeshDef*)val_data(handle);
	return ptr->weldTolerance;
}
static float box3d_b3MeshDef_weldTolerance_set ( value handle, float v ) {
	b3MeshDef* ptr = (b3MeshDef*)val_data(handle);
	return ptr->weldTolerance = v;
}
static int box3d_b3MeshDef_vertexCount_get ( value handle ) {
	b3MeshDef* ptr = (b3MeshDef*)val_data(handle);
	return ptr->vertexCount;
}
static int box3d_b3MeshDef_vertexCount_set ( value handle, int v ) {
	b3MeshDef* ptr = (b3MeshDef*)val_data(handle);
	return ptr->vertexCount = v;
}
static int box3d_b3MeshDef_triangleCount_get ( value handle ) {
	b3MeshDef* ptr = (b3MeshDef*)val_data(handle);
	return ptr->triangleCount;
}
static int box3d_b3MeshDef_triangleCount_set ( value handle, int v ) {
	b3MeshDef* ptr = (b3MeshDef*)val_data(handle);
	return ptr->triangleCount = v;
}
static bool box3d_b3MeshDef_weldVertices_get ( value handle ) {
	b3MeshDef* ptr = (b3MeshDef*)val_data(handle);
	return ptr->weldVertices;
}
static bool box3d_b3MeshDef_weldVertices_set ( value handle, bool v ) {
	b3MeshDef* ptr = (b3MeshDef*)val_data(handle);
	return ptr->weldVertices = v;
}
static bool box3d_b3MeshDef_useMedianSplit_get ( value handle ) {
	b3MeshDef* ptr = (b3MeshDef*)val_data(handle);
	return ptr->useMedianSplit;
}
static bool box3d_b3MeshDef_useMedianSplit_set ( value handle, bool v ) {
	b3MeshDef* ptr = (b3MeshDef*)val_data(handle);
	return ptr->useMedianSplit = v;
}
static bool box3d_b3MeshDef_identifyEdges_get ( value handle ) {
	b3MeshDef* ptr = (b3MeshDef*)val_data(handle);
	return ptr->identifyEdges;
}
static bool box3d_b3MeshDef_identifyEdges_set ( value handle, bool v ) {
	b3MeshDef* ptr = (b3MeshDef*)val_data(handle);
	return ptr->identifyEdges = v;
}
static bool box3d_b3MeshDef_clockWiseWinding_get ( value handle ) {
	b3MeshDef* ptr = (b3MeshDef*)val_data(handle);
	return ptr->clockWiseWinding;
}
static bool box3d_b3MeshDef_clockWiseWinding_set ( value handle, bool v ) {
	b3MeshDef* ptr = (b3MeshDef*)val_data(handle);
	return ptr->clockWiseWinding = v;
}

DEFINE_PRIME0 (box3d_b3MeshDef_new);
DEFINE_PRIME1 (box3d_b3MeshDef_stride_get);
DEFINE_PRIME2 (box3d_b3MeshDef_stride_set);
DEFINE_PRIME1 (box3d_b3MeshDef_weldTolerance_get);
DEFINE_PRIME2 (box3d_b3MeshDef_weldTolerance_set);
DEFINE_PRIME1 (box3d_b3MeshDef_vertexCount_get);
DEFINE_PRIME2 (box3d_b3MeshDef_vertexCount_set);
DEFINE_PRIME1 (box3d_b3MeshDef_triangleCount_get);
DEFINE_PRIME2 (box3d_b3MeshDef_triangleCount_set);
DEFINE_PRIME1 (box3d_b3MeshDef_weldVertices_get);
DEFINE_PRIME2 (box3d_b3MeshDef_weldVertices_set);
DEFINE_PRIME1 (box3d_b3MeshDef_useMedianSplit_get);
DEFINE_PRIME2 (box3d_b3MeshDef_useMedianSplit_set);
DEFINE_PRIME1 (box3d_b3MeshDef_identifyEdges_get);
DEFINE_PRIME2 (box3d_b3MeshDef_identifyEdges_set);
DEFINE_PRIME1 (box3d_b3MeshDef_clockWiseWinding_get);
DEFINE_PRIME2 (box3d_b3MeshDef_clockWiseWinding_set);

static void box3d_b3MeshTriangle_gc (value handle) {
	b3MeshTriangle* ptr = (b3MeshTriangle*)val_data(handle);
	delete ptr;
}
static value box3d_b3MeshTriangle_new () {
	b3MeshTriangle* ptr = new b3MeshTriangle();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3MeshTriangle_gc);
	return retVal;
}
static int box3d_b3MeshTriangle_index1_get ( value handle ) {
	b3MeshTriangle* ptr = (b3MeshTriangle*)val_data(handle);
	return ptr->index1;
}
static int box3d_b3MeshTriangle_index1_set ( value handle, int v ) {
	b3MeshTriangle* ptr = (b3MeshTriangle*)val_data(handle);
	return ptr->index1 = v;
}
static int box3d_b3MeshTriangle_index2_get ( value handle ) {
	b3MeshTriangle* ptr = (b3MeshTriangle*)val_data(handle);
	return ptr->index2;
}
static int box3d_b3MeshTriangle_index2_set ( value handle, int v ) {
	b3MeshTriangle* ptr = (b3MeshTriangle*)val_data(handle);
	return ptr->index2 = v;
}
static int box3d_b3MeshTriangle_index3_get ( value handle ) {
	b3MeshTriangle* ptr = (b3MeshTriangle*)val_data(handle);
	return ptr->index3;
}
static int box3d_b3MeshTriangle_index3_set ( value handle, int v ) {
	b3MeshTriangle* ptr = (b3MeshTriangle*)val_data(handle);
	return ptr->index3 = v;
}

DEFINE_PRIME0 (box3d_b3MeshTriangle_new);
DEFINE_PRIME1 (box3d_b3MeshTriangle_index1_get);
DEFINE_PRIME2 (box3d_b3MeshTriangle_index1_set);
DEFINE_PRIME1 (box3d_b3MeshTriangle_index2_get);
DEFINE_PRIME2 (box3d_b3MeshTriangle_index2_set);
DEFINE_PRIME1 (box3d_b3MeshTriangle_index3_get);
DEFINE_PRIME2 (box3d_b3MeshTriangle_index3_set);

static void box3d_b3MeshData_gc (value handle) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	delete ptr;
}
static value box3d_b3MeshData_new () {
	b3MeshData* ptr = new b3MeshData();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3MeshData_gc);
	return retVal;
}
static value box3d_b3MeshData_version_get ( value handle ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	return cffi::alloc_pointer(&ptr->version);
}
static value box3d_b3MeshData_version_set ( value handle, value v ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	memcpy(&ptr->version, (void*)val_data(v), sizeof(uint64_t));
	return cffi::alloc_pointer(&ptr->version);
}
static value box3d_b3MeshData_hash_get ( value handle ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	return cffi::alloc_pointer(&ptr->hash);
}
static value box3d_b3MeshData_hash_set ( value handle, value v ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	memcpy(&ptr->hash, (void*)val_data(v), sizeof(uint64_t));
	return cffi::alloc_pointer(&ptr->hash);
}
static int box3d_b3MeshData_byteCount_get ( value handle ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	return ptr->byteCount;
}
static int box3d_b3MeshData_byteCount_set ( value handle, int v ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	return ptr->byteCount = v;
}
static value box3d_b3MeshData_bounds_get ( value handle ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	return cffi::alloc_pointer(&ptr->bounds);
}
static value box3d_b3MeshData_bounds_set ( value handle, value v ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	memcpy(&ptr->bounds, (void*)val_data(v), sizeof(b3AABB));
	return cffi::alloc_pointer(&ptr->bounds);
}
static float box3d_b3MeshData_surfaceArea_get ( value handle ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	return ptr->surfaceArea;
}
static float box3d_b3MeshData_surfaceArea_set ( value handle, float v ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	return ptr->surfaceArea = v;
}
static int box3d_b3MeshData_treeHeight_get ( value handle ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	return ptr->treeHeight;
}
static int box3d_b3MeshData_treeHeight_set ( value handle, int v ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	return ptr->treeHeight = v;
}
static int box3d_b3MeshData_degenerateCount_get ( value handle ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	return ptr->degenerateCount;
}
static int box3d_b3MeshData_degenerateCount_set ( value handle, int v ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	return ptr->degenerateCount = v;
}
static int box3d_b3MeshData_nodeOffset_get ( value handle ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	return ptr->nodeOffset;
}
static int box3d_b3MeshData_nodeOffset_set ( value handle, int v ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	return ptr->nodeOffset = v;
}
static int box3d_b3MeshData_nodeCount_get ( value handle ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	return ptr->nodeCount;
}
static int box3d_b3MeshData_nodeCount_set ( value handle, int v ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	return ptr->nodeCount = v;
}
static int box3d_b3MeshData_vertexOffset_get ( value handle ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	return ptr->vertexOffset;
}
static int box3d_b3MeshData_vertexOffset_set ( value handle, int v ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	return ptr->vertexOffset = v;
}
static int box3d_b3MeshData_vertexCount_get ( value handle ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	return ptr->vertexCount;
}
static int box3d_b3MeshData_vertexCount_set ( value handle, int v ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	return ptr->vertexCount = v;
}
static int box3d_b3MeshData_triangleOffset_get ( value handle ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	return ptr->triangleOffset;
}
static int box3d_b3MeshData_triangleOffset_set ( value handle, int v ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	return ptr->triangleOffset = v;
}
static int box3d_b3MeshData_triangleCount_get ( value handle ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	return ptr->triangleCount;
}
static int box3d_b3MeshData_triangleCount_set ( value handle, int v ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	return ptr->triangleCount = v;
}
static int box3d_b3MeshData_materialOffset_get ( value handle ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	return ptr->materialOffset;
}
static int box3d_b3MeshData_materialOffset_set ( value handle, int v ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	return ptr->materialOffset = v;
}
static int box3d_b3MeshData_materialCount_get ( value handle ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	return ptr->materialCount;
}
static int box3d_b3MeshData_materialCount_set ( value handle, int v ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	return ptr->materialCount = v;
}
static int box3d_b3MeshData_flagsOffset_get ( value handle ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	return ptr->flagsOffset;
}
static int box3d_b3MeshData_flagsOffset_set ( value handle, int v ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	return ptr->flagsOffset = v;
}
static int box3d_b3MeshData_padding_get ( value handle ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	return ptr->padding;
}
static int box3d_b3MeshData_padding_set ( value handle, int v ) {
	b3MeshData* ptr = (b3MeshData*)val_data(handle);
	return ptr->padding = v;
}

DEFINE_PRIME0 (box3d_b3MeshData_new);
DEFINE_PRIME1 (box3d_b3MeshData_version_get);
DEFINE_PRIME2 (box3d_b3MeshData_version_set);
DEFINE_PRIME1 (box3d_b3MeshData_hash_get);
DEFINE_PRIME2 (box3d_b3MeshData_hash_set);
DEFINE_PRIME1 (box3d_b3MeshData_byteCount_get);
DEFINE_PRIME2 (box3d_b3MeshData_byteCount_set);
DEFINE_PRIME1 (box3d_b3MeshData_bounds_get);
DEFINE_PRIME2 (box3d_b3MeshData_bounds_set);
DEFINE_PRIME1 (box3d_b3MeshData_surfaceArea_get);
DEFINE_PRIME2 (box3d_b3MeshData_surfaceArea_set);
DEFINE_PRIME1 (box3d_b3MeshData_treeHeight_get);
DEFINE_PRIME2 (box3d_b3MeshData_treeHeight_set);
DEFINE_PRIME1 (box3d_b3MeshData_degenerateCount_get);
DEFINE_PRIME2 (box3d_b3MeshData_degenerateCount_set);
DEFINE_PRIME1 (box3d_b3MeshData_nodeOffset_get);
DEFINE_PRIME2 (box3d_b3MeshData_nodeOffset_set);
DEFINE_PRIME1 (box3d_b3MeshData_nodeCount_get);
DEFINE_PRIME2 (box3d_b3MeshData_nodeCount_set);
DEFINE_PRIME1 (box3d_b3MeshData_vertexOffset_get);
DEFINE_PRIME2 (box3d_b3MeshData_vertexOffset_set);
DEFINE_PRIME1 (box3d_b3MeshData_vertexCount_get);
DEFINE_PRIME2 (box3d_b3MeshData_vertexCount_set);
DEFINE_PRIME1 (box3d_b3MeshData_triangleOffset_get);
DEFINE_PRIME2 (box3d_b3MeshData_triangleOffset_set);
DEFINE_PRIME1 (box3d_b3MeshData_triangleCount_get);
DEFINE_PRIME2 (box3d_b3MeshData_triangleCount_set);
DEFINE_PRIME1 (box3d_b3MeshData_materialOffset_get);
DEFINE_PRIME2 (box3d_b3MeshData_materialOffset_set);
DEFINE_PRIME1 (box3d_b3MeshData_materialCount_get);
DEFINE_PRIME2 (box3d_b3MeshData_materialCount_set);
DEFINE_PRIME1 (box3d_b3MeshData_flagsOffset_get);
DEFINE_PRIME2 (box3d_b3MeshData_flagsOffset_set);
DEFINE_PRIME1 (box3d_b3MeshData_padding_get);
DEFINE_PRIME2 (box3d_b3MeshData_padding_set);

static void box3d_b3Mesh_gc (value handle) {
	b3Mesh* ptr = (b3Mesh*)val_data(handle);
	delete ptr;
}
static value box3d_b3Mesh_new () {
	b3Mesh* ptr = new b3Mesh();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3Mesh_gc);
	return retVal;
}
static value box3d_b3Mesh_scale_get ( value handle ) {
	b3Mesh* ptr = (b3Mesh*)val_data(handle);
	return cffi::alloc_pointer(&ptr->scale);
}
static value box3d_b3Mesh_scale_set ( value handle, value v ) {
	b3Mesh* ptr = (b3Mesh*)val_data(handle);
	memcpy(&ptr->scale, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->scale);
}

DEFINE_PRIME0 (box3d_b3Mesh_new);
DEFINE_PRIME1 (box3d_b3Mesh_scale_get);
DEFINE_PRIME2 (box3d_b3Mesh_scale_set);

static void box3d_b3HeightFieldDef_gc (value handle) {
	b3HeightFieldDef* ptr = (b3HeightFieldDef*)val_data(handle);
	delete ptr;
}
static value box3d_b3HeightFieldDef_new () {
	b3HeightFieldDef* ptr = new b3HeightFieldDef();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3HeightFieldDef_gc);
	return retVal;
}
static value box3d_b3HeightFieldDef_scale_get ( value handle ) {
	b3HeightFieldDef* ptr = (b3HeightFieldDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->scale);
}
static value box3d_b3HeightFieldDef_scale_set ( value handle, value v ) {
	b3HeightFieldDef* ptr = (b3HeightFieldDef*)val_data(handle);
	memcpy(&ptr->scale, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->scale);
}
static int box3d_b3HeightFieldDef_countX_get ( value handle ) {
	b3HeightFieldDef* ptr = (b3HeightFieldDef*)val_data(handle);
	return ptr->countX;
}
static int box3d_b3HeightFieldDef_countX_set ( value handle, int v ) {
	b3HeightFieldDef* ptr = (b3HeightFieldDef*)val_data(handle);
	return ptr->countX = v;
}
static int box3d_b3HeightFieldDef_countZ_get ( value handle ) {
	b3HeightFieldDef* ptr = (b3HeightFieldDef*)val_data(handle);
	return ptr->countZ;
}
static int box3d_b3HeightFieldDef_countZ_set ( value handle, int v ) {
	b3HeightFieldDef* ptr = (b3HeightFieldDef*)val_data(handle);
	return ptr->countZ = v;
}
static float box3d_b3HeightFieldDef_globalMinimumHeight_get ( value handle ) {
	b3HeightFieldDef* ptr = (b3HeightFieldDef*)val_data(handle);
	return ptr->globalMinimumHeight;
}
static float box3d_b3HeightFieldDef_globalMinimumHeight_set ( value handle, float v ) {
	b3HeightFieldDef* ptr = (b3HeightFieldDef*)val_data(handle);
	return ptr->globalMinimumHeight = v;
}
static float box3d_b3HeightFieldDef_globalMaximumHeight_get ( value handle ) {
	b3HeightFieldDef* ptr = (b3HeightFieldDef*)val_data(handle);
	return ptr->globalMaximumHeight;
}
static float box3d_b3HeightFieldDef_globalMaximumHeight_set ( value handle, float v ) {
	b3HeightFieldDef* ptr = (b3HeightFieldDef*)val_data(handle);
	return ptr->globalMaximumHeight = v;
}
static bool box3d_b3HeightFieldDef_clockwiseWinding_get ( value handle ) {
	b3HeightFieldDef* ptr = (b3HeightFieldDef*)val_data(handle);
	return ptr->clockwiseWinding;
}
static bool box3d_b3HeightFieldDef_clockwiseWinding_set ( value handle, bool v ) {
	b3HeightFieldDef* ptr = (b3HeightFieldDef*)val_data(handle);
	return ptr->clockwiseWinding = v;
}

DEFINE_PRIME0 (box3d_b3HeightFieldDef_new);
DEFINE_PRIME1 (box3d_b3HeightFieldDef_scale_get);
DEFINE_PRIME2 (box3d_b3HeightFieldDef_scale_set);
DEFINE_PRIME1 (box3d_b3HeightFieldDef_countX_get);
DEFINE_PRIME2 (box3d_b3HeightFieldDef_countX_set);
DEFINE_PRIME1 (box3d_b3HeightFieldDef_countZ_get);
DEFINE_PRIME2 (box3d_b3HeightFieldDef_countZ_set);
DEFINE_PRIME1 (box3d_b3HeightFieldDef_globalMinimumHeight_get);
DEFINE_PRIME2 (box3d_b3HeightFieldDef_globalMinimumHeight_set);
DEFINE_PRIME1 (box3d_b3HeightFieldDef_globalMaximumHeight_get);
DEFINE_PRIME2 (box3d_b3HeightFieldDef_globalMaximumHeight_set);
DEFINE_PRIME1 (box3d_b3HeightFieldDef_clockwiseWinding_get);
DEFINE_PRIME2 (box3d_b3HeightFieldDef_clockwiseWinding_set);

static void box3d_b3HeightFieldData_gc (value handle) {
	b3HeightFieldData* ptr = (b3HeightFieldData*)val_data(handle);
	delete ptr;
}
static value box3d_b3HeightFieldData_new () {
	b3HeightFieldData* ptr = new b3HeightFieldData();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3HeightFieldData_gc);
	return retVal;
}
static value box3d_b3HeightFieldData_version_get ( value handle ) {
	b3HeightFieldData* ptr = (b3HeightFieldData*)val_data(handle);
	return cffi::alloc_pointer(&ptr->version);
}
static value box3d_b3HeightFieldData_version_set ( value handle, value v ) {
	b3HeightFieldData* ptr = (b3HeightFieldData*)val_data(handle);
	memcpy(&ptr->version, (void*)val_data(v), sizeof(uint64_t));
	return cffi::alloc_pointer(&ptr->version);
}
static value box3d_b3HeightFieldData_hash_get ( value handle ) {
	b3HeightFieldData* ptr = (b3HeightFieldData*)val_data(handle);
	return cffi::alloc_pointer(&ptr->hash);
}
static value box3d_b3HeightFieldData_hash_set ( value handle, value v ) {
	b3HeightFieldData* ptr = (b3HeightFieldData*)val_data(handle);
	memcpy(&ptr->hash, (void*)val_data(v), sizeof(uint64_t));
	return cffi::alloc_pointer(&ptr->hash);
}
static int box3d_b3HeightFieldData_byteCount_get ( value handle ) {
	b3HeightFieldData* ptr = (b3HeightFieldData*)val_data(handle);
	return ptr->byteCount;
}
static int box3d_b3HeightFieldData_byteCount_set ( value handle, int v ) {
	b3HeightFieldData* ptr = (b3HeightFieldData*)val_data(handle);
	return ptr->byteCount = v;
}
static value box3d_b3HeightFieldData_aabb_get ( value handle ) {
	b3HeightFieldData* ptr = (b3HeightFieldData*)val_data(handle);
	return cffi::alloc_pointer(&ptr->aabb);
}
static value box3d_b3HeightFieldData_aabb_set ( value handle, value v ) {
	b3HeightFieldData* ptr = (b3HeightFieldData*)val_data(handle);
	memcpy(&ptr->aabb, (void*)val_data(v), sizeof(b3AABB));
	return cffi::alloc_pointer(&ptr->aabb);
}
static float box3d_b3HeightFieldData_minHeight_get ( value handle ) {
	b3HeightFieldData* ptr = (b3HeightFieldData*)val_data(handle);
	return ptr->minHeight;
}
static float box3d_b3HeightFieldData_minHeight_set ( value handle, float v ) {
	b3HeightFieldData* ptr = (b3HeightFieldData*)val_data(handle);
	return ptr->minHeight = v;
}
static float box3d_b3HeightFieldData_maxHeight_get ( value handle ) {
	b3HeightFieldData* ptr = (b3HeightFieldData*)val_data(handle);
	return ptr->maxHeight;
}
static float box3d_b3HeightFieldData_maxHeight_set ( value handle, float v ) {
	b3HeightFieldData* ptr = (b3HeightFieldData*)val_data(handle);
	return ptr->maxHeight = v;
}
static float box3d_b3HeightFieldData_heightScale_get ( value handle ) {
	b3HeightFieldData* ptr = (b3HeightFieldData*)val_data(handle);
	return ptr->heightScale;
}
static float box3d_b3HeightFieldData_heightScale_set ( value handle, float v ) {
	b3HeightFieldData* ptr = (b3HeightFieldData*)val_data(handle);
	return ptr->heightScale = v;
}
static value box3d_b3HeightFieldData_scale_get ( value handle ) {
	b3HeightFieldData* ptr = (b3HeightFieldData*)val_data(handle);
	return cffi::alloc_pointer(&ptr->scale);
}
static value box3d_b3HeightFieldData_scale_set ( value handle, value v ) {
	b3HeightFieldData* ptr = (b3HeightFieldData*)val_data(handle);
	memcpy(&ptr->scale, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->scale);
}
static int box3d_b3HeightFieldData_columnCount_get ( value handle ) {
	b3HeightFieldData* ptr = (b3HeightFieldData*)val_data(handle);
	return ptr->columnCount;
}
static int box3d_b3HeightFieldData_columnCount_set ( value handle, int v ) {
	b3HeightFieldData* ptr = (b3HeightFieldData*)val_data(handle);
	return ptr->columnCount = v;
}
static int box3d_b3HeightFieldData_rowCount_get ( value handle ) {
	b3HeightFieldData* ptr = (b3HeightFieldData*)val_data(handle);
	return ptr->rowCount;
}
static int box3d_b3HeightFieldData_rowCount_set ( value handle, int v ) {
	b3HeightFieldData* ptr = (b3HeightFieldData*)val_data(handle);
	return ptr->rowCount = v;
}
static int box3d_b3HeightFieldData_heightsOffset_get ( value handle ) {
	b3HeightFieldData* ptr = (b3HeightFieldData*)val_data(handle);
	return ptr->heightsOffset;
}
static int box3d_b3HeightFieldData_heightsOffset_set ( value handle, int v ) {
	b3HeightFieldData* ptr = (b3HeightFieldData*)val_data(handle);
	return ptr->heightsOffset = v;
}
static int box3d_b3HeightFieldData_materialOffset_get ( value handle ) {
	b3HeightFieldData* ptr = (b3HeightFieldData*)val_data(handle);
	return ptr->materialOffset;
}
static int box3d_b3HeightFieldData_materialOffset_set ( value handle, int v ) {
	b3HeightFieldData* ptr = (b3HeightFieldData*)val_data(handle);
	return ptr->materialOffset = v;
}
static int box3d_b3HeightFieldData_flagsOffset_get ( value handle ) {
	b3HeightFieldData* ptr = (b3HeightFieldData*)val_data(handle);
	return ptr->flagsOffset;
}
static int box3d_b3HeightFieldData_flagsOffset_set ( value handle, int v ) {
	b3HeightFieldData* ptr = (b3HeightFieldData*)val_data(handle);
	return ptr->flagsOffset = v;
}
static int box3d_b3HeightFieldData_clockwise_get ( value handle ) {
	b3HeightFieldData* ptr = (b3HeightFieldData*)val_data(handle);
	return ptr->clockwise;
}
static int box3d_b3HeightFieldData_clockwise_set ( value handle, int v ) {
	b3HeightFieldData* ptr = (b3HeightFieldData*)val_data(handle);
	return ptr->clockwise = v;
}

DEFINE_PRIME0 (box3d_b3HeightFieldData_new);
DEFINE_PRIME1 (box3d_b3HeightFieldData_version_get);
DEFINE_PRIME2 (box3d_b3HeightFieldData_version_set);
DEFINE_PRIME1 (box3d_b3HeightFieldData_hash_get);
DEFINE_PRIME2 (box3d_b3HeightFieldData_hash_set);
DEFINE_PRIME1 (box3d_b3HeightFieldData_byteCount_get);
DEFINE_PRIME2 (box3d_b3HeightFieldData_byteCount_set);
DEFINE_PRIME1 (box3d_b3HeightFieldData_aabb_get);
DEFINE_PRIME2 (box3d_b3HeightFieldData_aabb_set);
DEFINE_PRIME1 (box3d_b3HeightFieldData_minHeight_get);
DEFINE_PRIME2 (box3d_b3HeightFieldData_minHeight_set);
DEFINE_PRIME1 (box3d_b3HeightFieldData_maxHeight_get);
DEFINE_PRIME2 (box3d_b3HeightFieldData_maxHeight_set);
DEFINE_PRIME1 (box3d_b3HeightFieldData_heightScale_get);
DEFINE_PRIME2 (box3d_b3HeightFieldData_heightScale_set);
DEFINE_PRIME1 (box3d_b3HeightFieldData_scale_get);
DEFINE_PRIME2 (box3d_b3HeightFieldData_scale_set);
DEFINE_PRIME1 (box3d_b3HeightFieldData_columnCount_get);
DEFINE_PRIME2 (box3d_b3HeightFieldData_columnCount_set);
DEFINE_PRIME1 (box3d_b3HeightFieldData_rowCount_get);
DEFINE_PRIME2 (box3d_b3HeightFieldData_rowCount_set);
DEFINE_PRIME1 (box3d_b3HeightFieldData_heightsOffset_get);
DEFINE_PRIME2 (box3d_b3HeightFieldData_heightsOffset_set);
DEFINE_PRIME1 (box3d_b3HeightFieldData_materialOffset_get);
DEFINE_PRIME2 (box3d_b3HeightFieldData_materialOffset_set);
DEFINE_PRIME1 (box3d_b3HeightFieldData_flagsOffset_get);
DEFINE_PRIME2 (box3d_b3HeightFieldData_flagsOffset_set);
DEFINE_PRIME1 (box3d_b3HeightFieldData_clockwise_get);
DEFINE_PRIME2 (box3d_b3HeightFieldData_clockwise_set);

static void box3d_b3CompoundCapsuleDef_gc (value handle) {
	b3CompoundCapsuleDef* ptr = (b3CompoundCapsuleDef*)val_data(handle);
	delete ptr;
}
static value box3d_b3CompoundCapsuleDef_new () {
	b3CompoundCapsuleDef* ptr = new b3CompoundCapsuleDef();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3CompoundCapsuleDef_gc);
	return retVal;
}
static value box3d_b3CompoundCapsuleDef_capsule_get ( value handle ) {
	b3CompoundCapsuleDef* ptr = (b3CompoundCapsuleDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->capsule);
}
static value box3d_b3CompoundCapsuleDef_capsule_set ( value handle, value v ) {
	b3CompoundCapsuleDef* ptr = (b3CompoundCapsuleDef*)val_data(handle);
	memcpy(&ptr->capsule, (void*)val_data(v), sizeof(b3Capsule));
	return cffi::alloc_pointer(&ptr->capsule);
}
static value box3d_b3CompoundCapsuleDef_material_get ( value handle ) {
	b3CompoundCapsuleDef* ptr = (b3CompoundCapsuleDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->material);
}
static value box3d_b3CompoundCapsuleDef_material_set ( value handle, value v ) {
	b3CompoundCapsuleDef* ptr = (b3CompoundCapsuleDef*)val_data(handle);
	memcpy(&ptr->material, (void*)val_data(v), sizeof(b3SurfaceMaterial));
	return cffi::alloc_pointer(&ptr->material);
}

DEFINE_PRIME0 (box3d_b3CompoundCapsuleDef_new);
DEFINE_PRIME1 (box3d_b3CompoundCapsuleDef_capsule_get);
DEFINE_PRIME2 (box3d_b3CompoundCapsuleDef_capsule_set);
DEFINE_PRIME1 (box3d_b3CompoundCapsuleDef_material_get);
DEFINE_PRIME2 (box3d_b3CompoundCapsuleDef_material_set);

static void box3d_b3CompoundHullDef_gc (value handle) {
	b3CompoundHullDef* ptr = (b3CompoundHullDef*)val_data(handle);
	delete ptr;
}
static value box3d_b3CompoundHullDef_new () {
	b3CompoundHullDef* ptr = new b3CompoundHullDef();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3CompoundHullDef_gc);
	return retVal;
}
static value box3d_b3CompoundHullDef_transform_get ( value handle ) {
	b3CompoundHullDef* ptr = (b3CompoundHullDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->transform);
}
static value box3d_b3CompoundHullDef_transform_set ( value handle, value v ) {
	b3CompoundHullDef* ptr = (b3CompoundHullDef*)val_data(handle);
	memcpy(&ptr->transform, (void*)val_data(v), sizeof(b3Transform));
	return cffi::alloc_pointer(&ptr->transform);
}
static value box3d_b3CompoundHullDef_material_get ( value handle ) {
	b3CompoundHullDef* ptr = (b3CompoundHullDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->material);
}
static value box3d_b3CompoundHullDef_material_set ( value handle, value v ) {
	b3CompoundHullDef* ptr = (b3CompoundHullDef*)val_data(handle);
	memcpy(&ptr->material, (void*)val_data(v), sizeof(b3SurfaceMaterial));
	return cffi::alloc_pointer(&ptr->material);
}

DEFINE_PRIME0 (box3d_b3CompoundHullDef_new);
DEFINE_PRIME1 (box3d_b3CompoundHullDef_transform_get);
DEFINE_PRIME2 (box3d_b3CompoundHullDef_transform_set);
DEFINE_PRIME1 (box3d_b3CompoundHullDef_material_get);
DEFINE_PRIME2 (box3d_b3CompoundHullDef_material_set);

static void box3d_b3CompoundMeshDef_gc (value handle) {
	b3CompoundMeshDef* ptr = (b3CompoundMeshDef*)val_data(handle);
	delete ptr;
}
static value box3d_b3CompoundMeshDef_new () {
	b3CompoundMeshDef* ptr = new b3CompoundMeshDef();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3CompoundMeshDef_gc);
	return retVal;
}
static value box3d_b3CompoundMeshDef_transform_get ( value handle ) {
	b3CompoundMeshDef* ptr = (b3CompoundMeshDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->transform);
}
static value box3d_b3CompoundMeshDef_transform_set ( value handle, value v ) {
	b3CompoundMeshDef* ptr = (b3CompoundMeshDef*)val_data(handle);
	memcpy(&ptr->transform, (void*)val_data(v), sizeof(b3Transform));
	return cffi::alloc_pointer(&ptr->transform);
}
static value box3d_b3CompoundMeshDef_scale_get ( value handle ) {
	b3CompoundMeshDef* ptr = (b3CompoundMeshDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->scale);
}
static value box3d_b3CompoundMeshDef_scale_set ( value handle, value v ) {
	b3CompoundMeshDef* ptr = (b3CompoundMeshDef*)val_data(handle);
	memcpy(&ptr->scale, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->scale);
}
static int box3d_b3CompoundMeshDef_materialCount_get ( value handle ) {
	b3CompoundMeshDef* ptr = (b3CompoundMeshDef*)val_data(handle);
	return ptr->materialCount;
}
static int box3d_b3CompoundMeshDef_materialCount_set ( value handle, int v ) {
	b3CompoundMeshDef* ptr = (b3CompoundMeshDef*)val_data(handle);
	return ptr->materialCount = v;
}

DEFINE_PRIME0 (box3d_b3CompoundMeshDef_new);
DEFINE_PRIME1 (box3d_b3CompoundMeshDef_transform_get);
DEFINE_PRIME2 (box3d_b3CompoundMeshDef_transform_set);
DEFINE_PRIME1 (box3d_b3CompoundMeshDef_scale_get);
DEFINE_PRIME2 (box3d_b3CompoundMeshDef_scale_set);
DEFINE_PRIME1 (box3d_b3CompoundMeshDef_materialCount_get);
DEFINE_PRIME2 (box3d_b3CompoundMeshDef_materialCount_set);

static void box3d_b3CompoundSphereDef_gc (value handle) {
	b3CompoundSphereDef* ptr = (b3CompoundSphereDef*)val_data(handle);
	delete ptr;
}
static value box3d_b3CompoundSphereDef_new () {
	b3CompoundSphereDef* ptr = new b3CompoundSphereDef();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3CompoundSphereDef_gc);
	return retVal;
}
static value box3d_b3CompoundSphereDef_sphere_get ( value handle ) {
	b3CompoundSphereDef* ptr = (b3CompoundSphereDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->sphere);
}
static value box3d_b3CompoundSphereDef_sphere_set ( value handle, value v ) {
	b3CompoundSphereDef* ptr = (b3CompoundSphereDef*)val_data(handle);
	memcpy(&ptr->sphere, (void*)val_data(v), sizeof(b3Sphere));
	return cffi::alloc_pointer(&ptr->sphere);
}
static value box3d_b3CompoundSphereDef_material_get ( value handle ) {
	b3CompoundSphereDef* ptr = (b3CompoundSphereDef*)val_data(handle);
	return cffi::alloc_pointer(&ptr->material);
}
static value box3d_b3CompoundSphereDef_material_set ( value handle, value v ) {
	b3CompoundSphereDef* ptr = (b3CompoundSphereDef*)val_data(handle);
	memcpy(&ptr->material, (void*)val_data(v), sizeof(b3SurfaceMaterial));
	return cffi::alloc_pointer(&ptr->material);
}

DEFINE_PRIME0 (box3d_b3CompoundSphereDef_new);
DEFINE_PRIME1 (box3d_b3CompoundSphereDef_sphere_get);
DEFINE_PRIME2 (box3d_b3CompoundSphereDef_sphere_set);
DEFINE_PRIME1 (box3d_b3CompoundSphereDef_material_get);
DEFINE_PRIME2 (box3d_b3CompoundSphereDef_material_set);

static void box3d_b3CompoundDef_gc (value handle) {
	b3CompoundDef* ptr = (b3CompoundDef*)val_data(handle);
	delete ptr;
}
static value box3d_b3CompoundDef_new () {
	b3CompoundDef* ptr = new b3CompoundDef();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3CompoundDef_gc);
	return retVal;
}
static int box3d_b3CompoundDef_capsuleCount_get ( value handle ) {
	b3CompoundDef* ptr = (b3CompoundDef*)val_data(handle);
	return ptr->capsuleCount;
}
static int box3d_b3CompoundDef_capsuleCount_set ( value handle, int v ) {
	b3CompoundDef* ptr = (b3CompoundDef*)val_data(handle);
	return ptr->capsuleCount = v;
}
static int box3d_b3CompoundDef_hullCount_get ( value handle ) {
	b3CompoundDef* ptr = (b3CompoundDef*)val_data(handle);
	return ptr->hullCount;
}
static int box3d_b3CompoundDef_hullCount_set ( value handle, int v ) {
	b3CompoundDef* ptr = (b3CompoundDef*)val_data(handle);
	return ptr->hullCount = v;
}
static int box3d_b3CompoundDef_meshCount_get ( value handle ) {
	b3CompoundDef* ptr = (b3CompoundDef*)val_data(handle);
	return ptr->meshCount;
}
static int box3d_b3CompoundDef_meshCount_set ( value handle, int v ) {
	b3CompoundDef* ptr = (b3CompoundDef*)val_data(handle);
	return ptr->meshCount = v;
}
static int box3d_b3CompoundDef_sphereCount_get ( value handle ) {
	b3CompoundDef* ptr = (b3CompoundDef*)val_data(handle);
	return ptr->sphereCount;
}
static int box3d_b3CompoundDef_sphereCount_set ( value handle, int v ) {
	b3CompoundDef* ptr = (b3CompoundDef*)val_data(handle);
	return ptr->sphereCount = v;
}

DEFINE_PRIME0 (box3d_b3CompoundDef_new);
DEFINE_PRIME1 (box3d_b3CompoundDef_capsuleCount_get);
DEFINE_PRIME2 (box3d_b3CompoundDef_capsuleCount_set);
DEFINE_PRIME1 (box3d_b3CompoundDef_hullCount_get);
DEFINE_PRIME2 (box3d_b3CompoundDef_hullCount_set);
DEFINE_PRIME1 (box3d_b3CompoundDef_meshCount_get);
DEFINE_PRIME2 (box3d_b3CompoundDef_meshCount_set);
DEFINE_PRIME1 (box3d_b3CompoundDef_sphereCount_get);
DEFINE_PRIME2 (box3d_b3CompoundDef_sphereCount_set);

static void box3d_b3CompoundData_gc (value handle) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	delete ptr;
}
static value box3d_b3CompoundData_new () {
	b3CompoundData* ptr = new b3CompoundData();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3CompoundData_gc);
	return retVal;
}
static value box3d_b3CompoundData_version_get ( value handle ) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	return cffi::alloc_pointer(&ptr->version);
}
static value box3d_b3CompoundData_version_set ( value handle, value v ) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	memcpy(&ptr->version, (void*)val_data(v), sizeof(uint64_t));
	return cffi::alloc_pointer(&ptr->version);
}
static int box3d_b3CompoundData_byteCount_get ( value handle ) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	return ptr->byteCount;
}
static int box3d_b3CompoundData_byteCount_set ( value handle, int v ) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	return ptr->byteCount = v;
}
static int box3d_b3CompoundData_nodeOffset_get ( value handle ) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	return ptr->nodeOffset;
}
static int box3d_b3CompoundData_nodeOffset_set ( value handle, int v ) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	return ptr->nodeOffset = v;
}
static value box3d_b3CompoundData_tree_get ( value handle ) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	return cffi::alloc_pointer(&ptr->tree);
}
static value box3d_b3CompoundData_tree_set ( value handle, value v ) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	memcpy(&ptr->tree, (void*)val_data(v), sizeof(b3DynamicTree));
	return cffi::alloc_pointer(&ptr->tree);
}
static int box3d_b3CompoundData_materialOffset_get ( value handle ) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	return ptr->materialOffset;
}
static int box3d_b3CompoundData_materialOffset_set ( value handle, int v ) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	return ptr->materialOffset = v;
}
static int box3d_b3CompoundData_materialCount_get ( value handle ) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	return ptr->materialCount;
}
static int box3d_b3CompoundData_materialCount_set ( value handle, int v ) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	return ptr->materialCount = v;
}
static int box3d_b3CompoundData_capsuleOffset_get ( value handle ) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	return ptr->capsuleOffset;
}
static int box3d_b3CompoundData_capsuleOffset_set ( value handle, int v ) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	return ptr->capsuleOffset = v;
}
static int box3d_b3CompoundData_capsuleCount_get ( value handle ) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	return ptr->capsuleCount;
}
static int box3d_b3CompoundData_capsuleCount_set ( value handle, int v ) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	return ptr->capsuleCount = v;
}
static int box3d_b3CompoundData_hullOffset_get ( value handle ) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	return ptr->hullOffset;
}
static int box3d_b3CompoundData_hullOffset_set ( value handle, int v ) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	return ptr->hullOffset = v;
}
static int box3d_b3CompoundData_hullCount_get ( value handle ) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	return ptr->hullCount;
}
static int box3d_b3CompoundData_hullCount_set ( value handle, int v ) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	return ptr->hullCount = v;
}
static int box3d_b3CompoundData_sharedHullCount_get ( value handle ) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	return ptr->sharedHullCount;
}
static int box3d_b3CompoundData_sharedHullCount_set ( value handle, int v ) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	return ptr->sharedHullCount = v;
}
static int box3d_b3CompoundData_meshOffset_get ( value handle ) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	return ptr->meshOffset;
}
static int box3d_b3CompoundData_meshOffset_set ( value handle, int v ) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	return ptr->meshOffset = v;
}
static int box3d_b3CompoundData_meshCount_get ( value handle ) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	return ptr->meshCount;
}
static int box3d_b3CompoundData_meshCount_set ( value handle, int v ) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	return ptr->meshCount = v;
}
static int box3d_b3CompoundData_sharedMeshCount_get ( value handle ) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	return ptr->sharedMeshCount;
}
static int box3d_b3CompoundData_sharedMeshCount_set ( value handle, int v ) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	return ptr->sharedMeshCount = v;
}
static int box3d_b3CompoundData_sphereOffset_get ( value handle ) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	return ptr->sphereOffset;
}
static int box3d_b3CompoundData_sphereOffset_set ( value handle, int v ) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	return ptr->sphereOffset = v;
}
static int box3d_b3CompoundData_sphereCount_get ( value handle ) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	return ptr->sphereCount;
}
static int box3d_b3CompoundData_sphereCount_set ( value handle, int v ) {
	b3CompoundData* ptr = (b3CompoundData*)val_data(handle);
	return ptr->sphereCount = v;
}

DEFINE_PRIME0 (box3d_b3CompoundData_new);
DEFINE_PRIME1 (box3d_b3CompoundData_version_get);
DEFINE_PRIME2 (box3d_b3CompoundData_version_set);
DEFINE_PRIME1 (box3d_b3CompoundData_byteCount_get);
DEFINE_PRIME2 (box3d_b3CompoundData_byteCount_set);
DEFINE_PRIME1 (box3d_b3CompoundData_nodeOffset_get);
DEFINE_PRIME2 (box3d_b3CompoundData_nodeOffset_set);
DEFINE_PRIME1 (box3d_b3CompoundData_tree_get);
DEFINE_PRIME2 (box3d_b3CompoundData_tree_set);
DEFINE_PRIME1 (box3d_b3CompoundData_materialOffset_get);
DEFINE_PRIME2 (box3d_b3CompoundData_materialOffset_set);
DEFINE_PRIME1 (box3d_b3CompoundData_materialCount_get);
DEFINE_PRIME2 (box3d_b3CompoundData_materialCount_set);
DEFINE_PRIME1 (box3d_b3CompoundData_capsuleOffset_get);
DEFINE_PRIME2 (box3d_b3CompoundData_capsuleOffset_set);
DEFINE_PRIME1 (box3d_b3CompoundData_capsuleCount_get);
DEFINE_PRIME2 (box3d_b3CompoundData_capsuleCount_set);
DEFINE_PRIME1 (box3d_b3CompoundData_hullOffset_get);
DEFINE_PRIME2 (box3d_b3CompoundData_hullOffset_set);
DEFINE_PRIME1 (box3d_b3CompoundData_hullCount_get);
DEFINE_PRIME2 (box3d_b3CompoundData_hullCount_set);
DEFINE_PRIME1 (box3d_b3CompoundData_sharedHullCount_get);
DEFINE_PRIME2 (box3d_b3CompoundData_sharedHullCount_set);
DEFINE_PRIME1 (box3d_b3CompoundData_meshOffset_get);
DEFINE_PRIME2 (box3d_b3CompoundData_meshOffset_set);
DEFINE_PRIME1 (box3d_b3CompoundData_meshCount_get);
DEFINE_PRIME2 (box3d_b3CompoundData_meshCount_set);
DEFINE_PRIME1 (box3d_b3CompoundData_sharedMeshCount_get);
DEFINE_PRIME2 (box3d_b3CompoundData_sharedMeshCount_set);
DEFINE_PRIME1 (box3d_b3CompoundData_sphereOffset_get);
DEFINE_PRIME2 (box3d_b3CompoundData_sphereOffset_set);
DEFINE_PRIME1 (box3d_b3CompoundData_sphereCount_get);
DEFINE_PRIME2 (box3d_b3CompoundData_sphereCount_set);

static void box3d_b3CompoundCapsule_gc (value handle) {
	b3CompoundCapsule* ptr = (b3CompoundCapsule*)val_data(handle);
	delete ptr;
}
static value box3d_b3CompoundCapsule_new () {
	b3CompoundCapsule* ptr = new b3CompoundCapsule();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3CompoundCapsule_gc);
	return retVal;
}
static value box3d_b3CompoundCapsule_capsule_get ( value handle ) {
	b3CompoundCapsule* ptr = (b3CompoundCapsule*)val_data(handle);
	return cffi::alloc_pointer(&ptr->capsule);
}
static value box3d_b3CompoundCapsule_capsule_set ( value handle, value v ) {
	b3CompoundCapsule* ptr = (b3CompoundCapsule*)val_data(handle);
	memcpy(&ptr->capsule, (void*)val_data(v), sizeof(b3Capsule));
	return cffi::alloc_pointer(&ptr->capsule);
}
static int box3d_b3CompoundCapsule_materialIndex_get ( value handle ) {
	b3CompoundCapsule* ptr = (b3CompoundCapsule*)val_data(handle);
	return ptr->materialIndex;
}
static int box3d_b3CompoundCapsule_materialIndex_set ( value handle, int v ) {
	b3CompoundCapsule* ptr = (b3CompoundCapsule*)val_data(handle);
	return ptr->materialIndex = v;
}

DEFINE_PRIME0 (box3d_b3CompoundCapsule_new);
DEFINE_PRIME1 (box3d_b3CompoundCapsule_capsule_get);
DEFINE_PRIME2 (box3d_b3CompoundCapsule_capsule_set);
DEFINE_PRIME1 (box3d_b3CompoundCapsule_materialIndex_get);
DEFINE_PRIME2 (box3d_b3CompoundCapsule_materialIndex_set);

static void box3d_b3CompoundHull_gc (value handle) {
	b3CompoundHull* ptr = (b3CompoundHull*)val_data(handle);
	delete ptr;
}
static value box3d_b3CompoundHull_new () {
	b3CompoundHull* ptr = new b3CompoundHull();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3CompoundHull_gc);
	return retVal;
}
static value box3d_b3CompoundHull_transform_get ( value handle ) {
	b3CompoundHull* ptr = (b3CompoundHull*)val_data(handle);
	return cffi::alloc_pointer(&ptr->transform);
}
static value box3d_b3CompoundHull_transform_set ( value handle, value v ) {
	b3CompoundHull* ptr = (b3CompoundHull*)val_data(handle);
	memcpy(&ptr->transform, (void*)val_data(v), sizeof(b3Transform));
	return cffi::alloc_pointer(&ptr->transform);
}
static int box3d_b3CompoundHull_materialIndex_get ( value handle ) {
	b3CompoundHull* ptr = (b3CompoundHull*)val_data(handle);
	return ptr->materialIndex;
}
static int box3d_b3CompoundHull_materialIndex_set ( value handle, int v ) {
	b3CompoundHull* ptr = (b3CompoundHull*)val_data(handle);
	return ptr->materialIndex = v;
}

DEFINE_PRIME0 (box3d_b3CompoundHull_new);
DEFINE_PRIME1 (box3d_b3CompoundHull_transform_get);
DEFINE_PRIME2 (box3d_b3CompoundHull_transform_set);
DEFINE_PRIME1 (box3d_b3CompoundHull_materialIndex_get);
DEFINE_PRIME2 (box3d_b3CompoundHull_materialIndex_set);

static void box3d_b3CompoundMesh_gc (value handle) {
	b3CompoundMesh* ptr = (b3CompoundMesh*)val_data(handle);
	delete ptr;
}
static value box3d_b3CompoundMesh_new () {
	b3CompoundMesh* ptr = new b3CompoundMesh();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3CompoundMesh_gc);
	return retVal;
}
static value box3d_b3CompoundMesh_transform_get ( value handle ) {
	b3CompoundMesh* ptr = (b3CompoundMesh*)val_data(handle);
	return cffi::alloc_pointer(&ptr->transform);
}
static value box3d_b3CompoundMesh_transform_set ( value handle, value v ) {
	b3CompoundMesh* ptr = (b3CompoundMesh*)val_data(handle);
	memcpy(&ptr->transform, (void*)val_data(v), sizeof(b3Transform));
	return cffi::alloc_pointer(&ptr->transform);
}
static value box3d_b3CompoundMesh_scale_get ( value handle ) {
	b3CompoundMesh* ptr = (b3CompoundMesh*)val_data(handle);
	return cffi::alloc_pointer(&ptr->scale);
}
static value box3d_b3CompoundMesh_scale_set ( value handle, value v ) {
	b3CompoundMesh* ptr = (b3CompoundMesh*)val_data(handle);
	memcpy(&ptr->scale, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->scale);
}

DEFINE_PRIME0 (box3d_b3CompoundMesh_new);
DEFINE_PRIME1 (box3d_b3CompoundMesh_transform_get);
DEFINE_PRIME2 (box3d_b3CompoundMesh_transform_set);
DEFINE_PRIME1 (box3d_b3CompoundMesh_scale_get);
DEFINE_PRIME2 (box3d_b3CompoundMesh_scale_set);

static void box3d_b3CompoundSphere_gc (value handle) {
	b3CompoundSphere* ptr = (b3CompoundSphere*)val_data(handle);
	delete ptr;
}
static value box3d_b3CompoundSphere_new () {
	b3CompoundSphere* ptr = new b3CompoundSphere();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3CompoundSphere_gc);
	return retVal;
}
static value box3d_b3CompoundSphere_sphere_get ( value handle ) {
	b3CompoundSphere* ptr = (b3CompoundSphere*)val_data(handle);
	return cffi::alloc_pointer(&ptr->sphere);
}
static value box3d_b3CompoundSphere_sphere_set ( value handle, value v ) {
	b3CompoundSphere* ptr = (b3CompoundSphere*)val_data(handle);
	memcpy(&ptr->sphere, (void*)val_data(v), sizeof(b3Sphere));
	return cffi::alloc_pointer(&ptr->sphere);
}
static int box3d_b3CompoundSphere_materialIndex_get ( value handle ) {
	b3CompoundSphere* ptr = (b3CompoundSphere*)val_data(handle);
	return ptr->materialIndex;
}
static int box3d_b3CompoundSphere_materialIndex_set ( value handle, int v ) {
	b3CompoundSphere* ptr = (b3CompoundSphere*)val_data(handle);
	return ptr->materialIndex = v;
}

DEFINE_PRIME0 (box3d_b3CompoundSphere_new);
DEFINE_PRIME1 (box3d_b3CompoundSphere_sphere_get);
DEFINE_PRIME2 (box3d_b3CompoundSphere_sphere_set);
DEFINE_PRIME1 (box3d_b3CompoundSphere_materialIndex_get);
DEFINE_PRIME2 (box3d_b3CompoundSphere_materialIndex_set);

static void box3d_b3ChildShape_gc (value handle) {
	b3ChildShape* ptr = (b3ChildShape*)val_data(handle);
	delete ptr;
}
static value box3d_b3ChildShape_new () {
	b3ChildShape* ptr = new b3ChildShape();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3ChildShape_gc);
	return retVal;
}
static value box3d_b3ChildShape_capsule_get ( value handle ) {
	b3ChildShape* ptr = (b3ChildShape*)val_data(handle);
	return cffi::alloc_pointer(&ptr->capsule);
}
static value box3d_b3ChildShape_capsule_set ( value handle, value v ) {
	b3ChildShape* ptr = (b3ChildShape*)val_data(handle);
	memcpy(&ptr->capsule, (void*)val_data(v), sizeof(b3Capsule));
	return cffi::alloc_pointer(&ptr->capsule);
}
static value box3d_b3ChildShape_mesh_get ( value handle ) {
	b3ChildShape* ptr = (b3ChildShape*)val_data(handle);
	return cffi::alloc_pointer(&ptr->mesh);
}
static value box3d_b3ChildShape_mesh_set ( value handle, value v ) {
	b3ChildShape* ptr = (b3ChildShape*)val_data(handle);
	memcpy(&ptr->mesh, (void*)val_data(v), sizeof(b3Mesh));
	return cffi::alloc_pointer(&ptr->mesh);
}
static value box3d_b3ChildShape_sphere_get ( value handle ) {
	b3ChildShape* ptr = (b3ChildShape*)val_data(handle);
	return cffi::alloc_pointer(&ptr->sphere);
}
static value box3d_b3ChildShape_sphere_set ( value handle, value v ) {
	b3ChildShape* ptr = (b3ChildShape*)val_data(handle);
	memcpy(&ptr->sphere, (void*)val_data(v), sizeof(b3Sphere));
	return cffi::alloc_pointer(&ptr->sphere);
}
static value box3d_b3ChildShape_transform_get ( value handle ) {
	b3ChildShape* ptr = (b3ChildShape*)val_data(handle);
	return cffi::alloc_pointer(&ptr->transform);
}
static value box3d_b3ChildShape_transform_set ( value handle, value v ) {
	b3ChildShape* ptr = (b3ChildShape*)val_data(handle);
	memcpy(&ptr->transform, (void*)val_data(v), sizeof(b3Transform));
	return cffi::alloc_pointer(&ptr->transform);
}
static int box3d_b3ChildShape_type_get ( value handle ) {
	b3ChildShape* ptr = (b3ChildShape*)val_data(handle);
	return ptr->type;
}
static int box3d_b3ChildShape_type_set ( value handle, int v ) {
	b3ChildShape* ptr = (b3ChildShape*)val_data(handle);
	return ptr->type = (b3ShapeType)v;
}

DEFINE_PRIME0 (box3d_b3ChildShape_new);
DEFINE_PRIME1 (box3d_b3ChildShape_capsule_get);
DEFINE_PRIME2 (box3d_b3ChildShape_capsule_set);
DEFINE_PRIME1 (box3d_b3ChildShape_mesh_get);
DEFINE_PRIME2 (box3d_b3ChildShape_mesh_set);
DEFINE_PRIME1 (box3d_b3ChildShape_sphere_get);
DEFINE_PRIME2 (box3d_b3ChildShape_sphere_set);
DEFINE_PRIME1 (box3d_b3ChildShape_transform_get);
DEFINE_PRIME2 (box3d_b3ChildShape_transform_set);
DEFINE_PRIME1 (box3d_b3ChildShape_type_get);
DEFINE_PRIME2 (box3d_b3ChildShape_type_set);

static void box3d_b3ManifoldPoint_gc (value handle) {
	b3ManifoldPoint* ptr = (b3ManifoldPoint*)val_data(handle);
	delete ptr;
}
static value box3d_b3ManifoldPoint_new () {
	b3ManifoldPoint* ptr = new b3ManifoldPoint();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3ManifoldPoint_gc);
	return retVal;
}
static value box3d_b3ManifoldPoint_anchorA_get ( value handle ) {
	b3ManifoldPoint* ptr = (b3ManifoldPoint*)val_data(handle);
	return cffi::alloc_pointer(&ptr->anchorA);
}
static value box3d_b3ManifoldPoint_anchorA_set ( value handle, value v ) {
	b3ManifoldPoint* ptr = (b3ManifoldPoint*)val_data(handle);
	memcpy(&ptr->anchorA, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->anchorA);
}
static value box3d_b3ManifoldPoint_anchorB_get ( value handle ) {
	b3ManifoldPoint* ptr = (b3ManifoldPoint*)val_data(handle);
	return cffi::alloc_pointer(&ptr->anchorB);
}
static value box3d_b3ManifoldPoint_anchorB_set ( value handle, value v ) {
	b3ManifoldPoint* ptr = (b3ManifoldPoint*)val_data(handle);
	memcpy(&ptr->anchorB, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->anchorB);
}
static float box3d_b3ManifoldPoint_separation_get ( value handle ) {
	b3ManifoldPoint* ptr = (b3ManifoldPoint*)val_data(handle);
	return ptr->separation;
}
static float box3d_b3ManifoldPoint_separation_set ( value handle, float v ) {
	b3ManifoldPoint* ptr = (b3ManifoldPoint*)val_data(handle);
	return ptr->separation = v;
}
static float box3d_b3ManifoldPoint_baseSeparation_get ( value handle ) {
	b3ManifoldPoint* ptr = (b3ManifoldPoint*)val_data(handle);
	return ptr->baseSeparation;
}
static float box3d_b3ManifoldPoint_baseSeparation_set ( value handle, float v ) {
	b3ManifoldPoint* ptr = (b3ManifoldPoint*)val_data(handle);
	return ptr->baseSeparation = v;
}
static float box3d_b3ManifoldPoint_normalImpulse_get ( value handle ) {
	b3ManifoldPoint* ptr = (b3ManifoldPoint*)val_data(handle);
	return ptr->normalImpulse;
}
static float box3d_b3ManifoldPoint_normalImpulse_set ( value handle, float v ) {
	b3ManifoldPoint* ptr = (b3ManifoldPoint*)val_data(handle);
	return ptr->normalImpulse = v;
}
static float box3d_b3ManifoldPoint_totalNormalImpulse_get ( value handle ) {
	b3ManifoldPoint* ptr = (b3ManifoldPoint*)val_data(handle);
	return ptr->totalNormalImpulse;
}
static float box3d_b3ManifoldPoint_totalNormalImpulse_set ( value handle, float v ) {
	b3ManifoldPoint* ptr = (b3ManifoldPoint*)val_data(handle);
	return ptr->totalNormalImpulse = v;
}
static float box3d_b3ManifoldPoint_normalVelocity_get ( value handle ) {
	b3ManifoldPoint* ptr = (b3ManifoldPoint*)val_data(handle);
	return ptr->normalVelocity;
}
static float box3d_b3ManifoldPoint_normalVelocity_set ( value handle, float v ) {
	b3ManifoldPoint* ptr = (b3ManifoldPoint*)val_data(handle);
	return ptr->normalVelocity = v;
}
static int box3d_b3ManifoldPoint_featureId_get ( value handle ) {
	b3ManifoldPoint* ptr = (b3ManifoldPoint*)val_data(handle);
	return ptr->featureId;
}
static int box3d_b3ManifoldPoint_featureId_set ( value handle, int v ) {
	b3ManifoldPoint* ptr = (b3ManifoldPoint*)val_data(handle);
	return ptr->featureId = v;
}
static int box3d_b3ManifoldPoint_triangleIndex_get ( value handle ) {
	b3ManifoldPoint* ptr = (b3ManifoldPoint*)val_data(handle);
	return ptr->triangleIndex;
}
static int box3d_b3ManifoldPoint_triangleIndex_set ( value handle, int v ) {
	b3ManifoldPoint* ptr = (b3ManifoldPoint*)val_data(handle);
	return ptr->triangleIndex = v;
}
static bool box3d_b3ManifoldPoint_persisted_get ( value handle ) {
	b3ManifoldPoint* ptr = (b3ManifoldPoint*)val_data(handle);
	return ptr->persisted;
}
static bool box3d_b3ManifoldPoint_persisted_set ( value handle, bool v ) {
	b3ManifoldPoint* ptr = (b3ManifoldPoint*)val_data(handle);
	return ptr->persisted = v;
}

DEFINE_PRIME0 (box3d_b3ManifoldPoint_new);
DEFINE_PRIME1 (box3d_b3ManifoldPoint_anchorA_get);
DEFINE_PRIME2 (box3d_b3ManifoldPoint_anchorA_set);
DEFINE_PRIME1 (box3d_b3ManifoldPoint_anchorB_get);
DEFINE_PRIME2 (box3d_b3ManifoldPoint_anchorB_set);
DEFINE_PRIME1 (box3d_b3ManifoldPoint_separation_get);
DEFINE_PRIME2 (box3d_b3ManifoldPoint_separation_set);
DEFINE_PRIME1 (box3d_b3ManifoldPoint_baseSeparation_get);
DEFINE_PRIME2 (box3d_b3ManifoldPoint_baseSeparation_set);
DEFINE_PRIME1 (box3d_b3ManifoldPoint_normalImpulse_get);
DEFINE_PRIME2 (box3d_b3ManifoldPoint_normalImpulse_set);
DEFINE_PRIME1 (box3d_b3ManifoldPoint_totalNormalImpulse_get);
DEFINE_PRIME2 (box3d_b3ManifoldPoint_totalNormalImpulse_set);
DEFINE_PRIME1 (box3d_b3ManifoldPoint_normalVelocity_get);
DEFINE_PRIME2 (box3d_b3ManifoldPoint_normalVelocity_set);
DEFINE_PRIME1 (box3d_b3ManifoldPoint_featureId_get);
DEFINE_PRIME2 (box3d_b3ManifoldPoint_featureId_set);
DEFINE_PRIME1 (box3d_b3ManifoldPoint_triangleIndex_get);
DEFINE_PRIME2 (box3d_b3ManifoldPoint_triangleIndex_set);
DEFINE_PRIME1 (box3d_b3ManifoldPoint_persisted_get);
DEFINE_PRIME2 (box3d_b3ManifoldPoint_persisted_set);

static void box3d_b3Manifold_gc (value handle) {
	b3Manifold* ptr = (b3Manifold*)val_data(handle);
	delete ptr;
}
static value box3d_b3Manifold_new () {
	b3Manifold* ptr = new b3Manifold();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3Manifold_gc);
	return retVal;
}
static value box3d_b3Manifold_normal_get ( value handle ) {
	b3Manifold* ptr = (b3Manifold*)val_data(handle);
	return cffi::alloc_pointer(&ptr->normal);
}
static value box3d_b3Manifold_normal_set ( value handle, value v ) {
	b3Manifold* ptr = (b3Manifold*)val_data(handle);
	memcpy(&ptr->normal, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->normal);
}
static float box3d_b3Manifold_twistImpulse_get ( value handle ) {
	b3Manifold* ptr = (b3Manifold*)val_data(handle);
	return ptr->twistImpulse;
}
static float box3d_b3Manifold_twistImpulse_set ( value handle, float v ) {
	b3Manifold* ptr = (b3Manifold*)val_data(handle);
	return ptr->twistImpulse = v;
}
static value box3d_b3Manifold_frictionImpulse_get ( value handle ) {
	b3Manifold* ptr = (b3Manifold*)val_data(handle);
	return cffi::alloc_pointer(&ptr->frictionImpulse);
}
static value box3d_b3Manifold_frictionImpulse_set ( value handle, value v ) {
	b3Manifold* ptr = (b3Manifold*)val_data(handle);
	memcpy(&ptr->frictionImpulse, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->frictionImpulse);
}
static value box3d_b3Manifold_rollingImpulse_get ( value handle ) {
	b3Manifold* ptr = (b3Manifold*)val_data(handle);
	return cffi::alloc_pointer(&ptr->rollingImpulse);
}
static value box3d_b3Manifold_rollingImpulse_set ( value handle, value v ) {
	b3Manifold* ptr = (b3Manifold*)val_data(handle);
	memcpy(&ptr->rollingImpulse, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->rollingImpulse);
}
static int box3d_b3Manifold_pointCount_get ( value handle ) {
	b3Manifold* ptr = (b3Manifold*)val_data(handle);
	return ptr->pointCount;
}
static int box3d_b3Manifold_pointCount_set ( value handle, int v ) {
	b3Manifold* ptr = (b3Manifold*)val_data(handle);
	return ptr->pointCount = v;
}

DEFINE_PRIME0 (box3d_b3Manifold_new);
DEFINE_PRIME1 (box3d_b3Manifold_normal_get);
DEFINE_PRIME2 (box3d_b3Manifold_normal_set);
DEFINE_PRIME1 (box3d_b3Manifold_twistImpulse_get);
DEFINE_PRIME2 (box3d_b3Manifold_twistImpulse_set);
DEFINE_PRIME1 (box3d_b3Manifold_frictionImpulse_get);
DEFINE_PRIME2 (box3d_b3Manifold_frictionImpulse_set);
DEFINE_PRIME1 (box3d_b3Manifold_rollingImpulse_get);
DEFINE_PRIME2 (box3d_b3Manifold_rollingImpulse_set);
DEFINE_PRIME1 (box3d_b3Manifold_pointCount_get);
DEFINE_PRIME2 (box3d_b3Manifold_pointCount_set);

static void box3d_b3SATCache_gc (value handle) {
	b3SATCache* ptr = (b3SATCache*)val_data(handle);
	delete ptr;
}
static value box3d_b3SATCache_new () {
	b3SATCache* ptr = new b3SATCache();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3SATCache_gc);
	return retVal;
}
static float box3d_b3SATCache_separation_get ( value handle ) {
	b3SATCache* ptr = (b3SATCache*)val_data(handle);
	return ptr->separation;
}
static float box3d_b3SATCache_separation_set ( value handle, float v ) {
	b3SATCache* ptr = (b3SATCache*)val_data(handle);
	return ptr->separation = v;
}
static int box3d_b3SATCache_type_get ( value handle ) {
	b3SATCache* ptr = (b3SATCache*)val_data(handle);
	return ptr->type;
}
static int box3d_b3SATCache_type_set ( value handle, int v ) {
	b3SATCache* ptr = (b3SATCache*)val_data(handle);
	return ptr->type = v;
}
static int box3d_b3SATCache_indexA_get ( value handle ) {
	b3SATCache* ptr = (b3SATCache*)val_data(handle);
	return ptr->indexA;
}
static int box3d_b3SATCache_indexA_set ( value handle, int v ) {
	b3SATCache* ptr = (b3SATCache*)val_data(handle);
	return ptr->indexA = v;
}
static int box3d_b3SATCache_indexB_get ( value handle ) {
	b3SATCache* ptr = (b3SATCache*)val_data(handle);
	return ptr->indexB;
}
static int box3d_b3SATCache_indexB_set ( value handle, int v ) {
	b3SATCache* ptr = (b3SATCache*)val_data(handle);
	return ptr->indexB = v;
}
static int box3d_b3SATCache_hit_get ( value handle ) {
	b3SATCache* ptr = (b3SATCache*)val_data(handle);
	return ptr->hit;
}
static int box3d_b3SATCache_hit_set ( value handle, int v ) {
	b3SATCache* ptr = (b3SATCache*)val_data(handle);
	return ptr->hit = v;
}

DEFINE_PRIME0 (box3d_b3SATCache_new);
DEFINE_PRIME1 (box3d_b3SATCache_separation_get);
DEFINE_PRIME2 (box3d_b3SATCache_separation_set);
DEFINE_PRIME1 (box3d_b3SATCache_type_get);
DEFINE_PRIME2 (box3d_b3SATCache_type_set);
DEFINE_PRIME1 (box3d_b3SATCache_indexA_get);
DEFINE_PRIME2 (box3d_b3SATCache_indexA_set);
DEFINE_PRIME1 (box3d_b3SATCache_indexB_get);
DEFINE_PRIME2 (box3d_b3SATCache_indexB_set);
DEFINE_PRIME1 (box3d_b3SATCache_hit_get);
DEFINE_PRIME2 (box3d_b3SATCache_hit_set);

static void box3d_b3FeaturePair_gc (value handle) {
	b3FeaturePair* ptr = (b3FeaturePair*)val_data(handle);
	delete ptr;
}
static value box3d_b3FeaturePair_new () {
	b3FeaturePair* ptr = new b3FeaturePair();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3FeaturePair_gc);
	return retVal;
}
static int box3d_b3FeaturePair_owner1_get ( value handle ) {
	b3FeaturePair* ptr = (b3FeaturePair*)val_data(handle);
	return ptr->owner1;
}
static int box3d_b3FeaturePair_owner1_set ( value handle, int v ) {
	b3FeaturePair* ptr = (b3FeaturePair*)val_data(handle);
	return ptr->owner1 = v;
}
static int box3d_b3FeaturePair_index1_get ( value handle ) {
	b3FeaturePair* ptr = (b3FeaturePair*)val_data(handle);
	return ptr->index1;
}
static int box3d_b3FeaturePair_index1_set ( value handle, int v ) {
	b3FeaturePair* ptr = (b3FeaturePair*)val_data(handle);
	return ptr->index1 = v;
}
static int box3d_b3FeaturePair_owner2_get ( value handle ) {
	b3FeaturePair* ptr = (b3FeaturePair*)val_data(handle);
	return ptr->owner2;
}
static int box3d_b3FeaturePair_owner2_set ( value handle, int v ) {
	b3FeaturePair* ptr = (b3FeaturePair*)val_data(handle);
	return ptr->owner2 = v;
}
static int box3d_b3FeaturePair_index2_get ( value handle ) {
	b3FeaturePair* ptr = (b3FeaturePair*)val_data(handle);
	return ptr->index2;
}
static int box3d_b3FeaturePair_index2_set ( value handle, int v ) {
	b3FeaturePair* ptr = (b3FeaturePair*)val_data(handle);
	return ptr->index2 = v;
}

DEFINE_PRIME0 (box3d_b3FeaturePair_new);
DEFINE_PRIME1 (box3d_b3FeaturePair_owner1_get);
DEFINE_PRIME2 (box3d_b3FeaturePair_owner1_set);
DEFINE_PRIME1 (box3d_b3FeaturePair_index1_get);
DEFINE_PRIME2 (box3d_b3FeaturePair_index1_set);
DEFINE_PRIME1 (box3d_b3FeaturePair_owner2_get);
DEFINE_PRIME2 (box3d_b3FeaturePair_owner2_set);
DEFINE_PRIME1 (box3d_b3FeaturePair_index2_get);
DEFINE_PRIME2 (box3d_b3FeaturePair_index2_set);

static void box3d_b3LocalManifoldPoint_gc (value handle) {
	b3LocalManifoldPoint* ptr = (b3LocalManifoldPoint*)val_data(handle);
	delete ptr;
}
static value box3d_b3LocalManifoldPoint_new () {
	b3LocalManifoldPoint* ptr = new b3LocalManifoldPoint();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3LocalManifoldPoint_gc);
	return retVal;
}
static value box3d_b3LocalManifoldPoint_point_get ( value handle ) {
	b3LocalManifoldPoint* ptr = (b3LocalManifoldPoint*)val_data(handle);
	return cffi::alloc_pointer(&ptr->point);
}
static value box3d_b3LocalManifoldPoint_point_set ( value handle, value v ) {
	b3LocalManifoldPoint* ptr = (b3LocalManifoldPoint*)val_data(handle);
	memcpy(&ptr->point, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->point);
}
static float box3d_b3LocalManifoldPoint_separation_get ( value handle ) {
	b3LocalManifoldPoint* ptr = (b3LocalManifoldPoint*)val_data(handle);
	return ptr->separation;
}
static float box3d_b3LocalManifoldPoint_separation_set ( value handle, float v ) {
	b3LocalManifoldPoint* ptr = (b3LocalManifoldPoint*)val_data(handle);
	return ptr->separation = v;
}
static value box3d_b3LocalManifoldPoint_pair_get ( value handle ) {
	b3LocalManifoldPoint* ptr = (b3LocalManifoldPoint*)val_data(handle);
	return cffi::alloc_pointer(&ptr->pair);
}
static value box3d_b3LocalManifoldPoint_pair_set ( value handle, value v ) {
	b3LocalManifoldPoint* ptr = (b3LocalManifoldPoint*)val_data(handle);
	memcpy(&ptr->pair, (void*)val_data(v), sizeof(b3FeaturePair));
	return cffi::alloc_pointer(&ptr->pair);
}
static int box3d_b3LocalManifoldPoint_triangleIndex_get ( value handle ) {
	b3LocalManifoldPoint* ptr = (b3LocalManifoldPoint*)val_data(handle);
	return ptr->triangleIndex;
}
static int box3d_b3LocalManifoldPoint_triangleIndex_set ( value handle, int v ) {
	b3LocalManifoldPoint* ptr = (b3LocalManifoldPoint*)val_data(handle);
	return ptr->triangleIndex = v;
}

DEFINE_PRIME0 (box3d_b3LocalManifoldPoint_new);
DEFINE_PRIME1 (box3d_b3LocalManifoldPoint_point_get);
DEFINE_PRIME2 (box3d_b3LocalManifoldPoint_point_set);
DEFINE_PRIME1 (box3d_b3LocalManifoldPoint_separation_get);
DEFINE_PRIME2 (box3d_b3LocalManifoldPoint_separation_set);
DEFINE_PRIME1 (box3d_b3LocalManifoldPoint_pair_get);
DEFINE_PRIME2 (box3d_b3LocalManifoldPoint_pair_set);
DEFINE_PRIME1 (box3d_b3LocalManifoldPoint_triangleIndex_get);
DEFINE_PRIME2 (box3d_b3LocalManifoldPoint_triangleIndex_set);

static void box3d_b3LocalManifold_gc (value handle) {
	b3LocalManifold* ptr = (b3LocalManifold*)val_data(handle);
	delete ptr;
}
static value box3d_b3LocalManifold_new () {
	b3LocalManifold* ptr = new b3LocalManifold();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3LocalManifold_gc);
	return retVal;
}
static value box3d_b3LocalManifold_normal_get ( value handle ) {
	b3LocalManifold* ptr = (b3LocalManifold*)val_data(handle);
	return cffi::alloc_pointer(&ptr->normal);
}
static value box3d_b3LocalManifold_normal_set ( value handle, value v ) {
	b3LocalManifold* ptr = (b3LocalManifold*)val_data(handle);
	memcpy(&ptr->normal, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->normal);
}
static value box3d_b3LocalManifold_triangleNormal_get ( value handle ) {
	b3LocalManifold* ptr = (b3LocalManifold*)val_data(handle);
	return cffi::alloc_pointer(&ptr->triangleNormal);
}
static value box3d_b3LocalManifold_triangleNormal_set ( value handle, value v ) {
	b3LocalManifold* ptr = (b3LocalManifold*)val_data(handle);
	memcpy(&ptr->triangleNormal, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->triangleNormal);
}
static int box3d_b3LocalManifold_pointCount_get ( value handle ) {
	b3LocalManifold* ptr = (b3LocalManifold*)val_data(handle);
	return ptr->pointCount;
}
static int box3d_b3LocalManifold_pointCount_set ( value handle, int v ) {
	b3LocalManifold* ptr = (b3LocalManifold*)val_data(handle);
	return ptr->pointCount = v;
}
static int box3d_b3LocalManifold_triangleIndex_get ( value handle ) {
	b3LocalManifold* ptr = (b3LocalManifold*)val_data(handle);
	return ptr->triangleIndex;
}
static int box3d_b3LocalManifold_triangleIndex_set ( value handle, int v ) {
	b3LocalManifold* ptr = (b3LocalManifold*)val_data(handle);
	return ptr->triangleIndex = v;
}
static int box3d_b3LocalManifold_i1_get ( value handle ) {
	b3LocalManifold* ptr = (b3LocalManifold*)val_data(handle);
	return ptr->i1;
}
static int box3d_b3LocalManifold_i1_set ( value handle, int v ) {
	b3LocalManifold* ptr = (b3LocalManifold*)val_data(handle);
	return ptr->i1 = v;
}
static int box3d_b3LocalManifold_i2_get ( value handle ) {
	b3LocalManifold* ptr = (b3LocalManifold*)val_data(handle);
	return ptr->i2;
}
static int box3d_b3LocalManifold_i2_set ( value handle, int v ) {
	b3LocalManifold* ptr = (b3LocalManifold*)val_data(handle);
	return ptr->i2 = v;
}
static int box3d_b3LocalManifold_i3_get ( value handle ) {
	b3LocalManifold* ptr = (b3LocalManifold*)val_data(handle);
	return ptr->i3;
}
static int box3d_b3LocalManifold_i3_set ( value handle, int v ) {
	b3LocalManifold* ptr = (b3LocalManifold*)val_data(handle);
	return ptr->i3 = v;
}
static float box3d_b3LocalManifold_squaredDistance_get ( value handle ) {
	b3LocalManifold* ptr = (b3LocalManifold*)val_data(handle);
	return ptr->squaredDistance;
}
static float box3d_b3LocalManifold_squaredDistance_set ( value handle, float v ) {
	b3LocalManifold* ptr = (b3LocalManifold*)val_data(handle);
	return ptr->squaredDistance = v;
}
static int box3d_b3LocalManifold_feature_get ( value handle ) {
	b3LocalManifold* ptr = (b3LocalManifold*)val_data(handle);
	return ptr->feature;
}
static int box3d_b3LocalManifold_feature_set ( value handle, int v ) {
	b3LocalManifold* ptr = (b3LocalManifold*)val_data(handle);
	return ptr->feature = (b3TriangleFeature)v;
}
static int box3d_b3LocalManifold_triangleFlags_get ( value handle ) {
	b3LocalManifold* ptr = (b3LocalManifold*)val_data(handle);
	return ptr->triangleFlags;
}
static int box3d_b3LocalManifold_triangleFlags_set ( value handle, int v ) {
	b3LocalManifold* ptr = (b3LocalManifold*)val_data(handle);
	return ptr->triangleFlags = v;
}

DEFINE_PRIME0 (box3d_b3LocalManifold_new);
DEFINE_PRIME1 (box3d_b3LocalManifold_normal_get);
DEFINE_PRIME2 (box3d_b3LocalManifold_normal_set);
DEFINE_PRIME1 (box3d_b3LocalManifold_triangleNormal_get);
DEFINE_PRIME2 (box3d_b3LocalManifold_triangleNormal_set);
DEFINE_PRIME1 (box3d_b3LocalManifold_pointCount_get);
DEFINE_PRIME2 (box3d_b3LocalManifold_pointCount_set);
DEFINE_PRIME1 (box3d_b3LocalManifold_triangleIndex_get);
DEFINE_PRIME2 (box3d_b3LocalManifold_triangleIndex_set);
DEFINE_PRIME1 (box3d_b3LocalManifold_i1_get);
DEFINE_PRIME2 (box3d_b3LocalManifold_i1_set);
DEFINE_PRIME1 (box3d_b3LocalManifold_i2_get);
DEFINE_PRIME2 (box3d_b3LocalManifold_i2_set);
DEFINE_PRIME1 (box3d_b3LocalManifold_i3_get);
DEFINE_PRIME2 (box3d_b3LocalManifold_i3_set);
DEFINE_PRIME1 (box3d_b3LocalManifold_squaredDistance_get);
DEFINE_PRIME2 (box3d_b3LocalManifold_squaredDistance_set);
DEFINE_PRIME1 (box3d_b3LocalManifold_feature_get);
DEFINE_PRIME2 (box3d_b3LocalManifold_feature_set);
DEFINE_PRIME1 (box3d_b3LocalManifold_triangleFlags_get);
DEFINE_PRIME2 (box3d_b3LocalManifold_triangleFlags_set);

static void box3d_b3DebugShape_gc (value handle) {
	b3DebugShape* ptr = (b3DebugShape*)val_data(handle);
	delete ptr;
}
static value box3d_b3DebugShape_new () {
	b3DebugShape* ptr = new b3DebugShape();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3DebugShape_gc);
	return retVal;
}
static value box3d_b3DebugShape_shapeId_get ( value handle ) {
	b3DebugShape* ptr = (b3DebugShape*)val_data(handle);
	return cffi::alloc_pointer(&ptr->shapeId);
}
static value box3d_b3DebugShape_shapeId_set ( value handle, value v ) {
	b3DebugShape* ptr = (b3DebugShape*)val_data(handle);
	memcpy(&ptr->shapeId, (void*)val_data(v), sizeof(b3ShapeId));
	return cffi::alloc_pointer(&ptr->shapeId);
}
static int box3d_b3DebugShape_type_get ( value handle ) {
	b3DebugShape* ptr = (b3DebugShape*)val_data(handle);
	return ptr->type;
}
static int box3d_b3DebugShape_type_set ( value handle, int v ) {
	b3DebugShape* ptr = (b3DebugShape*)val_data(handle);
	return ptr->type = (b3ShapeType)v;
}

DEFINE_PRIME0 (box3d_b3DebugShape_new);
DEFINE_PRIME1 (box3d_b3DebugShape_shapeId_get);
DEFINE_PRIME2 (box3d_b3DebugShape_shapeId_set);
DEFINE_PRIME1 (box3d_b3DebugShape_type_get);
DEFINE_PRIME2 (box3d_b3DebugShape_type_set);

static void box3d_b3WorldId_gc (value handle) {
	b3WorldId* ptr = (b3WorldId*)val_data(handle);
	delete ptr;
}
static value box3d_b3WorldId_new () {
	b3WorldId* ptr = new b3WorldId();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3WorldId_gc);
	return retVal;
}
static int box3d_b3WorldId_index1_get ( value handle ) {
	b3WorldId* ptr = (b3WorldId*)val_data(handle);
	return ptr->index1;
}
static int box3d_b3WorldId_index1_set ( value handle, int v ) {
	b3WorldId* ptr = (b3WorldId*)val_data(handle);
	return ptr->index1 = v;
}
static int box3d_b3WorldId_generation_get ( value handle ) {
	b3WorldId* ptr = (b3WorldId*)val_data(handle);
	return ptr->generation;
}
static int box3d_b3WorldId_generation_set ( value handle, int v ) {
	b3WorldId* ptr = (b3WorldId*)val_data(handle);
	return ptr->generation = v;
}

DEFINE_PRIME0 (box3d_b3WorldId_new);
DEFINE_PRIME1 (box3d_b3WorldId_index1_get);
DEFINE_PRIME2 (box3d_b3WorldId_index1_set);
DEFINE_PRIME1 (box3d_b3WorldId_generation_get);
DEFINE_PRIME2 (box3d_b3WorldId_generation_set);

static void box3d_b3BodyId_gc (value handle) {
	b3BodyId* ptr = (b3BodyId*)val_data(handle);
	delete ptr;
}
static value box3d_b3BodyId_new () {
	b3BodyId* ptr = new b3BodyId();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3BodyId_gc);
	return retVal;
}
static int box3d_b3BodyId_index1_get ( value handle ) {
	b3BodyId* ptr = (b3BodyId*)val_data(handle);
	return ptr->index1;
}
static int box3d_b3BodyId_index1_set ( value handle, int v ) {
	b3BodyId* ptr = (b3BodyId*)val_data(handle);
	return ptr->index1 = v;
}
static int box3d_b3BodyId_world0_get ( value handle ) {
	b3BodyId* ptr = (b3BodyId*)val_data(handle);
	return ptr->world0;
}
static int box3d_b3BodyId_world0_set ( value handle, int v ) {
	b3BodyId* ptr = (b3BodyId*)val_data(handle);
	return ptr->world0 = v;
}
static int box3d_b3BodyId_generation_get ( value handle ) {
	b3BodyId* ptr = (b3BodyId*)val_data(handle);
	return ptr->generation;
}
static int box3d_b3BodyId_generation_set ( value handle, int v ) {
	b3BodyId* ptr = (b3BodyId*)val_data(handle);
	return ptr->generation = v;
}

DEFINE_PRIME0 (box3d_b3BodyId_new);
DEFINE_PRIME1 (box3d_b3BodyId_index1_get);
DEFINE_PRIME2 (box3d_b3BodyId_index1_set);
DEFINE_PRIME1 (box3d_b3BodyId_world0_get);
DEFINE_PRIME2 (box3d_b3BodyId_world0_set);
DEFINE_PRIME1 (box3d_b3BodyId_generation_get);
DEFINE_PRIME2 (box3d_b3BodyId_generation_set);

static void box3d_b3ShapeId_gc (value handle) {
	b3ShapeId* ptr = (b3ShapeId*)val_data(handle);
	delete ptr;
}
static value box3d_b3ShapeId_new () {
	b3ShapeId* ptr = new b3ShapeId();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3ShapeId_gc);
	return retVal;
}
static int box3d_b3ShapeId_index1_get ( value handle ) {
	b3ShapeId* ptr = (b3ShapeId*)val_data(handle);
	return ptr->index1;
}
static int box3d_b3ShapeId_index1_set ( value handle, int v ) {
	b3ShapeId* ptr = (b3ShapeId*)val_data(handle);
	return ptr->index1 = v;
}
static int box3d_b3ShapeId_world0_get ( value handle ) {
	b3ShapeId* ptr = (b3ShapeId*)val_data(handle);
	return ptr->world0;
}
static int box3d_b3ShapeId_world0_set ( value handle, int v ) {
	b3ShapeId* ptr = (b3ShapeId*)val_data(handle);
	return ptr->world0 = v;
}
static int box3d_b3ShapeId_generation_get ( value handle ) {
	b3ShapeId* ptr = (b3ShapeId*)val_data(handle);
	return ptr->generation;
}
static int box3d_b3ShapeId_generation_set ( value handle, int v ) {
	b3ShapeId* ptr = (b3ShapeId*)val_data(handle);
	return ptr->generation = v;
}

DEFINE_PRIME0 (box3d_b3ShapeId_new);
DEFINE_PRIME1 (box3d_b3ShapeId_index1_get);
DEFINE_PRIME2 (box3d_b3ShapeId_index1_set);
DEFINE_PRIME1 (box3d_b3ShapeId_world0_get);
DEFINE_PRIME2 (box3d_b3ShapeId_world0_set);
DEFINE_PRIME1 (box3d_b3ShapeId_generation_get);
DEFINE_PRIME2 (box3d_b3ShapeId_generation_set);

static void box3d_b3JointId_gc (value handle) {
	b3JointId* ptr = (b3JointId*)val_data(handle);
	delete ptr;
}
static value box3d_b3JointId_new () {
	b3JointId* ptr = new b3JointId();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3JointId_gc);
	return retVal;
}
static int box3d_b3JointId_index1_get ( value handle ) {
	b3JointId* ptr = (b3JointId*)val_data(handle);
	return ptr->index1;
}
static int box3d_b3JointId_index1_set ( value handle, int v ) {
	b3JointId* ptr = (b3JointId*)val_data(handle);
	return ptr->index1 = v;
}
static int box3d_b3JointId_world0_get ( value handle ) {
	b3JointId* ptr = (b3JointId*)val_data(handle);
	return ptr->world0;
}
static int box3d_b3JointId_world0_set ( value handle, int v ) {
	b3JointId* ptr = (b3JointId*)val_data(handle);
	return ptr->world0 = v;
}
static int box3d_b3JointId_generation_get ( value handle ) {
	b3JointId* ptr = (b3JointId*)val_data(handle);
	return ptr->generation;
}
static int box3d_b3JointId_generation_set ( value handle, int v ) {
	b3JointId* ptr = (b3JointId*)val_data(handle);
	return ptr->generation = v;
}

DEFINE_PRIME0 (box3d_b3JointId_new);
DEFINE_PRIME1 (box3d_b3JointId_index1_get);
DEFINE_PRIME2 (box3d_b3JointId_index1_set);
DEFINE_PRIME1 (box3d_b3JointId_world0_get);
DEFINE_PRIME2 (box3d_b3JointId_world0_set);
DEFINE_PRIME1 (box3d_b3JointId_generation_get);
DEFINE_PRIME2 (box3d_b3JointId_generation_set);

static void box3d_b3ContactId_gc (value handle) {
	b3ContactId* ptr = (b3ContactId*)val_data(handle);
	delete ptr;
}
static value box3d_b3ContactId_new () {
	b3ContactId* ptr = new b3ContactId();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3ContactId_gc);
	return retVal;
}
static int box3d_b3ContactId_index1_get ( value handle ) {
	b3ContactId* ptr = (b3ContactId*)val_data(handle);
	return ptr->index1;
}
static int box3d_b3ContactId_index1_set ( value handle, int v ) {
	b3ContactId* ptr = (b3ContactId*)val_data(handle);
	return ptr->index1 = v;
}
static int box3d_b3ContactId_world0_get ( value handle ) {
	b3ContactId* ptr = (b3ContactId*)val_data(handle);
	return ptr->world0;
}
static int box3d_b3ContactId_world0_set ( value handle, int v ) {
	b3ContactId* ptr = (b3ContactId*)val_data(handle);
	return ptr->world0 = v;
}
static int box3d_b3ContactId_padding_get ( value handle ) {
	b3ContactId* ptr = (b3ContactId*)val_data(handle);
	return ptr->padding;
}
static int box3d_b3ContactId_padding_set ( value handle, int v ) {
	b3ContactId* ptr = (b3ContactId*)val_data(handle);
	return ptr->padding = v;
}
static int box3d_b3ContactId_generation_get ( value handle ) {
	b3ContactId* ptr = (b3ContactId*)val_data(handle);
	return ptr->generation;
}
static int box3d_b3ContactId_generation_set ( value handle, int v ) {
	b3ContactId* ptr = (b3ContactId*)val_data(handle);
	return ptr->generation = v;
}

DEFINE_PRIME0 (box3d_b3ContactId_new);
DEFINE_PRIME1 (box3d_b3ContactId_index1_get);
DEFINE_PRIME2 (box3d_b3ContactId_index1_set);
DEFINE_PRIME1 (box3d_b3ContactId_world0_get);
DEFINE_PRIME2 (box3d_b3ContactId_world0_set);
DEFINE_PRIME1 (box3d_b3ContactId_padding_get);
DEFINE_PRIME2 (box3d_b3ContactId_padding_set);
DEFINE_PRIME1 (box3d_b3ContactId_generation_get);
DEFINE_PRIME2 (box3d_b3ContactId_generation_set);

static void box3d_b3RecPlayerInfo_gc (value handle) {
	b3RecPlayerInfo* ptr = (b3RecPlayerInfo*)val_data(handle);
	delete ptr;
}
static value box3d_b3RecPlayerInfo_new () {
	b3RecPlayerInfo* ptr = new b3RecPlayerInfo();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3RecPlayerInfo_gc);
	return retVal;
}
static int box3d_b3RecPlayerInfo_frameCount_get ( value handle ) {
	b3RecPlayerInfo* ptr = (b3RecPlayerInfo*)val_data(handle);
	return ptr->frameCount;
}
static int box3d_b3RecPlayerInfo_frameCount_set ( value handle, int v ) {
	b3RecPlayerInfo* ptr = (b3RecPlayerInfo*)val_data(handle);
	return ptr->frameCount = v;
}
static int box3d_b3RecPlayerInfo_workerCount_get ( value handle ) {
	b3RecPlayerInfo* ptr = (b3RecPlayerInfo*)val_data(handle);
	return ptr->workerCount;
}
static int box3d_b3RecPlayerInfo_workerCount_set ( value handle, int v ) {
	b3RecPlayerInfo* ptr = (b3RecPlayerInfo*)val_data(handle);
	return ptr->workerCount = v;
}
static float box3d_b3RecPlayerInfo_timeStep_get ( value handle ) {
	b3RecPlayerInfo* ptr = (b3RecPlayerInfo*)val_data(handle);
	return ptr->timeStep;
}
static float box3d_b3RecPlayerInfo_timeStep_set ( value handle, float v ) {
	b3RecPlayerInfo* ptr = (b3RecPlayerInfo*)val_data(handle);
	return ptr->timeStep = v;
}
static int box3d_b3RecPlayerInfo_subStepCount_get ( value handle ) {
	b3RecPlayerInfo* ptr = (b3RecPlayerInfo*)val_data(handle);
	return ptr->subStepCount;
}
static int box3d_b3RecPlayerInfo_subStepCount_set ( value handle, int v ) {
	b3RecPlayerInfo* ptr = (b3RecPlayerInfo*)val_data(handle);
	return ptr->subStepCount = v;
}
static float box3d_b3RecPlayerInfo_lengthScale_get ( value handle ) {
	b3RecPlayerInfo* ptr = (b3RecPlayerInfo*)val_data(handle);
	return ptr->lengthScale;
}
static float box3d_b3RecPlayerInfo_lengthScale_set ( value handle, float v ) {
	b3RecPlayerInfo* ptr = (b3RecPlayerInfo*)val_data(handle);
	return ptr->lengthScale = v;
}
static value box3d_b3RecPlayerInfo_bounds_get ( value handle ) {
	b3RecPlayerInfo* ptr = (b3RecPlayerInfo*)val_data(handle);
	return cffi::alloc_pointer(&ptr->bounds);
}
static value box3d_b3RecPlayerInfo_bounds_set ( value handle, value v ) {
	b3RecPlayerInfo* ptr = (b3RecPlayerInfo*)val_data(handle);
	memcpy(&ptr->bounds, (void*)val_data(v), sizeof(b3AABB));
	return cffi::alloc_pointer(&ptr->bounds);
}

DEFINE_PRIME0 (box3d_b3RecPlayerInfo_new);
DEFINE_PRIME1 (box3d_b3RecPlayerInfo_frameCount_get);
DEFINE_PRIME2 (box3d_b3RecPlayerInfo_frameCount_set);
DEFINE_PRIME1 (box3d_b3RecPlayerInfo_workerCount_get);
DEFINE_PRIME2 (box3d_b3RecPlayerInfo_workerCount_set);
DEFINE_PRIME1 (box3d_b3RecPlayerInfo_timeStep_get);
DEFINE_PRIME2 (box3d_b3RecPlayerInfo_timeStep_set);
DEFINE_PRIME1 (box3d_b3RecPlayerInfo_subStepCount_get);
DEFINE_PRIME2 (box3d_b3RecPlayerInfo_subStepCount_set);
DEFINE_PRIME1 (box3d_b3RecPlayerInfo_lengthScale_get);
DEFINE_PRIME2 (box3d_b3RecPlayerInfo_lengthScale_set);
DEFINE_PRIME1 (box3d_b3RecPlayerInfo_bounds_get);
DEFINE_PRIME2 (box3d_b3RecPlayerInfo_bounds_set);

static void box3d_b3RecQueryInfo_gc (value handle) {
	b3RecQueryInfo* ptr = (b3RecQueryInfo*)val_data(handle);
	delete ptr;
}
static value box3d_b3RecQueryInfo_new () {
	b3RecQueryInfo* ptr = new b3RecQueryInfo();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3RecQueryInfo_gc);
	return retVal;
}
static int box3d_b3RecQueryInfo_type_get ( value handle ) {
	b3RecQueryInfo* ptr = (b3RecQueryInfo*)val_data(handle);
	return ptr->type;
}
static int box3d_b3RecQueryInfo_type_set ( value handle, int v ) {
	b3RecQueryInfo* ptr = (b3RecQueryInfo*)val_data(handle);
	return ptr->type = (b3RecQueryType)v;
}
static value box3d_b3RecQueryInfo_filter_get ( value handle ) {
	b3RecQueryInfo* ptr = (b3RecQueryInfo*)val_data(handle);
	return cffi::alloc_pointer(&ptr->filter);
}
static value box3d_b3RecQueryInfo_filter_set ( value handle, value v ) {
	b3RecQueryInfo* ptr = (b3RecQueryInfo*)val_data(handle);
	memcpy(&ptr->filter, (void*)val_data(v), sizeof(b3QueryFilter));
	return cffi::alloc_pointer(&ptr->filter);
}
static value box3d_b3RecQueryInfo_aabb_get ( value handle ) {
	b3RecQueryInfo* ptr = (b3RecQueryInfo*)val_data(handle);
	return cffi::alloc_pointer(&ptr->aabb);
}
static value box3d_b3RecQueryInfo_aabb_set ( value handle, value v ) {
	b3RecQueryInfo* ptr = (b3RecQueryInfo*)val_data(handle);
	memcpy(&ptr->aabb, (void*)val_data(v), sizeof(b3AABB));
	return cffi::alloc_pointer(&ptr->aabb);
}
static value box3d_b3RecQueryInfo_origin_get ( value handle ) {
	b3RecQueryInfo* ptr = (b3RecQueryInfo*)val_data(handle);
	return cffi::alloc_pointer(&ptr->origin);
}
static value box3d_b3RecQueryInfo_origin_set ( value handle, value v ) {
	b3RecQueryInfo* ptr = (b3RecQueryInfo*)val_data(handle);
	memcpy(&ptr->origin, (void*)val_data(v), sizeof(b3Pos));
	return cffi::alloc_pointer(&ptr->origin);
}
static value box3d_b3RecQueryInfo_translation_get ( value handle ) {
	b3RecQueryInfo* ptr = (b3RecQueryInfo*)val_data(handle);
	return cffi::alloc_pointer(&ptr->translation);
}
static value box3d_b3RecQueryInfo_translation_set ( value handle, value v ) {
	b3RecQueryInfo* ptr = (b3RecQueryInfo*)val_data(handle);
	memcpy(&ptr->translation, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->translation);
}
static int box3d_b3RecQueryInfo_hitCount_get ( value handle ) {
	b3RecQueryInfo* ptr = (b3RecQueryInfo*)val_data(handle);
	return ptr->hitCount;
}
static int box3d_b3RecQueryInfo_hitCount_set ( value handle, int v ) {
	b3RecQueryInfo* ptr = (b3RecQueryInfo*)val_data(handle);
	return ptr->hitCount = v;
}
static value box3d_b3RecQueryInfo_key_get ( value handle ) {
	b3RecQueryInfo* ptr = (b3RecQueryInfo*)val_data(handle);
	return cffi::alloc_pointer(&ptr->key);
}
static value box3d_b3RecQueryInfo_key_set ( value handle, value v ) {
	b3RecQueryInfo* ptr = (b3RecQueryInfo*)val_data(handle);
	memcpy(&ptr->key, (void*)val_data(v), sizeof(uint64_t));
	return cffi::alloc_pointer(&ptr->key);
}
static value box3d_b3RecQueryInfo_id_get ( value handle ) {
	b3RecQueryInfo* ptr = (b3RecQueryInfo*)val_data(handle);
	return cffi::alloc_pointer(&ptr->id);
}
static value box3d_b3RecQueryInfo_id_set ( value handle, value v ) {
	b3RecQueryInfo* ptr = (b3RecQueryInfo*)val_data(handle);
	memcpy(&ptr->id, (void*)val_data(v), sizeof(uint64_t));
	return cffi::alloc_pointer(&ptr->id);
}
static HxString box3d_b3RecQueryInfo_name_get ( value handle ) {
	b3RecQueryInfo* ptr = (b3RecQueryInfo*)val_data(handle);
	return HxString(ptr->name);
}
static HxString box3d_b3RecQueryInfo_name_set ( value handle, HxString v ) {
	b3RecQueryInfo* ptr = (b3RecQueryInfo*)val_data(handle);
	return HxString(ptr->name = v.__s);
}

DEFINE_PRIME0 (box3d_b3RecQueryInfo_new);
DEFINE_PRIME1 (box3d_b3RecQueryInfo_type_get);
DEFINE_PRIME2 (box3d_b3RecQueryInfo_type_set);
DEFINE_PRIME1 (box3d_b3RecQueryInfo_filter_get);
DEFINE_PRIME2 (box3d_b3RecQueryInfo_filter_set);
DEFINE_PRIME1 (box3d_b3RecQueryInfo_aabb_get);
DEFINE_PRIME2 (box3d_b3RecQueryInfo_aabb_set);
DEFINE_PRIME1 (box3d_b3RecQueryInfo_origin_get);
DEFINE_PRIME2 (box3d_b3RecQueryInfo_origin_set);
DEFINE_PRIME1 (box3d_b3RecQueryInfo_translation_get);
DEFINE_PRIME2 (box3d_b3RecQueryInfo_translation_set);
DEFINE_PRIME1 (box3d_b3RecQueryInfo_hitCount_get);
DEFINE_PRIME2 (box3d_b3RecQueryInfo_hitCount_set);
DEFINE_PRIME1 (box3d_b3RecQueryInfo_key_get);
DEFINE_PRIME2 (box3d_b3RecQueryInfo_key_set);
DEFINE_PRIME1 (box3d_b3RecQueryInfo_id_get);
DEFINE_PRIME2 (box3d_b3RecQueryInfo_id_set);
DEFINE_PRIME1 (box3d_b3RecQueryInfo_name_get);
DEFINE_PRIME2 (box3d_b3RecQueryInfo_name_set);

static void box3d_b3RecQueryHit_gc (value handle) {
	b3RecQueryHit* ptr = (b3RecQueryHit*)val_data(handle);
	delete ptr;
}
static value box3d_b3RecQueryHit_new () {
	b3RecQueryHit* ptr = new b3RecQueryHit();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3RecQueryHit_gc);
	return retVal;
}
static value box3d_b3RecQueryHit_shape_get ( value handle ) {
	b3RecQueryHit* ptr = (b3RecQueryHit*)val_data(handle);
	return cffi::alloc_pointer(&ptr->shape);
}
static value box3d_b3RecQueryHit_shape_set ( value handle, value v ) {
	b3RecQueryHit* ptr = (b3RecQueryHit*)val_data(handle);
	memcpy(&ptr->shape, (void*)val_data(v), sizeof(b3ShapeId));
	return cffi::alloc_pointer(&ptr->shape);
}
static value box3d_b3RecQueryHit_point_get ( value handle ) {
	b3RecQueryHit* ptr = (b3RecQueryHit*)val_data(handle);
	return cffi::alloc_pointer(&ptr->point);
}
static value box3d_b3RecQueryHit_point_set ( value handle, value v ) {
	b3RecQueryHit* ptr = (b3RecQueryHit*)val_data(handle);
	memcpy(&ptr->point, (void*)val_data(v), sizeof(b3Pos));
	return cffi::alloc_pointer(&ptr->point);
}
static value box3d_b3RecQueryHit_normal_get ( value handle ) {
	b3RecQueryHit* ptr = (b3RecQueryHit*)val_data(handle);
	return cffi::alloc_pointer(&ptr->normal);
}
static value box3d_b3RecQueryHit_normal_set ( value handle, value v ) {
	b3RecQueryHit* ptr = (b3RecQueryHit*)val_data(handle);
	memcpy(&ptr->normal, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->normal);
}
static float box3d_b3RecQueryHit_fraction_get ( value handle ) {
	b3RecQueryHit* ptr = (b3RecQueryHit*)val_data(handle);
	return ptr->fraction;
}
static float box3d_b3RecQueryHit_fraction_set ( value handle, float v ) {
	b3RecQueryHit* ptr = (b3RecQueryHit*)val_data(handle);
	return ptr->fraction = v;
}

DEFINE_PRIME0 (box3d_b3RecQueryHit_new);
DEFINE_PRIME1 (box3d_b3RecQueryHit_shape_get);
DEFINE_PRIME2 (box3d_b3RecQueryHit_shape_set);
DEFINE_PRIME1 (box3d_b3RecQueryHit_point_get);
DEFINE_PRIME2 (box3d_b3RecQueryHit_point_set);
DEFINE_PRIME1 (box3d_b3RecQueryHit_normal_get);
DEFINE_PRIME2 (box3d_b3RecQueryHit_normal_set);
DEFINE_PRIME1 (box3d_b3RecQueryHit_fraction_get);
DEFINE_PRIME2 (box3d_b3RecQueryHit_fraction_set);

static void box3d_b3Vec2_gc (value handle) {
	b3Vec2* ptr = (b3Vec2*)val_data(handle);
	delete ptr;
}
static value box3d_b3Vec2_new () {
	b3Vec2* ptr = new b3Vec2();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3Vec2_gc);
	return retVal;
}
static float box3d_b3Vec2_x_get ( value handle ) {
	b3Vec2* ptr = (b3Vec2*)val_data(handle);
	return ptr->x;
}
static float box3d_b3Vec2_x_set ( value handle, float v ) {
	b3Vec2* ptr = (b3Vec2*)val_data(handle);
	return ptr->x = v;
}
static float box3d_b3Vec2_y_get ( value handle ) {
	b3Vec2* ptr = (b3Vec2*)val_data(handle);
	return ptr->y;
}
static float box3d_b3Vec2_y_set ( value handle, float v ) {
	b3Vec2* ptr = (b3Vec2*)val_data(handle);
	return ptr->y = v;
}

DEFINE_PRIME0 (box3d_b3Vec2_new);
DEFINE_PRIME1 (box3d_b3Vec2_x_get);
DEFINE_PRIME2 (box3d_b3Vec2_x_set);
DEFINE_PRIME1 (box3d_b3Vec2_y_get);
DEFINE_PRIME2 (box3d_b3Vec2_y_set);

static void box3d_b3CosSin_gc (value handle) {
	b3CosSin* ptr = (b3CosSin*)val_data(handle);
	delete ptr;
}
static value box3d_b3CosSin_new () {
	b3CosSin* ptr = new b3CosSin();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3CosSin_gc);
	return retVal;
}
static float box3d_b3CosSin_cosine_get ( value handle ) {
	b3CosSin* ptr = (b3CosSin*)val_data(handle);
	return ptr->cosine;
}
static float box3d_b3CosSin_cosine_set ( value handle, float v ) {
	b3CosSin* ptr = (b3CosSin*)val_data(handle);
	return ptr->cosine = v;
}
static float box3d_b3CosSin_sine_get ( value handle ) {
	b3CosSin* ptr = (b3CosSin*)val_data(handle);
	return ptr->sine;
}
static float box3d_b3CosSin_sine_set ( value handle, float v ) {
	b3CosSin* ptr = (b3CosSin*)val_data(handle);
	return ptr->sine = v;
}

DEFINE_PRIME0 (box3d_b3CosSin_new);
DEFINE_PRIME1 (box3d_b3CosSin_cosine_get);
DEFINE_PRIME2 (box3d_b3CosSin_cosine_set);
DEFINE_PRIME1 (box3d_b3CosSin_sine_get);
DEFINE_PRIME2 (box3d_b3CosSin_sine_set);

static void box3d_b3Quat_gc (value handle) {
	b3Quat* ptr = (b3Quat*)val_data(handle);
	delete ptr;
}
static value box3d_b3Quat_new () {
	b3Quat* ptr = new b3Quat();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3Quat_gc);
	return retVal;
}
static value box3d_b3Quat_v_get ( value handle ) {
	b3Quat* ptr = (b3Quat*)val_data(handle);
	return cffi::alloc_pointer(&ptr->v);
}
static value box3d_b3Quat_v_set ( value handle, value v ) {
	b3Quat* ptr = (b3Quat*)val_data(handle);
	memcpy(&ptr->v, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->v);
}
static float box3d_b3Quat_s_get ( value handle ) {
	b3Quat* ptr = (b3Quat*)val_data(handle);
	return ptr->s;
}
static float box3d_b3Quat_s_set ( value handle, float v ) {
	b3Quat* ptr = (b3Quat*)val_data(handle);
	return ptr->s = v;
}

DEFINE_PRIME0 (box3d_b3Quat_new);
DEFINE_PRIME1 (box3d_b3Quat_v_get);
DEFINE_PRIME2 (box3d_b3Quat_v_set);
DEFINE_PRIME1 (box3d_b3Quat_s_get);
DEFINE_PRIME2 (box3d_b3Quat_s_set);

static void box3d_b3AABB_gc (value handle) {
	b3AABB* ptr = (b3AABB*)val_data(handle);
	delete ptr;
}
static value box3d_b3AABB_new () {
	b3AABB* ptr = new b3AABB();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3AABB_gc);
	return retVal;
}
static value box3d_b3AABB_lowerBound_get ( value handle ) {
	b3AABB* ptr = (b3AABB*)val_data(handle);
	return cffi::alloc_pointer(&ptr->lowerBound);
}
static value box3d_b3AABB_lowerBound_set ( value handle, value v ) {
	b3AABB* ptr = (b3AABB*)val_data(handle);
	memcpy(&ptr->lowerBound, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->lowerBound);
}
static value box3d_b3AABB_upperBound_get ( value handle ) {
	b3AABB* ptr = (b3AABB*)val_data(handle);
	return cffi::alloc_pointer(&ptr->upperBound);
}
static value box3d_b3AABB_upperBound_set ( value handle, value v ) {
	b3AABB* ptr = (b3AABB*)val_data(handle);
	memcpy(&ptr->upperBound, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->upperBound);
}

DEFINE_PRIME0 (box3d_b3AABB_new);
DEFINE_PRIME1 (box3d_b3AABB_lowerBound_get);
DEFINE_PRIME2 (box3d_b3AABB_lowerBound_set);
DEFINE_PRIME1 (box3d_b3AABB_upperBound_get);
DEFINE_PRIME2 (box3d_b3AABB_upperBound_set);

static void box3d_b3Plane_gc (value handle) {
	b3Plane* ptr = (b3Plane*)val_data(handle);
	delete ptr;
}
static value box3d_b3Plane_new () {
	b3Plane* ptr = new b3Plane();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3Plane_gc);
	return retVal;
}
static value box3d_b3Plane_normal_get ( value handle ) {
	b3Plane* ptr = (b3Plane*)val_data(handle);
	return cffi::alloc_pointer(&ptr->normal);
}
static value box3d_b3Plane_normal_set ( value handle, value v ) {
	b3Plane* ptr = (b3Plane*)val_data(handle);
	memcpy(&ptr->normal, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->normal);
}
static float box3d_b3Plane_offset_get ( value handle ) {
	b3Plane* ptr = (b3Plane*)val_data(handle);
	return ptr->offset;
}
static float box3d_b3Plane_offset_set ( value handle, float v ) {
	b3Plane* ptr = (b3Plane*)val_data(handle);
	return ptr->offset = v;
}

DEFINE_PRIME0 (box3d_b3Plane_new);
DEFINE_PRIME1 (box3d_b3Plane_normal_get);
DEFINE_PRIME2 (box3d_b3Plane_normal_set);
DEFINE_PRIME1 (box3d_b3Plane_offset_get);
DEFINE_PRIME2 (box3d_b3Plane_offset_set);

static void box3d_b3SegmentDistanceResult_gc (value handle) {
	b3SegmentDistanceResult* ptr = (b3SegmentDistanceResult*)val_data(handle);
	delete ptr;
}
static value box3d_b3SegmentDistanceResult_new () {
	b3SegmentDistanceResult* ptr = new b3SegmentDistanceResult();
	value retVal = cffi::alloc_pointer(ptr);
	val_gc(retVal, box3d_b3SegmentDistanceResult_gc);
	return retVal;
}
static value box3d_b3SegmentDistanceResult_point1_get ( value handle ) {
	b3SegmentDistanceResult* ptr = (b3SegmentDistanceResult*)val_data(handle);
	return cffi::alloc_pointer(&ptr->point1);
}
static value box3d_b3SegmentDistanceResult_point1_set ( value handle, value v ) {
	b3SegmentDistanceResult* ptr = (b3SegmentDistanceResult*)val_data(handle);
	memcpy(&ptr->point1, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->point1);
}
static float box3d_b3SegmentDistanceResult_fraction1_get ( value handle ) {
	b3SegmentDistanceResult* ptr = (b3SegmentDistanceResult*)val_data(handle);
	return ptr->fraction1;
}
static float box3d_b3SegmentDistanceResult_fraction1_set ( value handle, float v ) {
	b3SegmentDistanceResult* ptr = (b3SegmentDistanceResult*)val_data(handle);
	return ptr->fraction1 = v;
}
static value box3d_b3SegmentDistanceResult_point2_get ( value handle ) {
	b3SegmentDistanceResult* ptr = (b3SegmentDistanceResult*)val_data(handle);
	return cffi::alloc_pointer(&ptr->point2);
}
static value box3d_b3SegmentDistanceResult_point2_set ( value handle, value v ) {
	b3SegmentDistanceResult* ptr = (b3SegmentDistanceResult*)val_data(handle);
	memcpy(&ptr->point2, (void*)val_data(v), sizeof(b3Vec3));
	return cffi::alloc_pointer(&ptr->point2);
}
static float box3d_b3SegmentDistanceResult_fraction2_get ( value handle ) {
	b3SegmentDistanceResult* ptr = (b3SegmentDistanceResult*)val_data(handle);
	return ptr->fraction2;
}
static float box3d_b3SegmentDistanceResult_fraction2_set ( value handle, float v ) {
	b3SegmentDistanceResult* ptr = (b3SegmentDistanceResult*)val_data(handle);
	return ptr->fraction2 = v;
}

DEFINE_PRIME0 (box3d_b3SegmentDistanceResult_new);
DEFINE_PRIME1 (box3d_b3SegmentDistanceResult_point1_get);
DEFINE_PRIME2 (box3d_b3SegmentDistanceResult_point1_set);
DEFINE_PRIME1 (box3d_b3SegmentDistanceResult_fraction1_get);
DEFINE_PRIME2 (box3d_b3SegmentDistanceResult_fraction1_set);
DEFINE_PRIME1 (box3d_b3SegmentDistanceResult_point2_get);
DEFINE_PRIME2 (box3d_b3SegmentDistanceResult_point2_set);
DEFINE_PRIME1 (box3d_b3SegmentDistanceResult_fraction2_get);
DEFINE_PRIME2 (box3d_b3SegmentDistanceResult_fraction2_set);

static int box3d_b3GetByteCount () {
	return b3GetByteCount();
}
static value box3d_b3GetVersion () {
	b3Version ret = b3GetVersion();
	value retVal = box3d_b3Version_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Version));
	return retVal;
}
static bool box3d_b3IsDoublePrecision () {
	return b3IsDoublePrecision();
}
static value box3d_b3GetTicks () {
	return nullptr;
}
static float box3d_b3GetMilliseconds (value ticks) {
	return b3GetMilliseconds(*(uint64_t*)val_data(ticks));
}
static void box3d_b3Yield () {
	b3Yield();
}
static void box3d_b3Sleep (int milliseconds) {
	b3Sleep(milliseconds);
}

DEFINE_PRIME0 (box3d_b3GetByteCount);
DEFINE_PRIME0 (box3d_b3GetVersion);
DEFINE_PRIME0 (box3d_b3IsDoublePrecision);
DEFINE_PRIME0 (box3d_b3GetTicks);
DEFINE_PRIME1 (box3d_b3GetMilliseconds);
DEFINE_PRIME0v (box3d_b3Yield);
DEFINE_PRIME1v (box3d_b3Sleep);

static value box3d_b3DefaultWorldDef () {
	b3WorldDef ret = b3DefaultWorldDef();
	value retVal = box3d_b3WorldDef_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3WorldDef));
	return retVal;
}
static value box3d_b3DefaultBodyDef () {
	b3BodyDef ret = b3DefaultBodyDef();
	value retVal = box3d_b3BodyDef_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3BodyDef));
	return retVal;
}
static value box3d_b3DefaultFilter () {
	b3Filter ret = b3DefaultFilter();
	value retVal = box3d_b3Filter_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Filter));
	return retVal;
}
static value box3d_b3DefaultSurfaceMaterial () {
	b3SurfaceMaterial ret = b3DefaultSurfaceMaterial();
	value retVal = box3d_b3SurfaceMaterial_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3SurfaceMaterial));
	return retVal;
}
static value box3d_b3DefaultShapeDef () {
	b3ShapeDef ret = b3DefaultShapeDef();
	value retVal = box3d_b3ShapeDef_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3ShapeDef));
	return retVal;
}
static value box3d_b3DefaultDistanceJointDef () {
	b3DistanceJointDef ret = b3DefaultDistanceJointDef();
	value retVal = box3d_b3DistanceJointDef_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3DistanceJointDef));
	return retVal;
}
static value box3d_b3DefaultMotorJointDef () {
	b3MotorJointDef ret = b3DefaultMotorJointDef();
	value retVal = box3d_b3MotorJointDef_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3MotorJointDef));
	return retVal;
}
static value box3d_b3DefaultFilterJointDef () {
	b3FilterJointDef ret = b3DefaultFilterJointDef();
	value retVal = box3d_b3FilterJointDef_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3FilterJointDef));
	return retVal;
}
static value box3d_b3DefaultParallelJointDef () {
	b3ParallelJointDef ret = b3DefaultParallelJointDef();
	value retVal = box3d_b3ParallelJointDef_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3ParallelJointDef));
	return retVal;
}
static value box3d_b3DefaultPrismaticJointDef () {
	b3PrismaticJointDef ret = b3DefaultPrismaticJointDef();
	value retVal = box3d_b3PrismaticJointDef_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3PrismaticJointDef));
	return retVal;
}
static value box3d_b3DefaultRevoluteJointDef () {
	b3RevoluteJointDef ret = b3DefaultRevoluteJointDef();
	value retVal = box3d_b3RevoluteJointDef_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3RevoluteJointDef));
	return retVal;
}
static value box3d_b3DefaultSphericalJointDef () {
	b3SphericalJointDef ret = b3DefaultSphericalJointDef();
	value retVal = box3d_b3SphericalJointDef_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3SphericalJointDef));
	return retVal;
}
static value box3d_b3DefaultWeldJointDef () {
	b3WeldJointDef ret = b3DefaultWeldJointDef();
	value retVal = box3d_b3WeldJointDef_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3WeldJointDef));
	return retVal;
}
static value box3d_b3DefaultWheelJointDef () {
	b3WheelJointDef ret = b3DefaultWheelJointDef();
	value retVal = box3d_b3WheelJointDef_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3WheelJointDef));
	return retVal;
}
static value box3d_b3DefaultExplosionDef () {
	b3ExplosionDef ret = b3DefaultExplosionDef();
	value retVal = box3d_b3ExplosionDef_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3ExplosionDef));
	return retVal;
}
static value box3d_b3DefaultQueryFilter () {
	b3QueryFilter ret = b3DefaultQueryFilter();
	value retVal = box3d_b3QueryFilter_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3QueryFilter));
	return retVal;
}

DEFINE_PRIME0 (box3d_b3DefaultWorldDef);
DEFINE_PRIME0 (box3d_b3DefaultBodyDef);
DEFINE_PRIME0 (box3d_b3DefaultFilter);
DEFINE_PRIME0 (box3d_b3DefaultSurfaceMaterial);
DEFINE_PRIME0 (box3d_b3DefaultShapeDef);
DEFINE_PRIME0 (box3d_b3DefaultDistanceJointDef);
DEFINE_PRIME0 (box3d_b3DefaultMotorJointDef);
DEFINE_PRIME0 (box3d_b3DefaultFilterJointDef);
DEFINE_PRIME0 (box3d_b3DefaultParallelJointDef);
DEFINE_PRIME0 (box3d_b3DefaultPrismaticJointDef);
DEFINE_PRIME0 (box3d_b3DefaultRevoluteJointDef);
DEFINE_PRIME0 (box3d_b3DefaultSphericalJointDef);
DEFINE_PRIME0 (box3d_b3DefaultWeldJointDef);
DEFINE_PRIME0 (box3d_b3DefaultWheelJointDef);
DEFINE_PRIME0 (box3d_b3DefaultExplosionDef);
DEFINE_PRIME0 (box3d_b3DefaultQueryFilter);



static value box3d_b3CreateWorld (value def) {
	b3WorldId ret = b3CreateWorld((b3WorldDef*)val_data(def));
	value retVal = box3d_b3WorldId_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3WorldId));
	return retVal;
}
static void box3d_b3DestroyWorld (value worldId) {
	b3DestroyWorld(*(b3WorldId*)val_data(worldId));
}
static int box3d_b3GetWorldCount () {
	return b3GetWorldCount();
}
static int box3d_b3GetMaxWorldCount () {
	return b3GetMaxWorldCount();
}
static bool box3d_b3World_IsValid (value id) {
	return b3World_IsValid(*(b3WorldId*)val_data(id));
}
static void box3d_b3World_Step (value worldId, float timeStep, int subStepCount) {
	b3World_Step(*(b3WorldId*)val_data(worldId), timeStep, subStepCount);
}
static value box3d_b3World_GetBounds (value worldId) {
	b3AABB ret = b3World_GetBounds(*(b3WorldId*)val_data(worldId));
	value retVal = box3d_b3AABB_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3AABB));
	return retVal;
}
static value box3d_b3World_GetBodyEvents (value worldId) {
	b3BodyEvents ret = b3World_GetBodyEvents(*(b3WorldId*)val_data(worldId));
	value retVal = box3d_b3BodyEvents_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3BodyEvents));
	return retVal;
}
static value box3d_b3World_GetSensorEvents (value worldId) {
	b3SensorEvents ret = b3World_GetSensorEvents(*(b3WorldId*)val_data(worldId));
	value retVal = box3d_b3SensorEvents_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3SensorEvents));
	return retVal;
}
static value box3d_b3World_GetContactEvents (value worldId) {
	b3ContactEvents ret = b3World_GetContactEvents(*(b3WorldId*)val_data(worldId));
	value retVal = box3d_b3ContactEvents_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3ContactEvents));
	return retVal;
}
static value box3d_b3World_GetJointEvents (value worldId) {
	b3JointEvents ret = b3World_GetJointEvents(*(b3WorldId*)val_data(worldId));
	value retVal = box3d_b3JointEvents_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3JointEvents));
	return retVal;
}
static value box3d_b3World_OverlapAABB (value worldId, value aabb, value filter, value fcn, value context) {
	b3TreeStats ret = b3World_OverlapAABB(*(b3WorldId*)val_data(worldId), *(b3AABB*)val_data(aabb), *(b3QueryFilter*)val_data(filter), (b3OverlapResultFcn*)val_data(fcn), (void*)val_data(context));
	value retVal = box3d_b3TreeStats_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3TreeStats));
	return retVal;
}
static value box3d_b3World_OverlapShape (value worldId, value origin, value proxy, value filter, value fcn, value context) {
	b3TreeStats ret = b3World_OverlapShape(*(b3WorldId*)val_data(worldId), *(b3Pos*)val_data(origin), (b3ShapeProxy*)val_data(proxy), *(b3QueryFilter*)val_data(filter), (b3OverlapResultFcn*)val_data(fcn), (void*)val_data(context));
	value retVal = box3d_b3TreeStats_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3TreeStats));
	return retVal;
}
static value box3d_b3World_CastRay (value worldId, value origin, value translation, value filter, value fcn, value context) {
	b3TreeStats ret = b3World_CastRay(*(b3WorldId*)val_data(worldId), *(b3Pos*)val_data(origin), *(b3Vec3*)val_data(translation), *(b3QueryFilter*)val_data(filter), (b3CastResultFcn*)val_data(fcn), (void*)val_data(context));
	value retVal = box3d_b3TreeStats_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3TreeStats));
	return retVal;
}
static value box3d_b3World_CastRayClosest (value worldId, value origin, value translation, value filter) {
	b3RayResult ret = b3World_CastRayClosest(*(b3WorldId*)val_data(worldId), *(b3Pos*)val_data(origin), *(b3Vec3*)val_data(translation), *(b3QueryFilter*)val_data(filter));
	value retVal = box3d_b3RayResult_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3RayResult));
	return retVal;
}
static value box3d_b3World_CastShape (value worldId, value origin, value proxy, value translation, value filter, value fcn, value context) {
	b3TreeStats ret = b3World_CastShape(*(b3WorldId*)val_data(worldId), *(b3Pos*)val_data(origin), (b3ShapeProxy*)val_data(proxy), *(b3Vec3*)val_data(translation), *(b3QueryFilter*)val_data(filter), (b3CastResultFcn*)val_data(fcn), (void*)val_data(context));
	value retVal = box3d_b3TreeStats_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3TreeStats));
	return retVal;
}
static float box3d_b3World_CastMover (value worldId, value origin, value mover, value translation, value filter, value fcn, value context) {
	return b3World_CastMover(*(b3WorldId*)val_data(worldId), *(b3Pos*)val_data(origin), (b3Capsule*)val_data(mover), *(b3Vec3*)val_data(translation), *(b3QueryFilter*)val_data(filter), (b3MoverFilterFcn*)val_data(fcn), (void*)val_data(context));
}
static void box3d_b3World_CollideMover (value worldId, value origin, value mover, value filter, value fcn, value context) {
	b3World_CollideMover(*(b3WorldId*)val_data(worldId), *(b3Pos*)val_data(origin), (b3Capsule*)val_data(mover), *(b3QueryFilter*)val_data(filter), (b3PlaneResultFcn*)val_data(fcn), (void*)val_data(context));
}
static void box3d_b3World_EnableSleeping (value worldId, bool flag) {
	b3World_EnableSleeping(*(b3WorldId*)val_data(worldId), flag);
}
static bool box3d_b3World_IsSleepingEnabled (value worldId) {
	return b3World_IsSleepingEnabled(*(b3WorldId*)val_data(worldId));
}
static void box3d_b3World_EnableContinuous (value worldId, bool flag) {
	b3World_EnableContinuous(*(b3WorldId*)val_data(worldId), flag);
}
static bool box3d_b3World_IsContinuousEnabled (value worldId) {
	return b3World_IsContinuousEnabled(*(b3WorldId*)val_data(worldId));
}
static void box3d_b3World_SetRestitutionThreshold (value worldId, float value) {
	b3World_SetRestitutionThreshold(*(b3WorldId*)val_data(worldId), value);
}
static float box3d_b3World_GetRestitutionThreshold (value worldId) {
	return b3World_GetRestitutionThreshold(*(b3WorldId*)val_data(worldId));
}
static void box3d_b3World_SetHitEventThreshold (value worldId, float value) {
	b3World_SetHitEventThreshold(*(b3WorldId*)val_data(worldId), value);
}
static float box3d_b3World_GetHitEventThreshold (value worldId) {
	return b3World_GetHitEventThreshold(*(b3WorldId*)val_data(worldId));
}
static void box3d_b3World_SetCustomFilterCallback (value worldId, value fcn, value context) {
	b3World_SetCustomFilterCallback(*(b3WorldId*)val_data(worldId), (b3CustomFilterFcn*)val_data(fcn), (void*)val_data(context));
}
static void box3d_b3World_SetPreSolveCallback (value worldId, value fcn, value context) {
	b3World_SetPreSolveCallback(*(b3WorldId*)val_data(worldId), (b3PreSolveFcn*)val_data(fcn), (void*)val_data(context));
}
static void box3d_b3World_SetGravity (value worldId, value gravity) {
	b3World_SetGravity(*(b3WorldId*)val_data(worldId), *(b3Vec3*)val_data(gravity));
}
static value box3d_b3World_GetGravity (value worldId) {
	b3Vec3 ret = b3World_GetGravity(*(b3WorldId*)val_data(worldId));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static void box3d_b3World_Explode (value worldId, value explosionDef) {
	b3World_Explode(*(b3WorldId*)val_data(worldId), (b3ExplosionDef*)val_data(explosionDef));
}
static void box3d_b3World_SetContactTuning (value worldId, float hertz, float dampingRatio, float contactSpeed) {
	b3World_SetContactTuning(*(b3WorldId*)val_data(worldId), hertz, dampingRatio, contactSpeed);
}
static void box3d_b3World_SetContactRecycleDistance (value worldId, float recycleDistance) {
	b3World_SetContactRecycleDistance(*(b3WorldId*)val_data(worldId), recycleDistance);
}
static float box3d_b3World_GetContactRecycleDistance (value worldId) {
	return b3World_GetContactRecycleDistance(*(b3WorldId*)val_data(worldId));
}
static void box3d_b3World_SetMaximumLinearSpeed (value worldId, float maximumLinearSpeed) {
	b3World_SetMaximumLinearSpeed(*(b3WorldId*)val_data(worldId), maximumLinearSpeed);
}
static float box3d_b3World_GetMaximumLinearSpeed (value worldId) {
	return b3World_GetMaximumLinearSpeed(*(b3WorldId*)val_data(worldId));
}
static void box3d_b3World_EnableWarmStarting (value worldId, bool flag) {
	b3World_EnableWarmStarting(*(b3WorldId*)val_data(worldId), flag);
}
static bool box3d_b3World_IsWarmStartingEnabled (value worldId) {
	return b3World_IsWarmStartingEnabled(*(b3WorldId*)val_data(worldId));
}
static int box3d_b3World_GetAwakeBodyCount (value worldId) {
	return b3World_GetAwakeBodyCount(*(b3WorldId*)val_data(worldId));
}
static value box3d_b3World_GetProfile (value worldId) {
	b3Profile ret = b3World_GetProfile(*(b3WorldId*)val_data(worldId));
	value retVal = box3d_b3Profile_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Profile));
	return retVal;
}
static value box3d_b3World_GetCounters (value worldId) {
	b3Counters ret = b3World_GetCounters(*(b3WorldId*)val_data(worldId));
	value retVal = box3d_b3Counters_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Counters));
	return retVal;
}
static value box3d_b3World_GetMaxCapacity (value worldId) {
	b3Capacity ret = b3World_GetMaxCapacity(*(b3WorldId*)val_data(worldId));
	value retVal = box3d_b3Capacity_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Capacity));
	return retVal;
}
static void box3d_b3World_SetUserData (value worldId, value userData) {
	b3World_SetUserData(*(b3WorldId*)val_data(worldId), (void*)val_data(userData));
}
static void box3d_b3World_SetFrictionCallback (value worldId, value callback) {
	b3World_SetFrictionCallback(*(b3WorldId*)val_data(worldId), (b3FrictionCallback*)val_data(callback));
}
static void box3d_b3World_SetRestitutionCallback (value worldId, value callback) {
	b3World_SetRestitutionCallback(*(b3WorldId*)val_data(worldId), (b3RestitutionCallback*)val_data(callback));
}
static void box3d_b3World_SetWorkerCount (value worldId, int count) {
	b3World_SetWorkerCount(*(b3WorldId*)val_data(worldId), count);
}
static int box3d_b3World_GetWorkerCount (value worldId) {
	return b3World_GetWorkerCount(*(b3WorldId*)val_data(worldId));
}
static void box3d_b3World_DumpMemoryStats (value worldId) {
	b3World_DumpMemoryStats(*(b3WorldId*)val_data(worldId));
}
static void box3d_b3World_RebuildStaticTree (value worldId) {
	b3World_RebuildStaticTree(*(b3WorldId*)val_data(worldId));
}
static void box3d_b3World_EnableSpeculative (value worldId, bool flag) {
	b3World_EnableSpeculative(*(b3WorldId*)val_data(worldId), flag);
}
static void box3d_b3DestroyRecording (value recording) {
	b3DestroyRecording((b3Recording*)val_data(recording));
}
static int box3d_b3Recording_GetSize (value recording) {
	return b3Recording_GetSize((b3Recording*)val_data(recording));
}
static void box3d_b3World_StartRecording (value worldId, value recording) {
	b3World_StartRecording(*(b3WorldId*)val_data(worldId), (b3Recording*)val_data(recording));
}
static void box3d_b3World_StopRecording (value worldId) {
	b3World_StopRecording(*(b3WorldId*)val_data(worldId));
}
static bool box3d_b3SaveRecordingToFile (value recording, HxString path) {
	return b3SaveRecordingToFile((b3Recording*)val_data(recording), path.__s);
}
static bool box3d_b3ValidateReplay (value data, int size, int workerCount) {
	return b3ValidateReplay((void*)val_data(data), size, workerCount);
}
static void box3d_b3DestroyPlayer (value player) {
	b3DestroyPlayer((b3RecPlayer*)val_data(player));
}
static bool box3d_b3RecPlayer_StepFrame (value player) {
	return b3RecPlayer_StepFrame((b3RecPlayer*)val_data(player));
}
static void box3d_b3RecPlayer_SubStepFrame (value player) {
	b3RecPlayer_SubStepFrame((b3RecPlayer*)val_data(player));
}
static void box3d_b3RecPlayer_Restart (value player) {
	b3RecPlayer_Restart((b3RecPlayer*)val_data(player));
}
static void box3d_b3RecPlayer_SeekFrame (value player, int targetFrame) {
	b3RecPlayer_SeekFrame((b3RecPlayer*)val_data(player), targetFrame);
}
static value box3d_b3RecPlayer_GetWorldId (value player) {
	b3WorldId ret = b3RecPlayer_GetWorldId((b3RecPlayer*)val_data(player));
	value retVal = box3d_b3WorldId_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3WorldId));
	return retVal;
}
static int box3d_b3RecPlayer_GetFrame (value player) {
	return b3RecPlayer_GetFrame((b3RecPlayer*)val_data(player));
}
static int box3d_b3RecPlayer_GetFrameCount (value player) {
	return b3RecPlayer_GetFrameCount((b3RecPlayer*)val_data(player));
}
static bool box3d_b3RecPlayer_IsAtEnd (value player) {
	return b3RecPlayer_IsAtEnd((b3RecPlayer*)val_data(player));
}
static bool box3d_b3RecPlayer_IsAtPreStep (value player) {
	return b3RecPlayer_IsAtPreStep((b3RecPlayer*)val_data(player));
}
static bool box3d_b3RecPlayer_HasDiverged (value player) {
	return b3RecPlayer_HasDiverged((b3RecPlayer*)val_data(player));
}
static value box3d_b3RecPlayer_GetInfo (value player) {
	b3RecPlayerInfo ret = b3RecPlayer_GetInfo((b3RecPlayer*)val_data(player));
	value retVal = box3d_b3RecPlayerInfo_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3RecPlayerInfo));
	return retVal;
}
static int box3d_b3RecPlayer_GetDivergeFrame (value player) {
	return b3RecPlayer_GetDivergeFrame((b3RecPlayer*)val_data(player));
}
static void box3d_b3RecPlayer_SetWorkerCount (value player, int count) {
	b3RecPlayer_SetWorkerCount((b3RecPlayer*)val_data(player), count);
}
static void box3d_b3RecPlayer_SetKeyframePolicy (value player, value budgetBytes, int minIntervalFrames) {
	b3RecPlayer_SetKeyframePolicy((b3RecPlayer*)val_data(player), *(size_t*)val_data(budgetBytes), minIntervalFrames);
}
static int box3d_b3RecPlayer_GetKeyframeMinInterval (value player) {
	return b3RecPlayer_GetKeyframeMinInterval((b3RecPlayer*)val_data(player));
}
static int box3d_b3RecPlayer_GetKeyframeInterval (value player) {
	return b3RecPlayer_GetKeyframeInterval((b3RecPlayer*)val_data(player));
}
static int box3d_b3RecPlayer_GetBodyCount (value player) {
	return b3RecPlayer_GetBodyCount((b3RecPlayer*)val_data(player));
}
static value box3d_b3RecPlayer_GetBodyId (value player, int index) {
	b3BodyId ret = b3RecPlayer_GetBodyId((b3RecPlayer*)val_data(player), index);
	value retVal = box3d_b3BodyId_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3BodyId));
	return retVal;
}
static void box3d_b3RecPlayer_SetDebugShapeCallbacks (value player, value createDebugShape, value destroyDebugShape, value context) {
	b3RecPlayer_SetDebugShapeCallbacks((b3RecPlayer*)val_data(player), (b3CreateDebugShapeCallback*)val_data(createDebugShape), (b3DestroyDebugShapeCallback*)val_data(destroyDebugShape), (void*)val_data(context));
}
static void box3d_b3RecPlayer_DrawFrameQueries (value player, value draw, int queryIndex, int selectedIndex) {
	b3RecPlayer_DrawFrameQueries((b3RecPlayer*)val_data(player), (b3DebugDraw*)val_data(draw), queryIndex, selectedIndex);
}
static int box3d_b3RecPlayer_GetFrameQueryCount (value player) {
	return b3RecPlayer_GetFrameQueryCount((b3RecPlayer*)val_data(player));
}
static value box3d_b3RecPlayer_GetFrameQuery (value player, int index) {
	b3RecQueryInfo ret = b3RecPlayer_GetFrameQuery((b3RecPlayer*)val_data(player), index);
	value retVal = box3d_b3RecQueryInfo_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3RecQueryInfo));
	return retVal;
}
static value box3d_b3RecPlayer_GetFrameQueryHit (value player, int queryIndex, int hitIndex) {
	b3RecQueryHit ret = b3RecPlayer_GetFrameQueryHit((b3RecPlayer*)val_data(player), queryIndex, hitIndex);
	value retVal = box3d_b3RecQueryHit_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3RecQueryHit));
	return retVal;
}
static value box3d_b3CreateBody (value worldId, value def) {
	b3BodyId ret = b3CreateBody(*(b3WorldId*)val_data(worldId), (b3BodyDef*)val_data(def));
	value retVal = box3d_b3BodyId_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3BodyId));
	return retVal;
}
static void box3d_b3DestroyBody (value bodyId) {
	b3DestroyBody(*(b3BodyId*)val_data(bodyId));
}
static bool box3d_b3Body_IsValid (value id) {
	return b3Body_IsValid(*(b3BodyId*)val_data(id));
}
static int box3d_b3Body_GetType (value bodyId) {
	return b3Body_GetType(*(b3BodyId*)val_data(bodyId));
}
static void box3d_b3Body_SetType (value bodyId, int type) {
	b3Body_SetType(*(b3BodyId*)val_data(bodyId), (b3BodyType)type);
}
static void box3d_b3Body_SetName (value bodyId, HxString name) {
	b3Body_SetName(*(b3BodyId*)val_data(bodyId), name.__s);
}
static void box3d_b3Body_SetUserData (value bodyId, value userData) {
	b3Body_SetUserData(*(b3BodyId*)val_data(bodyId), (void*)val_data(userData));
}
static value box3d_b3Body_GetPosition (value bodyId) {
	b3Pos ret = b3Body_GetPosition(*(b3BodyId*)val_data(bodyId));
	value retVal = box3d_b3Pos_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Pos));
	return retVal;
}
static value box3d_b3Body_GetRotation (value bodyId) {
	b3Quat ret = b3Body_GetRotation(*(b3BodyId*)val_data(bodyId));
	value retVal = box3d_b3Quat_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Quat));
	return retVal;
}
static value box3d_b3Body_GetTransform (value bodyId) {
	b3WorldTransform ret = b3Body_GetTransform(*(b3BodyId*)val_data(bodyId));
	value retVal = box3d_b3WorldTransform_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3WorldTransform));
	return retVal;
}
static void box3d_b3Body_SetTransform (value bodyId, value position, value rotation) {
	b3Body_SetTransform(*(b3BodyId*)val_data(bodyId), *(b3Pos*)val_data(position), *(b3Quat*)val_data(rotation));
}
static value box3d_b3Body_GetLocalPoint (value bodyId, value worldPoint) {
	b3Vec3 ret = b3Body_GetLocalPoint(*(b3BodyId*)val_data(bodyId), *(b3Pos*)val_data(worldPoint));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3Body_GetWorldPoint (value bodyId, value localPoint) {
	b3Pos ret = b3Body_GetWorldPoint(*(b3BodyId*)val_data(bodyId), *(b3Vec3*)val_data(localPoint));
	value retVal = box3d_b3Pos_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Pos));
	return retVal;
}
static value box3d_b3Body_GetLocalVector (value bodyId, value worldVector) {
	b3Vec3 ret = b3Body_GetLocalVector(*(b3BodyId*)val_data(bodyId), *(b3Vec3*)val_data(worldVector));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3Body_GetWorldVector (value bodyId, value localVector) {
	b3Vec3 ret = b3Body_GetWorldVector(*(b3BodyId*)val_data(bodyId), *(b3Vec3*)val_data(localVector));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3Body_GetLinearVelocity (value bodyId) {
	b3Vec3 ret = b3Body_GetLinearVelocity(*(b3BodyId*)val_data(bodyId));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3Body_GetAngularVelocity (value bodyId) {
	b3Vec3 ret = b3Body_GetAngularVelocity(*(b3BodyId*)val_data(bodyId));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static void box3d_b3Body_SetLinearVelocity (value bodyId, value linearVelocity) {
	b3Body_SetLinearVelocity(*(b3BodyId*)val_data(bodyId), *(b3Vec3*)val_data(linearVelocity));
}
static void box3d_b3Body_SetAngularVelocity (value bodyId, value angularVelocity) {
	b3Body_SetAngularVelocity(*(b3BodyId*)val_data(bodyId), *(b3Vec3*)val_data(angularVelocity));
}
static void box3d_b3Body_SetTargetTransform (value bodyId, value target, float timeStep, bool wake) {
	b3Body_SetTargetTransform(*(b3BodyId*)val_data(bodyId), *(b3WorldTransform*)val_data(target), timeStep, wake);
}
static value box3d_b3Body_GetLocalPointVelocity (value bodyId, value localPoint) {
	b3Vec3 ret = b3Body_GetLocalPointVelocity(*(b3BodyId*)val_data(bodyId), *(b3Vec3*)val_data(localPoint));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3Body_GetWorldPointVelocity (value bodyId, value worldPoint) {
	b3Vec3 ret = b3Body_GetWorldPointVelocity(*(b3BodyId*)val_data(bodyId), *(b3Pos*)val_data(worldPoint));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static void box3d_b3Body_ApplyForce (value bodyId, value force, value point, bool wake) {
	b3Body_ApplyForce(*(b3BodyId*)val_data(bodyId), *(b3Vec3*)val_data(force), *(b3Pos*)val_data(point), wake);
}
static void box3d_b3Body_ApplyForceToCenter (value bodyId, value force, bool wake) {
	b3Body_ApplyForceToCenter(*(b3BodyId*)val_data(bodyId), *(b3Vec3*)val_data(force), wake);
}
static void box3d_b3Body_ApplyTorque (value bodyId, value torque, bool wake) {
	b3Body_ApplyTorque(*(b3BodyId*)val_data(bodyId), *(b3Vec3*)val_data(torque), wake);
}
static void box3d_b3Body_ApplyLinearImpulse (value bodyId, value impulse, value point, bool wake) {
	b3Body_ApplyLinearImpulse(*(b3BodyId*)val_data(bodyId), *(b3Vec3*)val_data(impulse), *(b3Pos*)val_data(point), wake);
}
static void box3d_b3Body_ApplyLinearImpulseToCenter (value bodyId, value impulse, bool wake) {
	b3Body_ApplyLinearImpulseToCenter(*(b3BodyId*)val_data(bodyId), *(b3Vec3*)val_data(impulse), wake);
}
static void box3d_b3Body_ApplyAngularImpulse (value bodyId, value impulse, bool wake) {
	b3Body_ApplyAngularImpulse(*(b3BodyId*)val_data(bodyId), *(b3Vec3*)val_data(impulse), wake);
}
static float box3d_b3Body_GetMass (value bodyId) {
	return b3Body_GetMass(*(b3BodyId*)val_data(bodyId));
}
static value box3d_b3Body_GetLocalRotationalInertia (value bodyId) {
	b3Matrix3 ret = b3Body_GetLocalRotationalInertia(*(b3BodyId*)val_data(bodyId));
	value retVal = box3d_b3Matrix3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Matrix3));
	return retVal;
}
static float box3d_b3Body_GetInverseMass (value bodyId) {
	return b3Body_GetInverseMass(*(b3BodyId*)val_data(bodyId));
}
static value box3d_b3Body_GetWorldInverseRotationalInertia (value bodyId) {
	b3Matrix3 ret = b3Body_GetWorldInverseRotationalInertia(*(b3BodyId*)val_data(bodyId));
	value retVal = box3d_b3Matrix3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Matrix3));
	return retVal;
}
static value box3d_b3Body_GetLocalCenter (value bodyId) {
	b3Vec3 ret = b3Body_GetLocalCenter(*(b3BodyId*)val_data(bodyId));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3Body_GetWorldCenter (value bodyId) {
	b3Pos ret = b3Body_GetWorldCenter(*(b3BodyId*)val_data(bodyId));
	value retVal = box3d_b3Pos_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Pos));
	return retVal;
}
static void box3d_b3Body_SetMassData (value bodyId, value massData) {
	b3Body_SetMassData(*(b3BodyId*)val_data(bodyId), *(b3MassData*)val_data(massData));
}
static value box3d_b3Body_GetMassData (value bodyId) {
	b3MassData ret = b3Body_GetMassData(*(b3BodyId*)val_data(bodyId));
	value retVal = box3d_b3MassData_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3MassData));
	return retVal;
}
static void box3d_b3Body_ApplyMassFromShapes (value bodyId) {
	b3Body_ApplyMassFromShapes(*(b3BodyId*)val_data(bodyId));
}
static void box3d_b3Body_SetLinearDamping (value bodyId, float linearDamping) {
	b3Body_SetLinearDamping(*(b3BodyId*)val_data(bodyId), linearDamping);
}
static float box3d_b3Body_GetLinearDamping (value bodyId) {
	return b3Body_GetLinearDamping(*(b3BodyId*)val_data(bodyId));
}
static void box3d_b3Body_SetAngularDamping (value bodyId, float angularDamping) {
	b3Body_SetAngularDamping(*(b3BodyId*)val_data(bodyId), angularDamping);
}
static float box3d_b3Body_GetAngularDamping (value bodyId) {
	return b3Body_GetAngularDamping(*(b3BodyId*)val_data(bodyId));
}
static void box3d_b3Body_SetGravityScale (value bodyId, float gravityScale) {
	b3Body_SetGravityScale(*(b3BodyId*)val_data(bodyId), gravityScale);
}
static float box3d_b3Body_GetGravityScale (value bodyId) {
	return b3Body_GetGravityScale(*(b3BodyId*)val_data(bodyId));
}
static bool box3d_b3Body_IsAwake (value bodyId) {
	return b3Body_IsAwake(*(b3BodyId*)val_data(bodyId));
}
static void box3d_b3Body_SetAwake (value bodyId, bool awake) {
	b3Body_SetAwake(*(b3BodyId*)val_data(bodyId), awake);
}
static void box3d_b3Body_EnableSleep (value bodyId, bool enableSleep) {
	b3Body_EnableSleep(*(b3BodyId*)val_data(bodyId), enableSleep);
}
static bool box3d_b3Body_IsSleepEnabled (value bodyId) {
	return b3Body_IsSleepEnabled(*(b3BodyId*)val_data(bodyId));
}
static void box3d_b3Body_SetSleepThreshold (value bodyId, float sleepThreshold) {
	b3Body_SetSleepThreshold(*(b3BodyId*)val_data(bodyId), sleepThreshold);
}
static float box3d_b3Body_GetSleepThreshold (value bodyId) {
	return b3Body_GetSleepThreshold(*(b3BodyId*)val_data(bodyId));
}
static bool box3d_b3Body_IsEnabled (value bodyId) {
	return b3Body_IsEnabled(*(b3BodyId*)val_data(bodyId));
}
static void box3d_b3Body_Disable (value bodyId) {
	b3Body_Disable(*(b3BodyId*)val_data(bodyId));
}
static void box3d_b3Body_Enable (value bodyId) {
	b3Body_Enable(*(b3BodyId*)val_data(bodyId));
}
static void box3d_b3Body_SetMotionLocks (value bodyId, value locks) {
	b3Body_SetMotionLocks(*(b3BodyId*)val_data(bodyId), *(b3MotionLocks*)val_data(locks));
}
static value box3d_b3Body_GetMotionLocks (value bodyId) {
	b3MotionLocks ret = b3Body_GetMotionLocks(*(b3BodyId*)val_data(bodyId));
	value retVal = box3d_b3MotionLocks_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3MotionLocks));
	return retVal;
}
static void box3d_b3Body_SetBullet (value bodyId, bool flag) {
	b3Body_SetBullet(*(b3BodyId*)val_data(bodyId), flag);
}
static bool box3d_b3Body_IsBullet (value bodyId) {
	return b3Body_IsBullet(*(b3BodyId*)val_data(bodyId));
}
static void box3d_b3Body_AllowFastRotation (value bodyId, bool flag) {
	b3Body_AllowFastRotation(*(b3BodyId*)val_data(bodyId), flag);
}
static bool box3d_b3Body_IsFastRotationAllowed (value bodyId) {
	return b3Body_IsFastRotationAllowed(*(b3BodyId*)val_data(bodyId));
}
static void box3d_b3Body_EnableContactRecycling (value bodyId, bool flag) {
	b3Body_EnableContactRecycling(*(b3BodyId*)val_data(bodyId), flag);
}
static bool box3d_b3Body_IsContactRecyclingEnabled (value bodyId) {
	return b3Body_IsContactRecyclingEnabled(*(b3BodyId*)val_data(bodyId));
}
static void box3d_b3Body_EnableHitEvents (value bodyId, bool flag) {
	b3Body_EnableHitEvents(*(b3BodyId*)val_data(bodyId), flag);
}
static value box3d_b3Body_GetWorld (value bodyId) {
	b3WorldId ret = b3Body_GetWorld(*(b3BodyId*)val_data(bodyId));
	value retVal = box3d_b3WorldId_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3WorldId));
	return retVal;
}
static int box3d_b3Body_GetShapeCount (value bodyId) {
	return b3Body_GetShapeCount(*(b3BodyId*)val_data(bodyId));
}
static int box3d_b3Body_GetShapes (value bodyId, value shapeArray, int capacity) {
	return b3Body_GetShapes(*(b3BodyId*)val_data(bodyId), (b3ShapeId*)val_data(shapeArray), capacity);
}
static int box3d_b3Body_GetJointCount (value bodyId) {
	return b3Body_GetJointCount(*(b3BodyId*)val_data(bodyId));
}
static int box3d_b3Body_GetJoints (value bodyId, value jointArray, int capacity) {
	return b3Body_GetJoints(*(b3BodyId*)val_data(bodyId), (b3JointId*)val_data(jointArray), capacity);
}
static int box3d_b3Body_GetContactCapacity (value bodyId) {
	return b3Body_GetContactCapacity(*(b3BodyId*)val_data(bodyId));
}
static int box3d_b3Body_GetContactData (value bodyId, value contactData, int capacity) {
	return b3Body_GetContactData(*(b3BodyId*)val_data(bodyId), (b3ContactData*)val_data(contactData), capacity);
}
static value box3d_b3Body_ComputeAABB (value bodyId) {
	b3AABB ret = b3Body_ComputeAABB(*(b3BodyId*)val_data(bodyId));
	value retVal = box3d_b3AABB_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3AABB));
	return retVal;
}
static float box3d_b3Body_GetMinExtent (value bodyId) {
	return b3Body_GetMinExtent(*(b3BodyId*)val_data(bodyId));
}
static value box3d_b3Body_GetMaxExtent (value bodyId) {
	b3Vec3 ret = b3Body_GetMaxExtent(*(b3BodyId*)val_data(bodyId));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3Body_GetMaxExtentOrigin (value bodyId) {
	b3Vec3 ret = b3Body_GetMaxExtentOrigin(*(b3BodyId*)val_data(bodyId));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static float box3d_b3Body_GetClosestPoint (value bodyId, value result, value target) {
	return b3Body_GetClosestPoint(*(b3BodyId*)val_data(bodyId), (b3Vec3*)val_data(result), *(b3Vec3*)val_data(target));
}
static value box3d_b3Body_CastRay (value bodyId, value origin, value translation, value filter, float maxFraction, value bodyTransform) {
	b3BodyCastResult ret = b3Body_CastRay(*(b3BodyId*)val_data(bodyId), *(b3Pos*)val_data(origin), *(b3Vec3*)val_data(translation), *(b3QueryFilter*)val_data(filter), maxFraction, *(b3WorldTransform*)val_data(bodyTransform));
	value retVal = box3d_b3BodyCastResult_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3BodyCastResult));
	return retVal;
}
static value box3d_b3Body_CastShape (value bodyId, value origin, value proxy, value translation, value filter, float maxFraction, bool canEncroach, value bodyTransform) {
	b3BodyCastResult ret = b3Body_CastShape(*(b3BodyId*)val_data(bodyId), *(b3Pos*)val_data(origin), (b3ShapeProxy*)val_data(proxy), *(b3Vec3*)val_data(translation), *(b3QueryFilter*)val_data(filter), maxFraction, canEncroach, *(b3WorldTransform*)val_data(bodyTransform));
	value retVal = box3d_b3BodyCastResult_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3BodyCastResult));
	return retVal;
}
static bool box3d_b3Body_OverlapShape (value bodyId, value origin, value proxy, value filter, value bodyTransform) {
	return b3Body_OverlapShape(*(b3BodyId*)val_data(bodyId), *(b3Pos*)val_data(origin), (b3ShapeProxy*)val_data(proxy), *(b3QueryFilter*)val_data(filter), *(b3WorldTransform*)val_data(bodyTransform));
}
static int box3d_b3Body_CollideMover (value bodyId, value bodyPlanes, int planeCapacity, value origin, value mover, value filter, value bodyTransform) {
	return b3Body_CollideMover(*(b3BodyId*)val_data(bodyId), (b3BodyPlaneResult*)val_data(bodyPlanes), planeCapacity, *(b3Pos*)val_data(origin), (b3Capsule*)val_data(mover), *(b3QueryFilter*)val_data(filter), *(b3WorldTransform*)val_data(bodyTransform));
}
static value box3d_b3Body_TimeOfImpactMover (value bodyId, value origin, value mover, value moverTranslation, value filter, value bodyTransform1, value bodyTransform2) {
	b3BodyTOIResult ret = b3Body_TimeOfImpactMover(*(b3BodyId*)val_data(bodyId), *(b3Pos*)val_data(origin), (b3Capsule*)val_data(mover), *(b3Vec3*)val_data(moverTranslation), *(b3QueryFilter*)val_data(filter), *(b3WorldTransform*)val_data(bodyTransform1), *(b3WorldTransform*)val_data(bodyTransform2));
	value retVal = box3d_b3BodyTOIResult_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3BodyTOIResult));
	return retVal;
}
static value box3d_b3CreateSphereShape (value bodyId, value def, value sphere) {
	b3ShapeId ret = b3CreateSphereShape(*(b3BodyId*)val_data(bodyId), (b3ShapeDef*)val_data(def), (b3Sphere*)val_data(sphere));
	value retVal = box3d_b3ShapeId_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3ShapeId));
	return retVal;
}
static value box3d_b3CreateCapsuleShape (value bodyId, value def, value capsule) {
	b3ShapeId ret = b3CreateCapsuleShape(*(b3BodyId*)val_data(bodyId), (b3ShapeDef*)val_data(def), (b3Capsule*)val_data(capsule));
	value retVal = box3d_b3ShapeId_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3ShapeId));
	return retVal;
}
static value box3d_b3CreateHullShape (value bodyId, value def, value hull) {
	b3ShapeId ret = b3CreateHullShape(*(b3BodyId*)val_data(bodyId), (b3ShapeDef*)val_data(def), (b3HullData*)val_data(hull));
	value retVal = box3d_b3ShapeId_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3ShapeId));
	return retVal;
}
static value box3d_b3CreateTransformedHullShape (value bodyId, value def, value hull, value transform, value scale) {
	b3ShapeId ret = b3CreateTransformedHullShape(*(b3BodyId*)val_data(bodyId), (b3ShapeDef*)val_data(def), (b3HullData*)val_data(hull), *(b3Transform*)val_data(transform), *(b3Vec3*)val_data(scale));
	value retVal = box3d_b3ShapeId_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3ShapeId));
	return retVal;
}
static value box3d_b3CreateMeshShape (value bodyId, value def, value mesh, value scale) {
	b3ShapeId ret = b3CreateMeshShape(*(b3BodyId*)val_data(bodyId), (b3ShapeDef*)val_data(def), (b3MeshData*)val_data(mesh), *(b3Vec3*)val_data(scale));
	value retVal = box3d_b3ShapeId_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3ShapeId));
	return retVal;
}
static value box3d_b3CreateHeightFieldShape (value bodyId, value def, value heightField) {
	b3ShapeId ret = b3CreateHeightFieldShape(*(b3BodyId*)val_data(bodyId), (b3ShapeDef*)val_data(def), (b3HeightFieldData*)val_data(heightField));
	value retVal = box3d_b3ShapeId_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3ShapeId));
	return retVal;
}
static value box3d_b3CreateBakedCompoundShape (value bodyId, value def, value compound) {
	b3ShapeId ret = b3CreateBakedCompoundShape(*(b3BodyId*)val_data(bodyId), (b3ShapeDef*)val_data(def), (b3CompoundData*)val_data(compound));
	value retVal = box3d_b3ShapeId_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3ShapeId));
	return retVal;
}
static void box3d_b3DestroyShape (value shapeId, bool updateBodyMass) {
	b3DestroyShape(*(b3ShapeId*)val_data(shapeId), updateBodyMass);
}
static bool box3d_b3Shape_IsValid (value id) {
	return b3Shape_IsValid(*(b3ShapeId*)val_data(id));
}
static int box3d_b3Shape_GetType (value shapeId) {
	return b3Shape_GetType(*(b3ShapeId*)val_data(shapeId));
}
static value box3d_b3Shape_GetBody (value shapeId) {
	b3BodyId ret = b3Shape_GetBody(*(b3ShapeId*)val_data(shapeId));
	value retVal = box3d_b3BodyId_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3BodyId));
	return retVal;
}
static value box3d_b3Shape_GetWorld (value shapeId) {
	b3WorldId ret = b3Shape_GetWorld(*(b3ShapeId*)val_data(shapeId));
	value retVal = box3d_b3WorldId_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3WorldId));
	return retVal;
}
static bool box3d_b3Shape_IsSensor (value shapeId) {
	return b3Shape_IsSensor(*(b3ShapeId*)val_data(shapeId));
}
static void box3d_b3Shape_SetName (value shapeId, HxString name) {
	b3Shape_SetName(*(b3ShapeId*)val_data(shapeId), name.__s);
}
static void box3d_b3Shape_SetUserData (value shapeId, value userData) {
	b3Shape_SetUserData(*(b3ShapeId*)val_data(shapeId), (void*)val_data(userData));
}
static void box3d_b3Shape_SetDensity (value shapeId, float density, bool updateBodyMass) {
	b3Shape_SetDensity(*(b3ShapeId*)val_data(shapeId), density, updateBodyMass);
}
static float box3d_b3Shape_GetDensity (value shapeId) {
	return b3Shape_GetDensity(*(b3ShapeId*)val_data(shapeId));
}
static void box3d_b3Shape_SetFriction (value shapeId, float friction) {
	b3Shape_SetFriction(*(b3ShapeId*)val_data(shapeId), friction);
}
static float box3d_b3Shape_GetFriction (value shapeId) {
	return b3Shape_GetFriction(*(b3ShapeId*)val_data(shapeId));
}
static void box3d_b3Shape_SetRestitution (value shapeId, float restitution) {
	b3Shape_SetRestitution(*(b3ShapeId*)val_data(shapeId), restitution);
}
static float box3d_b3Shape_GetRestitution (value shapeId) {
	return b3Shape_GetRestitution(*(b3ShapeId*)val_data(shapeId));
}
static void box3d_b3Shape_SetSurfaceMaterial (value shapeId, value surfaceMaterial) {
	b3Shape_SetSurfaceMaterial(*(b3ShapeId*)val_data(shapeId), *(b3SurfaceMaterial*)val_data(surfaceMaterial));
}
static value box3d_b3Shape_GetSurfaceMaterial (value shapeId) {
	b3SurfaceMaterial ret = b3Shape_GetSurfaceMaterial(*(b3ShapeId*)val_data(shapeId));
	value retVal = box3d_b3SurfaceMaterial_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3SurfaceMaterial));
	return retVal;
}
static int box3d_b3Shape_GetMeshMaterialCount (value shapeId) {
	return b3Shape_GetMeshMaterialCount(*(b3ShapeId*)val_data(shapeId));
}
static void box3d_b3Shape_SetMeshMaterial (value shapeId, value surfaceMaterial, int index) {
	b3Shape_SetMeshMaterial(*(b3ShapeId*)val_data(shapeId), *(b3SurfaceMaterial*)val_data(surfaceMaterial), index);
}
static value box3d_b3Shape_GetMeshSurfaceMaterial (value shapeId, int index) {
	b3SurfaceMaterial ret = b3Shape_GetMeshSurfaceMaterial(*(b3ShapeId*)val_data(shapeId), index);
	value retVal = box3d_b3SurfaceMaterial_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3SurfaceMaterial));
	return retVal;
}
static value box3d_b3Shape_GetFilter (value shapeId) {
	b3Filter ret = b3Shape_GetFilter(*(b3ShapeId*)val_data(shapeId));
	value retVal = box3d_b3Filter_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Filter));
	return retVal;
}
static void box3d_b3Shape_SetFilter (value shapeId, value filter, bool invokeContacts) {
	b3Shape_SetFilter(*(b3ShapeId*)val_data(shapeId), *(b3Filter*)val_data(filter), invokeContacts);
}
static void box3d_b3Shape_EnableSensorEvents (value shapeId, bool flag) {
	b3Shape_EnableSensorEvents(*(b3ShapeId*)val_data(shapeId), flag);
}
static bool box3d_b3Shape_AreSensorEventsEnabled (value shapeId) {
	return b3Shape_AreSensorEventsEnabled(*(b3ShapeId*)val_data(shapeId));
}
static void box3d_b3Shape_EnableContactEvents (value shapeId, bool flag) {
	b3Shape_EnableContactEvents(*(b3ShapeId*)val_data(shapeId), flag);
}
static bool box3d_b3Shape_AreContactEventsEnabled (value shapeId) {
	return b3Shape_AreContactEventsEnabled(*(b3ShapeId*)val_data(shapeId));
}
static void box3d_b3Shape_EnablePreSolveEvents (value shapeId, bool flag) {
	b3Shape_EnablePreSolveEvents(*(b3ShapeId*)val_data(shapeId), flag);
}
static bool box3d_b3Shape_ArePreSolveEventsEnabled (value shapeId) {
	return b3Shape_ArePreSolveEventsEnabled(*(b3ShapeId*)val_data(shapeId));
}
static void box3d_b3Shape_EnableHitEvents (value shapeId, bool flag) {
	b3Shape_EnableHitEvents(*(b3ShapeId*)val_data(shapeId), flag);
}
static bool box3d_b3Shape_AreHitEventsEnabled (value shapeId) {
	return b3Shape_AreHitEventsEnabled(*(b3ShapeId*)val_data(shapeId));
}
static value box3d_b3Shape_RayCast (value shapeId, value origin, value translation) {
	b3WorldCastOutput ret = b3Shape_RayCast(*(b3ShapeId*)val_data(shapeId), *(b3Pos*)val_data(origin), *(b3Vec3*)val_data(translation));
	value retVal = box3d_b3WorldCastOutput_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3WorldCastOutput));
	return retVal;
}
static value box3d_b3Shape_GetSphere (value shapeId) {
	b3Sphere ret = b3Shape_GetSphere(*(b3ShapeId*)val_data(shapeId));
	value retVal = box3d_b3Sphere_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Sphere));
	return retVal;
}
static value box3d_b3Shape_GetCapsule (value shapeId) {
	b3Capsule ret = b3Shape_GetCapsule(*(b3ShapeId*)val_data(shapeId));
	value retVal = box3d_b3Capsule_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Capsule));
	return retVal;
}
static value box3d_b3Shape_GetMesh (value shapeId) {
	b3Mesh ret = b3Shape_GetMesh(*(b3ShapeId*)val_data(shapeId));
	value retVal = box3d_b3Mesh_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Mesh));
	return retVal;
}
static void box3d_b3Shape_SetSphere (value shapeId, value sphere) {
	b3Shape_SetSphere(*(b3ShapeId*)val_data(shapeId), (b3Sphere*)val_data(sphere));
}
static void box3d_b3Shape_SetCapsule (value shapeId, value capsule) {
	b3Shape_SetCapsule(*(b3ShapeId*)val_data(shapeId), (b3Capsule*)val_data(capsule));
}
static void box3d_b3Shape_SetHull (value shapeId, value hull) {
	b3Shape_SetHull(*(b3ShapeId*)val_data(shapeId), (b3HullData*)val_data(hull));
}
static void box3d_b3Shape_SetMesh (value shapeId, value meshData, value scale) {
	b3Shape_SetMesh(*(b3ShapeId*)val_data(shapeId), (b3MeshData*)val_data(meshData), *(b3Vec3*)val_data(scale));
}
static int box3d_b3Shape_GetContactCapacity (value shapeId) {
	return b3Shape_GetContactCapacity(*(b3ShapeId*)val_data(shapeId));
}
static int box3d_b3Shape_GetContactData (value shapeId, value contactData, int capacity) {
	return b3Shape_GetContactData(*(b3ShapeId*)val_data(shapeId), (b3ContactData*)val_data(contactData), capacity);
}
static int box3d_b3Shape_GetSensorCapacity (value shapeId) {
	return b3Shape_GetSensorCapacity(*(b3ShapeId*)val_data(shapeId));
}
static int box3d_b3Shape_GetSensorData (value shapeId, value visitorIds, int capacity) {
	return b3Shape_GetSensorData(*(b3ShapeId*)val_data(shapeId), (b3ShapeId*)val_data(visitorIds), capacity);
}
static value box3d_b3Shape_GetAABB (value shapeId) {
	b3AABB ret = b3Shape_GetAABB(*(b3ShapeId*)val_data(shapeId));
	value retVal = box3d_b3AABB_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3AABB));
	return retVal;
}
static value box3d_b3Shape_ComputeMassData (value shapeId) {
	b3MassData ret = b3Shape_ComputeMassData(*(b3ShapeId*)val_data(shapeId));
	value retVal = box3d_b3MassData_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3MassData));
	return retVal;
}
static value box3d_b3Shape_GetClosestPoint (value shapeId, value target) {
	b3Vec3 ret = b3Shape_GetClosestPoint(*(b3ShapeId*)val_data(shapeId), *(b3Vec3*)val_data(target));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static void box3d_b3Shape_ApplyWind (value shapeId, value wind, float drag, float lift, float maxSpeed, bool wake) {
	b3Shape_ApplyWind(*(b3ShapeId*)val_data(shapeId), *(b3Vec3*)val_data(wind), drag, lift, maxSpeed, wake);
}
static void box3d_b3DestroyJoint (value jointId, bool wakeAttached) {
	b3DestroyJoint(*(b3JointId*)val_data(jointId), wakeAttached);
}
static bool box3d_b3Joint_IsValid (value id) {
	return b3Joint_IsValid(*(b3JointId*)val_data(id));
}
static int box3d_b3Joint_GetType (value jointId) {
	return b3Joint_GetType(*(b3JointId*)val_data(jointId));
}
static value box3d_b3Joint_GetBodyA (value jointId) {
	b3BodyId ret = b3Joint_GetBodyA(*(b3JointId*)val_data(jointId));
	value retVal = box3d_b3BodyId_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3BodyId));
	return retVal;
}
static value box3d_b3Joint_GetBodyB (value jointId) {
	b3BodyId ret = b3Joint_GetBodyB(*(b3JointId*)val_data(jointId));
	value retVal = box3d_b3BodyId_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3BodyId));
	return retVal;
}
static value box3d_b3Joint_GetWorld (value jointId) {
	b3WorldId ret = b3Joint_GetWorld(*(b3JointId*)val_data(jointId));
	value retVal = box3d_b3WorldId_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3WorldId));
	return retVal;
}
static void box3d_b3Joint_SetLocalFrameA (value jointId, value localFrame) {
	b3Joint_SetLocalFrameA(*(b3JointId*)val_data(jointId), *(b3Transform*)val_data(localFrame));
}
static value box3d_b3Joint_GetLocalFrameA (value jointId) {
	b3Transform ret = b3Joint_GetLocalFrameA(*(b3JointId*)val_data(jointId));
	value retVal = box3d_b3Transform_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Transform));
	return retVal;
}
static void box3d_b3Joint_SetLocalFrameB (value jointId, value localFrame) {
	b3Joint_SetLocalFrameB(*(b3JointId*)val_data(jointId), *(b3Transform*)val_data(localFrame));
}
static value box3d_b3Joint_GetLocalFrameB (value jointId) {
	b3Transform ret = b3Joint_GetLocalFrameB(*(b3JointId*)val_data(jointId));
	value retVal = box3d_b3Transform_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Transform));
	return retVal;
}
static void box3d_b3Joint_SetCollideConnected (value jointId, bool shouldCollide) {
	b3Joint_SetCollideConnected(*(b3JointId*)val_data(jointId), shouldCollide);
}
static bool box3d_b3Joint_GetCollideConnected (value jointId) {
	return b3Joint_GetCollideConnected(*(b3JointId*)val_data(jointId));
}
static void box3d_b3Joint_SetUserData (value jointId, value userData) {
	b3Joint_SetUserData(*(b3JointId*)val_data(jointId), (void*)val_data(userData));
}
static void box3d_b3Joint_WakeBodies (value jointId) {
	b3Joint_WakeBodies(*(b3JointId*)val_data(jointId));
}
static bool box3d_b3Joint_IsAwake (value jointId) {
	return b3Joint_IsAwake(*(b3JointId*)val_data(jointId));
}
static value box3d_b3Joint_GetConstraintForce (value jointId) {
	b3Vec3 ret = b3Joint_GetConstraintForce(*(b3JointId*)val_data(jointId));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3Joint_GetConstraintTorque (value jointId) {
	b3Vec3 ret = b3Joint_GetConstraintTorque(*(b3JointId*)val_data(jointId));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static float box3d_b3Joint_GetLinearSeparation (value jointId) {
	return b3Joint_GetLinearSeparation(*(b3JointId*)val_data(jointId));
}
static float box3d_b3Joint_GetAngularSeparation (value jointId) {
	return b3Joint_GetAngularSeparation(*(b3JointId*)val_data(jointId));
}
static void box3d_b3Joint_SetConstraintTuning (value jointId, float hertz, float dampingRatio) {
	b3Joint_SetConstraintTuning(*(b3JointId*)val_data(jointId), hertz, dampingRatio);
}
static void box3d_b3Joint_GetConstraintTuning (value jointId, value hertz, value dampingRatio) {
	b3Joint_GetConstraintTuning(*(b3JointId*)val_data(jointId), (float*)val_data(hertz), (float*)val_data(dampingRatio));
}
static void box3d_b3Joint_SetForceThreshold (value jointId, float threshold) {
	b3Joint_SetForceThreshold(*(b3JointId*)val_data(jointId), threshold);
}
static float box3d_b3Joint_GetForceThreshold (value jointId) {
	return b3Joint_GetForceThreshold(*(b3JointId*)val_data(jointId));
}
static void box3d_b3Joint_SetTorqueThreshold (value jointId, float threshold) {
	b3Joint_SetTorqueThreshold(*(b3JointId*)val_data(jointId), threshold);
}
static float box3d_b3Joint_GetTorqueThreshold (value jointId) {
	return b3Joint_GetTorqueThreshold(*(b3JointId*)val_data(jointId));
}
static value box3d_b3CreateParallelJoint (value worldId, value def) {
	b3JointId ret = b3CreateParallelJoint(*(b3WorldId*)val_data(worldId), (b3ParallelJointDef*)val_data(def));
	value retVal = box3d_b3JointId_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3JointId));
	return retVal;
}
static void box3d_b3ParallelJoint_SetSpringHertz (value jointId, float hertz) {
	b3ParallelJoint_SetSpringHertz(*(b3JointId*)val_data(jointId), hertz);
}
static void box3d_b3ParallelJoint_SetSpringDampingRatio (value jointId, float dampingRatio) {
	b3ParallelJoint_SetSpringDampingRatio(*(b3JointId*)val_data(jointId), dampingRatio);
}
static float box3d_b3ParallelJoint_GetSpringHertz (value jointId) {
	return b3ParallelJoint_GetSpringHertz(*(b3JointId*)val_data(jointId));
}
static float box3d_b3ParallelJoint_GetSpringDampingRatio (value jointId) {
	return b3ParallelJoint_GetSpringDampingRatio(*(b3JointId*)val_data(jointId));
}
static void box3d_b3ParallelJoint_SetMaxTorque (value jointId, float force) {
	b3ParallelJoint_SetMaxTorque(*(b3JointId*)val_data(jointId), force);
}
static float box3d_b3ParallelJoint_GetMaxTorque (value jointId) {
	return b3ParallelJoint_GetMaxTorque(*(b3JointId*)val_data(jointId));
}
static value box3d_b3CreateDistanceJoint (value worldId, value def) {
	b3JointId ret = b3CreateDistanceJoint(*(b3WorldId*)val_data(worldId), (b3DistanceJointDef*)val_data(def));
	value retVal = box3d_b3JointId_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3JointId));
	return retVal;
}
static void box3d_b3DistanceJoint_SetLength (value jointId, float length) {
	b3DistanceJoint_SetLength(*(b3JointId*)val_data(jointId), length);
}
static float box3d_b3DistanceJoint_GetLength (value jointId) {
	return b3DistanceJoint_GetLength(*(b3JointId*)val_data(jointId));
}
static void box3d_b3DistanceJoint_EnableSpring (value jointId, bool enableSpring) {
	b3DistanceJoint_EnableSpring(*(b3JointId*)val_data(jointId), enableSpring);
}
static bool box3d_b3DistanceJoint_IsSpringEnabled (value jointId) {
	return b3DistanceJoint_IsSpringEnabled(*(b3JointId*)val_data(jointId));
}
static void box3d_b3DistanceJoint_SetSpringForceRange (value jointId, float lowerForce, float upperForce) {
	b3DistanceJoint_SetSpringForceRange(*(b3JointId*)val_data(jointId), lowerForce, upperForce);
}
static void box3d_b3DistanceJoint_GetSpringForceRange (value jointId, value lowerForce, value upperForce) {
	b3DistanceJoint_GetSpringForceRange(*(b3JointId*)val_data(jointId), (float*)val_data(lowerForce), (float*)val_data(upperForce));
}
static void box3d_b3DistanceJoint_SetSpringHertz (value jointId, float hertz) {
	b3DistanceJoint_SetSpringHertz(*(b3JointId*)val_data(jointId), hertz);
}
static void box3d_b3DistanceJoint_SetSpringDampingRatio (value jointId, float dampingRatio) {
	b3DistanceJoint_SetSpringDampingRatio(*(b3JointId*)val_data(jointId), dampingRatio);
}
static float box3d_b3DistanceJoint_GetSpringHertz (value jointId) {
	return b3DistanceJoint_GetSpringHertz(*(b3JointId*)val_data(jointId));
}
static float box3d_b3DistanceJoint_GetSpringDampingRatio (value jointId) {
	return b3DistanceJoint_GetSpringDampingRatio(*(b3JointId*)val_data(jointId));
}
static void box3d_b3DistanceJoint_EnableLimit (value jointId, bool enableLimit) {
	b3DistanceJoint_EnableLimit(*(b3JointId*)val_data(jointId), enableLimit);
}
static bool box3d_b3DistanceJoint_IsLimitEnabled (value jointId) {
	return b3DistanceJoint_IsLimitEnabled(*(b3JointId*)val_data(jointId));
}
static void box3d_b3DistanceJoint_SetLengthRange (value jointId, float minLength, float maxLength) {
	b3DistanceJoint_SetLengthRange(*(b3JointId*)val_data(jointId), minLength, maxLength);
}
static float box3d_b3DistanceJoint_GetMinLength (value jointId) {
	return b3DistanceJoint_GetMinLength(*(b3JointId*)val_data(jointId));
}
static float box3d_b3DistanceJoint_GetMaxLength (value jointId) {
	return b3DistanceJoint_GetMaxLength(*(b3JointId*)val_data(jointId));
}
static float box3d_b3DistanceJoint_GetCurrentLength (value jointId) {
	return b3DistanceJoint_GetCurrentLength(*(b3JointId*)val_data(jointId));
}
static void box3d_b3DistanceJoint_EnableMotor (value jointId, bool enableMotor) {
	b3DistanceJoint_EnableMotor(*(b3JointId*)val_data(jointId), enableMotor);
}
static bool box3d_b3DistanceJoint_IsMotorEnabled (value jointId) {
	return b3DistanceJoint_IsMotorEnabled(*(b3JointId*)val_data(jointId));
}
static void box3d_b3DistanceJoint_SetMotorSpeed (value jointId, float motorSpeed) {
	b3DistanceJoint_SetMotorSpeed(*(b3JointId*)val_data(jointId), motorSpeed);
}
static float box3d_b3DistanceJoint_GetMotorSpeed (value jointId) {
	return b3DistanceJoint_GetMotorSpeed(*(b3JointId*)val_data(jointId));
}
static void box3d_b3DistanceJoint_SetMaxMotorForce (value jointId, float force) {
	b3DistanceJoint_SetMaxMotorForce(*(b3JointId*)val_data(jointId), force);
}
static float box3d_b3DistanceJoint_GetMaxMotorForce (value jointId) {
	return b3DistanceJoint_GetMaxMotorForce(*(b3JointId*)val_data(jointId));
}
static float box3d_b3DistanceJoint_GetMotorForce (value jointId) {
	return b3DistanceJoint_GetMotorForce(*(b3JointId*)val_data(jointId));
}
static value box3d_b3CreateMotorJoint (value worldId, value def) {
	b3JointId ret = b3CreateMotorJoint(*(b3WorldId*)val_data(worldId), (b3MotorJointDef*)val_data(def));
	value retVal = box3d_b3JointId_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3JointId));
	return retVal;
}
static void box3d_b3MotorJoint_SetLinearVelocity (value jointId, value velocity) {
	b3MotorJoint_SetLinearVelocity(*(b3JointId*)val_data(jointId), *(b3Vec3*)val_data(velocity));
}
static value box3d_b3MotorJoint_GetLinearVelocity (value jointId) {
	b3Vec3 ret = b3MotorJoint_GetLinearVelocity(*(b3JointId*)val_data(jointId));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static void box3d_b3MotorJoint_SetAngularVelocity (value jointId, value velocity) {
	b3MotorJoint_SetAngularVelocity(*(b3JointId*)val_data(jointId), *(b3Vec3*)val_data(velocity));
}
static value box3d_b3MotorJoint_GetAngularVelocity (value jointId) {
	b3Vec3 ret = b3MotorJoint_GetAngularVelocity(*(b3JointId*)val_data(jointId));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static void box3d_b3MotorJoint_SetMaxVelocityForce (value jointId, float maxForce) {
	b3MotorJoint_SetMaxVelocityForce(*(b3JointId*)val_data(jointId), maxForce);
}
static float box3d_b3MotorJoint_GetMaxVelocityForce (value jointId) {
	return b3MotorJoint_GetMaxVelocityForce(*(b3JointId*)val_data(jointId));
}
static void box3d_b3MotorJoint_SetMaxVelocityTorque (value jointId, float maxTorque) {
	b3MotorJoint_SetMaxVelocityTorque(*(b3JointId*)val_data(jointId), maxTorque);
}
static float box3d_b3MotorJoint_GetMaxVelocityTorque (value jointId) {
	return b3MotorJoint_GetMaxVelocityTorque(*(b3JointId*)val_data(jointId));
}
static void box3d_b3MotorJoint_SetLinearHertz (value jointId, float hertz) {
	b3MotorJoint_SetLinearHertz(*(b3JointId*)val_data(jointId), hertz);
}
static float box3d_b3MotorJoint_GetLinearHertz (value jointId) {
	return b3MotorJoint_GetLinearHertz(*(b3JointId*)val_data(jointId));
}
static void box3d_b3MotorJoint_SetLinearDampingRatio (value jointId, float damping) {
	b3MotorJoint_SetLinearDampingRatio(*(b3JointId*)val_data(jointId), damping);
}
static float box3d_b3MotorJoint_GetLinearDampingRatio (value jointId) {
	return b3MotorJoint_GetLinearDampingRatio(*(b3JointId*)val_data(jointId));
}
static void box3d_b3MotorJoint_SetAngularHertz (value jointId, float hertz) {
	b3MotorJoint_SetAngularHertz(*(b3JointId*)val_data(jointId), hertz);
}
static float box3d_b3MotorJoint_GetAngularHertz (value jointId) {
	return b3MotorJoint_GetAngularHertz(*(b3JointId*)val_data(jointId));
}
static void box3d_b3MotorJoint_SetAngularDampingRatio (value jointId, float damping) {
	b3MotorJoint_SetAngularDampingRatio(*(b3JointId*)val_data(jointId), damping);
}
static float box3d_b3MotorJoint_GetAngularDampingRatio (value jointId) {
	return b3MotorJoint_GetAngularDampingRatio(*(b3JointId*)val_data(jointId));
}
static void box3d_b3MotorJoint_SetMaxSpringForce (value jointId, float maxForce) {
	b3MotorJoint_SetMaxSpringForce(*(b3JointId*)val_data(jointId), maxForce);
}
static float box3d_b3MotorJoint_GetMaxSpringForce (value jointId) {
	return b3MotorJoint_GetMaxSpringForce(*(b3JointId*)val_data(jointId));
}
static void box3d_b3MotorJoint_SetMaxSpringTorque (value jointId, float maxTorque) {
	b3MotorJoint_SetMaxSpringTorque(*(b3JointId*)val_data(jointId), maxTorque);
}
static float box3d_b3MotorJoint_GetMaxSpringTorque (value jointId) {
	return b3MotorJoint_GetMaxSpringTorque(*(b3JointId*)val_data(jointId));
}
static value box3d_b3CreateFilterJoint (value worldId, value def) {
	b3JointId ret = b3CreateFilterJoint(*(b3WorldId*)val_data(worldId), (b3FilterJointDef*)val_data(def));
	value retVal = box3d_b3JointId_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3JointId));
	return retVal;
}
static value box3d_b3CreatePrismaticJoint (value worldId, value def) {
	b3JointId ret = b3CreatePrismaticJoint(*(b3WorldId*)val_data(worldId), (b3PrismaticJointDef*)val_data(def));
	value retVal = box3d_b3JointId_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3JointId));
	return retVal;
}
static void box3d_b3PrismaticJoint_EnableSpring (value jointId, bool enableSpring) {
	b3PrismaticJoint_EnableSpring(*(b3JointId*)val_data(jointId), enableSpring);
}
static bool box3d_b3PrismaticJoint_IsSpringEnabled (value jointId) {
	return b3PrismaticJoint_IsSpringEnabled(*(b3JointId*)val_data(jointId));
}
static void box3d_b3PrismaticJoint_SetSpringHertz (value jointId, float hertz) {
	b3PrismaticJoint_SetSpringHertz(*(b3JointId*)val_data(jointId), hertz);
}
static float box3d_b3PrismaticJoint_GetSpringHertz (value jointId) {
	return b3PrismaticJoint_GetSpringHertz(*(b3JointId*)val_data(jointId));
}
static void box3d_b3PrismaticJoint_SetSpringDampingRatio (value jointId, float dampingRatio) {
	b3PrismaticJoint_SetSpringDampingRatio(*(b3JointId*)val_data(jointId), dampingRatio);
}
static float box3d_b3PrismaticJoint_GetSpringDampingRatio (value jointId) {
	return b3PrismaticJoint_GetSpringDampingRatio(*(b3JointId*)val_data(jointId));
}
static void box3d_b3PrismaticJoint_SetTargetTranslation (value jointId, float targetTranslation) {
	b3PrismaticJoint_SetTargetTranslation(*(b3JointId*)val_data(jointId), targetTranslation);
}
static float box3d_b3PrismaticJoint_GetTargetTranslation (value jointId) {
	return b3PrismaticJoint_GetTargetTranslation(*(b3JointId*)val_data(jointId));
}
static void box3d_b3PrismaticJoint_EnableLimit (value jointId, bool enableLimit) {
	b3PrismaticJoint_EnableLimit(*(b3JointId*)val_data(jointId), enableLimit);
}
static bool box3d_b3PrismaticJoint_IsLimitEnabled (value jointId) {
	return b3PrismaticJoint_IsLimitEnabled(*(b3JointId*)val_data(jointId));
}
static float box3d_b3PrismaticJoint_GetLowerLimit (value jointId) {
	return b3PrismaticJoint_GetLowerLimit(*(b3JointId*)val_data(jointId));
}
static float box3d_b3PrismaticJoint_GetUpperLimit (value jointId) {
	return b3PrismaticJoint_GetUpperLimit(*(b3JointId*)val_data(jointId));
}
static void box3d_b3PrismaticJoint_SetLimits (value jointId, float lower, float upper) {
	b3PrismaticJoint_SetLimits(*(b3JointId*)val_data(jointId), lower, upper);
}
static void box3d_b3PrismaticJoint_EnableMotor (value jointId, bool enableMotor) {
	b3PrismaticJoint_EnableMotor(*(b3JointId*)val_data(jointId), enableMotor);
}
static bool box3d_b3PrismaticJoint_IsMotorEnabled (value jointId) {
	return b3PrismaticJoint_IsMotorEnabled(*(b3JointId*)val_data(jointId));
}
static void box3d_b3PrismaticJoint_SetMotorSpeed (value jointId, float motorSpeed) {
	b3PrismaticJoint_SetMotorSpeed(*(b3JointId*)val_data(jointId), motorSpeed);
}
static float box3d_b3PrismaticJoint_GetMotorSpeed (value jointId) {
	return b3PrismaticJoint_GetMotorSpeed(*(b3JointId*)val_data(jointId));
}
static void box3d_b3PrismaticJoint_SetMaxMotorForce (value jointId, float force) {
	b3PrismaticJoint_SetMaxMotorForce(*(b3JointId*)val_data(jointId), force);
}
static float box3d_b3PrismaticJoint_GetMaxMotorForce (value jointId) {
	return b3PrismaticJoint_GetMaxMotorForce(*(b3JointId*)val_data(jointId));
}
static float box3d_b3PrismaticJoint_GetMotorForce (value jointId) {
	return b3PrismaticJoint_GetMotorForce(*(b3JointId*)val_data(jointId));
}
static float box3d_b3PrismaticJoint_GetTranslation (value jointId) {
	return b3PrismaticJoint_GetTranslation(*(b3JointId*)val_data(jointId));
}
static float box3d_b3PrismaticJoint_GetSpeed (value jointId) {
	return b3PrismaticJoint_GetSpeed(*(b3JointId*)val_data(jointId));
}
static value box3d_b3CreateRevoluteJoint (value worldId, value def) {
	b3JointId ret = b3CreateRevoluteJoint(*(b3WorldId*)val_data(worldId), (b3RevoluteJointDef*)val_data(def));
	value retVal = box3d_b3JointId_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3JointId));
	return retVal;
}
static void box3d_b3RevoluteJoint_EnableSpring (value jointId, bool enableSpring) {
	b3RevoluteJoint_EnableSpring(*(b3JointId*)val_data(jointId), enableSpring);
}
static bool box3d_b3RevoluteJoint_IsSpringEnabled (value jointId) {
	return b3RevoluteJoint_IsSpringEnabled(*(b3JointId*)val_data(jointId));
}
static void box3d_b3RevoluteJoint_SetSpringHertz (value jointId, float hertz) {
	b3RevoluteJoint_SetSpringHertz(*(b3JointId*)val_data(jointId), hertz);
}
static float box3d_b3RevoluteJoint_GetSpringHertz (value jointId) {
	return b3RevoluteJoint_GetSpringHertz(*(b3JointId*)val_data(jointId));
}
static void box3d_b3RevoluteJoint_SetSpringDampingRatio (value jointId, float dampingRatio) {
	b3RevoluteJoint_SetSpringDampingRatio(*(b3JointId*)val_data(jointId), dampingRatio);
}
static float box3d_b3RevoluteJoint_GetSpringDampingRatio (value jointId) {
	return b3RevoluteJoint_GetSpringDampingRatio(*(b3JointId*)val_data(jointId));
}
static void box3d_b3RevoluteJoint_SetTargetAngle (value jointId, float targetRadians) {
	b3RevoluteJoint_SetTargetAngle(*(b3JointId*)val_data(jointId), targetRadians);
}
static float box3d_b3RevoluteJoint_GetTargetAngle (value jointId) {
	return b3RevoluteJoint_GetTargetAngle(*(b3JointId*)val_data(jointId));
}
static float box3d_b3RevoluteJoint_GetAngle (value jointId) {
	return b3RevoluteJoint_GetAngle(*(b3JointId*)val_data(jointId));
}
static void box3d_b3RevoluteJoint_EnableLimit (value jointId, bool enableLimit) {
	b3RevoluteJoint_EnableLimit(*(b3JointId*)val_data(jointId), enableLimit);
}
static bool box3d_b3RevoluteJoint_IsLimitEnabled (value jointId) {
	return b3RevoluteJoint_IsLimitEnabled(*(b3JointId*)val_data(jointId));
}
static float box3d_b3RevoluteJoint_GetLowerLimit (value jointId) {
	return b3RevoluteJoint_GetLowerLimit(*(b3JointId*)val_data(jointId));
}
static float box3d_b3RevoluteJoint_GetUpperLimit (value jointId) {
	return b3RevoluteJoint_GetUpperLimit(*(b3JointId*)val_data(jointId));
}
static void box3d_b3RevoluteJoint_SetLimits (value jointId, float lowerLimitRadians, float upperLimitRadians) {
	b3RevoluteJoint_SetLimits(*(b3JointId*)val_data(jointId), lowerLimitRadians, upperLimitRadians);
}
static void box3d_b3RevoluteJoint_EnableMotor (value jointId, bool enableMotor) {
	b3RevoluteJoint_EnableMotor(*(b3JointId*)val_data(jointId), enableMotor);
}
static bool box3d_b3RevoluteJoint_IsMotorEnabled (value jointId) {
	return b3RevoluteJoint_IsMotorEnabled(*(b3JointId*)val_data(jointId));
}
static void box3d_b3RevoluteJoint_SetMotorSpeed (value jointId, float motorSpeed) {
	b3RevoluteJoint_SetMotorSpeed(*(b3JointId*)val_data(jointId), motorSpeed);
}
static float box3d_b3RevoluteJoint_GetMotorSpeed (value jointId) {
	return b3RevoluteJoint_GetMotorSpeed(*(b3JointId*)val_data(jointId));
}
static float box3d_b3RevoluteJoint_GetMotorTorque (value jointId) {
	return b3RevoluteJoint_GetMotorTorque(*(b3JointId*)val_data(jointId));
}
static void box3d_b3RevoluteJoint_SetMaxMotorTorque (value jointId, float torque) {
	b3RevoluteJoint_SetMaxMotorTorque(*(b3JointId*)val_data(jointId), torque);
}
static float box3d_b3RevoluteJoint_GetMaxMotorTorque (value jointId) {
	return b3RevoluteJoint_GetMaxMotorTorque(*(b3JointId*)val_data(jointId));
}
static value box3d_b3CreateSphericalJoint (value worldId, value def) {
	b3JointId ret = b3CreateSphericalJoint(*(b3WorldId*)val_data(worldId), (b3SphericalJointDef*)val_data(def));
	value retVal = box3d_b3JointId_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3JointId));
	return retVal;
}
static void box3d_b3SphericalJoint_EnableConeLimit (value jointId, bool enableLimit) {
	b3SphericalJoint_EnableConeLimit(*(b3JointId*)val_data(jointId), enableLimit);
}
static bool box3d_b3SphericalJoint_IsConeLimitEnabled (value jointId) {
	return b3SphericalJoint_IsConeLimitEnabled(*(b3JointId*)val_data(jointId));
}
static float box3d_b3SphericalJoint_GetConeLimit (value jointId) {
	return b3SphericalJoint_GetConeLimit(*(b3JointId*)val_data(jointId));
}
static void box3d_b3SphericalJoint_SetConeLimit (value jointId, float angleRadians) {
	b3SphericalJoint_SetConeLimit(*(b3JointId*)val_data(jointId), angleRadians);
}
static float box3d_b3SphericalJoint_GetConeAngle (value jointId) {
	return b3SphericalJoint_GetConeAngle(*(b3JointId*)val_data(jointId));
}
static void box3d_b3SphericalJoint_EnableTwistLimit (value jointId, bool enableLimit) {
	b3SphericalJoint_EnableTwistLimit(*(b3JointId*)val_data(jointId), enableLimit);
}
static bool box3d_b3SphericalJoint_IsTwistLimitEnabled (value jointId) {
	return b3SphericalJoint_IsTwistLimitEnabled(*(b3JointId*)val_data(jointId));
}
static float box3d_b3SphericalJoint_GetLowerTwistLimit (value jointId) {
	return b3SphericalJoint_GetLowerTwistLimit(*(b3JointId*)val_data(jointId));
}
static float box3d_b3SphericalJoint_GetUpperTwistLimit (value jointId) {
	return b3SphericalJoint_GetUpperTwistLimit(*(b3JointId*)val_data(jointId));
}
static void box3d_b3SphericalJoint_SetTwistLimits (value jointId, float lowerLimitRadians, float upperLimitRadians) {
	b3SphericalJoint_SetTwistLimits(*(b3JointId*)val_data(jointId), lowerLimitRadians, upperLimitRadians);
}
static float box3d_b3SphericalJoint_GetTwistAngle (value jointId) {
	return b3SphericalJoint_GetTwistAngle(*(b3JointId*)val_data(jointId));
}
static void box3d_b3SphericalJoint_EnableSpring (value jointId, bool enableSpring) {
	b3SphericalJoint_EnableSpring(*(b3JointId*)val_data(jointId), enableSpring);
}
static bool box3d_b3SphericalJoint_IsSpringEnabled (value jointId) {
	return b3SphericalJoint_IsSpringEnabled(*(b3JointId*)val_data(jointId));
}
static void box3d_b3SphericalJoint_SetSpringHertz (value jointId, float hertz) {
	b3SphericalJoint_SetSpringHertz(*(b3JointId*)val_data(jointId), hertz);
}
static float box3d_b3SphericalJoint_GetSpringHertz (value jointId) {
	return b3SphericalJoint_GetSpringHertz(*(b3JointId*)val_data(jointId));
}
static void box3d_b3SphericalJoint_SetSpringDampingRatio (value jointId, float dampingRatio) {
	b3SphericalJoint_SetSpringDampingRatio(*(b3JointId*)val_data(jointId), dampingRatio);
}
static float box3d_b3SphericalJoint_GetSpringDampingRatio (value jointId) {
	return b3SphericalJoint_GetSpringDampingRatio(*(b3JointId*)val_data(jointId));
}
static void box3d_b3SphericalJoint_SetTargetRotation (value jointId, value targetRotation) {
	b3SphericalJoint_SetTargetRotation(*(b3JointId*)val_data(jointId), *(b3Quat*)val_data(targetRotation));
}
static value box3d_b3SphericalJoint_GetTargetRotation (value jointId) {
	b3Quat ret = b3SphericalJoint_GetTargetRotation(*(b3JointId*)val_data(jointId));
	value retVal = box3d_b3Quat_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Quat));
	return retVal;
}
static void box3d_b3SphericalJoint_EnableMotor (value jointId, bool enableMotor) {
	b3SphericalJoint_EnableMotor(*(b3JointId*)val_data(jointId), enableMotor);
}
static bool box3d_b3SphericalJoint_IsMotorEnabled (value jointId) {
	return b3SphericalJoint_IsMotorEnabled(*(b3JointId*)val_data(jointId));
}
static void box3d_b3SphericalJoint_SetMotorVelocity (value jointId, value motorVelocity) {
	b3SphericalJoint_SetMotorVelocity(*(b3JointId*)val_data(jointId), *(b3Vec3*)val_data(motorVelocity));
}
static value box3d_b3SphericalJoint_GetMotorVelocity (value jointId) {
	b3Vec3 ret = b3SphericalJoint_GetMotorVelocity(*(b3JointId*)val_data(jointId));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3SphericalJoint_GetMotorTorque (value jointId) {
	b3Vec3 ret = b3SphericalJoint_GetMotorTorque(*(b3JointId*)val_data(jointId));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static void box3d_b3SphericalJoint_SetMaxMotorTorque (value jointId, float torque) {
	b3SphericalJoint_SetMaxMotorTorque(*(b3JointId*)val_data(jointId), torque);
}
static float box3d_b3SphericalJoint_GetMaxMotorTorque (value jointId) {
	return b3SphericalJoint_GetMaxMotorTorque(*(b3JointId*)val_data(jointId));
}
static value box3d_b3CreateWeldJoint (value worldId, value def) {
	b3JointId ret = b3CreateWeldJoint(*(b3WorldId*)val_data(worldId), (b3WeldJointDef*)val_data(def));
	value retVal = box3d_b3JointId_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3JointId));
	return retVal;
}
static void box3d_b3WeldJoint_SetLinearHertz (value jointId, float hertz) {
	b3WeldJoint_SetLinearHertz(*(b3JointId*)val_data(jointId), hertz);
}
static float box3d_b3WeldJoint_GetLinearHertz (value jointId) {
	return b3WeldJoint_GetLinearHertz(*(b3JointId*)val_data(jointId));
}
static void box3d_b3WeldJoint_SetLinearDampingRatio (value jointId, float dampingRatio) {
	b3WeldJoint_SetLinearDampingRatio(*(b3JointId*)val_data(jointId), dampingRatio);
}
static float box3d_b3WeldJoint_GetLinearDampingRatio (value jointId) {
	return b3WeldJoint_GetLinearDampingRatio(*(b3JointId*)val_data(jointId));
}
static void box3d_b3WeldJoint_SetAngularHertz (value jointId, float hertz) {
	b3WeldJoint_SetAngularHertz(*(b3JointId*)val_data(jointId), hertz);
}
static float box3d_b3WeldJoint_GetAngularHertz (value jointId) {
	return b3WeldJoint_GetAngularHertz(*(b3JointId*)val_data(jointId));
}
static void box3d_b3WeldJoint_SetAngularDampingRatio (value jointId, float dampingRatio) {
	b3WeldJoint_SetAngularDampingRatio(*(b3JointId*)val_data(jointId), dampingRatio);
}
static float box3d_b3WeldJoint_GetAngularDampingRatio (value jointId) {
	return b3WeldJoint_GetAngularDampingRatio(*(b3JointId*)val_data(jointId));
}
static value box3d_b3CreateWheelJoint (value worldId, value def) {
	b3JointId ret = b3CreateWheelJoint(*(b3WorldId*)val_data(worldId), (b3WheelJointDef*)val_data(def));
	value retVal = box3d_b3JointId_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3JointId));
	return retVal;
}
static void box3d_b3WheelJoint_EnableSuspension (value jointId, bool flag) {
	b3WheelJoint_EnableSuspension(*(b3JointId*)val_data(jointId), flag);
}
static bool box3d_b3WheelJoint_IsSuspensionEnabled (value jointId) {
	return b3WheelJoint_IsSuspensionEnabled(*(b3JointId*)val_data(jointId));
}
static void box3d_b3WheelJoint_SetSuspensionHertz (value jointId, float hertz) {
	b3WheelJoint_SetSuspensionHertz(*(b3JointId*)val_data(jointId), hertz);
}
static float box3d_b3WheelJoint_GetSuspensionHertz (value jointId) {
	return b3WheelJoint_GetSuspensionHertz(*(b3JointId*)val_data(jointId));
}
static void box3d_b3WheelJoint_SetSuspensionDampingRatio (value jointId, float dampingRatio) {
	b3WheelJoint_SetSuspensionDampingRatio(*(b3JointId*)val_data(jointId), dampingRatio);
}
static float box3d_b3WheelJoint_GetSuspensionDampingRatio (value jointId) {
	return b3WheelJoint_GetSuspensionDampingRatio(*(b3JointId*)val_data(jointId));
}
static void box3d_b3WheelJoint_EnableSuspensionLimit (value jointId, bool flag) {
	b3WheelJoint_EnableSuspensionLimit(*(b3JointId*)val_data(jointId), flag);
}
static bool box3d_b3WheelJoint_IsSuspensionLimitEnabled (value jointId) {
	return b3WheelJoint_IsSuspensionLimitEnabled(*(b3JointId*)val_data(jointId));
}
static float box3d_b3WheelJoint_GetLowerSuspensionLimit (value jointId) {
	return b3WheelJoint_GetLowerSuspensionLimit(*(b3JointId*)val_data(jointId));
}
static float box3d_b3WheelJoint_GetUpperSuspensionLimit (value jointId) {
	return b3WheelJoint_GetUpperSuspensionLimit(*(b3JointId*)val_data(jointId));
}
static void box3d_b3WheelJoint_SetSuspensionLimits (value jointId, float lower, float upper) {
	b3WheelJoint_SetSuspensionLimits(*(b3JointId*)val_data(jointId), lower, upper);
}
static void box3d_b3WheelJoint_EnableSpinMotor (value jointId, bool flag) {
	b3WheelJoint_EnableSpinMotor(*(b3JointId*)val_data(jointId), flag);
}
static bool box3d_b3WheelJoint_IsSpinMotorEnabled (value jointId) {
	return b3WheelJoint_IsSpinMotorEnabled(*(b3JointId*)val_data(jointId));
}
static void box3d_b3WheelJoint_SetSpinMotorSpeed (value jointId, float speed) {
	b3WheelJoint_SetSpinMotorSpeed(*(b3JointId*)val_data(jointId), speed);
}
static float box3d_b3WheelJoint_GetSpinMotorSpeed (value jointId) {
	return b3WheelJoint_GetSpinMotorSpeed(*(b3JointId*)val_data(jointId));
}
static void box3d_b3WheelJoint_SetMaxSpinTorque (value jointId, float torque) {
	b3WheelJoint_SetMaxSpinTorque(*(b3JointId*)val_data(jointId), torque);
}
static float box3d_b3WheelJoint_GetMaxSpinTorque (value jointId) {
	return b3WheelJoint_GetMaxSpinTorque(*(b3JointId*)val_data(jointId));
}
static float box3d_b3WheelJoint_GetSpinSpeed (value jointId) {
	return b3WheelJoint_GetSpinSpeed(*(b3JointId*)val_data(jointId));
}
static float box3d_b3WheelJoint_GetSpinTorque (value jointId) {
	return b3WheelJoint_GetSpinTorque(*(b3JointId*)val_data(jointId));
}
static void box3d_b3WheelJoint_EnableSteering (value jointId, bool flag) {
	b3WheelJoint_EnableSteering(*(b3JointId*)val_data(jointId), flag);
}
static bool box3d_b3WheelJoint_IsSteeringEnabled (value jointId) {
	return b3WheelJoint_IsSteeringEnabled(*(b3JointId*)val_data(jointId));
}
static void box3d_b3WheelJoint_SetSteeringHertz (value jointId, float hertz) {
	b3WheelJoint_SetSteeringHertz(*(b3JointId*)val_data(jointId), hertz);
}
static float box3d_b3WheelJoint_GetSteeringHertz (value jointId) {
	return b3WheelJoint_GetSteeringHertz(*(b3JointId*)val_data(jointId));
}
static void box3d_b3WheelJoint_SetSteeringDampingRatio (value jointId, float dampingRatio) {
	b3WheelJoint_SetSteeringDampingRatio(*(b3JointId*)val_data(jointId), dampingRatio);
}
static float box3d_b3WheelJoint_GetSteeringDampingRatio (value jointId) {
	return b3WheelJoint_GetSteeringDampingRatio(*(b3JointId*)val_data(jointId));
}
static void box3d_b3WheelJoint_SetMaxSteeringTorque (value jointId, float torque) {
	b3WheelJoint_SetMaxSteeringTorque(*(b3JointId*)val_data(jointId), torque);
}
static float box3d_b3WheelJoint_GetMaxSteeringTorque (value jointId) {
	return b3WheelJoint_GetMaxSteeringTorque(*(b3JointId*)val_data(jointId));
}
static void box3d_b3WheelJoint_EnableSteeringLimit (value jointId, bool flag) {
	b3WheelJoint_EnableSteeringLimit(*(b3JointId*)val_data(jointId), flag);
}
static bool box3d_b3WheelJoint_IsSteeringLimitEnabled (value jointId) {
	return b3WheelJoint_IsSteeringLimitEnabled(*(b3JointId*)val_data(jointId));
}
static float box3d_b3WheelJoint_GetLowerSteeringLimit (value jointId) {
	return b3WheelJoint_GetLowerSteeringLimit(*(b3JointId*)val_data(jointId));
}
static float box3d_b3WheelJoint_GetUpperSteeringLimit (value jointId) {
	return b3WheelJoint_GetUpperSteeringLimit(*(b3JointId*)val_data(jointId));
}
static void box3d_b3WheelJoint_SetSteeringLimits (value jointId, float lowerRadians, float upperRadians) {
	b3WheelJoint_SetSteeringLimits(*(b3JointId*)val_data(jointId), lowerRadians, upperRadians);
}
static void box3d_b3WheelJoint_SetTargetSteeringAngle (value jointId, float radians) {
	b3WheelJoint_SetTargetSteeringAngle(*(b3JointId*)val_data(jointId), radians);
}
static float box3d_b3WheelJoint_GetTargetSteeringAngle (value jointId) {
	return b3WheelJoint_GetTargetSteeringAngle(*(b3JointId*)val_data(jointId));
}
static float box3d_b3WheelJoint_GetSteeringAngle (value jointId) {
	return b3WheelJoint_GetSteeringAngle(*(b3JointId*)val_data(jointId));
}
static float box3d_b3WheelJoint_GetSteeringTorque (value jointId) {
	return b3WheelJoint_GetSteeringTorque(*(b3JointId*)val_data(jointId));
}
static bool box3d_b3Contact_IsValid (value id) {
	return b3Contact_IsValid(*(b3ContactId*)val_data(id));
}
static value box3d_b3Contact_GetData (value contactId) {
	b3ContactData ret = b3Contact_GetData(*(b3ContactId*)val_data(contactId));
	value retVal = box3d_b3ContactData_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3ContactData));
	return retVal;
}

DEFINE_PRIME1 (box3d_b3CreateWorld);
DEFINE_PRIME1v (box3d_b3DestroyWorld);
DEFINE_PRIME0 (box3d_b3GetWorldCount);
DEFINE_PRIME0 (box3d_b3GetMaxWorldCount);
DEFINE_PRIME1 (box3d_b3World_IsValid);
DEFINE_PRIME3v (box3d_b3World_Step);
DEFINE_PRIME1 (box3d_b3World_GetBounds);
DEFINE_PRIME1 (box3d_b3World_GetBodyEvents);
DEFINE_PRIME1 (box3d_b3World_GetSensorEvents);
DEFINE_PRIME1 (box3d_b3World_GetContactEvents);
DEFINE_PRIME1 (box3d_b3World_GetJointEvents);
DEFINE_PRIME5 (box3d_b3World_OverlapAABB);
DEFINE_PRIME6 (box3d_b3World_OverlapShape);
DEFINE_PRIME6 (box3d_b3World_CastRay);
DEFINE_PRIME4 (box3d_b3World_CastRayClosest);
DEFINE_PRIME7 (box3d_b3World_CastShape);
DEFINE_PRIME7 (box3d_b3World_CastMover);
DEFINE_PRIME6v (box3d_b3World_CollideMover);
DEFINE_PRIME2v (box3d_b3World_EnableSleeping);
DEFINE_PRIME1 (box3d_b3World_IsSleepingEnabled);
DEFINE_PRIME2v (box3d_b3World_EnableContinuous);
DEFINE_PRIME1 (box3d_b3World_IsContinuousEnabled);
DEFINE_PRIME2v (box3d_b3World_SetRestitutionThreshold);
DEFINE_PRIME1 (box3d_b3World_GetRestitutionThreshold);
DEFINE_PRIME2v (box3d_b3World_SetHitEventThreshold);
DEFINE_PRIME1 (box3d_b3World_GetHitEventThreshold);
DEFINE_PRIME3v (box3d_b3World_SetCustomFilterCallback);
DEFINE_PRIME3v (box3d_b3World_SetPreSolveCallback);
DEFINE_PRIME2v (box3d_b3World_SetGravity);
DEFINE_PRIME1 (box3d_b3World_GetGravity);
DEFINE_PRIME2v (box3d_b3World_Explode);
DEFINE_PRIME4v (box3d_b3World_SetContactTuning);
DEFINE_PRIME2v (box3d_b3World_SetContactRecycleDistance);
DEFINE_PRIME1 (box3d_b3World_GetContactRecycleDistance);
DEFINE_PRIME2v (box3d_b3World_SetMaximumLinearSpeed);
DEFINE_PRIME1 (box3d_b3World_GetMaximumLinearSpeed);
DEFINE_PRIME2v (box3d_b3World_EnableWarmStarting);
DEFINE_PRIME1 (box3d_b3World_IsWarmStartingEnabled);
DEFINE_PRIME1 (box3d_b3World_GetAwakeBodyCount);
DEFINE_PRIME1 (box3d_b3World_GetProfile);
DEFINE_PRIME1 (box3d_b3World_GetCounters);
DEFINE_PRIME1 (box3d_b3World_GetMaxCapacity);
DEFINE_PRIME2v (box3d_b3World_SetUserData);
DEFINE_PRIME2v (box3d_b3World_SetFrictionCallback);
DEFINE_PRIME2v (box3d_b3World_SetRestitutionCallback);
DEFINE_PRIME2v (box3d_b3World_SetWorkerCount);
DEFINE_PRIME1 (box3d_b3World_GetWorkerCount);
DEFINE_PRIME1v (box3d_b3World_DumpMemoryStats);
DEFINE_PRIME1v (box3d_b3World_RebuildStaticTree);
DEFINE_PRIME2v (box3d_b3World_EnableSpeculative);
DEFINE_PRIME1v (box3d_b3DestroyRecording);
DEFINE_PRIME1 (box3d_b3Recording_GetSize);
DEFINE_PRIME2v (box3d_b3World_StartRecording);
DEFINE_PRIME1v (box3d_b3World_StopRecording);
DEFINE_PRIME2 (box3d_b3SaveRecordingToFile);
DEFINE_PRIME3 (box3d_b3ValidateReplay);
DEFINE_PRIME1v (box3d_b3DestroyPlayer);
DEFINE_PRIME1 (box3d_b3RecPlayer_StepFrame);
DEFINE_PRIME1v (box3d_b3RecPlayer_SubStepFrame);
DEFINE_PRIME1v (box3d_b3RecPlayer_Restart);
DEFINE_PRIME2v (box3d_b3RecPlayer_SeekFrame);
DEFINE_PRIME1 (box3d_b3RecPlayer_GetWorldId);
DEFINE_PRIME1 (box3d_b3RecPlayer_GetFrame);
DEFINE_PRIME1 (box3d_b3RecPlayer_GetFrameCount);
DEFINE_PRIME1 (box3d_b3RecPlayer_IsAtEnd);
DEFINE_PRIME1 (box3d_b3RecPlayer_IsAtPreStep);
DEFINE_PRIME1 (box3d_b3RecPlayer_HasDiverged);
DEFINE_PRIME1 (box3d_b3RecPlayer_GetInfo);
DEFINE_PRIME1 (box3d_b3RecPlayer_GetDivergeFrame);
DEFINE_PRIME2v (box3d_b3RecPlayer_SetWorkerCount);
DEFINE_PRIME3v (box3d_b3RecPlayer_SetKeyframePolicy);
DEFINE_PRIME1 (box3d_b3RecPlayer_GetKeyframeMinInterval);
DEFINE_PRIME1 (box3d_b3RecPlayer_GetKeyframeInterval);
DEFINE_PRIME1 (box3d_b3RecPlayer_GetBodyCount);
DEFINE_PRIME2 (box3d_b3RecPlayer_GetBodyId);
DEFINE_PRIME4v (box3d_b3RecPlayer_SetDebugShapeCallbacks);
DEFINE_PRIME4v (box3d_b3RecPlayer_DrawFrameQueries);
DEFINE_PRIME1 (box3d_b3RecPlayer_GetFrameQueryCount);
DEFINE_PRIME2 (box3d_b3RecPlayer_GetFrameQuery);
DEFINE_PRIME3 (box3d_b3RecPlayer_GetFrameQueryHit);
DEFINE_PRIME2 (box3d_b3CreateBody);
DEFINE_PRIME1v (box3d_b3DestroyBody);
DEFINE_PRIME1 (box3d_b3Body_IsValid);
DEFINE_PRIME1 (box3d_b3Body_GetType);
DEFINE_PRIME2v (box3d_b3Body_SetType);
DEFINE_PRIME2v (box3d_b3Body_SetName);
DEFINE_PRIME2v (box3d_b3Body_SetUserData);
DEFINE_PRIME1 (box3d_b3Body_GetPosition);
DEFINE_PRIME1 (box3d_b3Body_GetRotation);
DEFINE_PRIME1 (box3d_b3Body_GetTransform);
DEFINE_PRIME3v (box3d_b3Body_SetTransform);
DEFINE_PRIME2 (box3d_b3Body_GetLocalPoint);
DEFINE_PRIME2 (box3d_b3Body_GetWorldPoint);
DEFINE_PRIME2 (box3d_b3Body_GetLocalVector);
DEFINE_PRIME2 (box3d_b3Body_GetWorldVector);
DEFINE_PRIME1 (box3d_b3Body_GetLinearVelocity);
DEFINE_PRIME1 (box3d_b3Body_GetAngularVelocity);
DEFINE_PRIME2v (box3d_b3Body_SetLinearVelocity);
DEFINE_PRIME2v (box3d_b3Body_SetAngularVelocity);
DEFINE_PRIME4v (box3d_b3Body_SetTargetTransform);
DEFINE_PRIME2 (box3d_b3Body_GetLocalPointVelocity);
DEFINE_PRIME2 (box3d_b3Body_GetWorldPointVelocity);
DEFINE_PRIME4v (box3d_b3Body_ApplyForce);
DEFINE_PRIME3v (box3d_b3Body_ApplyForceToCenter);
DEFINE_PRIME3v (box3d_b3Body_ApplyTorque);
DEFINE_PRIME4v (box3d_b3Body_ApplyLinearImpulse);
DEFINE_PRIME3v (box3d_b3Body_ApplyLinearImpulseToCenter);
DEFINE_PRIME3v (box3d_b3Body_ApplyAngularImpulse);
DEFINE_PRIME1 (box3d_b3Body_GetMass);
DEFINE_PRIME1 (box3d_b3Body_GetLocalRotationalInertia);
DEFINE_PRIME1 (box3d_b3Body_GetInverseMass);
DEFINE_PRIME1 (box3d_b3Body_GetWorldInverseRotationalInertia);
DEFINE_PRIME1 (box3d_b3Body_GetLocalCenter);
DEFINE_PRIME1 (box3d_b3Body_GetWorldCenter);
DEFINE_PRIME2v (box3d_b3Body_SetMassData);
DEFINE_PRIME1 (box3d_b3Body_GetMassData);
DEFINE_PRIME1v (box3d_b3Body_ApplyMassFromShapes);
DEFINE_PRIME2v (box3d_b3Body_SetLinearDamping);
DEFINE_PRIME1 (box3d_b3Body_GetLinearDamping);
DEFINE_PRIME2v (box3d_b3Body_SetAngularDamping);
DEFINE_PRIME1 (box3d_b3Body_GetAngularDamping);
DEFINE_PRIME2v (box3d_b3Body_SetGravityScale);
DEFINE_PRIME1 (box3d_b3Body_GetGravityScale);
DEFINE_PRIME1 (box3d_b3Body_IsAwake);
DEFINE_PRIME2v (box3d_b3Body_SetAwake);
DEFINE_PRIME2v (box3d_b3Body_EnableSleep);
DEFINE_PRIME1 (box3d_b3Body_IsSleepEnabled);
DEFINE_PRIME2v (box3d_b3Body_SetSleepThreshold);
DEFINE_PRIME1 (box3d_b3Body_GetSleepThreshold);
DEFINE_PRIME1 (box3d_b3Body_IsEnabled);
DEFINE_PRIME1v (box3d_b3Body_Disable);
DEFINE_PRIME1v (box3d_b3Body_Enable);
DEFINE_PRIME2v (box3d_b3Body_SetMotionLocks);
DEFINE_PRIME1 (box3d_b3Body_GetMotionLocks);
DEFINE_PRIME2v (box3d_b3Body_SetBullet);
DEFINE_PRIME1 (box3d_b3Body_IsBullet);
DEFINE_PRIME2v (box3d_b3Body_AllowFastRotation);
DEFINE_PRIME1 (box3d_b3Body_IsFastRotationAllowed);
DEFINE_PRIME2v (box3d_b3Body_EnableContactRecycling);
DEFINE_PRIME1 (box3d_b3Body_IsContactRecyclingEnabled);
DEFINE_PRIME2v (box3d_b3Body_EnableHitEvents);
DEFINE_PRIME1 (box3d_b3Body_GetWorld);
DEFINE_PRIME1 (box3d_b3Body_GetShapeCount);
DEFINE_PRIME3 (box3d_b3Body_GetShapes);
DEFINE_PRIME1 (box3d_b3Body_GetJointCount);
DEFINE_PRIME3 (box3d_b3Body_GetJoints);
DEFINE_PRIME1 (box3d_b3Body_GetContactCapacity);
DEFINE_PRIME3 (box3d_b3Body_GetContactData);
DEFINE_PRIME1 (box3d_b3Body_ComputeAABB);
DEFINE_PRIME1 (box3d_b3Body_GetMinExtent);
DEFINE_PRIME1 (box3d_b3Body_GetMaxExtent);
DEFINE_PRIME1 (box3d_b3Body_GetMaxExtentOrigin);
DEFINE_PRIME3 (box3d_b3Body_GetClosestPoint);
DEFINE_PRIME6 (box3d_b3Body_CastRay);
DEFINE_PRIME8 (box3d_b3Body_CastShape);
DEFINE_PRIME5 (box3d_b3Body_OverlapShape);
DEFINE_PRIME7 (box3d_b3Body_CollideMover);
DEFINE_PRIME7 (box3d_b3Body_TimeOfImpactMover);
DEFINE_PRIME3 (box3d_b3CreateSphereShape);
DEFINE_PRIME3 (box3d_b3CreateCapsuleShape);
DEFINE_PRIME3 (box3d_b3CreateHullShape);
DEFINE_PRIME5 (box3d_b3CreateTransformedHullShape);
DEFINE_PRIME4 (box3d_b3CreateMeshShape);
DEFINE_PRIME3 (box3d_b3CreateHeightFieldShape);
DEFINE_PRIME3 (box3d_b3CreateBakedCompoundShape);
DEFINE_PRIME2v (box3d_b3DestroyShape);
DEFINE_PRIME1 (box3d_b3Shape_IsValid);
DEFINE_PRIME1 (box3d_b3Shape_GetType);
DEFINE_PRIME1 (box3d_b3Shape_GetBody);
DEFINE_PRIME1 (box3d_b3Shape_GetWorld);
DEFINE_PRIME1 (box3d_b3Shape_IsSensor);
DEFINE_PRIME2v (box3d_b3Shape_SetName);
DEFINE_PRIME2v (box3d_b3Shape_SetUserData);
DEFINE_PRIME3v (box3d_b3Shape_SetDensity);
DEFINE_PRIME1 (box3d_b3Shape_GetDensity);
DEFINE_PRIME2v (box3d_b3Shape_SetFriction);
DEFINE_PRIME1 (box3d_b3Shape_GetFriction);
DEFINE_PRIME2v (box3d_b3Shape_SetRestitution);
DEFINE_PRIME1 (box3d_b3Shape_GetRestitution);
DEFINE_PRIME2v (box3d_b3Shape_SetSurfaceMaterial);
DEFINE_PRIME1 (box3d_b3Shape_GetSurfaceMaterial);
DEFINE_PRIME1 (box3d_b3Shape_GetMeshMaterialCount);
DEFINE_PRIME3v (box3d_b3Shape_SetMeshMaterial);
DEFINE_PRIME2 (box3d_b3Shape_GetMeshSurfaceMaterial);
DEFINE_PRIME1 (box3d_b3Shape_GetFilter);
DEFINE_PRIME3v (box3d_b3Shape_SetFilter);
DEFINE_PRIME2v (box3d_b3Shape_EnableSensorEvents);
DEFINE_PRIME1 (box3d_b3Shape_AreSensorEventsEnabled);
DEFINE_PRIME2v (box3d_b3Shape_EnableContactEvents);
DEFINE_PRIME1 (box3d_b3Shape_AreContactEventsEnabled);
DEFINE_PRIME2v (box3d_b3Shape_EnablePreSolveEvents);
DEFINE_PRIME1 (box3d_b3Shape_ArePreSolveEventsEnabled);
DEFINE_PRIME2v (box3d_b3Shape_EnableHitEvents);
DEFINE_PRIME1 (box3d_b3Shape_AreHitEventsEnabled);
DEFINE_PRIME3 (box3d_b3Shape_RayCast);
DEFINE_PRIME1 (box3d_b3Shape_GetSphere);
DEFINE_PRIME1 (box3d_b3Shape_GetCapsule);
DEFINE_PRIME1 (box3d_b3Shape_GetMesh);
DEFINE_PRIME2v (box3d_b3Shape_SetSphere);
DEFINE_PRIME2v (box3d_b3Shape_SetCapsule);
DEFINE_PRIME2v (box3d_b3Shape_SetHull);
DEFINE_PRIME3v (box3d_b3Shape_SetMesh);
DEFINE_PRIME1 (box3d_b3Shape_GetContactCapacity);
DEFINE_PRIME3 (box3d_b3Shape_GetContactData);
DEFINE_PRIME1 (box3d_b3Shape_GetSensorCapacity);
DEFINE_PRIME3 (box3d_b3Shape_GetSensorData);
DEFINE_PRIME1 (box3d_b3Shape_GetAABB);
DEFINE_PRIME1 (box3d_b3Shape_ComputeMassData);
DEFINE_PRIME2 (box3d_b3Shape_GetClosestPoint);
DEFINE_PRIME6v (box3d_b3Shape_ApplyWind);
DEFINE_PRIME2v (box3d_b3DestroyJoint);
DEFINE_PRIME1 (box3d_b3Joint_IsValid);
DEFINE_PRIME1 (box3d_b3Joint_GetType);
DEFINE_PRIME1 (box3d_b3Joint_GetBodyA);
DEFINE_PRIME1 (box3d_b3Joint_GetBodyB);
DEFINE_PRIME1 (box3d_b3Joint_GetWorld);
DEFINE_PRIME2v (box3d_b3Joint_SetLocalFrameA);
DEFINE_PRIME1 (box3d_b3Joint_GetLocalFrameA);
DEFINE_PRIME2v (box3d_b3Joint_SetLocalFrameB);
DEFINE_PRIME1 (box3d_b3Joint_GetLocalFrameB);
DEFINE_PRIME2v (box3d_b3Joint_SetCollideConnected);
DEFINE_PRIME1 (box3d_b3Joint_GetCollideConnected);
DEFINE_PRIME2v (box3d_b3Joint_SetUserData);
DEFINE_PRIME1v (box3d_b3Joint_WakeBodies);
DEFINE_PRIME1 (box3d_b3Joint_IsAwake);
DEFINE_PRIME1 (box3d_b3Joint_GetConstraintForce);
DEFINE_PRIME1 (box3d_b3Joint_GetConstraintTorque);
DEFINE_PRIME1 (box3d_b3Joint_GetLinearSeparation);
DEFINE_PRIME1 (box3d_b3Joint_GetAngularSeparation);
DEFINE_PRIME3v (box3d_b3Joint_SetConstraintTuning);
DEFINE_PRIME3v (box3d_b3Joint_GetConstraintTuning);
DEFINE_PRIME2v (box3d_b3Joint_SetForceThreshold);
DEFINE_PRIME1 (box3d_b3Joint_GetForceThreshold);
DEFINE_PRIME2v (box3d_b3Joint_SetTorqueThreshold);
DEFINE_PRIME1 (box3d_b3Joint_GetTorqueThreshold);
DEFINE_PRIME2 (box3d_b3CreateParallelJoint);
DEFINE_PRIME2v (box3d_b3ParallelJoint_SetSpringHertz);
DEFINE_PRIME2v (box3d_b3ParallelJoint_SetSpringDampingRatio);
DEFINE_PRIME1 (box3d_b3ParallelJoint_GetSpringHertz);
DEFINE_PRIME1 (box3d_b3ParallelJoint_GetSpringDampingRatio);
DEFINE_PRIME2v (box3d_b3ParallelJoint_SetMaxTorque);
DEFINE_PRIME1 (box3d_b3ParallelJoint_GetMaxTorque);
DEFINE_PRIME2 (box3d_b3CreateDistanceJoint);
DEFINE_PRIME2v (box3d_b3DistanceJoint_SetLength);
DEFINE_PRIME1 (box3d_b3DistanceJoint_GetLength);
DEFINE_PRIME2v (box3d_b3DistanceJoint_EnableSpring);
DEFINE_PRIME1 (box3d_b3DistanceJoint_IsSpringEnabled);
DEFINE_PRIME3v (box3d_b3DistanceJoint_SetSpringForceRange);
DEFINE_PRIME3v (box3d_b3DistanceJoint_GetSpringForceRange);
DEFINE_PRIME2v (box3d_b3DistanceJoint_SetSpringHertz);
DEFINE_PRIME2v (box3d_b3DistanceJoint_SetSpringDampingRatio);
DEFINE_PRIME1 (box3d_b3DistanceJoint_GetSpringHertz);
DEFINE_PRIME1 (box3d_b3DistanceJoint_GetSpringDampingRatio);
DEFINE_PRIME2v (box3d_b3DistanceJoint_EnableLimit);
DEFINE_PRIME1 (box3d_b3DistanceJoint_IsLimitEnabled);
DEFINE_PRIME3v (box3d_b3DistanceJoint_SetLengthRange);
DEFINE_PRIME1 (box3d_b3DistanceJoint_GetMinLength);
DEFINE_PRIME1 (box3d_b3DistanceJoint_GetMaxLength);
DEFINE_PRIME1 (box3d_b3DistanceJoint_GetCurrentLength);
DEFINE_PRIME2v (box3d_b3DistanceJoint_EnableMotor);
DEFINE_PRIME1 (box3d_b3DistanceJoint_IsMotorEnabled);
DEFINE_PRIME2v (box3d_b3DistanceJoint_SetMotorSpeed);
DEFINE_PRIME1 (box3d_b3DistanceJoint_GetMotorSpeed);
DEFINE_PRIME2v (box3d_b3DistanceJoint_SetMaxMotorForce);
DEFINE_PRIME1 (box3d_b3DistanceJoint_GetMaxMotorForce);
DEFINE_PRIME1 (box3d_b3DistanceJoint_GetMotorForce);
DEFINE_PRIME2 (box3d_b3CreateMotorJoint);
DEFINE_PRIME2v (box3d_b3MotorJoint_SetLinearVelocity);
DEFINE_PRIME1 (box3d_b3MotorJoint_GetLinearVelocity);
DEFINE_PRIME2v (box3d_b3MotorJoint_SetAngularVelocity);
DEFINE_PRIME1 (box3d_b3MotorJoint_GetAngularVelocity);
DEFINE_PRIME2v (box3d_b3MotorJoint_SetMaxVelocityForce);
DEFINE_PRIME1 (box3d_b3MotorJoint_GetMaxVelocityForce);
DEFINE_PRIME2v (box3d_b3MotorJoint_SetMaxVelocityTorque);
DEFINE_PRIME1 (box3d_b3MotorJoint_GetMaxVelocityTorque);
DEFINE_PRIME2v (box3d_b3MotorJoint_SetLinearHertz);
DEFINE_PRIME1 (box3d_b3MotorJoint_GetLinearHertz);
DEFINE_PRIME2v (box3d_b3MotorJoint_SetLinearDampingRatio);
DEFINE_PRIME1 (box3d_b3MotorJoint_GetLinearDampingRatio);
DEFINE_PRIME2v (box3d_b3MotorJoint_SetAngularHertz);
DEFINE_PRIME1 (box3d_b3MotorJoint_GetAngularHertz);
DEFINE_PRIME2v (box3d_b3MotorJoint_SetAngularDampingRatio);
DEFINE_PRIME1 (box3d_b3MotorJoint_GetAngularDampingRatio);
DEFINE_PRIME2v (box3d_b3MotorJoint_SetMaxSpringForce);
DEFINE_PRIME1 (box3d_b3MotorJoint_GetMaxSpringForce);
DEFINE_PRIME2v (box3d_b3MotorJoint_SetMaxSpringTorque);
DEFINE_PRIME1 (box3d_b3MotorJoint_GetMaxSpringTorque);
DEFINE_PRIME2 (box3d_b3CreateFilterJoint);
DEFINE_PRIME2 (box3d_b3CreatePrismaticJoint);
DEFINE_PRIME2v (box3d_b3PrismaticJoint_EnableSpring);
DEFINE_PRIME1 (box3d_b3PrismaticJoint_IsSpringEnabled);
DEFINE_PRIME2v (box3d_b3PrismaticJoint_SetSpringHertz);
DEFINE_PRIME1 (box3d_b3PrismaticJoint_GetSpringHertz);
DEFINE_PRIME2v (box3d_b3PrismaticJoint_SetSpringDampingRatio);
DEFINE_PRIME1 (box3d_b3PrismaticJoint_GetSpringDampingRatio);
DEFINE_PRIME2v (box3d_b3PrismaticJoint_SetTargetTranslation);
DEFINE_PRIME1 (box3d_b3PrismaticJoint_GetTargetTranslation);
DEFINE_PRIME2v (box3d_b3PrismaticJoint_EnableLimit);
DEFINE_PRIME1 (box3d_b3PrismaticJoint_IsLimitEnabled);
DEFINE_PRIME1 (box3d_b3PrismaticJoint_GetLowerLimit);
DEFINE_PRIME1 (box3d_b3PrismaticJoint_GetUpperLimit);
DEFINE_PRIME3v (box3d_b3PrismaticJoint_SetLimits);
DEFINE_PRIME2v (box3d_b3PrismaticJoint_EnableMotor);
DEFINE_PRIME1 (box3d_b3PrismaticJoint_IsMotorEnabled);
DEFINE_PRIME2v (box3d_b3PrismaticJoint_SetMotorSpeed);
DEFINE_PRIME1 (box3d_b3PrismaticJoint_GetMotorSpeed);
DEFINE_PRIME2v (box3d_b3PrismaticJoint_SetMaxMotorForce);
DEFINE_PRIME1 (box3d_b3PrismaticJoint_GetMaxMotorForce);
DEFINE_PRIME1 (box3d_b3PrismaticJoint_GetMotorForce);
DEFINE_PRIME1 (box3d_b3PrismaticJoint_GetTranslation);
DEFINE_PRIME1 (box3d_b3PrismaticJoint_GetSpeed);
DEFINE_PRIME2 (box3d_b3CreateRevoluteJoint);
DEFINE_PRIME2v (box3d_b3RevoluteJoint_EnableSpring);
DEFINE_PRIME1 (box3d_b3RevoluteJoint_IsSpringEnabled);
DEFINE_PRIME2v (box3d_b3RevoluteJoint_SetSpringHertz);
DEFINE_PRIME1 (box3d_b3RevoluteJoint_GetSpringHertz);
DEFINE_PRIME2v (box3d_b3RevoluteJoint_SetSpringDampingRatio);
DEFINE_PRIME1 (box3d_b3RevoluteJoint_GetSpringDampingRatio);
DEFINE_PRIME2v (box3d_b3RevoluteJoint_SetTargetAngle);
DEFINE_PRIME1 (box3d_b3RevoluteJoint_GetTargetAngle);
DEFINE_PRIME1 (box3d_b3RevoluteJoint_GetAngle);
DEFINE_PRIME2v (box3d_b3RevoluteJoint_EnableLimit);
DEFINE_PRIME1 (box3d_b3RevoluteJoint_IsLimitEnabled);
DEFINE_PRIME1 (box3d_b3RevoluteJoint_GetLowerLimit);
DEFINE_PRIME1 (box3d_b3RevoluteJoint_GetUpperLimit);
DEFINE_PRIME3v (box3d_b3RevoluteJoint_SetLimits);
DEFINE_PRIME2v (box3d_b3RevoluteJoint_EnableMotor);
DEFINE_PRIME1 (box3d_b3RevoluteJoint_IsMotorEnabled);
DEFINE_PRIME2v (box3d_b3RevoluteJoint_SetMotorSpeed);
DEFINE_PRIME1 (box3d_b3RevoluteJoint_GetMotorSpeed);
DEFINE_PRIME1 (box3d_b3RevoluteJoint_GetMotorTorque);
DEFINE_PRIME2v (box3d_b3RevoluteJoint_SetMaxMotorTorque);
DEFINE_PRIME1 (box3d_b3RevoluteJoint_GetMaxMotorTorque);
DEFINE_PRIME2 (box3d_b3CreateSphericalJoint);
DEFINE_PRIME2v (box3d_b3SphericalJoint_EnableConeLimit);
DEFINE_PRIME1 (box3d_b3SphericalJoint_IsConeLimitEnabled);
DEFINE_PRIME1 (box3d_b3SphericalJoint_GetConeLimit);
DEFINE_PRIME2v (box3d_b3SphericalJoint_SetConeLimit);
DEFINE_PRIME1 (box3d_b3SphericalJoint_GetConeAngle);
DEFINE_PRIME2v (box3d_b3SphericalJoint_EnableTwistLimit);
DEFINE_PRIME1 (box3d_b3SphericalJoint_IsTwistLimitEnabled);
DEFINE_PRIME1 (box3d_b3SphericalJoint_GetLowerTwistLimit);
DEFINE_PRIME1 (box3d_b3SphericalJoint_GetUpperTwistLimit);
DEFINE_PRIME3v (box3d_b3SphericalJoint_SetTwistLimits);
DEFINE_PRIME1 (box3d_b3SphericalJoint_GetTwistAngle);
DEFINE_PRIME2v (box3d_b3SphericalJoint_EnableSpring);
DEFINE_PRIME1 (box3d_b3SphericalJoint_IsSpringEnabled);
DEFINE_PRIME2v (box3d_b3SphericalJoint_SetSpringHertz);
DEFINE_PRIME1 (box3d_b3SphericalJoint_GetSpringHertz);
DEFINE_PRIME2v (box3d_b3SphericalJoint_SetSpringDampingRatio);
DEFINE_PRIME1 (box3d_b3SphericalJoint_GetSpringDampingRatio);
DEFINE_PRIME2v (box3d_b3SphericalJoint_SetTargetRotation);
DEFINE_PRIME1 (box3d_b3SphericalJoint_GetTargetRotation);
DEFINE_PRIME2v (box3d_b3SphericalJoint_EnableMotor);
DEFINE_PRIME1 (box3d_b3SphericalJoint_IsMotorEnabled);
DEFINE_PRIME2v (box3d_b3SphericalJoint_SetMotorVelocity);
DEFINE_PRIME1 (box3d_b3SphericalJoint_GetMotorVelocity);
DEFINE_PRIME1 (box3d_b3SphericalJoint_GetMotorTorque);
DEFINE_PRIME2v (box3d_b3SphericalJoint_SetMaxMotorTorque);
DEFINE_PRIME1 (box3d_b3SphericalJoint_GetMaxMotorTorque);
DEFINE_PRIME2 (box3d_b3CreateWeldJoint);
DEFINE_PRIME2v (box3d_b3WeldJoint_SetLinearHertz);
DEFINE_PRIME1 (box3d_b3WeldJoint_GetLinearHertz);
DEFINE_PRIME2v (box3d_b3WeldJoint_SetLinearDampingRatio);
DEFINE_PRIME1 (box3d_b3WeldJoint_GetLinearDampingRatio);
DEFINE_PRIME2v (box3d_b3WeldJoint_SetAngularHertz);
DEFINE_PRIME1 (box3d_b3WeldJoint_GetAngularHertz);
DEFINE_PRIME2v (box3d_b3WeldJoint_SetAngularDampingRatio);
DEFINE_PRIME1 (box3d_b3WeldJoint_GetAngularDampingRatio);
DEFINE_PRIME2 (box3d_b3CreateWheelJoint);
DEFINE_PRIME2v (box3d_b3WheelJoint_EnableSuspension);
DEFINE_PRIME1 (box3d_b3WheelJoint_IsSuspensionEnabled);
DEFINE_PRIME2v (box3d_b3WheelJoint_SetSuspensionHertz);
DEFINE_PRIME1 (box3d_b3WheelJoint_GetSuspensionHertz);
DEFINE_PRIME2v (box3d_b3WheelJoint_SetSuspensionDampingRatio);
DEFINE_PRIME1 (box3d_b3WheelJoint_GetSuspensionDampingRatio);
DEFINE_PRIME2v (box3d_b3WheelJoint_EnableSuspensionLimit);
DEFINE_PRIME1 (box3d_b3WheelJoint_IsSuspensionLimitEnabled);
DEFINE_PRIME1 (box3d_b3WheelJoint_GetLowerSuspensionLimit);
DEFINE_PRIME1 (box3d_b3WheelJoint_GetUpperSuspensionLimit);
DEFINE_PRIME3v (box3d_b3WheelJoint_SetSuspensionLimits);
DEFINE_PRIME2v (box3d_b3WheelJoint_EnableSpinMotor);
DEFINE_PRIME1 (box3d_b3WheelJoint_IsSpinMotorEnabled);
DEFINE_PRIME2v (box3d_b3WheelJoint_SetSpinMotorSpeed);
DEFINE_PRIME1 (box3d_b3WheelJoint_GetSpinMotorSpeed);
DEFINE_PRIME2v (box3d_b3WheelJoint_SetMaxSpinTorque);
DEFINE_PRIME1 (box3d_b3WheelJoint_GetMaxSpinTorque);
DEFINE_PRIME1 (box3d_b3WheelJoint_GetSpinSpeed);
DEFINE_PRIME1 (box3d_b3WheelJoint_GetSpinTorque);
DEFINE_PRIME2v (box3d_b3WheelJoint_EnableSteering);
DEFINE_PRIME1 (box3d_b3WheelJoint_IsSteeringEnabled);
DEFINE_PRIME2v (box3d_b3WheelJoint_SetSteeringHertz);
DEFINE_PRIME1 (box3d_b3WheelJoint_GetSteeringHertz);
DEFINE_PRIME2v (box3d_b3WheelJoint_SetSteeringDampingRatio);
DEFINE_PRIME1 (box3d_b3WheelJoint_GetSteeringDampingRatio);
DEFINE_PRIME2v (box3d_b3WheelJoint_SetMaxSteeringTorque);
DEFINE_PRIME1 (box3d_b3WheelJoint_GetMaxSteeringTorque);
DEFINE_PRIME2v (box3d_b3WheelJoint_EnableSteeringLimit);
DEFINE_PRIME1 (box3d_b3WheelJoint_IsSteeringLimitEnabled);
DEFINE_PRIME1 (box3d_b3WheelJoint_GetLowerSteeringLimit);
DEFINE_PRIME1 (box3d_b3WheelJoint_GetUpperSteeringLimit);
DEFINE_PRIME3v (box3d_b3WheelJoint_SetSteeringLimits);
DEFINE_PRIME2v (box3d_b3WheelJoint_SetTargetSteeringAngle);
DEFINE_PRIME1 (box3d_b3WheelJoint_GetTargetSteeringAngle);
DEFINE_PRIME1 (box3d_b3WheelJoint_GetSteeringAngle);
DEFINE_PRIME1 (box3d_b3WheelJoint_GetSteeringTorque);
DEFINE_PRIME1 (box3d_b3Contact_IsValid);
DEFINE_PRIME1 (box3d_b3Contact_GetData);

static value box3d_b3DynamicTree_Create (int proxyCapacity) {
	b3DynamicTree ret = b3DynamicTree_Create(proxyCapacity);
	value retVal = box3d_b3DynamicTree_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3DynamicTree));
	return retVal;
}
static void box3d_b3DynamicTree_Destroy (value tree) {
	b3DynamicTree_Destroy((b3DynamicTree*)val_data(tree));
}
static int box3d_b3DynamicTree_CreateProxy (value tree, value aabb, value categoryBits, value userData) {
	return b3DynamicTree_CreateProxy((b3DynamicTree*)val_data(tree), *(b3AABB*)val_data(aabb), *(uint64_t*)val_data(categoryBits), *(uint64_t*)val_data(userData));
}
static void box3d_b3DynamicTree_DestroyProxy (value tree, int proxyId) {
	b3DynamicTree_DestroyProxy((b3DynamicTree*)val_data(tree), proxyId);
}
static void box3d_b3DynamicTree_MoveProxy (value tree, int proxyId, value aabb) {
	b3DynamicTree_MoveProxy((b3DynamicTree*)val_data(tree), proxyId, *(b3AABB*)val_data(aabb));
}
static void box3d_b3DynamicTree_EnlargeProxy (value tree, int proxyId, value aabb) {
	b3DynamicTree_EnlargeProxy((b3DynamicTree*)val_data(tree), proxyId, *(b3AABB*)val_data(aabb));
}
static void box3d_b3DynamicTree_SetCategoryBits (value tree, int proxyId, value categoryBits) {
	b3DynamicTree_SetCategoryBits((b3DynamicTree*)val_data(tree), proxyId, *(uint64_t*)val_data(categoryBits));
}
static value box3d_b3DynamicTree_GetCategoryBits (value tree, int proxyId) {
	return nullptr;
}
static value box3d_b3DynamicTree_Query (value tree, value aabb, value maskBits, bool requireAllBits, value callback, value context) {
	b3TreeStats ret = b3DynamicTree_Query((b3DynamicTree*)val_data(tree), *(b3AABB*)val_data(aabb), *(uint64_t*)val_data(maskBits), requireAllBits, (b3TreeQueryCallbackFcn*)val_data(callback), (void*)val_data(context));
	value retVal = box3d_b3TreeStats_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3TreeStats));
	return retVal;
}
static value box3d_b3DynamicTree_QueryClosest (value tree, value point, value maskBits, bool requireAllBits, value callback, value context, value minDistanceSqr) {
	b3TreeStats ret = b3DynamicTree_QueryClosest((b3DynamicTree*)val_data(tree), *(b3Vec3*)val_data(point), *(uint64_t*)val_data(maskBits), requireAllBits, (b3TreeQueryClosestCallbackFcn*)val_data(callback), (void*)val_data(context), (float*)val_data(minDistanceSqr));
	value retVal = box3d_b3TreeStats_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3TreeStats));
	return retVal;
}
static value box3d_b3DynamicTree_RayCast (value tree, value input, value maskBits, bool requireAllBits, value callback, value context) {
	b3TreeStats ret = b3DynamicTree_RayCast((b3DynamicTree*)val_data(tree), (b3RayCastInput*)val_data(input), *(uint64_t*)val_data(maskBits), requireAllBits, (b3TreeRayCastCallbackFcn*)val_data(callback), (void*)val_data(context));
	value retVal = box3d_b3TreeStats_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3TreeStats));
	return retVal;
}
static value box3d_b3DynamicTree_BoxCast (value tree, value input, value maskBits, bool requireAllBits, value callback, value context) {
	b3TreeStats ret = b3DynamicTree_BoxCast((b3DynamicTree*)val_data(tree), (b3BoxCastInput*)val_data(input), *(uint64_t*)val_data(maskBits), requireAllBits, (b3TreeBoxCastCallbackFcn*)val_data(callback), (void*)val_data(context));
	value retVal = box3d_b3TreeStats_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3TreeStats));
	return retVal;
}
static int box3d_b3DynamicTree_GetHeight (value tree) {
	return b3DynamicTree_GetHeight((b3DynamicTree*)val_data(tree));
}
static float box3d_b3DynamicTree_GetAreaRatio (value tree) {
	return b3DynamicTree_GetAreaRatio((b3DynamicTree*)val_data(tree));
}
static value box3d_b3DynamicTree_GetRootBounds (value tree) {
	b3AABB ret = b3DynamicTree_GetRootBounds((b3DynamicTree*)val_data(tree));
	value retVal = box3d_b3AABB_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3AABB));
	return retVal;
}
static int box3d_b3DynamicTree_GetProxyCount (value tree) {
	return b3DynamicTree_GetProxyCount((b3DynamicTree*)val_data(tree));
}
static int box3d_b3DynamicTree_Rebuild (value tree, bool fullBuild) {
	return b3DynamicTree_Rebuild((b3DynamicTree*)val_data(tree), fullBuild);
}
static int box3d_b3DynamicTree_GetByteCount (value tree) {
	return b3DynamicTree_GetByteCount((b3DynamicTree*)val_data(tree));
}
static void box3d_b3DynamicTree_Validate (value tree) {
	b3DynamicTree_Validate((b3DynamicTree*)val_data(tree));
}
static void box3d_b3DynamicTree_ValidateNoEnlarged (value tree) {
	b3DynamicTree_ValidateNoEnlarged((b3DynamicTree*)val_data(tree));
}
static void box3d_b3DynamicTree_Save (value tree, HxString fileName) {
	b3DynamicTree_Save((b3DynamicTree*)val_data(tree), fileName.__s);
}
static value box3d_b3DynamicTree_Load (HxString fileName, float scale) {
	b3DynamicTree ret = b3DynamicTree_Load(fileName.__s, scale);
	value retVal = box3d_b3DynamicTree_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3DynamicTree));
	return retVal;
}
static void box3d_b3DestroyHull (value hull) {
	b3DestroyHull((b3HullData*)val_data(hull));
}
static value box3d_b3MakeCubeHull (float halfWidth) {
	b3BoxHull ret = b3MakeCubeHull(halfWidth);
	value retVal = box3d_b3BoxHull_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3BoxHull));
	return retVal;
}
static value box3d_b3MakeBoxHull (float hx, float hy, float hz) {
	b3BoxHull ret = b3MakeBoxHull(hx, hy, hz);
	value retVal = box3d_b3BoxHull_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3BoxHull));
	return retVal;
}
static value box3d_b3MakeOffsetBoxHull (float hx, float hy, float hz, value offset) {
	b3BoxHull ret = b3MakeOffsetBoxHull(hx, hy, hz, *(b3Vec3*)val_data(offset));
	value retVal = box3d_b3BoxHull_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3BoxHull));
	return retVal;
}
static value box3d_b3MakeTransformedBoxHull (float hx, float hy, float hz, value transform) {
	b3BoxHull ret = b3MakeTransformedBoxHull(hx, hy, hz, *(b3Transform*)val_data(transform));
	value retVal = box3d_b3BoxHull_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3BoxHull));
	return retVal;
}
static value box3d_b3MakeScaledBoxHull (value halfWidths, value transform, value postScale) {
	b3BoxHull ret = b3MakeScaledBoxHull(*(b3Vec3*)val_data(halfWidths), *(b3Transform*)val_data(transform), *(b3Vec3*)val_data(postScale));
	value retVal = box3d_b3BoxHull_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3BoxHull));
	return retVal;
}
static void box3d_b3ScaleBox (value halfWidths, value transform, value postScale, float minHalfWidth) {
	b3ScaleBox((b3Vec3*)val_data(halfWidths), (b3Transform*)val_data(transform), *(b3Vec3*)val_data(postScale), minHalfWidth);
}
static void box3d_b3DestroyMesh (value mesh) {
	b3DestroyMesh((b3MeshData*)val_data(mesh));
}
static int box3d_b3GetHeight (value mesh) {
	return b3GetHeight((b3MeshData*)val_data(mesh));
}
static void box3d_b3DestroyHeightField (value heightField) {
	b3DestroyHeightField((b3HeightFieldData*)val_data(heightField));
}
static void box3d_b3DumpHeightData (value data, HxString fileName) {
	b3DumpHeightData((b3HeightFieldDef*)val_data(data), fileName.__s);
}
static value box3d_b3GetCompoundChild (value compound, int childIndex) {
	b3ChildShape ret = b3GetCompoundChild((b3CompoundData*)val_data(compound), childIndex);
	value retVal = box3d_b3ChildShape_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3ChildShape));
	return retVal;
}
static void box3d_b3QueryCompound (value compound, value aabb, value fcn, value context) {
	b3QueryCompound((b3CompoundData*)val_data(compound), *(b3AABB*)val_data(aabb), (b3CompoundQueryFcn*)val_data(fcn), (void*)val_data(context));
}
static value box3d_b3GetCompoundCapsule (value compound, int index) {
	b3CompoundCapsule ret = b3GetCompoundCapsule((b3CompoundData*)val_data(compound), index);
	value retVal = box3d_b3CompoundCapsule_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3CompoundCapsule));
	return retVal;
}
static value box3d_b3GetCompoundHull (value compound, int index) {
	b3CompoundHull ret = b3GetCompoundHull((b3CompoundData*)val_data(compound), index);
	value retVal = box3d_b3CompoundHull_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3CompoundHull));
	return retVal;
}
static value box3d_b3GetCompoundMesh (value compound, int index) {
	b3CompoundMesh ret = b3GetCompoundMesh((b3CompoundData*)val_data(compound), index);
	value retVal = box3d_b3CompoundMesh_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3CompoundMesh));
	return retVal;
}
static value box3d_b3GetCompoundSphere (value compound, int index) {
	b3CompoundSphere ret = b3GetCompoundSphere((b3CompoundData*)val_data(compound), index);
	value retVal = box3d_b3CompoundSphere_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3CompoundSphere));
	return retVal;
}
static void box3d_b3DestroyCompound (value compound) {
	b3DestroyCompound((b3CompoundData*)val_data(compound));
}
static value box3d_b3ComputeSphereMass (value shape, float density) {
	b3MassData ret = b3ComputeSphereMass((b3Sphere*)val_data(shape), density);
	value retVal = box3d_b3MassData_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3MassData));
	return retVal;
}
static value box3d_b3ComputeCapsuleMass (value shape, float density) {
	b3MassData ret = b3ComputeCapsuleMass((b3Capsule*)val_data(shape), density);
	value retVal = box3d_b3MassData_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3MassData));
	return retVal;
}
static value box3d_b3ComputeHullMass (value shape, float density) {
	b3MassData ret = b3ComputeHullMass((b3HullData*)val_data(shape), density);
	value retVal = box3d_b3MassData_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3MassData));
	return retVal;
}
static value box3d_b3ComputeSphereAABB (value shape, value transform) {
	b3AABB ret = b3ComputeSphereAABB((b3Sphere*)val_data(shape), *(b3Transform*)val_data(transform));
	value retVal = box3d_b3AABB_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3AABB));
	return retVal;
}
static value box3d_b3ComputeCapsuleAABB (value shape, value transform) {
	b3AABB ret = b3ComputeCapsuleAABB((b3Capsule*)val_data(shape), *(b3Transform*)val_data(transform));
	value retVal = box3d_b3AABB_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3AABB));
	return retVal;
}
static value box3d_b3ComputeHullAABB (value shape, value transform) {
	b3AABB ret = b3ComputeHullAABB((b3HullData*)val_data(shape), *(b3Transform*)val_data(transform));
	value retVal = box3d_b3AABB_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3AABB));
	return retVal;
}
static value box3d_b3ComputeMeshAABB (value shape, value transform, value scale) {
	b3AABB ret = b3ComputeMeshAABB((b3MeshData*)val_data(shape), *(b3Transform*)val_data(transform), *(b3Vec3*)val_data(scale));
	value retVal = box3d_b3AABB_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3AABB));
	return retVal;
}
static value box3d_b3ComputeHeightFieldAABB (value shape, value transform) {
	b3AABB ret = b3ComputeHeightFieldAABB((b3HeightFieldData*)val_data(shape), *(b3Transform*)val_data(transform));
	value retVal = box3d_b3AABB_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3AABB));
	return retVal;
}
static value box3d_b3ComputeCompoundAABB (value shape, value transform) {
	b3AABB ret = b3ComputeCompoundAABB((b3CompoundData*)val_data(shape), *(b3Transform*)val_data(transform));
	value retVal = box3d_b3AABB_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3AABB));
	return retVal;
}
static bool box3d_b3IsValidRay (value input) {
	return b3IsValidRay((b3RayCastInput*)val_data(input));
}
static bool box3d_b3OverlapCapsule (value shape, value shapeTransform, value proxy) {
	return b3OverlapCapsule((b3Capsule*)val_data(shape), *(b3Transform*)val_data(shapeTransform), (b3ShapeProxy*)val_data(proxy));
}
static bool box3d_b3OverlapCompound (value shape, value shapeTransform, value proxy) {
	return b3OverlapCompound((b3CompoundData*)val_data(shape), *(b3Transform*)val_data(shapeTransform), (b3ShapeProxy*)val_data(proxy));
}
static bool box3d_b3OverlapHeightField (value shape, value shapeTransform, value proxy) {
	return b3OverlapHeightField((b3HeightFieldData*)val_data(shape), *(b3Transform*)val_data(shapeTransform), (b3ShapeProxy*)val_data(proxy));
}
static bool box3d_b3OverlapHull (value shape, value shapeTransform, value proxy) {
	return b3OverlapHull((b3HullData*)val_data(shape), *(b3Transform*)val_data(shapeTransform), (b3ShapeProxy*)val_data(proxy));
}
static bool box3d_b3OverlapMesh (value shape, value shapeTransform, value proxy) {
	return b3OverlapMesh((b3Mesh*)val_data(shape), *(b3Transform*)val_data(shapeTransform), (b3ShapeProxy*)val_data(proxy));
}
static bool box3d_b3OverlapSphere (value shape, value shapeTransform, value proxy) {
	return b3OverlapSphere((b3Sphere*)val_data(shape), *(b3Transform*)val_data(shapeTransform), (b3ShapeProxy*)val_data(proxy));
}
static value box3d_b3RayCastSphere (value shape, value input) {
	b3CastOutput ret = b3RayCastSphere((b3Sphere*)val_data(shape), (b3RayCastInput*)val_data(input));
	value retVal = box3d_b3CastOutput_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3CastOutput));
	return retVal;
}
static value box3d_b3RayCastHollowSphere (value shape, value input) {
	b3CastOutput ret = b3RayCastHollowSphere((b3Sphere*)val_data(shape), (b3RayCastInput*)val_data(input));
	value retVal = box3d_b3CastOutput_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3CastOutput));
	return retVal;
}
static value box3d_b3RayCastCapsule (value shape, value input) {
	b3CastOutput ret = b3RayCastCapsule((b3Capsule*)val_data(shape), (b3RayCastInput*)val_data(input));
	value retVal = box3d_b3CastOutput_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3CastOutput));
	return retVal;
}
static value box3d_b3RayCastCompound (value shape, value input) {
	b3CastOutput ret = b3RayCastCompound((b3CompoundData*)val_data(shape), (b3RayCastInput*)val_data(input));
	value retVal = box3d_b3CastOutput_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3CastOutput));
	return retVal;
}
static value box3d_b3RayCastHull (value shape, value input) {
	b3CastOutput ret = b3RayCastHull((b3HullData*)val_data(shape), (b3RayCastInput*)val_data(input));
	value retVal = box3d_b3CastOutput_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3CastOutput));
	return retVal;
}
static value box3d_b3RayCastMesh (value shape, value input) {
	b3CastOutput ret = b3RayCastMesh((b3Mesh*)val_data(shape), (b3RayCastInput*)val_data(input));
	value retVal = box3d_b3CastOutput_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3CastOutput));
	return retVal;
}
static value box3d_b3RayCastHeightField (value shape, value input) {
	b3CastOutput ret = b3RayCastHeightField((b3HeightFieldData*)val_data(shape), (b3RayCastInput*)val_data(input));
	value retVal = box3d_b3CastOutput_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3CastOutput));
	return retVal;
}
static value box3d_b3ShapeCastSphere (value shape, value input) {
	b3CastOutput ret = b3ShapeCastSphere((b3Sphere*)val_data(shape), (b3ShapeCastInput*)val_data(input));
	value retVal = box3d_b3CastOutput_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3CastOutput));
	return retVal;
}
static value box3d_b3ShapeCastCapsule (value shape, value input) {
	b3CastOutput ret = b3ShapeCastCapsule((b3Capsule*)val_data(shape), (b3ShapeCastInput*)val_data(input));
	value retVal = box3d_b3CastOutput_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3CastOutput));
	return retVal;
}
static value box3d_b3ShapeCastCompound (value shape, value input) {
	b3CastOutput ret = b3ShapeCastCompound((b3CompoundData*)val_data(shape), (b3ShapeCastInput*)val_data(input));
	value retVal = box3d_b3CastOutput_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3CastOutput));
	return retVal;
}
static value box3d_b3ShapeCastHull (value shape, value input) {
	b3CastOutput ret = b3ShapeCastHull((b3HullData*)val_data(shape), (b3ShapeCastInput*)val_data(input));
	value retVal = box3d_b3CastOutput_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3CastOutput));
	return retVal;
}
static value box3d_b3ShapeCastMesh (value shape, value input) {
	b3CastOutput ret = b3ShapeCastMesh((b3Mesh*)val_data(shape), (b3ShapeCastInput*)val_data(input));
	value retVal = box3d_b3CastOutput_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3CastOutput));
	return retVal;
}
static value box3d_b3ShapeCastHeightField (value shape, value input) {
	b3CastOutput ret = b3ShapeCastHeightField((b3HeightFieldData*)val_data(shape), (b3ShapeCastInput*)val_data(input));
	value retVal = box3d_b3CastOutput_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3CastOutput));
	return retVal;
}
static void box3d_b3QueryMesh (value mesh, value bounds, value fcn, value context) {
	b3QueryMesh((b3Mesh*)val_data(mesh), *(const b3AABB*)val_data(bounds), (b3MeshQueryFcn*)val_data(fcn), (void*)val_data(context));
}
static void box3d_b3QueryHeightField (value heightField, value bounds, value fcn, value context) {
	b3QueryHeightField((b3HeightFieldData*)val_data(heightField), *(b3AABB*)val_data(bounds), (b3MeshQueryFcn*)val_data(fcn), (void*)val_data(context));
}
static value box3d_b3ShapeDistance (value input, value cache, value simplexes, int simplexCapacity) {
	b3DistanceOutput ret = b3ShapeDistance((b3DistanceInput*)val_data(input), (b3SimplexCache*)val_data(cache), (b3Simplex*)val_data(simplexes), simplexCapacity);
	value retVal = box3d_b3DistanceOutput_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3DistanceOutput));
	return retVal;
}
static value box3d_b3ShapeCast (value input) {
	b3CastOutput ret = b3ShapeCast((b3ShapeCastPairInput*)val_data(input));
	value retVal = box3d_b3CastOutput_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3CastOutput));
	return retVal;
}
static value box3d_b3GetSweepTransform (value sweep, float time) {
	b3Transform ret = b3GetSweepTransform((b3Sweep*)val_data(sweep), time);
	value retVal = box3d_b3Transform_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Transform));
	return retVal;
}
static value box3d_b3TimeOfImpact (value input) {
	b3TOIOutput ret = b3TimeOfImpact((b3TOIInput*)val_data(input));
	value retVal = box3d_b3TOIOutput_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3TOIOutput));
	return retVal;
}
static void box3d_b3CollideSpheres (value manifold, int capacity, value sphereA, value sphereB, value transformBtoA) {
	b3CollideSpheres((b3LocalManifold*)val_data(manifold), capacity, (b3Sphere*)val_data(sphereA), (b3Sphere*)val_data(sphereB), *(b3Transform*)val_data(transformBtoA));
}
static void box3d_b3CollideCapsuleAndSphere (value manifold, int capacity, value capsuleA, value sphereB, value transformBtoA) {
	b3CollideCapsuleAndSphere((b3LocalManifold*)val_data(manifold), capacity, (b3Capsule*)val_data(capsuleA), (b3Sphere*)val_data(sphereB), *(b3Transform*)val_data(transformBtoA));
}
static void box3d_b3CollideHullAndSphere (value manifold, int capacity, value hullA, value sphereB, value transformBtoA, value cache) {
	b3CollideHullAndSphere((b3LocalManifold*)val_data(manifold), capacity, (b3HullData*)val_data(hullA), (b3Sphere*)val_data(sphereB), *(b3Transform*)val_data(transformBtoA), (b3SimplexCache*)val_data(cache));
}
static void box3d_b3CollideCapsules (value manifold, int capacity, value capsuleA, value capsuleB, value transformBtoA) {
	b3CollideCapsules((b3LocalManifold*)val_data(manifold), capacity, (b3Capsule*)val_data(capsuleA), (b3Capsule*)val_data(capsuleB), *(b3Transform*)val_data(transformBtoA));
}
static void box3d_b3CollideHullAndCapsule (value manifold, int capacity, value hullA, value capsuleB, value transformBtoA, value cache) {
	b3CollideHullAndCapsule((b3LocalManifold*)val_data(manifold), capacity, (b3HullData*)val_data(hullA), (b3Capsule*)val_data(capsuleB), *(b3Transform*)val_data(transformBtoA), (b3SimplexCache*)val_data(cache));
}
static void box3d_b3CollideHulls (value manifold, int capacity, value hullA, value hullB, value transformBtoA, value cache) {
	b3CollideHulls((b3LocalManifold*)val_data(manifold), capacity, (b3HullData*)val_data(hullA), (b3HullData*)val_data(hullB), *(b3Transform*)val_data(transformBtoA), (b3SATCache*)val_data(cache));
}
static void box3d_b3CollideTriangleAndCapsule (value manifold, int capacity, value triangleA, value capsuleB, value cache) {
	b3CollideTriangleAndCapsule((b3LocalManifold*)val_data(manifold), capacity, (b3Vec3*)val_data(triangleA), (b3Capsule*)val_data(capsuleB), (b3SimplexCache*)val_data(cache));
}
static void box3d_b3CollideTriangleAndHull (value manifold, int capacity, value v1, value v2, value v3, int triangleFlags, value hullB, value cache, bool enableSpeculative) {
	b3CollideTriangleAndHull((b3LocalManifold*)val_data(manifold), capacity, *(b3Vec3*)val_data(v1), *(b3Vec3*)val_data(v2), *(b3Vec3*)val_data(v3), triangleFlags, (b3HullData*)val_data(hullB), (b3SATCache*)val_data(cache), enableSpeculative);
}
static void box3d_b3CollideTriangleAndSphere (value manifold, int capacity, value triangleA, value sphereB) {
	b3CollideTriangleAndSphere((b3LocalManifold*)val_data(manifold), capacity, (b3Vec3*)val_data(triangleA), (b3Sphere*)val_data(sphereB));
}
static value box3d_b3SolvePlanes (value targetDelta, value planes, int count) {
	b3PlaneSolverResult ret = b3SolvePlanes(*(b3Vec3*)val_data(targetDelta), (b3CollisionPlane*)val_data(planes), count);
	value retVal = box3d_b3PlaneSolverResult_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3PlaneSolverResult));
	return retVal;
}
static value box3d_b3ClipVector (value vector, value planes, int count) {
	b3Vec3 ret = b3ClipVector(*(b3Vec3*)val_data(vector), (b3CollisionPlane*)val_data(planes), count);
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3DynamicTree_GetUserData (value tree, int proxyId) {
	return nullptr;
}
static value box3d_b3DynamicTree_GetAABB (value tree, int proxyId) {
	b3AABB ret = b3DynamicTree_GetAABB((b3DynamicTree*)val_data(tree), proxyId);
	value retVal = box3d_b3AABB_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3AABB));
	return retVal;
}

DEFINE_PRIME1 (box3d_b3DynamicTree_Create);
DEFINE_PRIME1v (box3d_b3DynamicTree_Destroy);
DEFINE_PRIME4 (box3d_b3DynamicTree_CreateProxy);
DEFINE_PRIME2v (box3d_b3DynamicTree_DestroyProxy);
DEFINE_PRIME3v (box3d_b3DynamicTree_MoveProxy);
DEFINE_PRIME3v (box3d_b3DynamicTree_EnlargeProxy);
DEFINE_PRIME3v (box3d_b3DynamicTree_SetCategoryBits);
DEFINE_PRIME2 (box3d_b3DynamicTree_GetCategoryBits);
DEFINE_PRIME6 (box3d_b3DynamicTree_Query);
DEFINE_PRIME7 (box3d_b3DynamicTree_QueryClosest);
DEFINE_PRIME6 (box3d_b3DynamicTree_RayCast);
DEFINE_PRIME6 (box3d_b3DynamicTree_BoxCast);
DEFINE_PRIME1 (box3d_b3DynamicTree_GetHeight);
DEFINE_PRIME1 (box3d_b3DynamicTree_GetAreaRatio);
DEFINE_PRIME1 (box3d_b3DynamicTree_GetRootBounds);
DEFINE_PRIME1 (box3d_b3DynamicTree_GetProxyCount);
DEFINE_PRIME2 (box3d_b3DynamicTree_Rebuild);
DEFINE_PRIME1 (box3d_b3DynamicTree_GetByteCount);
DEFINE_PRIME1v (box3d_b3DynamicTree_Validate);
DEFINE_PRIME1v (box3d_b3DynamicTree_ValidateNoEnlarged);
DEFINE_PRIME2v (box3d_b3DynamicTree_Save);
DEFINE_PRIME2 (box3d_b3DynamicTree_Load);
DEFINE_PRIME1v (box3d_b3DestroyHull);
DEFINE_PRIME1 (box3d_b3MakeCubeHull);
DEFINE_PRIME3 (box3d_b3MakeBoxHull);
DEFINE_PRIME4 (box3d_b3MakeOffsetBoxHull);
DEFINE_PRIME4 (box3d_b3MakeTransformedBoxHull);
DEFINE_PRIME3 (box3d_b3MakeScaledBoxHull);
DEFINE_PRIME4v (box3d_b3ScaleBox);
DEFINE_PRIME1v (box3d_b3DestroyMesh);
DEFINE_PRIME1 (box3d_b3GetHeight);
DEFINE_PRIME1v (box3d_b3DestroyHeightField);
DEFINE_PRIME2v (box3d_b3DumpHeightData);
DEFINE_PRIME2 (box3d_b3GetCompoundChild);
DEFINE_PRIME4v (box3d_b3QueryCompound);
DEFINE_PRIME2 (box3d_b3GetCompoundCapsule);
DEFINE_PRIME2 (box3d_b3GetCompoundHull);
DEFINE_PRIME2 (box3d_b3GetCompoundMesh);
DEFINE_PRIME2 (box3d_b3GetCompoundSphere);
DEFINE_PRIME1v (box3d_b3DestroyCompound);
DEFINE_PRIME2 (box3d_b3ComputeSphereMass);
DEFINE_PRIME2 (box3d_b3ComputeCapsuleMass);
DEFINE_PRIME2 (box3d_b3ComputeHullMass);
DEFINE_PRIME2 (box3d_b3ComputeSphereAABB);
DEFINE_PRIME2 (box3d_b3ComputeCapsuleAABB);
DEFINE_PRIME2 (box3d_b3ComputeHullAABB);
DEFINE_PRIME3 (box3d_b3ComputeMeshAABB);
DEFINE_PRIME2 (box3d_b3ComputeHeightFieldAABB);
DEFINE_PRIME2 (box3d_b3ComputeCompoundAABB);
DEFINE_PRIME1 (box3d_b3IsValidRay);
DEFINE_PRIME3 (box3d_b3OverlapCapsule);
DEFINE_PRIME3 (box3d_b3OverlapCompound);
DEFINE_PRIME3 (box3d_b3OverlapHeightField);
DEFINE_PRIME3 (box3d_b3OverlapHull);
DEFINE_PRIME3 (box3d_b3OverlapMesh);
DEFINE_PRIME3 (box3d_b3OverlapSphere);
DEFINE_PRIME2 (box3d_b3RayCastSphere);
DEFINE_PRIME2 (box3d_b3RayCastHollowSphere);
DEFINE_PRIME2 (box3d_b3RayCastCapsule);
DEFINE_PRIME2 (box3d_b3RayCastCompound);
DEFINE_PRIME2 (box3d_b3RayCastHull);
DEFINE_PRIME2 (box3d_b3RayCastMesh);
DEFINE_PRIME2 (box3d_b3RayCastHeightField);
DEFINE_PRIME2 (box3d_b3ShapeCastSphere);
DEFINE_PRIME2 (box3d_b3ShapeCastCapsule);
DEFINE_PRIME2 (box3d_b3ShapeCastCompound);
DEFINE_PRIME2 (box3d_b3ShapeCastHull);
DEFINE_PRIME2 (box3d_b3ShapeCastMesh);
DEFINE_PRIME2 (box3d_b3ShapeCastHeightField);
DEFINE_PRIME4v (box3d_b3QueryMesh);
DEFINE_PRIME4v (box3d_b3QueryHeightField);
DEFINE_PRIME4 (box3d_b3ShapeDistance);
DEFINE_PRIME1 (box3d_b3ShapeCast);
DEFINE_PRIME2 (box3d_b3GetSweepTransform);
DEFINE_PRIME1 (box3d_b3TimeOfImpact);
DEFINE_PRIME5v (box3d_b3CollideSpheres);
DEFINE_PRIME5v (box3d_b3CollideCapsuleAndSphere);
DEFINE_PRIME6v (box3d_b3CollideHullAndSphere);
DEFINE_PRIME5v (box3d_b3CollideCapsules);
DEFINE_PRIME6v (box3d_b3CollideHullAndCapsule);
DEFINE_PRIME6v (box3d_b3CollideHulls);
DEFINE_PRIME5v (box3d_b3CollideTriangleAndCapsule);
DEFINE_PRIME9v (box3d_b3CollideTriangleAndHull);
DEFINE_PRIME4v (box3d_b3CollideTriangleAndSphere);
DEFINE_PRIME3 (box3d_b3SolvePlanes);
DEFINE_PRIME3 (box3d_b3ClipVector);
DEFINE_PRIME2 (box3d_b3DynamicTree_GetUserData);
DEFINE_PRIME2 (box3d_b3DynamicTree_GetAABB);

static float box3d_b3Atan2 (float y, float x) {
	return b3Atan2(y, x);
}
static value box3d_b3ComputeCosSin (float radians) {
	b3CosSin ret = b3ComputeCosSin(radians);
	value retVal = box3d_b3CosSin_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3CosSin));
	return retVal;
}
static value box3d_b3MakeQuatFromMatrix (value m) {
	b3Quat ret = b3MakeQuatFromMatrix((b3Matrix3*)val_data(m));
	value retVal = box3d_b3Quat_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Quat));
	return retVal;
}
static value box3d_b3ComputeQuatBetweenUnitVectors (value v1, value v2) {
	b3Quat ret = b3ComputeQuatBetweenUnitVectors(*(b3Vec3*)val_data(v1), *(b3Vec3*)val_data(v2));
	value retVal = box3d_b3Quat_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Quat));
	return retVal;
}
static value box3d_b3Steiner (float mass, value origin) {
	b3Matrix3 ret = b3Steiner(mass, *(b3Vec3*)val_data(origin));
	value retVal = box3d_b3Matrix3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Matrix3));
	return retVal;
}
static value box3d_b3PointToSegmentDistance (value a, value b, value q) {
	b3Vec3 ret = b3PointToSegmentDistance(*(b3Vec3*)val_data(a), *(b3Vec3*)val_data(b), *(b3Vec3*)val_data(q));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3LineDistance (value p1, value d1, value p2, value d2) {
	b3SegmentDistanceResult ret = b3LineDistance(*(b3Vec3*)val_data(p1), *(b3Vec3*)val_data(d1), *(b3Vec3*)val_data(p2), *(b3Vec3*)val_data(d2));
	value retVal = box3d_b3SegmentDistanceResult_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3SegmentDistanceResult));
	return retVal;
}
static value box3d_b3SegmentDistance (value p1, value q1, value p2, value q2) {
	b3SegmentDistanceResult ret = b3SegmentDistance(*(b3Vec3*)val_data(p1), *(b3Vec3*)val_data(q1), *(b3Vec3*)val_data(p2), *(b3Vec3*)val_data(q2));
	value retVal = box3d_b3SegmentDistanceResult_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3SegmentDistanceResult));
	return retVal;
}
static bool box3d_b3IsValidFloat (float a) {
	return b3IsValidFloat(a);
}
static bool box3d_b3IsValidVec3 (value a) {
	return b3IsValidVec3(*(b3Vec3*)val_data(a));
}
static bool box3d_b3IsValidQuat (value q) {
	return b3IsValidQuat(*(b3Quat*)val_data(q));
}
static bool box3d_b3IsValidTransform (value a) {
	return b3IsValidTransform(*(b3Transform*)val_data(a));
}
static bool box3d_b3IsValidMatrix3 (value a) {
	return b3IsValidMatrix3(*(b3Matrix3*)val_data(a));
}
static bool box3d_b3IsValidAABB (value a) {
	return b3IsValidAABB(*(b3AABB*)val_data(a));
}
static bool box3d_b3IsBoundedAABB (value a) {
	return b3IsBoundedAABB(*(b3AABB*)val_data(a));
}
static bool box3d_b3IsSaneAABB (value a) {
	return b3IsSaneAABB(*(b3AABB*)val_data(a));
}
static bool box3d_b3IsValidPlane (value a) {
	return b3IsValidPlane(*(b3Plane*)val_data(a));
}
static bool box3d_b3IsValidPosition (value p) {
	return b3IsValidPosition(*(b3Pos*)val_data(p));
}
static bool box3d_b3IsValidWorldTransform (value t) {
	return b3IsValidWorldTransform(*(b3WorldTransform*)val_data(t));
}
static int box3d_b3MinInt (int a, int b) {
	return b3MinInt(a, b);
}
static int box3d_b3MaxInt (int a, int b) {
	return b3MaxInt(a, b);
}
static int box3d_b3ClampInt (int a, int lower, int upper) {
	return b3ClampInt(a, lower, upper);
}
static float box3d_b3AbsFloat (float a) {
	return b3AbsFloat(a);
}
static float box3d_b3MinFloat (float a, float b) {
	return b3MinFloat(a, b);
}
static float box3d_b3MaxFloat (float a, float b) {
	return b3MaxFloat(a, b);
}
static float box3d_b3ClampFloat (float a, float lower, float upper) {
	return b3ClampFloat(a, lower, upper);
}
static float box3d_b3LerpFloat (float a, float b, float alpha) {
	return b3LerpFloat(a, b, alpha);
}
static float box3d_b3Sin (float radians) {
	return b3Sin(radians);
}
static float box3d_b3Cos (float radians) {
	return b3Cos(radians);
}
static float box3d_b3UnwindAngle (float radians) {
	return b3UnwindAngle(radians);
}
static value box3d_b3Add (value a, value b) {
	b3Vec3 ret = b3Add(*(b3Vec3*)val_data(a), *(b3Vec3*)val_data(b));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3Sub (value a, value b) {
	b3Vec3 ret = b3Sub(*(b3Vec3*)val_data(a), *(b3Vec3*)val_data(b));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3Mul (value a, value b) {
	b3Vec3 ret = b3Mul(*(b3Vec3*)val_data(a), *(b3Vec3*)val_data(b));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3Neg (value a) {
	b3Vec3 ret = b3Neg(*(b3Vec3*)val_data(a));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static float box3d_b3Dot (value a, value b) {
	return b3Dot(*(b3Vec3*)val_data(a), *(b3Vec3*)val_data(b));
}
static float box3d_b3Length (value v) {
	return b3Length(*(b3Vec3*)val_data(v));
}
static float box3d_b3LengthSquared (value a) {
	return b3LengthSquared(*(b3Vec3*)val_data(a));
}
static float box3d_b3Distance (value a, value b) {
	return b3Distance(*(b3Vec3*)val_data(a), *(b3Vec3*)val_data(b));
}
static float box3d_b3DistanceSquared (value a, value b) {
	return b3DistanceSquared(*(b3Vec3*)val_data(a), *(b3Vec3*)val_data(b));
}
static value box3d_b3GetLengthAndNormalize (value length, value a) {
	b3Vec3 ret = b3GetLengthAndNormalize((float*)val_data(length), *(b3Vec3*)val_data(a));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3Perp (value a) {
	b3Vec3 ret = b3Perp(*(b3Vec3*)val_data(a));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static bool box3d_b3IsNormalized (value a) {
	return b3IsNormalized(*(b3Vec3*)val_data(a));
}
static value box3d_b3MulAdd (value a, float s, value b) {
	b3Vec3 ret = b3MulAdd(*(b3Vec3*)val_data(a), s, *(b3Vec3*)val_data(b));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3MulSub (value a, float s, value b) {
	b3Vec3 ret = b3MulSub(*(b3Vec3*)val_data(a), s, *(b3Vec3*)val_data(b));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3MulSV (float s, value a) {
	b3Vec3 ret = b3MulSV(s, *(b3Vec3*)val_data(a));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3Cross (value a, value b) {
	b3Vec3 ret = b3Cross(*(b3Vec3*)val_data(a), *(b3Vec3*)val_data(b));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3Lerp (value a, value b, float alpha) {
	b3Vec3 ret = b3Lerp(*(b3Vec3*)val_data(a), *(b3Vec3*)val_data(b), alpha);
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3Blend2 (float s, value a, float t, value b) {
	b3Vec3 ret = b3Blend2(s, *(b3Vec3*)val_data(a), t, *(b3Vec3*)val_data(b));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3Abs (value a) {
	b3Vec3 ret = b3Abs(*(b3Vec3*)val_data(a));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3Sign (value a) {
	b3Vec3 ret = b3Sign(*(b3Vec3*)val_data(a));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3Min (value a, value b) {
	b3Vec3 ret = b3Min(*(b3Vec3*)val_data(a), *(b3Vec3*)val_data(b));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3Max (value a, value b) {
	b3Vec3 ret = b3Max(*(b3Vec3*)val_data(a), *(b3Vec3*)val_data(b));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3Clamp (value a, value lower, value upper) {
	b3Vec3 ret = b3Clamp(*(b3Vec3*)val_data(a), *(b3Vec3*)val_data(lower), *(b3Vec3*)val_data(upper));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3SafeScale (value a) {
	b3Vec3 ret = b3SafeScale(*(b3Vec3*)val_data(a));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static bool box3d_b3IsNormalizedQuat (value q) {
	return b3IsNormalizedQuat(*(b3Quat*)val_data(q));
}
static value box3d_b3RotateVector (value q, value v) {
	b3Vec3 ret = b3RotateVector(*(b3Quat*)val_data(q), *(b3Vec3*)val_data(v));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3InvRotateVector (value q, value v) {
	b3Vec3 ret = b3InvRotateVector(*(b3Quat*)val_data(q), *(b3Vec3*)val_data(v));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static float box3d_b3DotQuat (value a, value b) {
	return b3DotQuat(*(b3Quat*)val_data(a), *(b3Quat*)val_data(b));
}
static value box3d_b3MulQuat (value q1, value q2) {
	b3Quat ret = b3MulQuat(*(b3Quat*)val_data(q1), *(b3Quat*)val_data(q2));
	value retVal = box3d_b3Quat_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Quat));
	return retVal;
}
static value box3d_b3InvMulQuat (value q1, value q2) {
	b3Quat ret = b3InvMulQuat(*(b3Quat*)val_data(q1), *(b3Quat*)val_data(q2));
	value retVal = box3d_b3Quat_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Quat));
	return retVal;
}
static value box3d_b3Conjugate (value q) {
	b3Quat ret = b3Conjugate(*(b3Quat*)val_data(q));
	value retVal = box3d_b3Quat_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Quat));
	return retVal;
}
static value box3d_b3NegateQuat (value q) {
	b3Quat ret = b3NegateQuat(*(b3Quat*)val_data(q));
	value retVal = box3d_b3Quat_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Quat));
	return retVal;
}
static value box3d_b3NormalizeQuat (value q) {
	b3Quat ret = b3NormalizeQuat(*(b3Quat*)val_data(q));
	value retVal = box3d_b3Quat_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Quat));
	return retVal;
}
static value box3d_b3MakeQuatFromAxisAngle (value axis, float radians) {
	b3Quat ret = b3MakeQuatFromAxisAngle(*(b3Vec3*)val_data(axis), radians);
	value retVal = box3d_b3Quat_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Quat));
	return retVal;
}
static float box3d_b3GetQuatAngle (value q) {
	return b3GetQuatAngle(*(b3Quat*)val_data(q));
}
static float box3d_b3GetTwistAngle (value q) {
	return b3GetTwistAngle(*(b3Quat*)val_data(q));
}
static value box3d_b3NLerp (value q1, value q2, float alpha) {
	b3Quat ret = b3NLerp(*(b3Quat*)val_data(q1), *(b3Quat*)val_data(q2), alpha);
	value retVal = box3d_b3Quat_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Quat));
	return retVal;
}
static value box3d_b3MulTransforms (value a, value b) {
	b3Transform ret = b3MulTransforms(*(b3Transform*)val_data(a), *(b3Transform*)val_data(b));
	value retVal = box3d_b3Transform_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Transform));
	return retVal;
}
static value box3d_b3InvertTransform (value t) {
	b3Transform ret = b3InvertTransform(*(b3Transform*)val_data(t));
	value retVal = box3d_b3Transform_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Transform));
	return retVal;
}
static value box3d_b3InvTransformPoint (value t, value v) {
	b3Vec3 ret = b3InvTransformPoint(*(b3Transform*)val_data(t), *(b3Vec3*)val_data(v));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3ToPos (value v) {
	b3Pos ret = b3ToPos(*(b3Vec3*)val_data(v));
	value retVal = box3d_b3Pos_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Pos));
	return retVal;
}
static value box3d_b3ToVec3 (value p) {
	b3Vec3 ret = b3ToVec3(*(b3Pos*)val_data(p));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static float box3d_b3RoundDownFloat (double x) {
	return b3RoundDownFloat(x);
}
static float box3d_b3RoundUpFloat (double x) {
	return b3RoundUpFloat(x);
}
static value box3d_b3SubPos (value a, value b) {
	b3Vec3 ret = b3SubPos(*(b3Pos*)val_data(a), *(b3Pos*)val_data(b));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3OffsetPos (value p, value d) {
	b3Pos ret = b3OffsetPos(*(b3Pos*)val_data(p), *(b3Vec3*)val_data(d));
	value retVal = box3d_b3Pos_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Pos));
	return retVal;
}
static value box3d_b3LerpPosition (value a, value b, float t) {
	b3Pos ret = b3LerpPosition(*(b3Pos*)val_data(a), *(b3Pos*)val_data(b), t);
	value retVal = box3d_b3Pos_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Pos));
	return retVal;
}
static value box3d_b3TransformWorldPoint (value t, value p) {
	b3Pos ret = b3TransformWorldPoint(*(b3WorldTransform*)val_data(t), *(b3Vec3*)val_data(p));
	value retVal = box3d_b3Pos_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Pos));
	return retVal;
}
static value box3d_b3InvTransformWorldPoint (value t, value p) {
	b3Vec3 ret = b3InvTransformWorldPoint(*(b3WorldTransform*)val_data(t), *(b3Pos*)val_data(p));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3ToRelativeTransform (value t, value base) {
	b3Transform ret = b3ToRelativeTransform(*(b3WorldTransform*)val_data(t), *(b3Pos*)val_data(base));
	value retVal = box3d_b3Transform_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Transform));
	return retVal;
}
static value box3d_b3MakeWorldTransform (value t) {
	b3WorldTransform ret = b3MakeWorldTransform(*(b3Transform*)val_data(t));
	value retVal = box3d_b3WorldTransform_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3WorldTransform));
	return retVal;
}
static value box3d_b3OffsetAABB (value localBox, value origin) {
	b3AABB ret = b3OffsetAABB(*(b3AABB*)val_data(localBox), *(b3Pos*)val_data(origin));
	value retVal = box3d_b3AABB_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3AABB));
	return retVal;
}
static float box3d_b3Det (value m) {
	return b3Det(*(b3Matrix3*)val_data(m));
}
static value box3d_b3MulMV (value m, value a) {
	b3Vec3 ret = b3MulMV(*(b3Matrix3*)val_data(m), *(b3Vec3*)val_data(a));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3NegateMat3 (value a) {
	b3Matrix3 ret = b3NegateMat3(*(b3Matrix3*)val_data(a));
	value retVal = box3d_b3Matrix3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Matrix3));
	return retVal;
}
static value box3d_b3AddMM (value a, value b) {
	b3Matrix3 ret = b3AddMM(*(b3Matrix3*)val_data(a), *(b3Matrix3*)val_data(b));
	value retVal = box3d_b3Matrix3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Matrix3));
	return retVal;
}
static value box3d_b3SubMM (value a, value b) {
	b3Matrix3 ret = b3SubMM(*(b3Matrix3*)val_data(a), *(b3Matrix3*)val_data(b));
	value retVal = box3d_b3Matrix3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Matrix3));
	return retVal;
}
static value box3d_b3MulSM (float s, value a) {
	b3Matrix3 ret = b3MulSM(s, *(b3Matrix3*)val_data(a));
	value retVal = box3d_b3Matrix3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Matrix3));
	return retVal;
}
static value box3d_b3MulMM (value a, value b) {
	b3Matrix3 ret = b3MulMM(*(b3Matrix3*)val_data(a), *(b3Matrix3*)val_data(b));
	value retVal = box3d_b3Matrix3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Matrix3));
	return retVal;
}
static value box3d_b3Transpose (value m) {
	b3Matrix3 ret = b3Transpose(*(b3Matrix3*)val_data(m));
	value retVal = box3d_b3Matrix3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Matrix3));
	return retVal;
}
static value box3d_b3InvertMatrix (value m) {
	b3Matrix3 ret = b3InvertMatrix(*(b3Matrix3*)val_data(m));
	value retVal = box3d_b3Matrix3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Matrix3));
	return retVal;
}
static value box3d_b3InvertT (value m) {
	b3Matrix3 ret = b3InvertT(*(b3Matrix3*)val_data(m));
	value retVal = box3d_b3Matrix3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Matrix3));
	return retVal;
}
static value box3d_b3AbsMatrix3 (value m) {
	b3Matrix3 ret = b3AbsMatrix3(*(b3Matrix3*)val_data(m));
	value retVal = box3d_b3Matrix3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Matrix3));
	return retVal;
}
static value box3d_b3MakeAABB (value points, int count, float radius) {
	b3AABB ret = b3MakeAABB((b3Vec3*)val_data(points), count, radius);
	value retVal = box3d_b3AABB_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3AABB));
	return retVal;
}
static bool box3d_b3AABB_Contains (value a, value b) {
	return b3AABB_Contains(*(b3AABB*)val_data(a), *(b3AABB*)val_data(b));
}
static float box3d_b3AABB_Area (value a) {
	return b3AABB_Area(*(b3AABB*)val_data(a));
}
static value box3d_b3AABB_Center (value a) {
	b3Vec3 ret = b3AABB_Center(*(b3AABB*)val_data(a));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3AABB_Extents (value a) {
	b3Vec3 ret = b3AABB_Extents(*(b3AABB*)val_data(a));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}
static value box3d_b3AABB_Union (value a, value b) {
	b3AABB ret = b3AABB_Union(*(b3AABB*)val_data(a), *(b3AABB*)val_data(b));
	value retVal = box3d_b3AABB_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3AABB));
	return retVal;
}
static value box3d_b3AABB_Inflate (value a, float extension) {
	b3AABB ret = b3AABB_Inflate(*(b3AABB*)val_data(a), extension);
	value retVal = box3d_b3AABB_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3AABB));
	return retVal;
}
static bool box3d_b3AABB_Overlaps (value a, value b) {
	return b3AABB_Overlaps(*(b3AABB*)val_data(a), *(b3AABB*)val_data(b));
}
static value box3d_b3ClosestPointToAABB (value point, value a) {
	b3Vec3 ret = b3ClosestPointToAABB(*(b3Vec3*)val_data(point), *(b3AABB*)val_data(a));
	value retVal = box3d_b3Vec3_new();
	memcpy((void*)val_data(retVal), &ret, sizeof(b3Vec3));
	return retVal;
}

DEFINE_PRIME2 (box3d_b3Atan2);
DEFINE_PRIME1 (box3d_b3ComputeCosSin);
DEFINE_PRIME1 (box3d_b3MakeQuatFromMatrix);
DEFINE_PRIME2 (box3d_b3ComputeQuatBetweenUnitVectors);
DEFINE_PRIME2 (box3d_b3Steiner);
DEFINE_PRIME3 (box3d_b3PointToSegmentDistance);
DEFINE_PRIME4 (box3d_b3LineDistance);
DEFINE_PRIME4 (box3d_b3SegmentDistance);
DEFINE_PRIME1 (box3d_b3IsValidFloat);
DEFINE_PRIME1 (box3d_b3IsValidVec3);
DEFINE_PRIME1 (box3d_b3IsValidQuat);
DEFINE_PRIME1 (box3d_b3IsValidTransform);
DEFINE_PRIME1 (box3d_b3IsValidMatrix3);
DEFINE_PRIME1 (box3d_b3IsValidAABB);
DEFINE_PRIME1 (box3d_b3IsBoundedAABB);
DEFINE_PRIME1 (box3d_b3IsSaneAABB);
DEFINE_PRIME1 (box3d_b3IsValidPlane);
DEFINE_PRIME1 (box3d_b3IsValidPosition);
DEFINE_PRIME1 (box3d_b3IsValidWorldTransform);
DEFINE_PRIME2 (box3d_b3MinInt);
DEFINE_PRIME2 (box3d_b3MaxInt);
DEFINE_PRIME3 (box3d_b3ClampInt);
DEFINE_PRIME1 (box3d_b3AbsFloat);
DEFINE_PRIME2 (box3d_b3MinFloat);
DEFINE_PRIME2 (box3d_b3MaxFloat);
DEFINE_PRIME3 (box3d_b3ClampFloat);
DEFINE_PRIME3 (box3d_b3LerpFloat);
DEFINE_PRIME1 (box3d_b3Sin);
DEFINE_PRIME1 (box3d_b3Cos);
DEFINE_PRIME1 (box3d_b3UnwindAngle);
DEFINE_PRIME2 (box3d_b3Add);
DEFINE_PRIME2 (box3d_b3Sub);
DEFINE_PRIME2 (box3d_b3Mul);
DEFINE_PRIME1 (box3d_b3Neg);
DEFINE_PRIME2 (box3d_b3Dot);
DEFINE_PRIME1 (box3d_b3Length);
DEFINE_PRIME1 (box3d_b3LengthSquared);
DEFINE_PRIME2 (box3d_b3Distance);
DEFINE_PRIME2 (box3d_b3DistanceSquared);
DEFINE_PRIME2 (box3d_b3GetLengthAndNormalize);
DEFINE_PRIME1 (box3d_b3Perp);
DEFINE_PRIME1 (box3d_b3IsNormalized);
DEFINE_PRIME3 (box3d_b3MulAdd);
DEFINE_PRIME3 (box3d_b3MulSub);
DEFINE_PRIME2 (box3d_b3MulSV);
DEFINE_PRIME2 (box3d_b3Cross);
DEFINE_PRIME3 (box3d_b3Lerp);
DEFINE_PRIME4 (box3d_b3Blend2);
DEFINE_PRIME1 (box3d_b3Abs);
DEFINE_PRIME1 (box3d_b3Sign);
DEFINE_PRIME2 (box3d_b3Min);
DEFINE_PRIME2 (box3d_b3Max);
DEFINE_PRIME3 (box3d_b3Clamp);
DEFINE_PRIME1 (box3d_b3SafeScale);
DEFINE_PRIME1 (box3d_b3IsNormalizedQuat);
DEFINE_PRIME2 (box3d_b3RotateVector);
DEFINE_PRIME2 (box3d_b3InvRotateVector);
DEFINE_PRIME2 (box3d_b3DotQuat);
DEFINE_PRIME2 (box3d_b3MulQuat);
DEFINE_PRIME2 (box3d_b3InvMulQuat);
DEFINE_PRIME1 (box3d_b3Conjugate);
DEFINE_PRIME1 (box3d_b3NegateQuat);
DEFINE_PRIME1 (box3d_b3NormalizeQuat);
DEFINE_PRIME2 (box3d_b3MakeQuatFromAxisAngle);
DEFINE_PRIME1 (box3d_b3GetQuatAngle);
DEFINE_PRIME1 (box3d_b3GetTwistAngle);
DEFINE_PRIME3 (box3d_b3NLerp);
DEFINE_PRIME2 (box3d_b3MulTransforms);
DEFINE_PRIME1 (box3d_b3InvertTransform);
DEFINE_PRIME2 (box3d_b3InvTransformPoint);
DEFINE_PRIME1 (box3d_b3ToPos);
DEFINE_PRIME1 (box3d_b3ToVec3);
DEFINE_PRIME1 (box3d_b3RoundDownFloat);
DEFINE_PRIME1 (box3d_b3RoundUpFloat);
DEFINE_PRIME2 (box3d_b3SubPos);
DEFINE_PRIME2 (box3d_b3OffsetPos);
DEFINE_PRIME3 (box3d_b3LerpPosition);
DEFINE_PRIME2 (box3d_b3TransformWorldPoint);
DEFINE_PRIME2 (box3d_b3InvTransformWorldPoint);
DEFINE_PRIME2 (box3d_b3ToRelativeTransform);
DEFINE_PRIME1 (box3d_b3MakeWorldTransform);
DEFINE_PRIME2 (box3d_b3OffsetAABB);
DEFINE_PRIME1 (box3d_b3Det);
DEFINE_PRIME2 (box3d_b3MulMV);
DEFINE_PRIME1 (box3d_b3NegateMat3);
DEFINE_PRIME2 (box3d_b3AddMM);
DEFINE_PRIME2 (box3d_b3SubMM);
DEFINE_PRIME2 (box3d_b3MulSM);
DEFINE_PRIME2 (box3d_b3MulMM);
DEFINE_PRIME1 (box3d_b3Transpose);
DEFINE_PRIME1 (box3d_b3InvertMatrix);
DEFINE_PRIME1 (box3d_b3InvertT);
DEFINE_PRIME1 (box3d_b3AbsMatrix3);
DEFINE_PRIME3 (box3d_b3MakeAABB);
DEFINE_PRIME2 (box3d_b3AABB_Contains);
DEFINE_PRIME1 (box3d_b3AABB_Area);
DEFINE_PRIME1 (box3d_b3AABB_Center);
DEFINE_PRIME1 (box3d_b3AABB_Extents);
DEFINE_PRIME2 (box3d_b3AABB_Union);
DEFINE_PRIME2 (box3d_b3AABB_Inflate);
DEFINE_PRIME2 (box3d_b3AABB_Overlaps);
DEFINE_PRIME2 (box3d_b3ClosestPointToAABB);

#endif
///


extern "C" void box3d_main () {
	
	val_int(0); // Fix Neko init
	
}
DEFINE_ENTRY_POINT (box3d_main);



extern "C" int box3d_register_prims () { return 0; }