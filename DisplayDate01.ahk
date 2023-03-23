; ORIGINAL SCRIPT PROVIDED BY: anonymous1184
; MODIFIED BY: PEN

FormatTime, v_Weekday, YYYYMMDD, dddd
FormatTime, v_DateMonth, YYYYMMDD, MMMM
FormatTime, v_DateDay, YYYYMMDD, dd
FormatTime, v_DateYear, YYYYMMDD, yyyy

v_Days := ""
Loop 31
	{
		If (A_Index = v_DateDay)
			v_DateDay := nth(A_Index)
	}

Msgbox % v_Weekday " - " v_DateMonth " " v_DateDay ", " v_DateYear "`n`n"

ExitApp

nth(Day) {
    If (Day > 3 && Day < 21)
        Return Day "th"
    Switch (Mod(Day, 10)) {
        case 1: 	Day .= "st"
        case 2: 	Day .= "nd"
        case 3: 	Day .= "rd"
        default: 	Day .= "th"
    }
    Return Day
}
