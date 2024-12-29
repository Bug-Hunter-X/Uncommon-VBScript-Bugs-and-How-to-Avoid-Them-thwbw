Late Binding: VBScript allows late binding, meaning that you don't have to explicitly declare the object type before using it.  This can lead to runtime errors if the object isn't available or doesn't support the method or property you're trying to access.  For example, trying to use a method on an object that hasn't been properly initialized will throw an error.

```vbscript
Dim objFSO
Set objFSO = CreateObject("Scripting.FileSystemObject")

'Error if CreateObject fails
Set objFile = objFSO.CreateTextFile("myFile.txt", True)
'This line will error if CreateObject("Scripting.FileSystemObject") failed.
```

Implicit Type Conversion: VBScript performs implicit type conversions, which can sometimes lead to unexpected results. For instance, comparing a string to a number might not behave as expected.

```vbscript
if "10" = 10 then
  MsgBox "Equal"
else
  MsgBox "Not Equal"
end if
'This will output "Not Equal"
```

Error Handling: VBScript's error handling mechanism (On Error Resume Next) can mask errors, making it difficult to identify the root cause of a problem. While it can prevent a script from crashing, it's crucial to use it judiciously and implement proper error checking.

```vbscript
On Error Resume Next
Set objFile = objFSO.OpenTextFile("nonExistentFile.txt")
If Err.Number <> 0 Then
  MsgBox "Error opening file: " & Err.Description
end if
```