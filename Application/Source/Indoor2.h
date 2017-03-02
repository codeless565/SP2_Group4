#ifndef INDOOR2_H
#define INDOOR2_H

#include "Scene.h"
#include "Camera4.h"
#include "Mesh.h"
#include "MatrixStack.h"
#include "Light.h"
#include "Material.h"

#include <stack>
#include <vector>
using std::stack;
using std::vector;


class Indoor2 : public Scene
{
	enum GEOMETRY_TYPE
	{
		GEO_AXES,
		GEO_QUAD,

		//SKYBOX
		SPACE_LEFT,
		SPACE_RIGHT,
		SPACE_TOP,
		SPACE_BOTTOM,
		SPACE_FRONT,
		SPACE_BACK,

		//INDOOR
		STAT_WALL,
		STAT_FLOOR,
		STAT_CEILING,
		STAT_DOORC,
		STAT_DOORB,
		STAT_VAULT,
		STAT_CIRCUIT,
		STAT_OPENCIRCUIT,

		//LIGHT

		TEXT,

		//SP Model
		TEST_MODEL,
		GEO_CRATE,
		GEO_CROWBAR,
		GEO_SHELF,
		GEO_WALL,
		GEO_TURRET,
		GEO_CUBE,
		GEO_PEDESTAL,
		GEO_KNIFE,

		//UI
		UI_CROW,
		ICON_CROW,
		ICON_KNIFE,
		ICON_CUBE1,
		ICON_CUBE2,


		GEO_LAMPLIGHT,

		//TEXT
		GEO_TEXT,
		GEO_TEXT2,
		GEO_TEXTx,
		GEO_TEXTy,
		GEO_TEXTz,

		// actions

		NUM_GEOMETRY,
	};

	enum UNIFORM_TYPE
	{
		U_MVP = 0,
		U_MODELVIEW,
		U_MODELVIEW_INVERSE_TRANSPOSE,
		U_MATERIAL_AMBIENT,
		U_MATERIAL_DIFFUSE,
		U_MATERIAL_SPECULAR,
		U_MATERIAL_SHININESS,
		U_LIGHT0_POSITION,
		U_LIGHT0_COLOR,
		U_LIGHT0_POWER,
		U_LIGHT0_KC,
		U_LIGHT0_KL,
		U_LIGHT0_KQ,
		U_LIGHTENABLED,
		U_LIGHT0_TYPE,
		U_LIGHT0_SPOTDIRECTION,
		U_LIGHT0_COSCUTOFF,
		U_LIGHT0_COSINNER,
		U_LIGHT0_EXPONENT,
		U_NUMLIGHTS,
		U_COLOR_TEXTURE_ENABLED,
		U_COLOR_TEXTURE,
		U_TEXT_ENABLED,
		U_TEXT_COLOR,
		U_TOTAL,
	};

public:
	Indoor2();
	~Indoor2();

	virtual void Init();
	virtual void Update(double dt);
	virtual void Render();
	virtual void Exit();
	float framerate;

private:
	unsigned m_vertexArrayID;
	Mesh *meshList[NUM_GEOMETRY];

	unsigned m_programID;
	unsigned m_parameters[U_TOTAL];

	float rotateAngle;

	//UI bools
	bool interact;
	bool door;
	bool mission1;
	bool mission2;
	bool collided;
	bool pipe1;
	bool pipe2;
	bool knife;
	bool mission3;
	bool broken;

	float bounce;
	float colbounce;

	Camera4 camera;

	MS modelStack, viewStack, projectionStack;

	vector<Vector3>Cratepos;
	vector<Vector3>Wallpos;
	Vector3 Playerpos;
	Vector3 q;
	Vector3 colforward;
	Vector3 colback;
	Vector3 colleft;
	Vector3 colright;

	Light light[1];
	void RenderMesh(Mesh *mesh, bool enableLight);
	void RenderSkybox();
	void RenderBuilding();
	void RenderMassBuilding();
	void RenderLampPost();
	void RenderGroundMesh();
	void RenderText(Mesh* mesh, std::string text, Color color);
	void RenderTextOnScreen(Mesh* mesh, std::string text, Color color, float size, float x, float y);
	void RenderMeshOnScreen(Mesh* mesh, int x, int y, int sizex, int sizey);
	void CreateObjects();
	void CollisionCheck(vector<Vector3>Obj);



};

#endif