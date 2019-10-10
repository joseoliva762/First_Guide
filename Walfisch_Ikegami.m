function varargout = Walfisch_Ikegami(varargin)
% WALFISCH_IKEGAMI MATLAB code for Walfisch_Ikegami.fig
%      WALFISCH_IKEGAMI, by itself, creates a new WALFISCH_IKEGAMI or raises the existing
%      singleton*.
%
%      H = WALFISCH_IKEGAMI returns the handle to a new WALFISCH_IKEGAMI or the handle to
%      the existing singleton*.
%
%      WALFISCH_IKEGAMI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WALFISCH_IKEGAMI.M with the given input arguments.
%
%      WALFISCH_IKEGAMI('Property','Value',...) creates a new WALFISCH_IKEGAMI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Walfisch_Ikegami_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Walfisch_Ikegami_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Walfisch_Ikegami

% Last Modified by GUIDE v2.5 07-Apr-2019 22:54:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Walfisch_Ikegami_OpeningFcn, ...
                   'gui_OutputFcn',  @Walfisch_Ikegami_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Walfisch_Ikegami is made visible.
function Walfisch_Ikegami_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Walfisch_Ikegami (see VARARGIN)

% Choose default command line output for Walfisch_Ikegami
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Walfisch_Ikegami wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Walfisch_Ikegami_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

% --- Executes on selection change in tdcity.
function tdcity_Callback(hObject, eventdata, handles)
% --- Executes during object creation, after setting all properties.
function tdcity_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in visibilidad.
function visibilidad_Callback(hObject, eventdata, handles)
    visibilidad = get(hObject,'Value');
    if(visibilidad == 3)
        set(handles.separacion,'Enable','OFF');
        set(handles.angulo,'Enable','OFF');
        set(handles.Rx,'Enable','OFF');
        set(handles.hmedio,'Enable','OFF');
        set(handles.hb,'Enable','OFF');
        set(handles.ancho,'Enable','OFF');
        set(handles.tdcity,'Enable','OFF');
    else
        set(handles.tdcity,'Enable','ON');
        set(handles.separacion,'Enable','ON');
        set(handles.angulo,'Enable','ON');
        set(handles.Rx,'Enable','ON');
        set(handles.hmedio,'Enable','ON');
        set(handles.hb,'Enable','ON');
        set(handles.ancho,'Enable','ON');
    end
