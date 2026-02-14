struct PSInput {
    float3 fragColor : COLOR0;
    float2 fragTexCoord : TEXCOORD0;
};

Texture2D texSampler : register(t1);
SamplerState texSampler_sampler : register(s1);

float4 main(PSInput input) : SV_Target {
    //return float4(input.fragTexCoord, 0.0, 1.0);
    return texSampler.Sample(texSampler_sampler, input.fragTexCoord);
}