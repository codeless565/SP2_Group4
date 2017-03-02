#include "FpCamera2.h"
#include "Application.h"
#include "Mtx44.h"


FpCamera2::FpCamera2()
{
}

FpCamera2::~FpCamera2()
{
}

void FpCamera2::Init(const Vector3& pos, const Vector3& target, const Vector3& up)
{
	this->position = defaultPosition = pos;
	this->target = defaultTarget = target;
	Vector3 view = (target - position).Normalized();
	Vector3 right = view.Cross(up);
	right.y = 0;
	right.Normalize();
	this->up = defaultUp = right.Cross(view).Normalized();
}

void FpCamera2::Update(double dt)
{
	static const float CAMERA_SPEED = 100.f;
	Vector3 oripos = { 0, 20, 100 };

	//if (!obstruction({ -75, 0, -78 }, { 75, 145, 75 })) // }} another coord 
	//{

		if (Application::IsKeyPressed('A'))
		{
			Vector3 view = (target - position).Normalized();
			Vector3 right = view.Cross(up);

			if (position.x - right.x < -495 || position.x - right.x > 495)
			{
				if (position.z - right.z < -495 || position.z - right.z > 495)
				{
				}
				else
				{
					position.z = position.z - right.z;
				}
			}
			else if (position.z - right.z < -495 || position.z - right.z > 495)
			{
				if (position.x - right.x < -495 || position.x - right.x > 495)
				{
				}
				else
				{
					position.x = position.x - right.x;
				}
			}
			else
			{
				position = position - right;
			}

			target = position + view;

		}
		if (Application::IsKeyPressed('D'))
		{
			Vector3 view = (target - position).Normalized();
			Vector3 right = view.Cross(up);

			if (position.x + right.x < -495 || position.x + right.x > 495)
			{
				if (position.z + right.z < -495 || position.z + right.z > 495)
				{
				}
				else
				{
					position.z = position.z + right.z;
				}
			}
			else if (position.z + right.z < -495 || position.z + right.z > 495)
			{
				if (position.x + right.x < -495 || position.x + right.x > 495)
				{
				}
				else
				{
					position.x = position.x + right.x;
				}
			}
			else
			{
				position = position + right;
			}

			target = position + view;
		}
		if (Application::IsKeyPressed('W'))
		{
			Vector3 view = (target - position).Normalized();

			if (position.x + view.x < -495 || position.x + view.x > 495)
			{
				if (position.z + view.z < -495 || position.z + view.z > 495)
				{
				}
				else
				{
					position.z = position.z + view.z;
				}
			}
			else if (position.z + view.z < -495 || position.z + view.z > 495)
			{
				if (position.x + view.x < -495 || position.x + view.x > 495)
				{
				}
				else
				{
					position.x = position.x + view.x;
				}
			}
			else
			{
				position.x = position.x + view.x;
				position.z = position.z + view.z;
			}

			target = position + view;
		}
		if (Application::IsKeyPressed('S'))
		{
			Vector3 view = (target - position).Normalized();

			if (position.x - view.x < -495 || position.x - view.x > 495)
			{
				if (position.z - view.z < -495 || position.z - view.z > 495)
				{
				}
				else
				{
					position.z = position.z - view.z;
				}
			}
			else if (position.z - view.z < -495 || position.z - view.z > 495)
			{
				if (position.x - view.x < -495 || position.x - view.x > 495)
				{
				}
				else
				{
					position.x = position.x - view.x;
				}
			}
			else
			{
				position.x = position.x - view.x;
				position.z = position.z - view.z;
			}

			target = position + view;
		}

		if (Application::IsKeyPressed(VK_LEFT))
		{
			Vector3 view = (target - position).Normalized();

			float yaw = (float)(CAMERA_SPEED * dt);
			Mtx44 rotation;
			rotation.SetToRotation(yaw, 0, 1, 0);
			view = rotation * view;
			target = position + view;
			up = rotation * up;
		}
		if (Application::IsKeyPressed(VK_RIGHT))
		{
			Vector3 view = (target - position).Normalized();

			float yaw = (float)(-CAMERA_SPEED * dt);
			Mtx44 rotation;
			rotation.SetToRotation(yaw, 0, 1, 0);
			view = rotation * view;
			target = position + view;
			up = rotation * up;
		}
		if (Application::IsKeyPressed(VK_UP))
		{
			Vector3 view = (target - position).Normalized();
			Vector3 right = view.Cross(up);

			pitch = (float)(CAMERA_SPEED * dt);
			right.y = 0;
			right.Normalize();
			up = right.Cross(view).Normalized();

			Mtx44 rotation;
			rotation.SetToRotation(pitch, right.x, right.y, right.z);

			//if (view.y >= 0.9f)	//camera lock so cannot 360 head tilt
			//	view.y = 0.9f;
			view = rotation * view;
			target = position + view;
		}
		if (Application::IsKeyPressed(VK_DOWN))
		{
			Vector3 view = (target - position).Normalized();
			Vector3 right = view.Cross(up);

			pitch = (float)(-CAMERA_SPEED * dt);
			right.y = 0;
			right.Normalize();
			up = right.Cross(view).Normalized();

			Mtx44 rotation;
			rotation.SetToRotation(pitch, right.x, right.y, right.z);

			view = rotation * view;
			target = position + view;
		}

	//	oripos = position;
	/*}
	else
	{
		position = oripos;
	}
*/

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

void FpCamera2::Reset()
{
	position = defaultPosition;
	target = defaultTarget;
	up = defaultUp;
}

bool FpCamera2::obstruction(Vector3 min, Vector3 max)
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