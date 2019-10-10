function varargout = hata_COST_231(varargin)
% HATA_COST_231 MATLAB code for hata_COST_231.fig
%      HATA_COST_231, by itself, creates a new HATA_COST_231 or raises the existing
%      singleton*.
%
%      H = HATA_COST_231 returns the handle to a new HATA_COST_231 or the handle to
%      the existing singleton*.
%
%      HATA_COST_231('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HATA_COST_231.M with the given input arguments.
%
%      HATA_COST_231('Property','Value',...) creates a new HATA_COST_231 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before hata_COST_231_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to hata_COST_231_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help hata_COST_231

% Last Modified by GUIDE v2.5 07-Apr-2019 23:01:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @hata_COST_231_OpeningFcn, ...
                   'gui_OutputFcn',  @hata_COST_231_OutputFcn, ...
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


% --- Executes just before hata_COST_231 is made visible.
function hata_COST_231_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
% Update handles structure
guidata(hObject, handles);

function varargout = hata_COST_231_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;



function frecuencia_Callback(hObject, eventdata, handles)

function frecuencia_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Tx_Callback(hObject, eventdata, handles)

function Tx_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Rx_Callback(hObject, eventdata, handles)

function Rx_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function distancia_Callback(hObject, eventdata, handles)

function distancia_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in tdcity.
function tdcity_Callback(hObject, eventdata, handles)

function tdcity_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in entorno.
function entorno_Callback(hObject, eventdata, handles)

function entorno_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function resultado_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function resultado_CreateFcn(hObject, eventdata, handles)


% --- Executes on button press in calcular.
function calcular_Callback(hObject, eventdata, handles)
    frecuencia = str2double(get(handles.frecuencia,'String'));
    ht = str2double(get(handles.Tx,'String'));
    hm = str2double(get(handles.Rx,'String'));
    distancia = str2double(get(handles.distancia,'String'));

    tdciudad = get(handles.tdcity,'Value');
    entorno = get(handles.entorno,'Value');


if(frecuencia >= 1500 && frecuencia <= 2000)
    set(handles.frecuencia,'Backgroundcolor',[0 1 0]);
    akc = 0;
else
    set(handles.frecuencia,'Backgroundcolor',[1 0 0]);
    akc = 1;
end
if(ht >= 30 && ht <= 200)
    set(handles.Tx,'Backgroundcolor',[0 1 0]);
    ack2 = 0;
else
    set(handles.Tx,'Backgroundcolor',[1 0 0]);
    ack2 = 1;
end
if(hm >= 1 && hm <= 10)
    set(handles.Rx,'Backgroundcolor',[0 1 0]);
    ack3 = 0;
else
    set(handles.Rx,'Backgroundcolor',[1 0 0]);
    ack3 = 1;
end
if(distancia >= 1 && distancia <= 20)
    set(handles.distancia,'Backgroundcolor',[0 1 0]);
    ack4 = 0;
else
    set(handles.distancia,'Backgroundcolor',[1 0 0]);
    ack4 = 1;
end
%%calculo.
if (ack4 == 0 && ack3 == 0 && ack2 == 0 && akc == 0)
    set(handles.resultado,'String','ACCESS');
    Cm = 0;
    if(tdciudad == 2)
        ahm = ((1.1.*log10(frecuencia)-0.7).*hm)- (1.56.*log10(frecuencia)-0.8);
        Cm = 0;
    elseif(tdciudad == 3)
        Cm = 3;
        if(frecuencia <= 200)
           ahm = (8.29.*(log10(1.54.*hm))^2) - 1.1;
        else
           ahm = (3.2.*(log10(11.75.*hm))^2) - 4.97;
        end
    else
        ahm = 0;
    end
    lb = 46.3 + (33.9.*log10(frecuencia)) - (13.82.*log10(ht))  - ahm + ((44.9 - 6.55.*log10(ht)).*log10(distancia)) + Cm;
    if(get(handles.tdcity,'Value') ~= 3) 
        if(entorno == 3)
            lbs = lb - 2.*(log10(frecuencia/28))^2 - 5.4;
            lb = lbs;
        elseif(entorno == 4)
                lbr = lb - 4.78.*(log10(frecuencia))^2 + 18.33.*log10(frecuencia) - 40.9;
                lb = lbr;
        end
    end
    set(handles.resultado,'String',lb);
else
    set(handles.resultado,'String','ERROR');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
index();
