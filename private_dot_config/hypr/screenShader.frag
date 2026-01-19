#version 320 es

precision mediump float;
in vec2 v_texcoord;
uniform sampler2D tex;
out vec4 FragColor;

void main() {

    vec4 pixColor = texture2D(tex, v_texcoord);

    pixColor[2] *= 1.0;

    FragColor = pixColor;
}

