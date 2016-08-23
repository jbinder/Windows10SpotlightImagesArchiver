# Windows 10 Spotlight Images Archiver
Archives Windows 10 spotlight images to a local directory.

## Requirements

* Windows 10
* Git for Windows, https://git-scm.com/download

  Select 'Use Git and optional Unix tools from the Windows Command Prompt' when the installer asks for 'Adjusting your PATH environment'

## Usage

To copy spotlight images from the cache to your account's Pictures/Windows10SpotlightImages directory, just run:

        w10sia.bat

### Automatically run daily

To schedule the archiver to execute daily, run:

        install.bat

To stop running the archiver, call:

        uninstall.bat
