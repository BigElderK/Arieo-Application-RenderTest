cbuffer UniformBufferObject : register(b0) {
    float4x4 model;
    float4x4 view;
    float4x4 proj;
};

struct VSInput {
    float3 inPosition : POSITION0;
    float3 inColor : COLOR0;
    float2 inTexCoord : TEXCOORD0;
};

struct VSOutput {
    float4 Position : SV_Position;
    float3 fragColor : COLOR0;
    float2 fragTexCoord : TEXCOORD0;
};

VSOutput main(VSInput input) {
    VSOutput output;
    output.Position = mul(proj, mul(view, mul(model, float4(input.inPosition, 1.0))));
    output.fragColor = input.inColor;
    output.fragTexCoord = input.inTexCoord;
    return output;
}