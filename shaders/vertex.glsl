uniform float time;
varying vec2 vUv;
varying vec3 vPosition;
uniform vec2 pixels;
uniform vec3 uMin;
uniform float WaveLength;
uniform vec2 resolution;
uniform vec2 mouse;
float PI = 3.1415926;
// varying float vWave;
void main () {
	vUv = uv;
	lowp float vWave = sin((time + position.x + position.y) * WaveLength);
	gl_Position = projectionMatrix * modelViewMatrix * vec4(position.x + mouse.y * 0.02, position.y + mouse.x * 0.02, vWave * 0.04, 1.0);
}