set Path=%Path%;%CD%\java-se-8u41-ri\bin

@echo off

rem -------------------------------------------------
rem jar�t�@�C�����N������     �Q�l�@http://tamori.3zoku.com/misc/java/java_run.html
rem -------------------------------------------------

rem �f�B���N�g���̌���

:filename
rem �N���t�@�C��
echo
echo BCU-�Z-�Z-�Z�Z.jar�������Ƀh���b�O���h���b�v����Enter�L�[�������Ă�������

rem jar�t�@�C�����̓��͂����߂�
set /p jarfile=jar�t�@�C���F

rem �t�@�C���̂���Ȃ��ŏ����𕪊�

if exist out.txt (
echo out.txt ���폜���܂��B
del out.txt
)

if exist %jarfile% (
rem out.txt �̍폜
if exist out.txt (
echo out.txt ���폜���܂��B
del out.txt
)


@echo on

java -jar %jarfile% 

echo ========�v�Z���ʂ̕\��==============
type out.txt
echo =======�����܂�===============
@echo off
) else (
@echo off
echo [%jarfile%] ������܂���B
goto filename
)

@echo off
echo.
echo �I������ɂ́A�����L�[�������Ă��������B
pause > nul