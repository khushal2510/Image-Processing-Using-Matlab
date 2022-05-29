function varargout = App2(varargin)
%APP2 MATLAB code file for App2.fig
%      APP2, by itself, creates a new APP2 or raises the existing
%      singleton*.
%
%      H = APP2 returns the handle to a new APP2 or the handle to
%      the existing singleton*.
%
%      APP2('Property','Value',...) creates a new APP2 using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to App2_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      APP2('CALLBACK') and APP2('CALLBACK',hObject,...) call the
%      local function named CALLBACK in APP2.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help App2

% Last Modified by GUIDE v2.5 28-May-2022 08:09:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @App2_OpeningFcn, ...
                   'gui_OutputFcn',  @App2_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before App2 is made visible.
function App2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for App2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes App2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = App2_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in histogram.
function histogram_Callback(hObject, eventdata, handles)
% hObject    handle to histogram (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
ahist=a;
ahist=rgb2gray(ahist);
axes(handles.axes1);
imhist(ahist);

% --- Executes on button press in complementimage.
function complementimage_Callback(hObject, eventdata, handles)
% hObject    handle to complementimage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
acomp=a;
acomp=imcomplement(acomp);
axes(handles.axes1);
imshow(acomp);

% --- Executes on button press in edge.
function edge_Callback(hObject, eventdata, handles)
% hObject    handle to edge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
aedge=a;
aedge=rgb2gray(aedge);
aedge=edge(aedge,'Canny')'
axes(handles.axes1);
imshow(aedge);

% --- Executes on button press in clockwise.
function clockwise_Callback(hObject, eventdata, handles)
% hObject    handle to clockwise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
aclock=a;
aclock=imrotate(aclock,270);
axes(handles.axes1);
imshow(aclock);

% --- Executes on button press in anticlockwise.
function anticlockwise_Callback(hObject, eventdata, handles)
% hObject    handle to anticlockwise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
aclock=a;
aclock=imrotate(aclock,90);
axes(handles.axes1);
imshow(aclock);

% --- Executes on button press in uploadimage.
function uploadimage_Callback(hObject, eventdata, handles)
% hObject    handle to uploadimage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=uigetfile('.jpg')
a=imread(a);
axes(handles.axes1);
imshow(a);
setappdata(0,'a',a)

% --- Executes on button press in rgb2gray.
function rgb2gray_Callback(hObject, eventdata, handles)
% hObject    handle to rgb2gray (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
agray=rgb2gray(a);
axes(handles.axes1);
imshow(agray);

% --- Executes on button press in binaryimage.
function binaryimage_Callback(hObject, eventdata, handles)
% hObject    handle to binaryimage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
abw=im2bw(a);
axes(handles.axes1);
imshow(abw);

% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=getappdata(0,'a');
axes(handles.axes1);
imshow(a);
