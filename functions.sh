#
# A collection of useful functions.
#

#
# Reset OS X's 'Open with...' dialog.
#
function resetOpenWith {
    /System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user

    killall Finder
}
