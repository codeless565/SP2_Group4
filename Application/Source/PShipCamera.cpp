#include "PShipCamera.h"
#include "Application.h"
#include "Mtx44.h"


#include <iostream>
using std::cout;
using std::endl;

PShipCamera::PShipCamera()
{
}

PShipCamera::~PShipCamera()
{
}

void PShipCamera::Init(const Vector3& pos, const Vector3& target, const Vector3& up)
{
	this->position = defaultPosition = pos;
	this->target = defaultTarget = target;
	view = (target - position).Normalized();
	right = view.Cross(up);
	right.y = 0;
	right.Normalize();
	this->up = defaultUp = right.Cross(view).Normalized();

	yaw = 0;
	pitch = 0;
	accel = 0;
	currSpeed = 0.2f;
	maxSpeed = 10.f;
	this->boost = false;
}
//THIS IS FOR PLAYER SHIP!!!
void PShipCamera::Update(double dt, bool boost, bool warp)
{
	static const float CAMERA_SPEED = 50.f;

	view = (target - position).Normalized();
	right = view.Cross(up);

	cout << "X: " << position.x << " Y: " << position.y << " Z: " << position.z << endl;
	//	cout << "speed: " << currSpeed << " accel: " << accel << endl;

	if (!warp)
	{	//Acceleration
		if (Application::IsKeyPressed(VK_SHIFT) && Application::IsKeyPressed('W') && boost)
		{
			this->boost = true;
		}
		else
			this->boost = false;

		if (this->boost)	//if boost is enabled, maximum speed and acceleration increases
		{
			maxSpeed = 50.f;
			accel = 1.5f;
		}
		else
		{
			maxSpeed = 20.f;
			accel = 0.5f;
		}


		if (currSpeed >= maxSpeed)
			currSpeed -= 2.f;

		if (currSpeed <= 0.2f)
			currSpeed = 0.2f;
		//=================


		if (Application::IsKeyPressed('W'))
		{
			position += currSpeed * view;
			currSpeed += accel;
		}
		else
		{
			currSpeed -= 0.2f;
		}

		if (Application::IsKeyPressed('S'))
		{
			position -= view;
		}
		if (Application::IsKeyPressed('A'))
		{
			position -= right;
		}
		if (Application::IsKeyPressed('D'))
		{
			position += right;
		}

		if (Application::IsKeyPressed(VK_LEFT))
		{
			if (Application::IsKeyPressed(VK_UP) || Application::IsKeyPressed(VK_DOWN))
			{
			}
			else
			{
				yaw = (float)(CAMERA_SPEED * dt);
				Mtx44 rotation;
				rotation.SetToRotation(yaw, 0, 1, 0);
				view = rotation * view;
				up = rotation * up;
			}
		}
		if (Application::IsKeyPressed(VK_RIGHT))
		{
			if (Application::IsKeyPressed(VK_UP) || Application::IsKeyPressed(VK_DOWN))
			{
			}
			else
			{
				yaw = (float)(-CAMERA_SPEED * dt);
				Mtx44 rotation;
				rotation.SetToRotation(yaw, 0, 1, 0);
				view = rotation * view;
				up = rotation * up;
			}
		}
		if (Application::IsKeyPressed(VK_UP))
		{
			if (Application::IsKeyPressed(VK_RIGHT) || Application::IsKeyPressed(VK_LEFT))
			{
			}
			else
			{
				pitch = (float)(CAMERA_SPEED * dt);
				right.y = 0;
				right.Normalize();
				up = right.Cross(view).Normalized();

				Mtx44 rotation;
				rotation.SetToRotation(pitch, right.x, right.y, right.z);
				view = rotation * view;
			}
		}
		if (Application::IsKeyPressed(VK_DOWN))
		{
			if (Application::IsKeyPressed(VK_RIGHT) || Application::IsKeyPressed(VK_LEFT))
			{
			}
			else
			{
				pitch = (float)(-CAMERA_SPEED * dt);
				right.y = 0;
				right.Normalize();
				up = right.Cross(view).Normalized();

				Mtx44 rotation;
				rotation.SetToRotation(pitch, right.x, right.y, right.z);
				view = rotation * view;
			}
		}
	}

	position += currSpeed * view;

	target = position + view;

	//if (Application::IsKeyPressed('R'))
	//{
	//	Reset();
	//}
}

void PShipCamera::Reset()
{
	position = defaultPosition;
	target = defaultTarget;
	up = defaultUp;
}

bool PShipCamera::obstruction(Vector3 min, Vector3 max)
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