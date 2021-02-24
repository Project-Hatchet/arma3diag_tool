# Live Config Reloading Tool set Up

##  **Prerequisites**
1. Basic understanding of Arma 3 modding and workflows
2. Arma 3 Tools [Installing Steam ArmA 3 Tools](https://pmc.editing.wiki/doku.php?id=arma3:tools:installing-steam-arma-3-tools)
3. [Mikero's Tools](https://mikero.bytex.digital/Downloads)
4.  Arma 3 Development environment P-Drive correctly set up
       - Follow this [PMC Wiki](https://pmc.editing.wiki/doku.php?id=arma3:tools:setup-p-drive)
5. Arma Development [Branch](https://community.bistudio.com/wiki/Game_Updater_Manual) 

### **Program needed**
1. Link Shell Extension [Authors website](https://schinagl.priv.at/nt/hardlinkshellext/linkshellextension.html)
  - Link Shell Extension (LSE) provides for the creation of Hardlinks, Junctions, Volume Mountpoints, and Symbolic Links, a folder cloning process that utilises Hardlinks or Symbolic Links and a copy process taking care of Junctions, Symbolic Links, and Hardlinks.
  - Link Shell Extension [Extension Download](https://schinagl.priv.at/nt/hardlinkshellext/HardLinkShellExt_X64.exe) to help create Junctions for Window 64 bit

## **Installation**

 1. **Copy following files and folders and place them where __**arma3diag_x64.exe**__ located**
    - Mine is located at C:\Program Files (x86)\Steam\steamapps\common\arma 3 [development]\arma3diag_x64.exe

      1. **01_Live_configs.bat**
      2. **01_config_reloads** (Folder)

 2. Make a shortcut of **01_Live_configs.bat** and place on you desktop rename to **Arma3Diag**
  ### **To change the default image for the shortcut to the diag one**
   1. Find the path to the arma3diag_x64.exe and copy the full path
   2. Arma3Diag and right click on the shortcut that you placed on the desktop and click properties
       - Under the shortcut menu select change icon
       - Under look for icons in this file paste the full path to your arma3diag_x64.exe
       - My full path is C:\Program Files (x86)\Steam\steamapps\common\arma 3 [development]\arma3diag_x64.exe
       - yours may be diffrent and click

# **How to use**
## Use the **Link Shell Extension** tool to make junctions of the Mods you are working on below is an example for the **h-60 mod**

   1. Open !Workshop folder
   2. Left click on the @ace press a right click and select pick link source
   3. Open the 01_config_reloads folder, while inside of it right click and select drop as > and select junction
   4.  You can select multiple folders at once by using ctrl after you select the folder then right clicking and right click and select pick link source
   5. Once @ace, @CBA_A3 , @Hatchet Framework,  @Hatchet H-60 pack are in the 01_config_reloads folder.
   6. All the mods should now be in the correct folder as junctions.
   7. **Important** Remove any **whitespace** from a mods name it and replace them with _ and remove any **special special characters** for mod inside of the 01_config_reloads folder.
   8. Double click on Arma3Diag on desktop and get to work.
   9.  If you need to add or change mods just add/remove them from the 01_config_reloads folder
   10. The -mod peramtier gets written by the batxh script
   11. There are useful sqf commands called  Diag_commands.sqf for the debug
   
## Startup Parameters
1. Windows
    - /HIGH  (Use HIGH priority class.)
2. Arma 
   - -noAsserts (we don't want to be bothered with asserts)
   - -filePatching (Allow the game to load unpacked data. For more info see CMA:DevelopmentSetup)
   - -debug     (Enables more verbose error logging)
   - -nosplash  ( bypass the splash screens on startup of Arma3.)
   - -world=empty   (For faster game loading)
   - -window    (Displays Arma windowed instead of full screen)
   - "-mod=%Mod%" (created off of what is in the /01_config_reloads )
   - 
## Troubleshooting
1. Start arma and make sure its up to date
2. Make sure Steam is running
3. You may get an error by steam asking if you wanted to start arma with theses optional parameters just try again after updating arma.
4. **01_config_reloads.txt** shows all of the mods you are trying to load
for me it showed mods with whitespace and special charters.
- 01_config_reloads\@ace
- 01_config_reloads\@CBA_A3
- 01_config_reloads\@Hatchet Framework - Development Version
- 01_config_reloads\@Hatchet H-60 pack - Development Version
1. **re-Read step 7** How to use and see my mistake now my 01_config_reloads.txt shows
and all my mods are loading
   - 01_config_reloads\@ace
   - 01_config_reloads\@CBA_A3
   - 01_config_reloads\@Hatchet_Framework_Developmen
   - 01_config_reloads\@Hatchet_H-60_pack
  
# References
1. [CMA:DevelopmentSetup](https://community.bistudio.com/wiki/CMA:DevelopmentSetup)
2. [CMB:SimplifyTesting](https://community.bistudio.com/wiki/CMB:SimplifyTesting#Minimal_Addons_Setup)
3. [Game Updater Manual](https://community.bistudio.com/wiki/Game_Updater_Manual)
4. [Arma 3: Startup Parameters](https://community.bistudio.com/wiki/Arma_3:_Startup_Parameters)
5. [diag_mergeConfigFile](diag_mergeConfigFile)
6. [https://community.bohemia.net/wiki/Arma_3:_Diagnostics_Exe]https://community.bohemia.net/wiki/Arma_3:_Diagnostics_Exe
    -  converted into Diag_commands.sqf quick refrence for the debug
7. [START Start a program  .bat](https://ss64.com/nt/start.html)
8. [PMC Editing Wiki](https://pmc.editing.wiki/doku.php?id=arma3:tools:installing-steam-arma-3-tools)
9. [Official Mikero's Tools website!](https://mikero.bytex.digital/)
10. [Buldozer Manual](https://community.bistudio.com/wiki/Buldozer_Manual)
    1.  information on -noAsserts we don't want to be bothered with asserts in Buldozer










