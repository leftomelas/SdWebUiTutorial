@echo off
pushd %~dp0..\..\..\..\SdWebUi\Lora\

echo CafeDream.safetensors: https://civitai.com/models/53790/cafe-dream
if not exist BgJp\ ( mkdir BgJp\ )
if not exist BgJp\CafeDream.safetensors (
	curl -Lo BgJp\CafeDream.safetensors^
	https://civitai.com/api/download/models/102515
	timeout /t 1 /nobreak
)

popd
