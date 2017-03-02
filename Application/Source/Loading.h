#ifndef LOADING_H
#define LOADING_H

#include "Scene.h"
#include "FpCamera.h"
#include "Mesh.h"
#include "MatrixStack.h"
#include "Light.h"
#include "Material.h"

#include <stack>
#include <vector>
using std::stack;
using std::vector;


class Loading : public Scene
{
	enum GEOMETRY_TYPE
	{
		GEO_AXES,
		GEO_QUAD,
		SCENE_LOADING,

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
	Loading();
	~Loading();

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
	int bounce;

	//UI bools
	bool play;
	bool help;

	FpCamera camera;

	MS modelStack, viewStack, projectionStack;


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
	void CollisionCheck();



};

#endif