rem @echo off
pushd %~dp0..\..\..\..\SdWebUi\Model\

echo ACertainty.safetensors: https://huggingface.co/JosephusCheung/ACertainty
if not exist Train\ ( mkdir Train\ )
if not exist Train\ACertainty.safetensors (
	curl -Lo Train\ACertainty.safetensors^
	https://huggingface.co/JosephusCheung/ACertainty/resolve/main/ACertainty.ckpt
)

if not exist Train\ACertainty.png (
	curl -Lo Train\ACertainty.png^
	https://cdn-thumbnails.huggingface.co/social-thumbnails/models/JosephusCheung/ACertainty.png
	timeout /t 3 /nobreak
)

popd
