@echo off
:: Solicita elevação de privilégios de Administrador
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Execute este script como ADMINISTRADOR!
    pause
    exit /b
)

echo =====================================================
echo          LISTA DE DISCOS CONECTADOS
echo =====================================================
(
echo list disk
) | diskpart

echo.
set /p DISK_NUM="Digite o NUMERO do disco externo a ser formatado: "

echo.
echo ATENCAO! Todos os dados do DISCO %DISK_NUM% serao apagados!
set /p CONFIRM="Digite S para confirmar e continuar: "
if /i "%CONFIRM%" neq "S" (
    echo Operacao cancelada.
    pause
    exit /b
)

:: Criando arquivo temporário para instruir o Diskpart
(
echo select disk %DISK_NUM%
echo clean
echo convert gpt
echo create partition primary
echo format fs=ntfs quick label="HD_EXTERNO"
echo assign
) > %temp%\diskpart_script.txt

:: Executando o Diskpart
diskpart /s %temp%\diskpart_script.txt

:: Removendo o arquivo temporário
del %temp%\diskpart_script.txt

echo.
echo Formatacao concluida com sucesso!
pause