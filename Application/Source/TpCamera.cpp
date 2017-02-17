#include "TpCamera.h"
#include "Application.h"
#include "Mtx44.h"

#include <iostream>
using std::cout;
using std::endl;

TpCamera::TpCamera()
{
}

TpCamera::~TpCamera()
{
}

void TpCamera::Init(const Vector3& pos, const Vector3& target, const Vector3& up)
{
	this->position = defaultPosition = pos;
	this->target = defaultTarget = target;
	Vector3 view = (target - position).Normalized();
	Vector3 right = view.Cross(up);
	right.y = 0;
	right.Normalize();
	this->up = defaultUp = right.Cross(view).Normalized();

	yaw = 0;
	pitch = 0;
}

void TpCamera::Update(double dt)
{
	static const float CAMERA_SPEED = 50.f;

	Vector3 view = (target - position).Normalized();
	Vector3 right = view.Cross(up);

	cout << "X: " << position.x << " Y: " << position.y << " Z: " << position.z << endl;

	if (Application::IsKeyPressed('A'))
	{
		position -= right;
	}
	if (Application::IsKeyPressed('D'))
	{
		position += right;
	}
	if (Application::IsKeyPressed('W'))
	{
		position += view;
	}
	if (Application::IsKeyPressed('S'))
	{
		position -= view;
	}
	
	if(Application::IsKeyPressed(VK_LEFT))
	{
		yaw = (float)(CAMERA_SPEED * dt);
		Mtx44 rotation;
		rotation.SetToRotation(yaw, 0, 1, 0);
		view = rotation * view;
		up = rotation * up;
	}
	if (Application::IsKeyPressed(VK_RIGHT))
	{
		yaw = (float)(-CAMERA_SPEED * dt);
		Mtx44 rotation;
		rotation.SetToRotation(yaw, 0, 1, 0);
		position = rotation * position;
		up = rotation * up;
	}
	if (Application::IsKeyPressed(VK_UP))
	{
		pitch = (float)(CAMERA_SPEED * dt);

		right.y = 0;
		right.Normalize();
		up = right.Cross(view).Normalized();
		Mtx44 rotation;
		rotation.SetToRotation(pitch, right.x, right.y, right.z);
		position = rotation * position;
	}
	if (Application::IsKeyPressed(VK_DOWN))
	{
		float pitch = (float)(-CAMERA_SPEED * dt);

		right.y = 0;
		right.Normalize();
		up = right.Cross(view).Normalized();
		Mtx44 rotation;
		rotation.SetToRotation(pitch, right.x, right.y, right.z);
		position = rotation * position;
	}

	if (Application::IsKeyPressed(VK_NUMPAD7))
	{
		Vector3 direction = target - position;
		if(direction.Length() > 5)
		{
			Vector3 view = (target - position).Normalized();
			position += view * (float)(50.f * dt);
		}
	}
	if (Application::IsKeyPressed(VK_NUMPAD9))
	{
		Vector3 view = (target - position).Normalized();
		position -= view * (float)(50.f * dt);
	}
	if(Application::IsKeyPressed('R'))
	{
		Reset();
	}
	target = position + view;
}

void TpCamera::Reset()
{
	position = defaultPosition;
	target = defaultTarget;
	up = defaultUp;
}