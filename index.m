function varargout = index(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @index_OpeningFcn, ...
                   'gui_OutputFcn',  @index_OutputFcn, ...
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

% --- Executes just before index is made visible.
function index_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = index_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
    estado = get(hObject,'Value');
    switch estado
        case 1
            set(handles.info,'String', 'Informacion Preliminar.');
        case 2
            set(handles.info,'String', 'Este modelo es bueno si la altura del transmisor es elevada, de modo que en el receptor sólo influyan los edificios próximos al móvil, porque el modelo no considera los edificios no próximos al móvil.');
        case 3
            set(handles.info,'String', 'Considera una estructura ideal de las ciudades: Altura uniforme de los edificios, Orientación de las calles, Frecuencia de propagación, Altura del transmisor y el receptor.');
        case 4
            set(handles.info,'String', 'Se consideran los siguientes parámetros: H, altura Tx sobre edificios próximos. h, altura media de edificios. b, separación entre edificios. hm, altura antena móvil. d, distancia entre Tx y Rx');
        case 5
            set(handles.info,'String', 'Para alcanzar frecuencias mas altas, el grupo COST 231 extiende la fórmula de Hata.');
        case 6
            set(handles.info,'String', 'La geometría del problema se plantea de la misma manera que en el caso de Walfisch, pero con la intervención de los parámetros ? y W del modelo de Ikegami; es decir, la dirección de propagación en relación con la calle y el ancho de la calle.');
    end


    

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on key press with focus on popupmenu1 and none of its controls.
function popupmenu1_KeyPressFcn(hObject, eventdata, handles)



% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
    color = get(hObject, 'Backgroundcolor');
    select = get(handles.popupmenu1,'Value');
    switch(select)
        case 2
            okumura_hata();
        case 3
            ikegami();
        case 4
            walfish_bertoni();
        case 5
            hata_COST_231();
        case 6
            Walfisch_Ikegami();
    end


% --- Executes during object creation, after setting all properties.
function info_CreateFcn(hObject, eventdata, handles)
    


% --- Executes on button press in text4.
function text4_Callback(hObject, eventdata, handles)
% hObject    handle to text4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Guide_JHC();
