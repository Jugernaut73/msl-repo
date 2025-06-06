^!w:: {
    path := A_Clipboard
    if RegExMatch(path, "^[A-Za-z]:\\") {
        drive := SubStr(path, 1, 1)
        path := StrReplace(SubStr(path, 3), "\", "/")
        newPath := "/mnt/" . StrLower(drive) . "/" . path
        A_Clipboard := newPath
    }
}
