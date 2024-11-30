#version 330 core
layout (location = 0) in vec3 aPos;

uniform mat4 u_objectMatrix;
uniform mat4 u_cameraMatrix;
uniform mat4 u_perspectiveMatrix;

void main()
{
	gl_Position = u_perspectiveMatrix*u_cameraMatrix*u_objectMatrix*vec4(aPos,1.0);
}