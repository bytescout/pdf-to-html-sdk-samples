'*******************************************************************************************'
'                                                                                           '
' Download Free Evaluation Version From:     https://bytescout.com/download/web-installer   '
'                                                                                           '
' Also available as Web API! Free Trial Sign Up: https://secure.bytescout.com/users/sign_up '
'                                                                                           '
' Copyright © 2017-2018 ByteScout Inc. All rights reserved.                                 '
' http://www.bytescout.com                                                                  '
'                                                                                           '
'*******************************************************************************************'


' Create Bytescout.PDF2HTML.HTMLExtractor object
Set extractor = CreateObject("Bytescout.PDF2HTML.HTMLExtractor")
extractor.RegistrationName = "demo"
extractor.RegistrationKey = "demo"

' Set HTML with CSS extraction mode
extractor.ExtractionMode = 1

' set output width to 200 pixels
extractor.OutputPageWidth = 200


' Load sample PDF document
extractor.LoadDocumentFromFile("..\..\sample2.pdf")

' Save extracted HTML to file
extractor.SaveHtmlToFile("output.html")

' Open output file in default associated application
Set shell = CreateObject("WScript.Shell")
shell.Run "output.html", 1, false
Set shell = Nothing

Set extractor = Nothing

