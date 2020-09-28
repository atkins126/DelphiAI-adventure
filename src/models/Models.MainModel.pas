unit Models.MainModel;

interface

uses
  System.SysUtils, System.Classes, Vcl.Graphics, System.Types;

type
  TBaseShape = class
  private
    FBrushColor: TColor;
    FPenColor: TColor;
    FPenSize: Integer;
    procedure SetPenSize(const Value: Integer);
    procedure SetPenColor(const Value: TColor);
    procedure SetBrushColor(const Value: TColor);
    procedure SetBottom(const Value: Integer);
    procedure SetLeft(const Value: Integer);
    procedure SetRight(const Value: Integer);
    procedure SetTop(const Value: Integer);
  protected
    FRect: TRect;
  public
    procedure Paint(ACanvas: TCanvas); virtual;
  published
    property PenSize: Integer read FPenSize write SetPenSize;
    property PenColor: TColor read FPenColor write SetPenColor;
    property BrushColor: TColor read FBrushColor write SetBrushColor;
    property Left: Integer write SetLeft;
    property Right: Integer write SetRight;
    property Top: Integer write SetTop;
    property Bottom: Integer write SetBottom;
    property Rect: TRect read FRect;
  end;  // TBaseShape

  TEllipseShape = class (TBaseShape)
    procedure Paint(ACanvas: TCanvas); override;
  end;

  TRectShape = class (TBaseShape)
    procedure Paint(ACanvas: TCanvas); override;
  end;

  TMainModel = class(TDataModule)
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  MainModel: TMainModel;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TBaseShape }

procedure TBaseShape.Paint(ACanvas: TCanvas);
begin
  with ACanvas do begin
    Pen.Color := FPenColor;
    Pen.Width := FPenSize;
    Brush.Color := FBrushColor;
  end;
end;

procedure TBaseShape.SetBottom(const Value: Integer);
begin

end;

procedure TBaseShape.SetBrushColor(const Value: TColor);
begin
  FBrushColor := Value;
end;

procedure TBaseShape.SetLeft(const Value: Integer);
begin

end;

procedure TBaseShape.SetPenColor(const Value: TColor);
begin
  FPenColor := Value;
end;

procedure TBaseShape.SetPenSize(const Value: Integer);
begin
  FPenSize := Value;
end;

procedure TBaseShape.SetRight(const Value: Integer);
begin

end;

procedure TBaseShape.SetTop(const Value: Integer);
begin

end;

{ TEllipseShape }

procedure TEllipseShape.Paint(ACanvas: TCanvas);
begin
  inherited;
  ACanvas.Ellipse(FRect.Left, FRect.Top, FRect.Right, FRect.Bottom);
end;

{ TRectShape }

procedure TRectShape.Paint(ACanvas: TCanvas);
begin
  inherited Paint(ACanvas);
  ACanvas.Rectangle(FRect.Left, FRect.Top, FRect.Right, FRect.Bottom);
end;

end.