% --- Executes during object creation, after setting all properties.
function visibilidad_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function frecuencia_Callback(hObject, eventdata, handles)
% --- Executes during object creation, after setting all properties.
function frecuencia_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function distancia_Callback(hObject, eventdata, handles)
% --- Executes during object creation, after setting all properties.
function distancia_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function separacion_Callback(hObject, eventdata, handles)
% --- Executes during object creation, after setting all properties.
function separacion_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function angulo_Callback(hObject, eventdata, handles)
% --- Executes during object creation, after setting all properties.
function angulo_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Rx_Callback(hObject, eventdata, handles)
% --- Executes during object creation, after setting all properties.
function Rx_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function hmedio_Callback(hObject, eventdata, handles)
% --- Executes during object creation, after setting all properties.
function hmedio_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function hb_Callback(hObject, eventdata, handles)
% --- Executes during object creation, after setting all properties.
function hb_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function ancho_Callback(hObject, eventdata, handles)
% --- Executes during object creation, after setting all properties.
function ancho_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
    %set(handles.warning,'Visible','OFF');
    
    frecuencia = str2double(get(handles.frecuencia,'String'));
    sep = str2double(get(handles.separacion,'String'));
    angulo = str2double(get(handles.angulo,'String'));
    distancia = str2double(get(handles.distancia,'String'));
    hm = str2double(get(handles.Rx,'String'));
    hr = str2double(get(handles.hmedio,'String'));
    hb = str2double(get(handles.hb,'String'));  
    w = str2double(get(handles.ancho,'String'));

    tdciudad = get(handles.tdcity,'Value');
    visibilidad = get(handles.visibilidad,'Value');
    
    if(frecuencia >= 900 && frecuencia <= 1800)
        set(handles.frecuencia,'Backgroundcolor',[1 1 1]);
    else
        set(handles.frecuencia,'Backgroundcolor',[0.83 0.33 0.1]);
    end
    if(distancia >= 0.01 && distancia <= 30)
        set(handles.distancia,'Backgroundcolor',[1 1 1]);
        set(handles.warning,'Visible','OFF');
    else
        set(handles.distancia,'Backgroundcolor',[0.83 0.33 0.1]);
        set(handles.warning,'Visible','ON');
    end
    if(hb>hr)
        set(handles.hb,'Backgroundcolor',[1 1 1]);
        set(handles.hmedio,'Backgroundcolor',[1 1 1]);
        set(handles.warning,'Visible','OFF');
    else
        set(handles.hb,'Backgroundcolor',[0.83 0.33 0.1]);
        set(handles.hmedio,'Backgroundcolor',[0.83 0.33 0.1]);
        set(handles.warning,'Visible','ON');
    end
    if(visibilidad == 3)
        if(distancia >=0.02)
            set(handles.warning,'Visible','OFF');
            set(handles.distancia,'Backgroundcolor',[1 1 1]);
            lb = 42.6 + 26.*log10(distancia) +20.*log10(frecuencia);
            set(handles.lb,'String',lb);
        else
            set(handles.warning,'Visible','ON');
            set(handles.lb,'String','ERROR');
            %lb = 42.6 + 26.*log10(distancia) +20.*log10(frecuencia);
            %set(handles.lb,'String',lb);
            set(handles.distancia,'Backgroundcolor',[0.85 0.33 0.1]);
        end
    elseif(visibilidad == 2)
        lbf = 32.4 + 20.*log10(frecuencia) +20.* log10(distancia);
        set(handles.lbf,'String',lbf);
        deltah = hr - hm;
        if(angulo >= 0 && angulo <= 35)
            lori = -10 + 0.3571.*angulo;
        elseif(angulo > 35 && angulo <= 55)
            lori = 2.5 + 0.075.*(angulo - 35);
        elseif(angulo > 55 && angulo <= 90)
            lori = 4 - 0.114.*(angulo - 55);
        else
            lori = 0;
        end
        lrts = -16.9 - 10.*log10(w) + 10.*log10(frecuencia) + 20.*log10(deltah) + lori;
        if(lrts < 0)
            set(handles.lrts2,'Visible','ON');
            set(handles.lrts2,'String',lrts);
            set(handles.lrts,'Backgroundcolor',[0.83 0.33 0.1]); 
            lrts = 0;
        else
            set(handles.lrts2,'Visible','OFF');
            set(handles.lrts,'Backgroundcolor',[0.94 0.94 0.94]); 
        end
        set(handles.lrts,'String',lrts);
            
        deltahb = hb - hr;
        if(deltahb >= 0)
            ka = 54;
        elseif(deltahb < 0 && distancia >= 0.5)
            ka = 54 - 0.8.*deltahb;
        elseif(deltahb < 0 && distancia < 0.5)
            ka = 54 - 1.6.*deltahb;
        else
            ka = 0;
        end
        if(deltahb >= 0)
            kd = 10;
        elseif(deltahb < 0)
            kd = 18 - ((15.*deltahb)/hr);
        else
            kd = 0;
        end
        if(tdciudad == 2)
            kf = -4 + 0.7.*((frecuencia/925) - 1);
        elseif(tdciudad == 3)
            kf = -4 + 1.5.*((frecuencia/925) - 1);
        else
            kf = 0;
        end
        
        lbsh = -18.*log10(1 + deltahb);
        lmsd = lbsh + ka + kd.*log10(distancia) + kf.*log10(frecuencia) - 9.*log10(sep);
        if(lmsd < 0)
            set(handles.lmsd2,'Visible','ON');
            set(handles.lmsd2,'String',lrts);
            set(handles.lmsd,'Backgroundcolor',[0.83 0.33 0.1]); 
            lmsd = 0;
        else
            set(handles.lmsd2,'Visible','OFF');
            set(handles.lmsd,'Backgroundcolor',[0.94 0.94 0.94]); 
        end
        set(handles.lmsd,'String',lmsd);
        lb = lbf + lrts + lmsd;
        set(handles.lb,'String',lb);
    end


% --- Executes during object creation, after setting all properties.
function warning_CreateFcn(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function lrts2_CreateFcn(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function lmsd2_CreateFcn(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function lb_CreateFcn(hObject, eventdata, handles)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Walfisch_Ikegami1();


% --- Executes on button press in atras.
function atras_Callback(hObject, eventdata, handles)
% hObject    handle to atras (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
index();
