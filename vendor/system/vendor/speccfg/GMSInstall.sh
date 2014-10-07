#!/system/bin/sh
# Copyright (c) 2013, Qualcomm Technologies, Inc. All Rights Reserved.
#
# Qualcomm Technologies Proprietary and Confidential.
#

#
# version 1.1.1
#
exec > "/data/switch_spec/gmsinstall.log"
GmsApk=( \
Music2.apk \
Books.apk \
YouTube.apk \
Street.apk \
Magazines.apk \
Gmail2.apk \
Videos.apk \
Chrome.apk \
Chrome_x86.apk \
ChromeBookmarksSyncAdapter.apk \
Talk.apk \
VideoEditorGoogle.apk \
DeskClockGoogle.apk \
VoiceSearchStub.apk \
FaceLock.apk \
TagGoogle.apk \
Maps_alldpi.apk \
Maps_hdpi.apk \
Maps_mdpi.apk \
Maps_xhdpi.apk \
OneTimeInitializer.apk \
MediaUploader.apk \
SetupWizard.apk \
talkback.apk \
GoogleFeedback.apk \
GooglePartnerSetup.apk \
GoogleBackupTransport.apk \
LatinImeGoogle.apk \
NetworkLocation.apk \
GenieWidget.apk \
LatinImeDictionaryPack.apk \
GoogleContactsSyncAdapter.apk \
GoogleCalendarSyncAdapter.apk \
CalendarGoogle.apk \
BrowserProviderProxy.apk \
GoogleTTS.apk \
GoogleLoginService.apk \
GoogleServicesFramework.apk \
PlusOne.apk \
Velvet.apk \
Phonesky.apk \
GalleryGoogle.apk \
GmsCore.apk )

SystemPath="/system/app"
BackupPath="/system/vendor/app/google"

installSpec()
{
  local spec=$1
  if [ "$spec" != "Default" ]
  then
    for item in ${GmsApk[@]}
    do
      echo "will remove $SystemPath/$item"
      if [ -f "$SystemPath/$item" ]
      then
        sleep 1
        mv "$SystemPath/$item" "$BackupPath/$item"
      fi
    done
  fi
}

uninstallSpec()
{
  local spec=$1
  echo "cur=$spec"
  if [ "$spec" != "Default" ]
  then
    for item in ${GmsApk[@]}
    do
      echo "will bak $BackupPath/$item"
      if [ -f "$BackupPath/$item" ]
      then
        mv "$BackupPath/$item" "$SystemPath/$item"
      fi
    done
  fi
}

mkdir -p $BackupPath

if [ "$#" -eq "2" ]
then
  if [ "$2" == "install" ]
  then
    installSpec "$1"
  else
    uninstallSpec "$1"
  fi
fi
