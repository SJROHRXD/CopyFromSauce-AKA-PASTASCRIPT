# PowerShell Script: Copy Solved Folders from Source Repo to Destination Repo AKA 'PASTASCRIPT' 🍝

> ⚠ Warning: This script was written in the early hours of the morning and gets increasingly ...weird.

## Script Details:

The script first prompts the user to enter the path of the source repository, then the path of the destination repository.

Formatting for the paths must be as follows:

    C:\Users\YouProbably\Folder\AnotherFolder\Repository\01-Class-Content\00_Module_Folder\01-Activities

The script uses the Get-ChildItem cmdlet to get a list of all folders in the source repository that contain "Solved" in their name. It excludes folders that contain "Unsolved" in their name. _-was v annoying_

For each folder in the list, the script constructs the path of the corresponding parent folder in the destination repository.

The script uses the Copy-Item cmdlet to copy the "Solved" folder to the destination parent folder.

The script then displays the copied Solved folders with their relative paths.

Finally, the script prompts the user to open the destination folder.

Note: The script uses the Start-Sleep cmdlet to introduce some delays for user readability and experience. _-or maybe I'm just a menace, idk_

## To Use:

1. Download the ZIP and extract to a location on your computer.
2. Open PowerShell / VS Code on your computer and navigate to the directory where the extracted script is located using the "cd" command. Or open the script from Explorer - look, I'm not going to judge you. Only God can judge you. God and whomever you've assigned to clear your Browser History when the inevitable happens.
3. Run the script by typing its filename (e.g., ".\PASTASCRIPT.ps1") and pressing Enter.
4. Follow the prompts in the script to enter the necessary information.
5. Always double-check the Destination Repo upon completion!
6. Report bugs to [me](https://github.com/SJROHRXD)!

Depending on security settings, you may need to change the execution policy for PowerShell scripts to run the script. Run PowerShell as an administrator and typing the following command:

    Set-ExecutionPolicy RemoteSigned.

### Confession:

1. I wanted it to be better.

> I really tried to get the script to compare what Solved folders already existed in the Destination Repo with the Solved folders in the Source Repo, and only copy the Solved folders that weren't present in the Destination Repo...
> However, my brain is broken and couldn't figure out the logic to do this.
> Even though I could run the freakin' comparison between the two...
> Even though I could do just about everything else...
> Whatever, it's fine. I will let it go. 20 hours wasted, but it's fine. I'm not completely devastated and I definetly won't think about this every single night when I'm trying to fall asleep for the rest of my days on this Earth.
> Not me on my deathbed yelling, IT WAS THE IF/ELSE STATEMENT, BUT I NEEDED IT T-
> _flatlines_

2. Why not just copy over the whole 01-Activities Folder? I don't know. You write the script next time.
