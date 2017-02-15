#ifndef SP2_H
#define SP2_H

#include "Scene.h"
#include "FpCamera.h"
#include "Mesh.h"
#include "MatrixStack.h"
#include "Light.h"
#include "Material.h"


class SP2 : public Scene
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

		//LIGHT

		TEXT,

		//SP Model
		TEST_MODEL,


		//MODELS

		
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
	SP2();
	~SP2();

	virtual void Init();
	virtual void Update(double dt);
	virtual void Render();
	virtual void Exit();
	float framerate;

	float redbaserotate;
	float magentabaserotate;
	float bluebaserotate;
	float greenbaserotate;
	float yellowbaserotate;
	float buildingdoortrans;
	float rotateskybox;
	bool buildingrotate;
	bool dooropen;
	bool showdisplay;
	bool reward;
	bool story;
	bool quest;
	bool completequest1;
	bool completequest2;
	bool completequest3;
	bool questcompleted;

private:
	unsigned m_vertexArrayID;
	Mesh *meshList[NUM_GEOMETRY];

	unsigned m_programID;
	unsigned m_parameters[U_TOTAL];

	float rotateAngle;

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



};

#endif