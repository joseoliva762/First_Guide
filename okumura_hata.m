 function varargout = okumura_hata(varargin)
% OKUMURA_HATA MATLAB code for okumura_hata.fig

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @okumura_hata_OpeningFcn, ...
                   'gui_OutputFcn',  @okumura_hata_OutputFcn, ...
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

% --- Executes just before okumura_hata is made visible.
function okumura_hata_OpeningFcn(hObject, eventdata, handles, varargin)
% Choose default command line output for okumura_hata
handles.output = hObject;
% Update handles structure
guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = okumura_hata_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
frecuencia = get(hObject,'String');
% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
htx = get(hObject,'String');

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double
% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
hmx = get(hObject,'String');

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double
% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
distancia = get(hObject,'String');

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double
% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
   estado = get(hObject,'Value');
   if(estado == 3)
       set(handles.popupmenu3,'Enable','OFF');
       set(handles.text10,'Enable','OFF');
   else
       set(handles.popupmenu3,'Enable','ON');
       set(handles.text10,'Enable','ON');
   end
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2
% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
   metodos = get(hObject,'String');
    estado = get(hObject,'Value');
    select = metodos(estado); 
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3
% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
frecuencia = str2double(get(handles.edit1,'String'));
ht = str2double(get(handles.edit2,'String'));
hm = str2double(get(handles.edit3,'String'));
distancia = str2double(get(handles.edit4,'String'));

tdciudad = get(handles.popupmenu2,'Value');
entorno = get(handles.popupmenu3,'Value');


if(frecuencia >= 150 && frecuencia <= 1500)
    set(handles.edit1,'Backgroundcolor',[0 1 0]);
    akc = 0;
else
    set(handles.edit1,'Backgroundcolor',[1 0 0]);
    akc = 1;
end
if(ht >= 30 && ht <= 200)
    set(handles.edit2,'Backgroundcolor',[0 1 0]);
    ack2 = 0;
else
    set(handles.edit2,'Backgroundcolor',[1 0 0]);
    ack2 = 1;
end
if(hm >= 1 && hm <= 10)
    set(handles.edit3,'Backgroundcolor',[0 1 0]);
    ack3 = 0;
else
    set(handles.edit3,'Backgroundcolor',[1 0 0]);
    ack3 = 1;
end
if(distancia >= 1 && distancia <= 20)
    set(handles.edit4,'Backgroundcolor',[0 1 0]);
    ack4 = 0;
else
    set(handles.edit4,'Backgroundcolor',[1 0 0]);
    ack4 = 1;
end
%%calculo.
if (ack4 == 0 && ack3 == 0 && ack2 == 0 && akc == 0)
    set(handles.text12,'String','ACCESS');
    if((get(handles.popupmenu2,'Value')) == 2)
        ahm = ((1.1.*log10(frecuencia)-0.7).*hm)- (1.56.*log10(frecuencia)-0.8);
    elseif((get(handles.popupmenu2,'Value')) == 3)
        if(frecuencia <= 200)
           ahm = (8.29.*(log10(1.54.*hm))^2) - 1.1;
        else
           ahm = (3.2.*(log10(11.75.*hm))^2) - 4.97;
        end
    else
        ahm = 0;
    end
    lb = 69.55 + (26.16.*log10(frecuencia)) - (13.82.*log10(ht))  - ahm + ((44.9 - 6.55.*log10(ht)).*log10(distancia));
    if(get(handles.popupmenu2,'Value') ~= 3) 
        if(entorno == 3)
            lbs = lb - 2.*(log10(frecuencia/28))^2 - 5.4;
            lb = lbs;
        elseif(entorno == 4)
                lbr = lb - 4.78.*(log10(frecuencia))^2 + 18.33.*log10(frecuencia) - 40.9;
                lb = lbr;
        end
    end
    
    set(handles.text12,'String',lb);
    if(entorno == 1 && tdciudad ~=3)
       set(handles.text12,'String','ERROR');
       set(handles.popupmenu3,'Backgroundcolor',[1 0 0]);
    else
        set(handles.popupmenu3,'Backgroundcolor',[0.15 0.15 0.15]);
    end
else
    set(handles.text12,'String','ERROR');
end
    


% --- Executes during object creation, after setting all properties.
function text12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text12 (see GCBO)


% --- Executes during object creation, after setting all properties.
function text10_CreateFcn(hObject, eventdata, handles)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
index();