             
//BUTTONS
function checkbox_callback(handles)
//Write your ps1 for  checkbox  here
global ps1

endfunction

function ps2_callback(handles)
//Write your callback for  ps2  here
global ps2

endfunction

function fs1_callback(handles)
global fs1

endfunction

function pb_start_callback(handles)
//Write your callback for  pb_start  here
global stop; global sair;
stop = %t
endfunction

function pb_saveplot_callback(handles)
//nomeando o graf que sera salvo
sp = 1
endfunction

function pb_quit_callback(handles)
//Write your callback for  pb_quit  here
global h; global sair; global stop; global start;
sair = %t
start = %t
stop = %t
//f = findobj("tag", "mainWindow"); delete(f);
endfunction

//
//function pb_reset_callback(handles)
//Write your callback for  pb_reset  here
//delete(handles.obj1.children)
//endfunction


function pb_pause_callback(handles)
//Write your callback for  pb_pause  here
global n; global start;
start = %t
endfunction

function []=write_Excel(i,text1, text2, text3, text4, text5 , text6, text7, text8, text9);
    
    celula1 = string("a") + string(i); celula2 = string("b") + string(i); celula3 = string("c") + string(i); celula4 = string("d") + string(i); celula5 = string("e") + string(i); celula6 = string("f") + string(i); celula7 = string("g") + string(i); celula8 = string("h") + string(i); celula9 = string("i") + string(i); 
    
    xls_SetData(celula1, text1); xls_SetData(celula2, text2); xls_SetData(celula3, text3); xls_SetData(celula4, text4); xls_SetData(celula5, text5); xls_SetData(celula6, text6); xls_SetData(celula7, text7); xls_SetData(celula8, text8); xls_SetData(celula9, text9);
    
endfunction;

function []=openExcel();
    
    if xls_IsExcelRunning()==%f then;
        xls_NewExcel();
    else;
        xls_RecoverExcel();
    end;
    
    xls_AddWorkbook();
    xls_SetVisible(%t);
    
endfunction;

function []=closeExcel();
    
    a = clock()
    name = "_"+string(a(1))+"_"+string(a(2))+"_"+string(a(3))+"_"+string(a(4))+"_"+string(a(5))+".xls";
    path="E:\Ana julia\Documentos pessoais\TCC\data\Resultado"+name;
    xls_SaveAs(path,);
    xls_Close();
    xls_Quit();
        
endfunction;

clc;
