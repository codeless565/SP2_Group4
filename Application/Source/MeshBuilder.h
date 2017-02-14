#ifndef MESH_BUILDER_H
#define MESH_BUILDER_H

#include "Mesh.h"
#include "Vertex.h"

/******************************************************************************/
/*!
		Class MeshBuilder:
\brief	Provides methods to generate mesh of different shapes
*/
/******************************************************************************/
class MeshBuilder
{
public:
	static Mesh* GenerateAxes(const std::string &meshName, float lengthX, float lengthY, float lengthZ);
	static Mesh* GenerateQuad(const std::string &meshName, Color color);
	static Mesh* GenerateCube(const std::string &meshName, Color color);

	static Mesh* GenerateCircle(const std::string &meshName, Color color, int numSlices, float radius);
	static Mesh* GenerateRing(const std::string &meshName, Color color, int numSlices, float InnerRadius, float OuterRadius);
	
	static Mesh* GenerateSphere(const std::string &meshName, Color color, int numSlices, int numStacks, float radius);
	static Mesh* GenerateHemiSphere(const std::string &meshName, Color color, int numSlices, int numStacks, float radius);
	static Mesh* GenerateCylinder(const std::string &meshName, Color color, int numSlices, float radius, float height);
	static Mesh* GenerateCone(const std::string &meshName, Color color, int numSlices, float radius);
	static Mesh* GenerateTorus(const std::string &meshName, Color color, unsigned numStacks, unsigned numSlices, float outerRadius, float innerRadius);


	static Mesh* GenerateOBJ(const std::string &meshName, const std::string &file_path);
	static Mesh* GenerateText(const std::string &meshName, unsigned numRow, unsigned numCol);


};

#endif