//inteface leitura sensores
//Ana Júlia da Silva
//Laboratório INECO
//___________________________________________________________________________
clear;
     
exec('E:\Ana julia\Documentos pessoais\Pesquisa\funcoes\functions_pesq.sce')           
material=figure('figure_position',[459,123],'figure_size',[400,300],'auto_resize','on','background',[33],'figure_name','Graphic window number %d','dockable','off','infobar_visible','off','toolbar_visible','off','menubar_visible','off','default_axes','on','visible','off');
//////////
handles.dummy = 0;
handles.comp=uicontrol(material,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.4849359,0.6076474,0.4271154,0.1761678],'Relief','default','SliderStep',[0.01,0.1],'String','','Style','edit','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','comp','Callback','')
handles.area=uicontrol(material,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.4849359,0.4097534,0.4271154,0.1761678],'Relief','default','SliderStep',[0.01,0.1],'String','','Style','edit','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','area','Callback','')
handles.visc=uicontrol(material,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.4849359,0.219263,0.4271154,0.1761678],'Relief','default','SliderStep',[0.01,0.1],'String','','Style','edit','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','visc','Callback','')
handles.ok=uicontrol(material,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.333224,0.0530317,0.2719872,0.1220408],'Relief','default','SliderStep',[0.01,0.1],'String','Save','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','ok','Callback','ok_callback(handles)',"callback_type",12)
handles.cmp=uicontrol(material,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0854487,0.6233163,0.3416026,0.1448299],'Relief','default','SliderStep',[0.01,0.1],'String','comprimento (cm):','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','cmp','Callback','')
handles.are=uicontrol(material,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0913661,0.4254223,0.3416026,0.1448299],'Relief','default','SliderStep',[0.01,0.1],'String','Área (cm²):','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','are','Callback','')
handles.vis=uicontrol(material,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0854487,0.234932,0.3416026,0.1448299],'Relief','default','SliderStep',[0.01,0.1],'String','Viscosidade fluido (cp):','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','vis','Callback','')
handles.inf=uicontrol(material,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.2355191,0.8464054,0.5183974,0.1189569],'Relief','default','SliderStep',[0.01,0.1],'String','DADOS DO MATERIAL','Style','text','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','inf','Callback','')

material.figure_name="Information general";
material.visible = "on";

global compdec; global areadec; global viscdec; global infosmaterial

//////////
// Callbacks are defined as below. Please do not delete the comments as it will be used in coming version
//////////

function ok_callback(handles)
//Write your callback for  ok  here
// armazeando dados da caixa em cada variável (formato alfa numérico)
global compdec; global areadec; global viscdec; global infosmaterial
compstring = handles.comp.string
areastring = handles.area.string
viscstring = handles.visc.string
// o strtod converte a string para decimal
compdec = strtod(compstring)
areadec = strtod(areastring)
viscdec = strtod(viscstring)
// fechar janela
close(material)
infosmaterial = %t
endfunction 
infosmaterial = %f 
while ~infosmaterial
    sleep(25)
end
    
//interface gráfica
f=figure('figure_position',[492,70],'figure_size',[640,480],'auto_resize','on','background',[33],'figure_name','Janela gráfica número %d','dockable','off','infobar_visible','off','toolbar_visible','off','menubar_visible','off','default_axes','on','visible','off');
//////////
handles.dummy = 0;
handles.Mainframe=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.5208974,0.0513162,0.4574359,0.2112925],'Relief','default','SliderStep',[0.01,0.1],'String','main_frame','Style','frame','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','Mainframe','Callback','', "border", createBorder("titled", createBorder("line", "lightGray", 1),_("Main Panel"), "center", "top", createBorderFont("", 11, "normal"), "black"))
handles.borda2=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0408974,0.076712,0.4374359,0.1755329],'Relief','default','SliderStep',[0.01,0.1],'String','borda2_graf','Style','frame','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','borda2','Callback','', "border", createBorder("titled", createBorder("line", "lightGray", 1),_("Visible Grafic"), "center", "top", createBorderFont("", 11, "normal"), "black"))
handles.pb_quit=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.5473397,0.1585941,0.1802564,0.0634921],'Relief','default','SliderStep',[0.01,0.1],'String','Quit/Save','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','pb_quit','Callback','pb_quit_callback(handles)',"callback_type",12)
handles.pb_pause=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.5473397,0.0882993,0.1802564,0.0634921],'Relief','default','SliderStep',[0.01,0.1],'String','Pause Acquisition','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','pb_pause','Callback','pb_pause_callback(handles)',"callback_type",12)
handles.pb_start=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.7372436,0.1585941,0.2202564,0.0634921],'Relief','default','SliderStep',[0.01,0.1],'String','Start Acquisition','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','pb_start','Callback','pb_start_callback(handles)',"callback_type",12)
handles.pb_saveplot=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.7372436,0.0882993,0.2202564,0.0634921],'Relief','default','SliderStep',[0.01,0.1],'String','Save plot','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','pb_saveplot','Callback','pb_saveplot_callback(handles)',"callback_type",12)
/*handles.pb_reset=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0144231,0.8203591,0.2274247,0.0526568],'Relief','default','SliderStep',[0.01,0.1],'String','Reset Acquisition','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','pb_reset','Callback','pb_reset_callback(handles)',"callback_type",12)*/
handles.ps1=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0561538,0.1657143,0.2026282,0.0507029],'Relief','default','SliderStep',[0.01,0.1],'String','Pressure Sensor In','Style','checkbox','Value',[1],'VerticalAlignment','middle','Visible','on','Tag','ps1','Callback','checkbox_callback(handles)')
handles.ps2=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0561538,0.0923356,0.2026282,0.0507029],'Relief','default','SliderStep',[0.01,0.1],'String','Pressure Sensor Out','Style','checkbox','Value',[1],'VerticalAlignment','middle','Visible','on','Tag','ps2','Callback','ps2_callback(handles)',"callback_type",12)
handles.fs1=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.2712821,0.1657143,0.1926282,0.0507029],'Relief','default','SliderStep',[0.01,0.1],'String','Flow Sensor Out','Style','checkbox','Value',[1],'VerticalAlignment','middle','Visible','on','Tag','fs1','Callback','fs1_callback(handles)',"callback_type",12)
handles.k=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','left','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.2712821,0.0923356,0.1926282,0.0507029],'Relief','default','SliderStep',[0.01,0.1],'String','Permeability','Style','checkbox','Value',[1],'VerticalAlignment','middle','Visible','on','Tag','k','Callback','k_callback(handles)',"callback_type",12)
f.figure_size = [800 600];
f.figure_position = [0 0];
f.visible = "on";
f.figure_name="Real-time Pressure and Flow rate Monitoring and Control";

