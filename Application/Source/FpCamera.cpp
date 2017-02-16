#include "FpCamera.h"
#include "Application.h"
#include "Mtx44.h"


FpCamera::FpCamera()
{
}

FpCamera::~FpCamera()
{
}

void FpCamera::Init(const Vector3& pos, const Vector3& target, const Vector3& up)
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

void FpCamera::Update(double dt)
{
	static const float CAMERA_SPEED = 50.f;
	Vector3 oripos = { 0, 20, 100 };

	Vector3 view = (target - position).Normalized();
	Vector3 right = view.Cross(up);
	
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
	if (Application::IsKeyPressed(VK_LEFT))
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
		view = rotation * view;
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

		//if (view.y >= 0.8f)	//camera lock so cannot 360 head tilt
		//	view.y = 0.8f;
		view = rotation * view;
	}
	if (Application::IsKeyPressed(VK_DOWN))
	{
		pitch = (float)(-CAMERA_SPEED * dt);
		right.y = 0;
		right.Normalize();
		up = right.Cross(view).Normalized();

		Mtx44 rotation;
		rotation.SetToRotation(pitch, right.x, right.y, right.z);
		
		//if (view.y <= -0.8f)	//camera lock so cannot 360 head tilt
		//	view.y = -0.8f;

		view = rotation * view;
	}

	target = position + view;

	if (Application::IsKeyPressed('N'))
	{
		Vector3 direction = target - position;
		if (direction.Length() > 5)
		{
			Vector3 view = (target - position).Normalized();
			position += view * (float)(100.f * dt);
		}
	}
	if (Application::IsKeyPressed('M'))
	{
		Vector3 view = (target - position).Normalized();
		position -= view * (float)(100.f * dt);
	}


	if (Application::IsKeyPressed('R'))
	{
		Reset();
	}
}

void FpCamera::Reset()
{
	position = defaultPosition;
	target = defaultTarget;
	up = defaultUp;
}

bool FpCamera::obstruction(Vector3 min, Vector3 max)
{
	if (position.x > min.x && position.x < max.x &&
		position.y > min.y && position.y < max.y &&
		position.z > min.z && position.z < max.z)
	{
		return true;
	}
	else
		return false;
}