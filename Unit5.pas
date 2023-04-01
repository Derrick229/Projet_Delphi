unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Menus, Vcl.ComCtrls, Datasnap.DBClient,Unit1,Character;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    ListBox1: TListBox;
    Memo1: TMemo;
    Memo2: TMemo;
    Button2: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Button3: TButton;
    Button4: TButton;
    CheckBox1: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Memo2Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;
Type
utilisateur=record
  Nom:string;
  MotPasse:string;
  Date,heure:string;
end;

var
  Form5: TForm5;
  user:array[0..10000000] of Utilisateur;
  i,t:integer;
  MonPointeur:^utilisateur;
  //MonFichier: TFileStream;
  Resultat:Boolean;



implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);

begin
//MonFichier := TFileStream.Create('D:\Exercice formation delphi/donner.txt', fmCreate);
Resultat:=VerifierPrenom(Edit1.Text);
if (Edit1.Text = '') or (Edit2.Text = '') then
  begin
    ShowMessage('Veuillez remplir tous les champs du formulaire.');
    Exit
  end

else if Resultat=True then
begin
ShowMessage('Veuillez entrer un prénom correct');
Exit;
end;

//else if user[i]=user[i+1] then
//begin
//ShowMessage('Ce utilisateur est déja inscrit');
//Exit;
//end;

with user[i] do
begin
  Nom:=Edit1.Text;
  MotPasse:=Edit2.Text;
  Date:=DateToStr(Now);
  heure:=TimeToStr(Now);
end;
ListBox1.Items.Add('Utilisateur'+(i+1).ToString+' incrit avec succès');
inc(i);

end;


procedure TForm5.Button2Click(Sender: TObject);
begin
Memo1.Clear;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
ListBox1.clear;
i:=0;

end;

procedure TForm5.Button4Click(Sender: TObject);
begin
Edit1.clear;
Edit2.clear;
end;

procedure TForm5.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked then
    Edit2.PasswordChar := #0
  else
    Edit2.PasswordChar := '*';
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
Memo2.clear;
Memo1.clear;
Memo2.Lines.Add(DateToStr(Now));
Edit2.PasswordChar := '*';
end;

procedure TForm5.ListBox1Click(Sender: TObject);
begin
if ListBox1.ItemIndex >= 0 then
begin
  MonPointeur := @user[ListBox1.ItemIndex];
  Memo1.Lines.Add(#13#9);
  Memo1.Lines.Add('Utilisateur'+' '+IntToStr(ListBox1.ItemIndex + 1));
  Memo1.Lines.Add(#13#9);
  Memo1.Lines.Add('Prénom: '+MonPointeur^.Nom);
  Memo1.Lines.Add(#13#9);
  Memo1.Lines.Add('Mot de Passe: '+MonPointeur^.MotPasse);
  Memo1.Lines.Add(#13#9);
  Memo1.Lines.Add('Inscrit le: '+MonPointeur^.Date+ ' a '+MonPointeur^.heure);
  //AssignFile(MonFichier 'D:\Exercice formation delphi/donner.txt');
end;

end;

procedure TForm5.Memo2Change(Sender: TObject);
begin
Memo2.ReadOnly := True;
end;

end.
