function varargout = walfish_bertoni(varargin)
% WALFISH_BERTONI MATLAB code for walfish_bertoni.fig
%      WALFISH_BERTONI, by itself, creates a new WALFISH_BERTONI or raises the existing
%      singleton*.
%
%      H = WALFISH_BERTONI returns the handle to a new WALFISH_BERTONI or the handle to
%      the existing singleton*.
%
%      WALFISH_BERTONI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WALFISH_BERTONI.M with the given input arguments.
%
%      WALFISH_BERTONI('Property','Value',...) creates a new WALFISH_BERTONI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before walfish_bertoni_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to walfish_bertoni_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help walfish_bertoni

% Last Modified by GUIDE v2.5 07-Apr-2019 23:06:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @walfish_bertoni_OpeningFcn, ...
                   'gui_OutputFcn',  @walfish_bertoni_OutputFcn, ...
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


% --- Executes just before walfish_bertoni is made visible.
function walfish_bertoni_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to walfish_bertoni (see VARARGIN)

% Choose default command line output for walfish_bertoni
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes walfish_bertoni wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = walfish_bertoni_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)

function popupmenu1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function frecuencia_Callback(hObject, eventdata, handles)

function frecuencia_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sem_Callback(hObject, eventdata, handles)

function sem_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Tx_Callback(hObject, eventdata, handles)



% --- Executes during object creation, after setting all properties.
function Tx_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function altm_Callback(hObject, eventdata, handles)

function altm_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Rx_Callback(hObject, eventdata, handles)

function Rx_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function diee_Callback(hObject, eventdata, handles)

function diee_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
    frecuencia = str2double(get(handles.frecuencia,'String'));
    distancia = str2double(get(handles.sem,'String'));
    H = str2double(get(handles.Tx,'String'));
    h = str2double(get(handles.altm,'String'));
    b = str2double(get(handles.diee,'String'));
    hm = str2double(get(handles.Rx,'String'));

	xSelect = get(handles.popupmenu1,'Value');
    deltah = h - hm;
    %%A = (5.*log10(((b/2)^2) + ((deltah)^2))) - (9.*log10(b)) + (20.*log10(atan((2.*deltah)/b)))
    A = (5.*log10(((b/2)^2)+(deltah)^2)) - (9.*log10(b)) + (20.*log10(atan((2.*deltah)/2)))
    switch xSelect
        case 1
            set(handles.resultado,'String','ERROR.');
            set(handles.resultado,'Backgroundcolor',[1 0 0]);
            set(handles.popupmenu1,'Backgroundcolor', [1 0 0]);
        case 2
            lb = 57.1 + A + log10(frecuencia) + (18.*log10(distancia)) - (18.*log10(H)) - (18.*log10(1-((distancia^2)/(17*H)))); 
            set(handles.resultado,'String',lb);
            set(handles.resultado,'Backgroundcolor',[0 1 0]);
            set(handles.popupmenu1,'Backgroundcolor', [0.15 0.15 0.15]);
        case 3 
            lb = 89.55 + A + 21.*log10(frecuencia) + (38.*log10(distancia)) - (18.*log10(H)) - (18.*log10(1-((distancia^2)/(17*H)))); 
            set(handles.resultado,'String',lb);
            set(handles.resultado,'Backgroundcolor',[0 1 0]);
            set(handles.popupmenu1,'Backgroundcolor', [0.15 0.15 0.15]);
    end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
%texto=get(handles.pushbutton2,'String');
Walfisch_Bertoni1();


% --- Executes on button press in atras.
function atras_Callback(hObject, eventdata, handles)
index();