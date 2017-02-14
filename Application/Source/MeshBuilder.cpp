#include "MeshBuilder.h"
#include <GL\glew.h>
#include <vector>
#include "mymath.h"
#include "LoadOBJ.h"


/******************************************************************************/
/*!
\brief
Generate the vertices of a reference Axes; Use red for x-axis, green for y-axis, blue for z-axis
Then generate the VBO/IBO and store them in Mesh object

\param meshName - name of mesh
\param lengthX - x-axis should start at -lengthX / 2 and end at lengthX / 2
\param lengthY - y-axis should start at -lengthY / 2 and end at lengthY / 2
\param lengthZ - z-axis should start at -lengthZ / 2 and end at lengthZ / 2

\return Pointer to mesh storing VBO/IBO of reference axes
*/
/******************************************************************************/
Mesh* MeshBuilder::GenerateAxes(const std::string &meshName, float lengthX, float lengthY, float lengthZ)
{
	std::vector<Vertex> vertex_buffer_data;
	std::vector<GLuint> index_buffer_data;
	Vertex v;

	v.pos.Set(-lengthX, 0, 0);	v.color.Set(1, 0, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(lengthX, 0, 0);	v.color.Set(1, 0, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(0, -lengthY, 0);	v.color.Set(0, 1, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(0, lengthY, 0);	v.color.Set(0, 1, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(0, 0, -lengthZ);	v.color.Set(0, 0, 1);	vertex_buffer_data.push_back(v);
	v.pos.Set(0, 0, lengthZ);	v.color.Set(0, 0, 1);	vertex_buffer_data.push_back(v);

	index_buffer_data.push_back(0);
	index_buffer_data.push_back(1);
	index_buffer_data.push_back(2);
	index_buffer_data.push_back(3);
	index_buffer_data.push_back(4);
	index_buffer_data.push_back(5);

	Mesh *mesh = new Mesh(meshName);

	glBindBuffer(GL_ARRAY_BUFFER, mesh->vertexBuffer);
	glBufferData(GL_ARRAY_BUFFER, vertex_buffer_data.size() * sizeof(Vertex), &vertex_buffer_data[0], GL_STATIC_DRAW);
	glBindBuffer(GL_ARRAY_BUFFER, mesh->indexBuffer);
	glBufferData(GL_ARRAY_BUFFER, index_buffer_data.size() * sizeof(GLuint), &index_buffer_data[0], GL_STATIC_DRAW);

	mesh->indexSize = index_buffer_data.size();
	mesh->mode = Mesh::DRAW_LINES;

	return mesh;
}

/******************************************************************************/
/*!
\brief
Generate the vertices of a quad; Use random color for each vertex
Then generate the VBO/IBO and store them in Mesh object

\param meshName - name of mesh
\param lengthX - width of quad
\param lengthY - height of quad

\return Pointer to mesh storing VBO/IBO of quad
*/
/******************************************************************************/
Mesh* MeshBuilder::GenerateQuad(const std::string &meshName, Color color, float lengthX, float lengthY)
{
	std::vector<Vertex> vertex_buffer_data;
	std::vector<GLuint> index_buffer_data;
	Vertex v;

	v.pos.Set(-0.5f, 0.5f, 0.0f);	v.texCoord.Set(0, 1); v.color = color;	v.normal.Set(0, 0, 1); vertex_buffer_data.push_back(v); 
	v.pos.Set(-0.5f, -0.5, 0.0f);	v.texCoord.Set(0, 0); v.color = color;	v.normal.Set(0, 0, 1);  vertex_buffer_data.push_back(v); // v.texCoord.Set(0, 1);
	v.pos.Set(0.5f, 0.5f, 0.0f);	v.texCoord.Set(1, 1); v.color = color;	v.normal.Set(0, 0, 1);   vertex_buffer_data.push_back(v); // v.texCoord.Set(0, 0);
	v.pos.Set(0.5f, 0.5f, 0.0f);	v.texCoord.Set(1, 1); v.color = color;	v.normal.Set(0, 0, 1);  vertex_buffer_data.push_back(v); // v.texCoord.Set(1, 0);
	v.pos.Set(-0.5f, -0.5f, 0.0f);	v.texCoord.Set(0, 0); v.color = color;	v.normal.Set(0, 0, 1);  vertex_buffer_data.push_back(v); // v.texCoord.Set(1, 0);
	v.pos.Set(0.5f, -0.5f, 0.0f);	v.texCoord.Set(1, 0); v.color = color;	v.normal.Set(0, 0, 1);   vertex_buffer_data.push_back(v); // v.texCoord.Set(1, 0);


	for (unsigned i = 0; i < 6; ++i)
	{
		index_buffer_data.push_back(i);
	}

	Mesh *mesh = new Mesh(meshName);

	glBindBuffer(GL_ARRAY_BUFFER, mesh->vertexBuffer);
	glBufferData(GL_ARRAY_BUFFER, vertex_buffer_data.size() * sizeof(Vertex), &vertex_buffer_data[0], GL_STATIC_DRAW);
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, mesh->indexBuffer);
	glBufferData(GL_ELEMENT_ARRAY_BUFFER, index_buffer_data.size() * sizeof(GLuint), &index_buffer_data[0], GL_STATIC_DRAW);

	mesh->indexSize = index_buffer_data.size();
	mesh->mode = Mesh::DRAW_TRIANGLES;

	return mesh;
}
/******************************************************************************/
/*!
\brief
Generate the vertices of a cube; Use random color for each vertex
Then generate the VBO/IBO and store them in Mesh object

\param meshName - name of mesh
\param lengthX - width of cube
\param lengthY - height of cube
\param lengthZ - depth of cube

\return Pointer to mesh storing VBO/IBO of cube
*/
/******************************************************************************/
Mesh* MeshBuilder::GenerateCube(const std::string &meshName, Color color)
{
	std::vector<Vertex> vertex_buffer_data;
	std::vector<GLuint> index_buffer_data;
	Vertex v;

	v.pos.Set(-0.5f, -0.5f, -0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(-0.5f, -0.5f, 0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(-0.5f, 0.5f, 0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(0.5f, 0.5f, -0.5f);	v.color = color; v.normal.Set(0, 1, 0); vertex_buffer_data.push_back(v);
	v.pos.Set(-0.5f, -0.5f, -0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(-0.5f, 0.5f, -0.5f);	v.color = color; v.normal.Set(0, 1, 0); vertex_buffer_data.push_back(v);

	v.pos.Set(0.5f, -0.5f, 0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(-0.5f, -0.5f, -0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(0.5f, -0.5f, -0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(0.5f, 0.5f, -0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(0.5f, -0.5f, -0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(-0.5f, -0.5f, -0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);

	v.pos.Set(-0.5f, -0.5f, -0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(-0.5f, 0.5f, 0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(-0.5f, 0.5f, -0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(0.5f, -0.5f, 0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(-0.5f, -0.5f, 0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(-0.5f, -0.5f, -0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);

	v.pos.Set(-0.5f, 0.5f, 0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(-0.5f, -0.5f, 0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(0.5f, -0.5f, 0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(0.5f, 0.5f, 0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(0.5f, -0.5f, -0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(0.5f, 0.5f, -0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);

	v.pos.Set(0.5f, -0.5f, -0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(0.5f, 0.5f, 0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(0.5f, -0.5f, 0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(0.5f, 0.5f, 0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(0.5f, 0.5f, -0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(-0.5f, 0.5f, -0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);

	v.pos.Set(0.5f, 0.5f, 0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(-0.5f, 0.5f, -0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(-0.5f, 0.5f, 0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(0.5f, 0.5f, 0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(-0.5f, 0.5f, 0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);
	v.pos.Set(0.5f, -0.5f, 0.5f);	v.color = color; v.normal.Set(0, 1, 0);	vertex_buffer_data.push_back(v);

	/////////////////////////////////////////////////////////////////////////////////////////////////

	v.normal.Set(-0.5f, -0.5f, -0.5f);	vertex_buffer_data.push_back(v); v.color = color;
	v.normal.Set(-0.5f, -0.5f, 0.5f);	vertex_buffer_data.push_back(v); v.color = color;
	v.normal.Set(-0.5f, 0.5f, 0.5f);	vertex_buffer_data.push_back(v); v.color = color;
	v.normal.Set(0.5f, 0.5f, -0.5f);	vertex_buffer_data.push_back(v); v.color = color;
	v.normal.Set(-0.5f, -0.5f, -0.5f);	vertex_buffer_data.push_back(v); v.color = color;
	v.normal.Set(-0.5f, 0.5f, -0.5f);	vertex_buffer_data.push_back(v); v.color = color;
	//////////////////////////////////////////////////////////////////////

	//////////////////////////////////////////////////////////////////////

	for (unsigned i = 0; i < 36; ++i)
	{
		index_buffer_data.push_back(i);
	}

	Mesh *mesh = new Mesh(meshName);

	glBindBuffer(GL_ARRAY_BUFFER, mesh->vertexBuffer);
	glBufferData(GL_ARRAY_BUFFER, vertex_buffer_data.size() * sizeof(Vertex), &vertex_buffer_data[0], GL_STATIC_DRAW);
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, mesh->indexBuffer);
	glBufferData(GL_ELEMENT_ARRAY_BUFFER, index_buffer_data.size() * sizeof(GLuint), &index_buffer_data[0], GL_STATIC_DRAW);

	mesh->indexSize = index_buffer_data.size();
	mesh->mode = Mesh::DRAW_TRIANGLES;

	return mesh;
}

Mesh* MeshBuilder::GenerateCircle(const std::string &meshName, Color color, int numSlices, float radius)
{
	Vertex v;

	std::vector<Vertex> vertex_buffer_data;
	std::vector<unsigned> index_buffer_data;

	float anglePerSlice = 360.0f / numSlices;
	for (unsigned slice = 0; slice < numSlices + 1; slice++)
	{
		float theta = slice * anglePerSlice;
		v.pos.Set(radius*cos(Math::DegreeToRadian(theta)), 0, radius*sin(Math::DegreeToRadian(theta)));
		v.color = color;
		vertex_buffer_data.push_back(v);


		v.pos.Set(0, 0, 0); //(0 1 0) is cone) this jumps backto pos and draw another triangle
		v.color = color;
		vertex_buffer_data.push_back(v);
	}

	for (unsigned i = 0; i < (numSlices + 1) * 2; i++)
		index_buffer_data.push_back(i);

	Mesh *mesh = new Mesh(meshName);

	glBindBuffer(GL_ARRAY_BUFFER, mesh->vertexBuffer);
	glBufferData(GL_ARRAY_BUFFER, vertex_buffer_data.size() * sizeof(Vertex), &vertex_buffer_data[0], GL_STATIC_DRAW);
	glBindBuffer(GL_ARRAY_BUFFER, mesh->indexBuffer);
	glBufferData(GL_ARRAY_BUFFER, index_buffer_data.size() * sizeof(GLuint), &index_buffer_data[0], GL_STATIC_DRAW);

	mesh->indexSize=index_buffer_data.size();
	mesh->mode = Mesh::DRAW_TRIANGLE_STRIP;

	return mesh;
}

Mesh* MeshBuilder::GenerateCylinder(const std::string &meshName, Color color, int numSlices, float radius, float height)
{
	Vertex v;

	std::vector<Vertex> vertex_buffer_data;
	std::vector<unsigned> index_buffer_data;

	float anglePerSlice = 360.0f / numSlices;

	//bottom
	for (unsigned slice = 0; slice < numSlices + 1; slice++)
	{
		float theta = slice * anglePerSlice;
		v.pos.Set(radius*cos(Math::DegreeToRadian(theta)), -height * 0.5f, radius*sin(Math::DegreeToRadian(theta)));
		v.normal.Set(cos(Math::DegreeToRadian(theta)), -height * 0.5f, sin(Math::DegreeToRadian(theta)));
		v.color = color;
		vertex_buffer_data.push_back(v);
	}
	v.pos.Set(0, -height * 0.5f, 0); //(0 1 0) is cone) this jumps backto pos and draw another triangle
	v.normal.Set(0, -height * 0.5f, 0);
	v.color = color;
	vertex_buffer_data.push_back(v);
	//curve
	for (unsigned slice = 0; slice < numSlices + 1; ++slice)
	{
		float theta = slice * anglePerSlice;
		v.pos.Set(radius*cos(Math::DegreeToRadian(theta)), height * 0.5f, radius*sin(Math::DegreeToRadian(theta)));
		v.normal.Set(cos(Math::DegreeToRadian(theta)), height * 0.5f, sin(Math::DegreeToRadian(theta)));
		v.color = color;
		vertex_buffer_data.push_back(v);

		v.pos.Set(radius*cos(Math::DegreeToRadian(theta)), -height * 0.5f, radius*sin(Math::DegreeToRadian(theta)));
		v.normal.Set(cos(Math::DegreeToRadian(theta)), height * 0.5f, sin(Math::DegreeToRadian(theta)));
		v.color = color;
		vertex_buffer_data.push_back(v);
	}
	//top
	for (unsigned slice = 0; slice < numSlices + 1; slice++)
	{
		float theta = slice * anglePerSlice;
		v.pos.Set(radius*cos(Math::DegreeToRadian(theta)), height * 0.5f, radius*sin(Math::DegreeToRadian(theta)));
		v.normal.Set(cos(Math::DegreeToRadian(theta)), height * 0.5f, sin(Math::DegreeToRadian(theta)));
		v.color = color;
		vertex_buffer_data.push_back(v);
	}
	v.pos.Set(0, height * 0.5f, 0); //(0 1 0) is cone) this jumps backto pos and draw another triangle
	v.normal.Set(0, height * 0.5f, 0);
	v.color = color;
	vertex_buffer_data.push_back(v);
		

	for (unsigned i = 0; i < numSlices + 1; ++i)
	{		
		index_buffer_data.push_back(numSlices + 1);
		index_buffer_data.push_back(i);
	}
	for (unsigned i = 0; i < numSlices + 1; ++i)
	{		
		index_buffer_data.push_back(numSlices + 2 + i * 2 + 1);
		index_buffer_data.push_back(numSlices + 2 + i * 2);	
	}
	for (unsigned i = 0; i < numSlices + 1; ++i)
	{
		index_buffer_data.push_back(numSlices + 2 + (numSlices + 1) * 2 + i);
		index_buffer_data.push_back(numSlices + 2 + (numSlices + 1) * 2 + numSlices + 1);
	}

	Mesh *mesh = new Mesh(meshName);

	glBindBuffer(GL_ARRAY_BUFFER, mesh->vertexBuffer);
	glBufferData(GL_ARRAY_BUFFER, vertex_buffer_data.size() * sizeof(Vertex), &vertex_buffer_data[0], GL_STATIC_DRAW);
	glBindBuffer(GL_ARRAY_BUFFER, mesh->indexBuffer);
	glBufferData(GL_ARRAY_BUFFER, index_buffer_data.size() * sizeof(GLuint), &index_buffer_data[0], GL_STATIC_DRAW);

	mesh->indexSize = index_buffer_data.size();
	mesh->mode = Mesh::DRAW_TRIANGLE_STRIP;

	return mesh;
}

Mesh* MeshBuilder::GenerateRing(const std::string &meshName, Color color, int numSlices, float InnerRadius, float OuterRadius)
{
	Vertex v;

	std::vector<Vertex> vertex_buffer_data;
	std::vector<unsigned> index_buffer_data;

	float anglePerSlice = 360.0f / numSlices;
	for (unsigned slice = 0; slice < numSlices + 1; slice++)
	{
		float theta = slice * anglePerSlice;
		v.pos.Set(InnerRadius*cos(Math::DegreeToRadian(theta)), 0, InnerRadius*sin(Math::DegreeToRadian(theta)));
		v.color = color;
		vertex_buffer_data.push_back(v);

		v.pos.Set(OuterRadius*cos(Math::DegreeToRadian(theta)), 0, OuterRadius*sin(Math::DegreeToRadian(theta)));
		v.color = color;
		vertex_buffer_data.push_back(v);
	}

	for (unsigned i = 0; i < (numSlices + 1) * 2; i++)
		index_buffer_data.push_back(i);

	Mesh *mesh = new Mesh(meshName);

	glBindBuffer(GL_ARRAY_BUFFER, mesh->vertexBuffer);
	glBufferData(GL_ARRAY_BUFFER, vertex_buffer_data.size() * sizeof(Vertex), &vertex_buffer_data[0], GL_STATIC_DRAW);
	glBindBuffer(GL_ARRAY_BUFFER, mesh->indexBuffer);
	glBufferData(GL_ARRAY_BUFFER, index_buffer_data.size() * sizeof(GLuint), &index_buffer_data[0], GL_STATIC_DRAW);

	mesh->indexSize = index_buffer_data.size();
	mesh->mode = Mesh::DRAW_TRIANGLE_STRIP;

	return mesh;
}

Mesh* MeshBuilder::GenerateCone(const std::string &meshName, Color color, int numSlices, float radius)
{
	Vertex v;
	Vertex b;

	std::vector<Vertex> vertex_buffer_data;
	std::vector<unsigned> index_buffer_data;

	float anglePerSlice = 360.0f / numSlices; //make this a 3/4 cone
	//cone
	for (unsigned slice = 0; slice < numSlices + 1; slice++)
	{
		float theta = slice * anglePerSlice;
		v.pos.Set(radius*cos(Math::DegreeToRadian(theta)), 0, radius*sin(Math::DegreeToRadian(theta)));
		v.color = color;
		vertex_buffer_data.push_back(v);

		v.pos.Set(0, 1, 0); //(0 1 0) is cone) this jumps backto pos and draw another triangle
		v.color = color;
		vertex_buffer_data.push_back(v);
	}
	for (unsigned i = 0; i < (numSlices + 1) * 2; i++)
	{
		index_buffer_data.push_back(i);
	}

	//btm circle
	for (unsigned slice = 0; slice < numSlices + 1; slice++)
	{	
		v.pos.Set(0, 0, 0); //(0 1 0) is cone) this jumps backto pos and draw another triangle
		v.color = color;
		vertex_buffer_data.push_back(v);

		float theta = slice * anglePerSlice;
		v.pos.Set(radius*cos(Math::DegreeToRadian(theta)), 0, radius*sin(Math::DegreeToRadian(theta)));
		v.color = color;
		vertex_buffer_data.push_back(v);
	}
	for (unsigned i = 0; i < (numSlices + 1) * 2; i++)
	{
		index_buffer_data.push_back((numSlices + 1) * 2  + i);
	}

	Mesh *mesh = new Mesh(meshName);

	glBindBuffer(GL_ARRAY_BUFFER, mesh->vertexBuffer);
	glBufferData(GL_ARRAY_BUFFER, vertex_buffer_data.size() * sizeof(Vertex), &vertex_buffer_data[0], GL_STATIC_DRAW);
	glBindBuffer(GL_ARRAY_BUFFER, mesh->indexBuffer);
	glBufferData(GL_ARRAY_BUFFER, index_buffer_data.size() * sizeof(GLuint), &index_buffer_data[0], GL_STATIC_DRAW);

	mesh->indexSize = index_buffer_data.size();
	mesh->mode = Mesh::DRAW_TRIANGLE_STRIP;

	return mesh;
}

Mesh* MeshBuilder::GenerateSphere(const std::string &meshName, Color color, int numSlices, int numStacks, float radius)
{
	Vertex v;

	std::vector<Vertex> vertex_buffer_data;
	std::vector<unsigned> index_buffer_data;

	float anglePerSlice = 360.0f / numSlices;
	float anglePerStack = 180.0f / numStacks;
	
	for (unsigned stack = 0; stack < numStacks + 1; stack++)
	{
		float phi = -90.f + stack * anglePerStack;
		for (unsigned slice = 0; slice < numSlices + 1; slice++)
		{
			float theta = slice * anglePerSlice;
			v.pos.Set(radius*cos(Math::DegreeToRadian(phi))*cos(Math::DegreeToRadian(theta)), radius*sin(Math::DegreeToRadian(phi)), radius*cos(Math::DegreeToRadian(phi))*sin(Math::DegreeToRadian(theta)));
			v.color = color;
			v.normal.Set(cos(Math::DegreeToRadian(phi))*cos(Math::DegreeToRadian(theta)), sin(Math::DegreeToRadian(phi)), cos(Math::DegreeToRadian(phi))*sin(Math::DegreeToRadian(theta)));
			vertex_buffer_data.push_back(v);
		}
	}

	for (unsigned stack = 0; stack < numStacks; stack++)
	{
		for (unsigned slice = 0; slice < numSlices + 1; slice++)
		{
			index_buffer_data.push_back(stack * (numSlices + 1) + slice);
			index_buffer_data.push_back((stack + 1)* (numSlices + 1) + slice);
		}
	}

	Mesh *mesh = new Mesh(meshName);

	glBindBuffer(GL_ARRAY_BUFFER, mesh->vertexBuffer);
	glBufferData(GL_ARRAY_BUFFER, vertex_buffer_data.size() * sizeof(Vertex), &vertex_buffer_data[0], GL_STATIC_DRAW);
	glBindBuffer(GL_ARRAY_BUFFER, mesh->indexBuffer);
	glBufferData(GL_ARRAY_BUFFER, index_buffer_data.size() * sizeof(GLuint), &index_buffer_data[0], GL_STATIC_DRAW);

	mesh->indexSize = index_buffer_data.size();
	mesh->mode = Mesh::DRAW_TRIANGLE_STRIP;

	return mesh;
}

//WARNING - NEED ANOTHER CIRCLE TO COVER NON-NORMAL COVER
Mesh* MeshBuilder::GenerateHemiSphere(const std::string &meshName, Color color, int numSlices, int numStacks, float radius)
{
	Vertex v;

	std::vector<Vertex> vertex_buffer_data;
	std::vector<unsigned> index_buffer_data;

	float anglePerSlice = 180.0f / numSlices;
	float anglePerStack = 180.0f / numStacks;

	for (unsigned stack = 0; stack < numStacks + 1; stack++)
	{
		float phi = -90 + stack * anglePerStack;
		for (unsigned slice = 0; slice < numSlices + 1; slice++)
		{
			float theta = slice * anglePerSlice;
			v.pos.Set(radius*cos(Math::DegreeToRadian(phi))*cos(Math::DegreeToRadian(theta)), radius*sin(Math::DegreeToRadian(phi)), radius*cos(Math::DegreeToRadian(phi))*sin(Math::DegreeToRadian(theta)));
			v.color = color;
			v.normal.Set(cos(Math::DegreeToRadian(phi))*cos(Math::DegreeToRadian(theta)), sin(Math::DegreeToRadian(phi)), cos(Math::DegreeToRadian(phi))*sin(Math::DegreeToRadian(theta)));
			vertex_buffer_data.push_back(v);
		}
	}

	for (unsigned stack = 0; stack < numStacks; stack++)
	{
		for (unsigned slice = 0; slice < numSlices + 1; slice++)
		{
			index_buffer_data.push_back(stack * (numSlices + 1) + slice);
			index_buffer_data.push_back((stack + 1)* (numSlices + 1) + slice);
		}
	}


	Mesh *mesh = new Mesh(meshName);

	glBindBuffer(GL_ARRAY_BUFFER, mesh->vertexBuffer);
	glBufferData(GL_ARRAY_BUFFER, vertex_buffer_data.size() * sizeof(Vertex), &vertex_buffer_data[0], GL_STATIC_DRAW);
	glBindBuffer(GL_ARRAY_BUFFER, mesh->indexBuffer);
	glBufferData(GL_ARRAY_BUFFER, index_buffer_data.size() * sizeof(GLuint), &index_buffer_data[0], GL_STATIC_DRAW);

	mesh->indexSize = index_buffer_data.size();
	mesh->mode = Mesh::DRAW_TRIANGLE_STRIP;

	return mesh;
}

Mesh* MeshBuilder::GenerateTorus(const std::string &meshName, unsigned numStacks, unsigned numSlices, float outerRadius, float innerRadius, Color color)
{
	std::vector<Vertex> vertex_buffer_data;
	std::vector<GLuint> index_buffer_data;
	Vertex v;

	float degreePerStack = Math::DegreeToRadian(360.0f / numStacks);
	float degreePerSlice = Math::DegreeToRadian(360.0f / numSlices);

	float x1, y1, z1;
	float x2, y2, z2;

	for (unsigned stack = 0; stack < numStacks + 1; stack++)
	{
		for (unsigned slice = 0; slice < numSlices + 1; slice++)
		{
			z1 = outerRadius * cos((stack)* degreePerStack);
			x1 = outerRadius * sin((stack)* degreePerStack);
			z2 = (outerRadius + innerRadius * cos((slice)* degreePerSlice)) * cos((stack)* degreePerStack);
			y2 = innerRadius * sin((slice)* degreePerSlice);
			x2 = (outerRadius + innerRadius * cos((slice)* degreePerSlice)) * sin((stack)* degreePerStack);

			v.pos.Set(x2, y2, z2);
			v.color = color;
			vertex_buffer_data.push_back(v);
			v.normal.Set(x2 - x1, y2, z2 - z1);
		}
	}

	for (unsigned stack = 0; stack < numStacks; stack++)
	{
		for (unsigned slice = 0; slice < numSlices + 1; slice++)
		{
			index_buffer_data.push_back((numSlices + 1) * stack + slice + 0);
			index_buffer_data.push_back((numSlices + 1) * (stack + 1) + slice + 0);
		}
	}

	Mesh *mesh = new Mesh(meshName);

	glBindBuffer(GL_ARRAY_BUFFER, mesh->vertexBuffer);
	glBufferData(GL_ARRAY_BUFFER, vertex_buffer_data.size() * sizeof(Vertex), &vertex_buffer_data[0], GL_STATIC_DRAW);
	glBindBuffer(GL_ARRAY_BUFFER, mesh->indexBuffer);
	glBufferData(GL_ARRAY_BUFFER, index_buffer_data.size() * sizeof(GLuint), &index_buffer_data[0], GL_STATIC_DRAW);

	mesh->indexSize = index_buffer_data.size();
	mesh->mode = Mesh::DRAW_TRIANGLE_STRIP;

	return mesh;
}


Mesh* MeshBuilder::GenerateOBJ(const std::string &meshName, const std::string &file_path)
{
	//Read vertices, texcoords & normals from OBJ
	std::vector<Position> vertices;
	std::vector<TexCoord> uvs;
	std::vector<Vector3> normals;
	bool success = LoadOBJ(file_path.c_str(), vertices, uvs, normals);
	if (!success)
		return NULL;

	//Index the vertices, texcoords & normals properly
	std::vector<Vertex> vertex_buffer_data;
	std::vector<GLuint> index_buffer_data;
	

	IndexVBO(vertices, uvs, normals, index_buffer_data, vertex_buffer_data);
	//Create the mesh and call glBindBuffer, glBufferData
	Mesh *mesh = new Mesh(meshName);
	glBindBuffer(GL_ARRAY_BUFFER, mesh->vertexBuffer);
	glBufferData(GL_ARRAY_BUFFER, vertex_buffer_data.size() * sizeof(Vertex), &vertex_buffer_data[0], GL_STATIC_DRAW);
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, mesh->indexBuffer);
	glBufferData(GL_ELEMENT_ARRAY_BUFFER, index_buffer_data.size() * sizeof(GLuint), &index_buffer_data[0], GL_STATIC_DRAW);

	mesh->indexSize = index_buffer_data.size();
	mesh->mode = Mesh::DRAW_TRIANGLES;

	return mesh;
}


Mesh* MeshBuilder::GenerateText(const std::string &meshName, unsigned numRow, unsigned numCol)
{
	std::vector<Vertex> vertex_buffer_data;
	std::vector<GLuint> index_buffer_data;
	Vertex v;
	
	int offset = 0;
	float width = 1.f / numCol;
	float height = 1.f / numRow;

	for (unsigned row = 0; row < numRow; ++row) // reading the row
	{
		for (unsigned col = 0; col < numCol; ++col) // reading the col
		{	
			//Task: Add 4 vertices into vertex_buffer_data
			v.pos.Set(-0.5f, 0.5f, 0.0f);	v.texCoord.Set(col * width, (16-row) * height); v.normal.Set(0, 0, 1); vertex_buffer_data.push_back(v); // 1
			v.pos.Set(-0.5f, -0.5, 0.0f);	v.texCoord.Set(col * width, (16-row-1)* height); v.normal.Set(0, 0, 1);  vertex_buffer_data.push_back(v); // 2
			v.pos.Set(0.5f, -0.5f, 0.0f);	v.texCoord.Set((col + 1) * width, (16 - row - 1) * height); v.normal.Set(0, 0, 1);   vertex_buffer_data.push_back(v); // 3
			v.pos.Set(0.5f, 0.5f, 0.0f);	v.texCoord.Set((col+1) * width, (16-row) * height); v.normal.Set(0, 0, 1);  vertex_buffer_data.push_back(v); // 3
			

			//Task: Add 6 indices into index_buffer_data
			index_buffer_data.push_back(offset + 0);
			index_buffer_data.push_back(offset + 1);
			index_buffer_data.push_back(offset + 2);
			index_buffer_data.push_back(offset + 0);
			index_buffer_data.push_back(offset + 2);
			index_buffer_data.push_back(offset + 3);
			offset += 4;


		}
	}
	Mesh *mesh = new Mesh(meshName);

	glBindBuffer(GL_ARRAY_BUFFER, mesh->vertexBuffer);
	glBufferData(GL_ARRAY_BUFFER, vertex_buffer_data.size() * sizeof(Vertex), &vertex_buffer_data[0], GL_STATIC_DRAW);
	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, mesh->indexBuffer);
	glBufferData(GL_ELEMENT_ARRAY_BUFFER, index_buffer_data.size() * sizeof(GLuint), &index_buffer_data[0], GL_STATIC_DRAW);

	mesh->indexSize = index_buffer_data.size();
	mesh->mode = Mesh::DRAW_TRIANGLES;

	return mesh;

}
