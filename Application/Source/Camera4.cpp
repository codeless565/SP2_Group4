#include "Camera4.h"
#include "Application.h"
#include "Mtx44.h"

extern bool collided;

Camera4::Camera4()
{
}

Camera4::~Camera4()
{
}

void Camera4::Init(const Vector3& pos, const Vector3& target, const Vector3& up)
{
	this->position = defaultPosition = pos;
	this->target = defaultTarget = target;
	view = (target - position).Normalized();
	right = view.Cross(up);
	right.y = 0;
	right.Normalize();
	this->up = defaultUp = right.Cross(view).Normalized();
}

void Camera4::Update(double dt)
{
	static const float CAMERA_SPEED = 100.f;

	if (Application::IsKeyPressed('A'))
	{
		view = (target - position).Normalized();
		right = view.Cross(up);

		if (position.x - right.x < -195 || position.x - right.x > 195)
		{
			if (position.z - right.z < -195 || position.z - right.z > 195)
			{
			}
			else
			{
				position.z = position.z - right.z;
			}
		}
		else if (position.z - right.z < -195 || position.z - right.z > 195)
		{
			if (position.x - right.x < -195 || position.x - right.x > 195)
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
		view = (target - position).Normalized();
		right = view.Cross(up);

		if (position.x + right.x < -195 || position.x + right.x > 195)
		{
			if (position.z + right.z < -195 || position.z + right.z > 195)
			{
			}
			else
			{
				position.z = position.z + right.z;
			}
		}
		else if (position.z + right.z < -195 || position.z + right.z > 195)
		{
			if (position.x + right.x < -195 || position.x + right.x > 195)
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
		view = (target - position).Normalized();

		if (position.x + view.x < -195 || position.x + view.x > 195)
		{
			if (position.z + view.z < -195 || position.z + view.z > 195)
			{
			}
			else
			{
				position.z = position.z + view.z;
			}
		}
		else if (position.z + view.z < -195 || position.z + view.z > 195)
		{
			if (position.x + view.x < -195 || position.x + view.x > 195)
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
		view = (target - position).Normalized();

		if (position.x - view.x < -195 || position.x - view.x > 195)
		{
			if (position.z - view.z < -195 || position.z - view.z > 195)
			{
			}
			else
			{
				position.z = position.z - view.z;
			}
		}
		else if (position.z - view.z < -195 || position.z - view.z > 195)
		{
			if (position.x - view.x < -195 || position.x - view.x > 195)
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
		view = (target - position).Normalized();

		float yaw = (float)(CAMERA_SPEED * dt);
		Mtx44 rotation;
		rotation.SetToRotation(yaw, 0, 1, 0);
		view = rotation * view;
		target = position + view;
		up = rotation * up;
	}
	if (Application::IsKeyPressed(VK_RIGHT))
	{
		view = (target - position).Normalized();

		float yaw = (float)(-CAMERA_SPEED * dt);
		Mtx44 rotation;
		rotation.SetToRotation(yaw, 0, 1, 0);
		view = rotation * view;
		target = position + view;
		up = rotation * up;
	}
	if (Application::IsKeyPressed(VK_UP))
	{
		view = (target - position).Normalized();
		right = view.Cross(up);

		pitch = (float)(CAMERA_SPEED * dt);
		right.y = 0;
		right.Normalize();
		up = right.Cross(view).Normalized();

		Mtx44 rotation;
		rotation.SetToRotation(pitch, right.x, right.y, right.z);

		if (view.y >= 0.8f)	//camera lock so cannot 360 head tilt
			view.y = 0.8f;
		view = rotation * view;
		target = position + view;
	}
	if (Application::IsKeyPressed(VK_DOWN))
	{
		view = (target - position).Normalized();
		right = view.Cross(up);

		pitch = (float)(-CAMERA_SPEED * dt);
		right.y = 0;
		right.Normalize();
		up = right.Cross(view).Normalized();

		Mtx44 rotation;
		rotation.SetToRotation(pitch, right.x, right.y, right.z);

		if (view.y <= -0.8f)	//camera lock so cannot 360 head tilt
			view.y = -0.8f;
		view = rotation * view;
		target = position + view;
	}

	if (Application::IsKeyPressed('N'))
	{
		Vector3 direction = target - position;
		if (direction.Length() > 5)
		{
			view = (target - position).Normalized();
			position += view * (float)(100.f * dt);
		}
	}
	if (Application::IsKeyPressed('M'))
	{
		view = (target - position).Normalized();
		position -= view * (float)(100.f * dt);
	}


	if (Application::IsKeyPressed('R'))
	{
		Reset();
	}

}

void Camera4::Reset()
{
	position = defaultPosition;
	target = defaultTarget;
	up = defaultUp;
}