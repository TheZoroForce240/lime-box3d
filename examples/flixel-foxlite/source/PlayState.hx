package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.FlxCamera;
import flixel.graphics.FlxGraphic;
import flixel.system.FlxAssets;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.util.FlxGradient;
import openfl.geom.Rectangle;
import openfl.utils.Assets;
import openfl.geom.Vector3D;

import foxlite.FoxScene;
import foxlite.FoxCache;
import foxlite.FoxModel;
import foxlite.extras.FoxFPSCamera;
import foxlite.renderer.FoxRenderer;
import foxlite.loaders.FoxLoaderUtil;
import foxlite.FoxShader;
import foxlite.mesh.FoxQuadMesh;
import foxlite.mesh.FoxCubeMesh;
import foxlite.material.FoxMaterial;
import foxlite.texture.FoxTexture;
import foxlite.math.FoxMathUtil;
import foxlite.flixel.FoxRenderMetrics;
import foxlite.FoxInstancedModel;
import foxlite.instancing.FoxInstanceUpdateMode;

import box3d.Box3D;
import box3d.Box3DTypes;

using StringTools;

class PlayState extends FlxState
{


	var scene:FoxScene;
	var cam:FoxFPSCamera;
	var camOther = new FlxCamera();

	var worldId:B3WorldId;
	var physicsObjectIds:Array<B3BodyId> = [];
	var cubeCount:Int = 2000;
	var useInstancing:Bool = true;
	var physicsObjects:Array<FoxModel> = []; //for non instanced
	var cubeInstanced:FoxInstancedModel;

