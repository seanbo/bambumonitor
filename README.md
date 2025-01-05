# bambumonitor
DOS Batch files and Microsoft Power Automate scripts I use to monitor my Bambu Lab 3D printer

# Requirements
Bambu Studio
Microsoft Power Automate
FFPlay (part of FFMpeg package)

# External Links
TP-Link Tapo C110 (not an affiliate link): https://www.amazon.com/TP-Link-Tapo-Security-Detection-C110/dp/B09YL5G1Y8/  
FFMpeg: https://www.ffmpeg.org/download.html  
Bambu Studio: https://github.com/bambulab/BambuStudio  
Microsoft Power Automate: https://learn.microsoft.com/en-us/power-automate/desktop-flows/install  


# Instructions
**These instruction are based on a TP-Link Tapo camera but should work for any camera that provides an rtsp stream.
**For this to work with a TP-Link Tapo camera, you will need to use the Tapo app to create a username and password for your camera under the settings for the camera once you have linked it to the app.

1. Clone this repo  
2. Edit the .bat file in the bat folder.  
   a. Create a folder to save the modified copy of the .bat file and copy it there  
   b. Edit the file in a text editor like notepad or Notepad++ You will need to update the variables camurl, monitordir and monitor file based on your needs  
   c. Save the file  
3. Edit the .txt file in the powerautomate folder.  
   a. Create a folder to save the modified copy of the .txt file and copy it there  
   b. Edit the file in a text editor like notepad or Notepad++ You will need to update thestring in line 1 and line 4 based on your needs  
   c. Save the file  
4. Create Power Automate Flow  
   a. Open Microsoft Power Automate, got to My Flows and add a new flow called "Bambu Monitor" or whatever helps you identify it.  
   b. Go to the modified .txt file in the modified powerautomate file, select all and copy  
   c. Go back to your new flow and press CTRL+V to paste  
   d. Save your flow  
5. Install the ffmpeg package  
6. Execute your bat file and enjoy  
