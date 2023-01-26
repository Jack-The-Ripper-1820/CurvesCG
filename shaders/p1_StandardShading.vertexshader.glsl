#version 330 core

// Input vertex data, different for all executions of this shader.
layout(location = 0) in vec4 vertexPosition_modelspace;
layout(location = 1) in vec4 vertexColor;

// Output data ; will be interpolated for each fragment.
out vec4 vs_vertexColor;

// Values that stay constant for the whole mesh.
uniform mat4 MVP;
uniform mat4 V;
uniform mat4 M;

void main(){
	gl_PointSize = 10.0;
	// Output position of the vertex, in clip space : MVP * position
	gl_Position =  MVP * vertexPosition_modelspace;
	
	vs_vertexColor = vertexColor;
}

