@echo off
:: start up perams only change the port
SET TIME_OUT=5
:: Do Not change unless you know what you are doing
SET START_NAME=arma3_arma3diag
SET ARMA_EXE=arma3diag_x64.exe
SET TOKENS= "Tokens=* Delims="
:: use for battle eye    -bepath=%BEPATH%
::######### Title #######################
Title %START_NAME%
color 1f
::#############################
:: delete mod lists because how  for loop works
echo Deleting Mod lists
del /s 01_config_reloads.txt
timeout %TIME_OUT% /nobreak

::Make start up line
echo Loading Required Mods
for /d %%M in (01_config_reloads\*@*) do (echo %%M>> 01_config_reloads.txt)
echo Required mods mod list Complete

SETLOCAL EnableDelayedExpansion
echo Starting %PORT%
for /f %TOKENS% %%M in (01_config_reloads.txt) do set Mod=!Mod!%%M;

start "%START_NAME%" /HIGH %ARMA_EXE%  -noAsserts -filePatching -debug -nosplash -world=empty -window "-mod=%Mod%"
timeout %TIME_OUT% /nobreak




