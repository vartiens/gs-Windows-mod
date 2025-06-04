@echo off
setlocal EnableDelayedExpansion

rem Forget the /L, should reset to (0,1,29) after
for /L %%I in (2,1,28) do (
	set /A idx=%%I
	python convert.py -s "C:\Users\grpicasso\Documents\MIV\ETRI_Data\Main\Makeup\1_1_Makeup_texture(600_frames)_color_correction\Nframes\frame!idx!" && python train.py -s "C:\Users\grpicasso\Documents\MIV\ETRI_Data\Main\Makeup\1_1_Makeup_texture(600_frames)_color_correction\Nframes\frame!idx!" -m "output\makeup_frame!idx!"
)
