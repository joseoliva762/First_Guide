function varargout = ikegami(varargin)
% IKEGAMI MATLAB code for ikegami.fig
%      IKEGAMI, by itself, creates a new IKEGAMI or raises the existing
%      singleton*.
%
%      H = IKEGAMI returns the handle to a new IKEGAMI or the handle to
%      the existing singleton*.
%
%      IKEGAMI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IKEGAMI.M with the given input arguments.
%
%      IKEGAMI('Property','Value',...) creates a new IKEGAMI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ikegami_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ikegami_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ikegami

% Last Modified by GUIDE v2.5 07-Apr-2019 23:03:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ikegami_OpeningFcn, ...
                   'gui_OutputFcn',  @ikegami_OutputFcn, ...
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
function ikegami_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = ikegami_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;



function distancia_Callback(hObject, eventdata, handles)
    set(hObject,'Backgroundcolor',[0.94 0.94 0.94]);

function distancia_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Tx_Callback(hObject, eventdata, handles)
    set(hObject,'Backgroundcolor',[0.94 0.94 0.94]);


% --- Executes during object creation, after setting all properties.
function Tx_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function angulo_Callback(hObject, eventdata, handles)
    set(hObject,'Backgroundcolor',[0.94 0.94 0.94]);

% --- Executes during object creation, after setting all properties.
function angulo_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sep_Callback(hObject, eventdata, handles)
    set(hObject,'Backgroundcolor',[0.94 0.94 0.94]);


% --- Executes during object creation, after setting all properties.
function sep_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Rx_Callback(hObject, eventdata, handles)
    set(hObject,'Backgroundcolor',[0.94 0.94 0.94]);


% --- Executes during object creation, after setting all properties.
function Rx_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function frecuencia_Callback(hObject, eventdata, handles)
    set(hObject,'BackgroundColor',[0.94 0.94 0.94]);


% --- Executes during object creation, after setting all properties.
function frecuencia_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function Show_CreateFcn(hObject, eventdata, handles)

% --- Executes on button press in calcular.
function calcular_Callback(hObject, eventdata, handles)
    frecuencia = str2double(get(handles.frecuencia,'String'));
    H = str2double(get(handles.Tx,'String'));
    hr = str2double(get(handles.Rx,'String'));
    distancia = str2double(get(handles.distancia,'String'));
    angulo = str2double(get(handles.angulo,'String'));
    W = str2double(get(handles.sep,'String'));
    Lr = get(handles.popupmenu1,'Value');
    switch Lr
        case 1
            lr = 0;
        case 2
            lr = 2;
        case 3
            lr = 3.2;
    end
    lb = 26.56 + (30.*log10(frecuencia)) + (20.*log10(distancia)) - (10.*log10(1+(3/lr))) - 10.*log10(W) + (20.*log10(H-hr)) + (10.*log10(sin(angulo)));
    set(handles.Show,'String',lb);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
%texto=get(handles.pushbutton2,'String');
Ikegami1();


% --- Executes on button press in atras.
function atras_Callback(hObject, eventdata, handles)
% hObject    handle to atras (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
index();