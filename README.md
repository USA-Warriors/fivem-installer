# fivem-installer
FiveM Installer for Ubuntu 20.04

#This script includes the following options:

-d or --dir: Specifies the directory where FiveM should be installed. The default value is ~/fivem.
-n or --no-deps: Skips the installation of dependencies. The default value is true, which means that the dependencies will be installed.

To use these options, pass them as command line arguments when running the script. For example, to install FiveM in the /opt/fivem directory without installing the dependencies, you would run the script like this:

#./install-fivem.sh -d /opt/fivem -n

The script also includes error handling to check for any errors that may occur during the installation process. If an error is encountered, the script will display an error message and exit with a non-zero exit code.

Please note that this script is intended for use on a fresh installation of Ubuntu 20.04, and may not work on other operating systems or versions of Ubuntu.

Also, please make sure to read the documentation for FiveM and follow any additional steps that may be necessary for setting up and configuring the software.
