function varargout = Guide_JHC(varargin)
% GUIDE_JHC MATLAB code for Guide_JHC.fig
%      GUIDE_JHC, by itself, creates a new GUIDE_JHC or raises the existing
%      singleton*.
%
%      H = GUIDE_JHC returns the handle to a new GUIDE_JHC or the handle to
%      the existing singleton*.
%
%      GUIDE_JHC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIDE_JHC.M with the given input arguments.
%
%      GUIDE_JHC('Property','Value',...) creates a new GUIDE_JHC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Guide_JHC_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Guide_JHC_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Guide_JHC

% Last Modified by GUIDE v2.5 09-Apr-2019 19:04:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Guide_JHC_OpeningFcn, ...
                   'gui_OutputFcn',  @Guide_JHC_OutputFcn, ...
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


% --- Executes just before Guide_JHC is made visible.
function Guide_JHC_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Guide_JHC (see VARARGIN)

% Choose default command line output for Guide_JHC
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Guide_JHC wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Guide_JHC_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
