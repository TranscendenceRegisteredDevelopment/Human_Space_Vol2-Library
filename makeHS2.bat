@ECHO off
DEL _IMPORT\*.tdb
DEL _TDB\*.tdb
REN _Transcendence.tdb Transcendence.tdb
IF NOT EXIST _TDB (MD _TDB)
ECHO "========================================================================"
ECHO "===========================     Lib Vol2   ============================="
ECHO "========================================================================"
TransCompiler.exe /input:HS2_LibCore.xml /output:_TDB/HS2_LibCore.tdb
REN Transcendence.tdb _Transcendence.tdb
@ECHO on