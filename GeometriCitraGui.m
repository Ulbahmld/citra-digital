function varargout = GeometriCitraGui(varargin)
%GEOMETRICITRAGUI MATLAB code file for GeometriCitraGui.fig
%      GEOMETRICITRAGUI, by itself, creates a new GEOMETRICITRAGUI or raises the existing
%      singleton*.
%
%      H = GEOMETRICITRAGUI returns the handle to a new GEOMETRICITRAGUI or the handle to
%      the existing singleton*.
%
%      GEOMETRICITRAGUI('Property','Value',...) creates a new GEOMETRICITRAGUI using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to GeometriCitraGui_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      GEOMETRICITRAGUI('CALLBACK') and GEOMETRICITRAGUI('CALLBACK',hObject,...) call the
%      local function named CALLBACK in GEOMETRICITRAGUI.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GeometriCitraGui

% Last Modified by GUIDE v2.5 03-Oct-2021 20:54:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GeometriCitraGui_OpeningFcn, ...
                   'gui_OutputFcn',  @GeometriCitraGui_OutputFcn, ...
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


% --- Executes just before GeometriCitraGui is made visible.
function GeometriCitraGui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for GeometriCitraGui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GeometriCitraGui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GeometriCitraGui_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- PENJUMLAHAN
function pushbutton1_Callback(hObject, eventdata, handles)
global a;
axes(handles.axes3);
imshow(a + 125);


% --- PENGURANGAN
function pushbutton2_Callback(hObject, eventdata, handles)
global a;
axes(handles.axes3);
imshow(a - 90);


% --- PERKALIAN
function pushbutton3_Callback(hObject, eventdata, handles)
global a;
axes(handles.axes3);
imshow(a * 1.5);


% --- PEMBAGIAN
function pushbutton4_Callback(hObject, eventdata, handles)
global a;
axes(handles.axes3);
imshow(a / 2.5);

% --- LOGIKA AND/NAND
function pushbutton5_Callback(hObject, eventdata, handles)
global a;
global b;

axes(handles.axes1);
imshow(a);

axes(handles.axes2);
imshow(b);

m = a;
[kolom, baris] = size(m);

for x = 1 : kolom
    for y = 1 : baris
        if b(x,y) ~= 0
            m(x,y) = b(x,y);
        end
    end
end

axes(handles.axes3);
imshow(m);


% --- LOGIKA OR/NOR
function pushbutton6_Callback(hObject, eventdata, handles)
global a;
global b;
axes(handles.axes1);
imshow(a);
axes(handles.axes2);
imshow(b);

c = a;
[kolom, baris] = size(c);

for x = 1 : kolom
    for y = 1 : baris
        if c(x,y) ~= 0
            c(x,y) = b(x,y);
        end
    end
end

axes(handles.axes3);
imshow(c);

% --- LOGIKA XOR/XNOR
function pushbutton7_Callback(hObject, eventdata, handles)
global a;
global b;

blacknwhite1 = a > 75;
blacknwhite2 = b > 75;

axes(handles.axes1);
imshow(blacknwhite1);

axes(handles.axes2);
imshow(blacknwhite2);

k = blacknwhite1;
[kolom, baris] = size(k);

for x = 1 : kolom
    for y = 1 : baris
        if blacknwhite2(x,y) ~= 0
            if k(x,y) == 0;
                k(x,y) = 1;
            else
                k(x,y) = 0;
            end
        end
    end
end

axes(handles.axes3);
imshow(k);


% --- LOGIKA NOT
function pushbutton8_Callback(hObject, eventdata, handles)
global a;
global b;

blacknwhite1 = a > 100;
blacknwhite2 = b > 100;

axes(handles.axes1);
imshow(blacknwhite1);

axes(handles.axes2);
imshow(blacknwhite2);

n = blacknwhite1;
[kolom, baris] = size(n);

for x = 1 : kolom
    for y = 1 : baris
        if n(x,y) == 0
            n(x,y) = 1;
        else
            n(x,y) = 0;
        end
    end
end

axes(handles.axes3);
imshow(n);

% --- PERSKALAAN
function pushbutton9_Callback(hObject, eventdata,handles)
global a;
global b;

axes(handles.axes1);
imshow(a);
axes(handles.axes2);
imshow(b);

[kolom, baris] = size(a);

Ar = 1;
Ra = 2;
p = zeros(kolom, baris);

for x = 1 : kolom
    for y = 1 : baris
        x2 = x * Ar;
        y2 = y * Ra;
        p(x2, y2) = a(x,y);
    end
end

axes(handles.axes3);
imshow(uint8(p));


% --- REFLEKSI
function pushbutton10_Callback(hObject, eventdata, handles)
global a;
global b;

axes(handles.axes1);
imshow(a);
axes(handles.axes2);
imshow(b);

[kolom, baris] = size(a);
q = zeros(kolom,baris);

for x = 1 : kolom
    for y = 1 : baris 
        x2 = x;
        y2 = baris + 1 - y;
        q(x2,y2) = a(x,y);
    end
end

axes(handles.axes3);
imshow(uint8(q));