	override public function create()
	{
		super.create();

		var worldDef:B3WorldDef = Box3D.defaultWorldDef();
		worldDef.gravity.y = -10;
		worldId = Box3D.createWorld(worldDef);

		FoxRenderer.initLibs();
		scene = new FoxScene(FlxG.width, FlxG.height);
		scene.scrollFactor.set(0, 0);
		cam = new FoxFPSCamera();
		scene.foxCameras.push(cam);

		cam.enableControls = true;
		cam.bgColor = 0xFF8CE9DB;

		var unshader = FoxShader.fromAsset("foxlite/minimal");
		var floorBitmap = Assets.getBitmapData("assets/images/image-6.png");
		var floorTexture = FoxTexture.wrap(floorBitmap);
		var floorMat = FoxMaterial.create(unshader, ["bitmap" => floorTexture]);

		{
			var mesh = new FoxCubeMesh(20, 1, 20, floorMat);

			var floor = new FoxModel();
			floor.addMesh(mesh);
			floor.position.y -= 3;
			scene.add(floor);

			var groundBodyDef = Box3D.defaultBodyDef();
			groundBodyDef.position.x = floor.position.x;
			groundBodyDef.position.y = floor.position.y;
			groundBodyDef.position.z = floor.position.z;

			var groundId = Box3D.createBody(worldId, groundBodyDef);

			var groundBox = Box3D.makeBoxHull(10, 0.5, 10); //half size
			var groundShapeDef = Box3D.defaultShapeDef();
			Box3D.createHullShape(groundId, groundShapeDef, groundBox.base);
		}

		if (useInstancing)
		{
			var mesh = new FoxCubeMesh(1, 1, 1, floorMat);
			cubeInstanced = new FoxInstancedModel(cubeCount);
			cubeInstanced.addMesh(mesh);
			cubeInstanced.updateMode = FoxInstanceUpdateMode.ALL;
			scene.add(cubeInstanced);

			var bodyDef = Box3D.defaultBodyDef();
			bodyDef.type = 2;

			var dynamicBox = Box3D.makeCubeHull(0.5); //half size
			var shapeDef = Box3D.defaultShapeDef();
			shapeDef.density = 1.0;
			shapeDef.baseMaterial.friction = 0.3;

			for (i in 0...cubeCount) {
				var pos = new Vector3D(FlxG.random.float(-8, 8), i+30, FlxG.random.float(-8, 8));
				cubeInstanced.setInstanceTransformSeparate(i, pos, new Vector3D(0, 0, 0), new Vector3D(1, 1, 1));

				var bodyId = Box3D.createBody(worldId, bodyDef);
				bodyDef.position.x = pos.x;
				bodyDef.position.y = pos.y;
				bodyDef.position.z = pos.z;
				physicsObjectIds.push(bodyId);

				Box3D.createHullShape(bodyId, shapeDef, dynamicBox.base);
			}
		}

		if (!useInstancing) {
			function createCube(x, y, z) {
				var mesh = new FoxCubeMesh(1, 1, 1, floorMat);

				var cube = new FoxModel();
				cube.addMesh(mesh);
				cube.position.x = x;
				cube.position.y = y;
				cube.position.z = z;
				scene.add(cube);
				physicsObjects.push(cube);

				var bodyDef = Box3D.defaultBodyDef();
				bodyDef.type = 2;
				bodyDef.position.x = cube.position.x;
				bodyDef.position.y = cube.position.y;
				bodyDef.position.z = cube.position.z;
				var bodyId = Box3D.createBody(worldId, bodyDef);
				physicsObjectIds.push(bodyId);

				var dynamicBox = Box3D.makeCubeHull(0.5);
				var shapeDef = Box3D.defaultShapeDef();
				shapeDef.density = 1.0;
				shapeDef.baseMaterial.friction = 0.3;
				Box3D.createHullShape(bodyId, shapeDef, dynamicBox.base);
			}
			for (i in 0...cubeCount) {
				createCube(FlxG.random.float(-8, 8), i+30, FlxG.random.float(-8, 8));
			}
		}



		add(scene);

		camOther.width = FlxG.width;
		camOther.height = FlxG.height;
		camOther.bgColor = 0x0;
		FlxG.cameras.add(camOther, false);

		var met = new FoxRenderMetrics();
		met.y = 360;
		met.camera = camOther;
		add(met);
		
		//trace(Box3D.sampleMethod(2));
		//var vers = Box3D.getVersion();
		//trace(vers.major, vers.minor, vers.revision);
		
		//var test = new B3Version();
		//test.major = 5;
		//trace(test.major);

		//var vec = new B3Vec3();
		//vec.x = 5;
		//trace(vec.x, vec.y);

		//var transform = new B3Transform();
		//transform.q.v.x = 10;
		//transform.q.v.z = 8;
		//trace(transform.q.v.x, transform.q.v.y, transform.q.v.z);
		//transform.q.v = vec;
		//trace(transform.q.v.x, transform.q.v.y, transform.q.v.z);


	}

	override public function update(elapsed:Float) {
		super.update(elapsed);
		Box3D.world_Step(worldId, 1 / 120, 2);

		if (!useInstancing) {
			for (i in 0...physicsObjects.length) {
				var bodyId = physicsObjectIds[i];
				var position = Box3D.body_GetPosition(bodyId);
				var rotation = Box3D.body_GetRotation(bodyId);
				physicsObjects[i].position.x = position.x;
				physicsObjects[i].position.y = position.y;
				physicsObjects[i].position.z = position.z;

				var quat = new Vector3D(rotation.v.x, rotation.v.y, rotation.v.z, rotation.s);
				physicsObjects[i].rotation = FoxMathUtil.eulerFromQuaternion(quat);
			}
		} else {
			for (i in 0...physicsObjectIds.length) {
				var bodyId = physicsObjectIds[i];
				var position = Box3D.body_GetPosition(bodyId);
				var rotation = Box3D.body_GetRotation(bodyId);

				var quat = new Vector3D(rotation.v.x, rotation.v.y, rotation.v.z, rotation.s);
				cubeInstanced.setInstanceTransformSeparate(i, new Vector3D(position.x, position.y, position.z), FoxMathUtil.eulerFromQuaternion(quat), new Vector3D(1, 1, 1));			
			}
		}
	}

	override public function destroy()
	{
		FoxCache.instance.freeResources();
		Box3D.destroyWorld(worldId);
		super.destroy();
	}
}
