@echo off
pushd %~dp0..\..\..\..\SdWebUi\Lora\

echo Paisura.safetensors: https://civitai.com/models/19079/p-paisura
if not exist zBoob\ ( mkdir zBoob\ )
if not exist zBoob\Paisura.safetensors (
	curl -Lo zBoob\Paisura.safetensors^
	https://civitai.com/api/download/models/87696
	timeout /t 1 /nobreak
)

popd
