[Variables]
@include=#@#SystemVariables.inc
Value=15
XStartPosition=260
YStartPosition=110

[XButtonProperties]
ImageName=#@#Assets\Settings\Exit.png
X=635
Y=15
W=20
H=20
SolidColor=0,0,0,1
LeftMouseUpAction=[!DeactivateConfig]
ImageTint=#OMode#
MouseOverAction=[!ShowMeter ObjectXButton][!Update][!Redraw]
MouseLeaveAction=[!HideMeter ObjectXButton][!Update][!Redraw]

[BigTextProperties]
FontFace=Summer Loving 
FontSize=60
FontColor=#Accent#
StringAlign=Left
AntiAlias=1
X=#XStartPosition#
Y=5
InlineSetting=CharacterSpacing | 1 | 1
InlineSetting2=GradientColor | -90 | #Accent#,255 ; 0.0 | #Accent#,200 ; 0.8 | #Accent#,50 ; 1.0

[IconsStyle]
W=20
X=30
DynamicVariables=1

[MenuStyle]
FontFace=#Font#
FontSize=12
FontColor=#OMode#,200
StringAlign=Left
AntiAlias=1
X=40r
Y=0r
InlineSetting=CharacterSpacing | 0.2 | 0.2
MouseLeaveAction=[!HideMeter ObjectMenuRectangle][!Update][!Redraw]

[SubtitleStyle]
FontColor=#OMode#
FontSize=13
FontFace=#Font#
AntiAlias=1
X=#XStartPosition#
StringAlign=Left

[ButtonStyle]
FontColor=#OMode#
FontSize=11
FontFace=#Font#
AntiAlias=1
StringAlign=Center
ClipString=1

[DescriptionStyle]
FontColor=#OMode#,100
FontSize=9
StringCase=Upper
FontFace=#Font#
AntiAlias=1
StringAlign=Left
InlineSetting=CharacterSpacing | 1 | 1
X=#XStartPosition#

[ShortcutsIconProperties]
Y=(#SCREENAREAHEIGHT# - (#height# + 55*#Mult#))
W=(35*#Mult#)

[MusicPlayerProperties]
X=(25*#Mult#)
W=40