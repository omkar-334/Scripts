Attribute VB_Name = "Module1"
Function CountCellsByColor(rng As Range, content As String, N As Long) As Long
    Dim cell As Range
    Dim count As Long
    
    count = 0
    R = N Mod 256
    G = Int(N / 256) Mod 256
    B = Int(N / 256 / 256) Mod 256
    For Each cell In rng
        If cell.Interior.Color = RGB(R, G, B) And cell.Value = content Then
            count = count + 1
        End If
    Next cell
    
    CountCellsByColor = count
End Function
Function FillColor(Target As Range) As Variant
    FillColor = Target.Interior.Color
End Function
