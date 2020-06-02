Alt::Ctrl
Ctrl::Alt

; [Alt+Tab]的可选方案:
	;^Tab::!Tab				;不能及时关闭AltTab界面
	;^Tab::Send !{Tab}		;只能在两个App间极速切换
	;LWin & Tab::AltTab		;习惯改变成Windows键
	;^Tab::Send #{Tab}		;将Alt+Tab映射成Win+Tab功能
LWin & Tab::AltTab
^Tab::Send #{Tab}

