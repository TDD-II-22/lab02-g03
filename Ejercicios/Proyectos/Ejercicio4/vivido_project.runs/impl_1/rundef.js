//
// Vivado(TM)
// rundef.js: a Vivado-generated Runs Script for WSH 5.1/5.6
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//

var WshShell = new ActiveXObject( "WScript.Shell" );
var ProcEnv = WshShell.Environment( "Process" );
var PathVal = ProcEnv("PATH");
if ( PathVal.length == 0 ) {
  PathVal = "C:/Xilinx/Vivado/2019.1/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2019.1/ids_lite/ISE/lib/nt64;C:/Xilinx/Vivado/2019.1/bin;";
} else {
  PathVal = "C:/Xilinx/Vivado/2019.1/ids_lite/ISE/bin/nt64;C:/Xilinx/Vivado/2019.1/ids_lite/ISE/lib/nt64;C:/Xilinx/Vivado/2019.1/bin;" + PathVal;
}

ProcEnv("PATH") = PathVal;

var RDScrFP = WScript.ScriptFullName;
var RDScrN = WScript.ScriptName;
var RDScrDir = RDScrFP.substr( 0, RDScrFP.length - RDScrN.length - 1 );
var ISEJScriptLib = RDScrDir + "/ISEWrap.js";
eval( EAInclude(ISEJScriptLib) );


// pre-commands:
ISETouchFile( "init_design", "begin" );
ISEStep( "vivado",
<<<<<<< HEAD:Ejercicios/Proyectos/Ejercicio4/vivido_project.runs/impl_1/rundef.js
         "-log top_simulate_7seg_v2.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source top_simulate_7seg_v2.tcl -notrace" );
=======
         "-log top_simulate.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source top_simulate.tcl -notrace" );
>>>>>>> e82be317274dbddd999bc3e35a1cf024f72b017e:Ejercicios/Proyectos/Ejercicio1/vivado_project.runs/impl_1/rundef.js





function EAInclude( EAInclFilename ) {
  var EAFso = new ActiveXObject( "Scripting.FileSystemObject" );
  var EAInclFile = EAFso.OpenTextFile( EAInclFilename );
  var EAIFContents = EAInclFile.ReadAll();
  EAInclFile.Close();
  return EAIFContents;
}