global sair; global start; global stop; global v; global v1; global t; global n; global h; global dormindo; global k; global pi; global pf; global q; global dp; global v2;
/////////////////////////////////////////////////////////////////////////////

//Abrir porta serial COM13
h = openserial(13,"9600,n,8,1");
cont=1
openExcel();
xls_SetData("A1:I1", ["P_ent/bits" "P_sai/bits" "q_sai/bits" "k_Darcy" "tempo" "P_ent/atm" "P_sai/atm" "q_sai/(cm3/s)" "DELTA_P"]);
i = 2
sp = 0
sair= %f;
while ~sair
stop = %f;
start = %f;  
    while ~stop
    sleep(25)
    end  
  while (~start)
        [n, v, v1, v2, t] = msscanf(readserial(h),"S:%d S1:%d S2:%d T:%d\n");
       //conversor bits to volts
       pi = ((5*v)/1023)    //psig//*0.068046; //atm
       pf = ((5*v1)/1023)   //psig//*0.068046; //atm
       q = ((v2*1000)/1003)     //mL/min//*0.01667; //cm^3/s
       dp = pi - pf;
       k = ((q*viscdec*compdec)/((pi - pf)*areadec))*(0.245)   //Darcy; (pdf explica conversao da formula)
        
        if(n>0) then
        printf("V1 = %d  V2 = %d V3 = %d k = %d T = %d pi = %d pf = %d q = %d dp = %d\n", v, v1, v2, k, t, pi, pf, q, dp);
        
        x(cont)=t
        p1(cont)=pi
        p2(cont)=pf
        q1(cont)=q
        kd(cont)=k
end 

if %t
    
    subplot(321)
    plot(x,p1,"green")
    plot(x,p2)
    xlabel("time(milliseconds)", "fontsize", 2)
    ylabel("Pressure (Psig)", "fontsize", 2)
    legend(["Pressure Input"],["Pressure Output"],2)
    xgrid(1,1,7)

    subplot(322)
    plot(x,q1)
    xlabel("time(milliseconds)", "fontsize", 2)
    ylabel("Flow rate (mL/min)", "fontsize", 2)
    xgrid(1,1,7)
    
    subplot(312)
    plot(x,kd)
    xlabel("time(milliseconds)", "fontsize", 2)
    ylabel("Permeability (Darcy)", "fontsize", 2)
    xgrid(1,1,7)
    
    end            
       cont = cont +1

       
//Salvando dados no excel
if %t
    write_Excel(i,v,v1,v2,k,t,pi,pf,q,dp);
    i = i+1
end

//salvando gráficos
if sp == 1
a = clock()
nome1 = "Resultadograf";
graf = nome1+"_"+string(a(1))+"_"+string(a(2))+"_"+string(a(3))+"_"+string(a(4))+"_"+string(a(5))+".sce";
xs2png(0,graf);
sp = 0
end

end
end

closeExcel();
closeserial(h);

//        figure(3)
//        xtitle("dp x k"); plot2d([dp],[k])
//        figure (4)
//        xtitle("q x k"); plot2d([q],[k])
//        figure(5)
//        xtitle("q x dp"); plot2d([q],[dp])
//        Salvando o gráfico
//        xs2png(0,graf);
