#!/system/bin/sh
# Copyright (c) 2013, Qualcomm Technologies, Inc. All Rights Reserved.
#
# Qualcomm Technologies Proprietary and Confidential.
#

#
# version 1.1.1
#

# Author Setting
strNativeVersion="1.1"

# Test Mode
strMode="RELEASE"

# Spec
CurSpec=""
if [ "$#" -eq "0" ]
then
  CurSpec=`getprop persist.env.spec`
  [[ "$CurSpec" == "" ]] && CurSpec="Default"
fi

# Log
strDataFolder="/data/switch_spec"
strLogFile="$strDataFolder/switch_spec.log"
if [ -d $strDataFolder ]
then
  echo "find log file!"
else
  mkdir $strDataFolder
  chmod 770 "$strDataFolder"
  chown system:system "$strDataFolder"
fi
exec >$strLogFile
echo "report: call for $CurSpec"

# Path Setting
strVendorPath="/system/vendor"
strSpecFile="$strVendorPath/speccfg/spec"
strSpecFlag=".preloadspec"

# Spec Setting
strUpdatePath=""

# Run Mode
iBootMode=0
iUpdateMode=1
iSwitchMode=2
iResetMode=3
iRunMode=0

# Environment Setting
export PATH=/sbin:/system/sbin:/system/bin:/system/xbin:$PATH

# Carrier Check
arrCarrier=( )
getAllCarrier()
{
  local lstrCarrier=""
  for carrier in $strVendorPath/*
  do
    if [ -f "$carrier/$strSpecFlag" ]
    then
      lstrCarrier="${carrier:((${#strVendorPath}+1))} $lstrCarrier"
    fi
  done
  arrCarrier=(${lstrCarrier[@]})
  [[ "$strMode" == "DEBUG" ]] && echo "arrCarrier=${arrCarrier[@]}"
}

testCarrier()
{
  local carrier=$1
  if [ -f "$strVendorPath/$carrier/$strSpecFlag" ]
  then
    [[ "$strMode" == "DEBUG" ]] && echo "find $strVendorPath/$carrier/$strSpecFlag"
    return 0
  else
    [[ "$strMode" == "DEBUG" ]] && echo "not find $strVendorPath/$carrier/$strSpecFlag"
    return 1
  fi
}

getAllCarrier

# Parameter Check
printHelp()
{
  echo "switch the carrier"
  echo "Version:  $strNativeVersion"
  echo "Usage:    switch_spec [arguments] [carrier name] [update path]"
  echo "Arguments:"
  echo "    -h   or  --help    print the information"
  echo "    -u   or  --update  cp update path to dest carrier"
  echo "    -s   or  --switch  switch the carrier"
  echo "    -r   or  --reset   reset the persist.env"
  echo "Carrier:"
  echo "    ${arrCarrier[*]}"
  echo "Update Path:"
  echo "    the update path appending the carrier name"
  exit
}

if [ "$#" -gt "0" ]
then
  for param in $*
  do
    if [ "${#param}" -eq "0" ]
    then
      echo "-h"
      iRunMode=$iBootMode
    elif [[ "$param" == "-h" ]] || [[ "$param" == "--help" ]]
    then
      printHelp
    elif [[ "$param" == "-u" ]] || [[ "$param" == "--update" ]]
    then
      iRunMode=$iUpdateMode
    elif [[ "$iRunMode" == "$iUpdateMode" ]]
    then
      strUpdatePath="$param"
    elif [[ "$param" == "-s" ]] || [[ "$param" == "--switch" ]]
    then
      iRunMode=$iSwitchMode
    elif [[ "$iRunMode" == "$iSwitchMode" ]]
    then
      if testCarrier $param
      then
        CurSpec="$param"
      else
        printHelp
      fi
    elif [[ "$param" == "-r" ]] || [[ "$param" == "--reset" ]]
    then
      iRunMode=$iResetMode
    else
      printHelp
    fi
  done
fi

# Function Definition
SocketName="ANDROID_SOCKET_carrier_switcher"
reportFunc()
{
  local strMessage=$1
  echo "$strMessage"
  #eval echo "$strMessage" > &$SocketName
}

iMountModifyFlag=0
iMountEnter=0
strMofifyFlag="mountflag"
mountFunc()
{
  local dstPath=$1
  local isRW=$2
  [[ "$strMode" == "DEBUG" ]] && echo "begin mount $1 $2=>$iMountEnter<=$iMountModifyFlag"
  if [[ "$iMountEnter" -eq "1" ]] && [[ "$iMountModifyFlag" -eq "0" ]]
  then
    iMountEnter=0
    return
  fi
  rm "$strDataFolder/$strMofifyFlag"
  mount | while read line
  do
    local path=${line/* \//\/}
    path=${path/ */}
    [[ "$strMode" == "DEBUG" ]] && echo "mount ${dstPath:0:${#path}} for $path"
    if [[ "$path" != "/" ]] && [[ "${dstPath:0:${#path}}" == "$path" ]]
    then
      if [[ "${dstPath:0:((${#path}+1))}" == "$path " ]] || [[ "${dstPath:0:((${#path}+1))}" == "$path/" ]] || [[ "${#path}" == "${#dstPath}" ]]
      then
        [[ "$strMode" == "DEBUG" ]] && echo "find $dstPath =>${line/ ro/}|${line/ rw/}|$line|$isRW<="
        if [[ "$isRW" == "rw" ]] && [[ "${line/ ro/}" != "$line" ]]
        then
          mount -o remount -rw ${line/ */} $path
          [[ "$strMode" == "DEBUG" ]] && echo "mount -o remount -rw ${line/ */} $path for $dstPath"
          echo "">"$strDataFolder/$strMofifyFlag"
        elif [[ "$isRW" == "ro" ]] && [[ "${line/ rw/}" != "$line" ]]
        then
          mount -o remount -r ${line/ */} $path
          [[ "$strMode" == "DEBUG" ]] && echo "mount -o remount -ro ${line/ */} $path for $dstPath"
          echo "">"$strDataFolder/$strMofifyFlag"
        fi
        break
      fi
    fi
  done
  [[ -f "$strDataFolder/$strMofifyFlag" ]] && iMountModifyFlag=1
  if [ "$iMountEnter" -eq "0" ]
  then
    iMountEnter=1
  else
    iMountEnter=0
    iMountModifyFlag=0
  fi
  [[ "$strMode" == "DEBUG" ]] && echo "end mount $1 $2=>$iMountEnter<=$iMountModifyFlag"
}

strBakForReplace=".bakforspec"

createFolder()
{
  local dirPath=$1
  if [ -d "$dirPath" ]
  then
    echo "Exist $dirPath"
  else
    echo "find ${dirPath%\/${dirPath/*\//}}"
    createFolder "${dirPath%\/${dirPath/*\//}}"
    echo "mkdir $dirPath"
    mkdir "$dirPath"
    echo "chmod 755 $dirPath"
    chmod 755 "$dirPath"
  fi
}

installCommonFunc()
{
  local srcPath=$1
  local dstPath=$2
  local softLink=$3
  local dstDir="${dstPath%\/${dstPath/*\//}}"
  createFolder $dstDir
  if [[ -f $dstPath ]] || [[ -h $dstPath ]]
  then
    mv $dstPath $dstPath$strBakForReplace
  fi
  if [ "$softLink" -eq "0" ]
  then
    ln $srcPath $dstPath
  else
    ln -s $srcPath $dstPath
  fi
}

uninstallCommonFunc()
{
  local srcPath=$1
  local dstPath=$2
  if [[ -f $dstPath$strBakForReplace ]] || [[ -h $dstPath$strBakForReplace ]]
  then
    mv $dstPath$strBakForReplace $dstPath
  else
    rm $dstPath
  fi
}

installApkFunc()
{
  local srcPath=$1
  local dstPath=$2
  if [[ "${dstPath:0:7}" == "/system" ]] || [[ "${dstPath:0:7}" == "/vendor" ]]
  then
    installCommonFunc $srcPath $dstPath 1
  elif [[ "${dstPath:0:5}" == "/data" ]]
  then
    installCommonFunc $srcPath $dstPath 1
  fi
}

uninstallApkFunc()
{
  local srcPath=$1
  local dstPath=$2
  if [[ "${dstPath:0:7}" == "/system" ]] || [[ "${dstPath:0:7}" == "/vendor" ]]
  then
    uninstallCommonFunc $srcPath $dstPath
  elif [[ "${dstPath:0:5}" == "/data" ]]
  then
    uninstallCommonFunc $srcPath $dstPath
  fi
}

installMediaFunc()
{
  local srcPath=$1
  local dstPath=$2
  installCommonFunc $srcPath $dstPath 0
}

uninstallMediaFunc()
{
  local srcPath=$1
  local dstPath=$2
  uninstallCommonFunc $srcPath $dstPath
}

installFunc()
{
  local srcPath=$1
  local dstPath=$2
  if [[ "${srcPath:((${#srcPath}-4)):4}" == ".apk" ]] || [[ "${srcPath:((${#srcPath}-4)):4}" == ".APK" ]]
  then
    installApkFunc $srcPath $dstPath
  elif [ "${dstPath:0:14}" == "/system/media/" ]
  then
    installMediaFunc $srcPath $dstPath
  else
    installCommonFunc $srcPath $dstPath 1
  fi
}

uninstallFunc()
{
  local srcPath=$1
  local dstPath=$2
  if [[ "${srcPath:((${#srcPath}-4)):4}" == ".apk" ]] || [[ "${srcPath:((${#srcPath}-4)):4}" == ".APK" ]]
  then
    uninstallApkFunc $srcPath $dstPath
  elif [ "${dstPath:0:14}" == "/system/media/" ]
  then
    uninstallMediaFunc $srcPath $dstPath
  else
    uninstallCommonFunc $srcPath $dstPath
  fi
}

iSPer=0
iEPer=0
iCur=0
iAll=0
installFolderFunc()
{
  local srcPath=$1
  local dstPath=$2
  for item in $srcPath/*
  do
    if [ -f $item ]
    then
      iSpec=$(($iSPer+$iCur*$iEPer/$iAll-$iCur*$iSPer/$iAll))
      iCur=$(($iCur+1))
      reportFunc "Install $srcPath${item:${#srcPath}} to $dstPath${item:${#srcPath}} ... $iSpec%"
      installFunc "$srcPath${item:${#srcPath}}" "$dstPath${item:${#srcPath}}"
    elif [ -d $item ]
    then
      installFolderFunc "$srcPath${item:${#srcPath}}" "$dstPath${item:${#srcPath}}"
    fi
  done
}

uninstallFolderFunc()
{
  local srcPath=$1
  local dstPath=$2
  for item in $srcPath/*
  do
    if [ -f $item ]
    then
      iSpec=$(($iSPer+$iCur*$iEPer/$iAll-$iCur*$iSPer/$iAll))
      iCur=$(($iCur+1))
      reportFunc "Uninstall $srcPath${item:${#srcPath}} to $dstPath${item:${#srcPath}} ... $iSpec%"
      uninstallFunc "$srcPath${item:${#srcPath}}" "$dstPath${item:${#srcPath}}"
    elif [ -d $item ]
    then
      uninstallFolderFunc "$srcPath${item:${#srcPath}}" "$dstPath${item:${#srcPath}}"
    fi
  done
}

iTotalFile=0
getTotalFileFunc()
{
  local srcPath=$1
  local total=0
  if [ -d $srcPath ]
  then
    for item in $srcPath/*
    do
      if [ -f $item ]
      then
        total=$(($total+1))
      elif [ -d $item ]
      then
        getTotalFileFunc $item
        total=$(($total+$iTotalFile))
      fi
    done
    iTotalFile=$total
  else
    iTotalFile=0
  fi
}

# Command Parser
strDealPercent=0
cmdReport()
{
  local strMessage=$1
  local strPercent=$2
  if [[ "$strPercent" -ge "0" ]] && [[ "$strPercent" -le "100" ]]
  then
    reportFunc "$strMessage ... $strPercent%"
    strDealPercent=$strPercent
  else
    reportFunc "$strMessage"
  fi
}

cmdInstall()
{
  local srcPath="$1/$2"
  local dstPath=$3
  local endPercent=$4
  local startPercent=$strDealPercent
  [[ "$strMode" == "DEBUG" ]] && echo "src:$srcPath dst:$dstPath per:$endPercent"
  mountFunc $dstPath "rw"
  if [ -d "$srcPath" ]
  then
    getTotalFileFunc "$srcPath"
    local iTotal=$iTotalFile
    if [ "$iTotal" -gt "0" ]
    then
      iSPer=$startPercent
      iEPer=$endPercent
      iCur=0
      iAll=$iTotal
      installFolderFunc $srcPath $dstPath
    fi
    cmdReport "Install $srcPath to $dstPath" "$endPercent"
  else
    cmdReport "Install $srcPath to $dstPath" "$endPercent"
    installFunc $srcPath $dstPath
  fi
  mountFunc $dstPath "ro"
}

cmdUninstall()
{
  local srcPath="$1/$2"
  local dstPath=$3
  local endPercent=$4
  local startPercent=$strDealPercent
  mountFunc $dstPath "rw"
  if [ -d "$srcPath" ]
  then
    getTotalFileFunc "$srcPath"
    local iTotal=$iTotalFile
    if [ "$iTotal" -gt "0" ]
    then
      iSPer=$startPercent
      iEPer=$endPercent
      iCur=0
      iAll=$iTotal
      uninstallFolderFunc $srcPath $dstPath
    fi
    cmdReport "Uninstall $srcPath to $dstPath" "$endPercent"
  else
    cmdReport "Uninstall $srcPath to $dstPath" "$endPercent"
    uninstallFunc $srcPath $dstPath
  fi
  mountFunc $dstPath "ro"
}

ParseFile()
{
  local srcDir=$1
  local srcPath=$2
  if [ -f "$srcDir$srcPath" ]
  then
    while read line
    do
      if [ "${line:0:6}" == "Report" ]
      then
        eval cmdReport ${line/Report/}
      elif [ "${line:0:7}" == "Install" ]
      then
        eval cmdInstall $srcDir ${line/Install/}
      elif [ "${line:0:9}" == "Uninstall" ]
      then
        eval cmdUninstall $srcDir ${line/Uninstall/}
      else
        echo "Unsupport command"
      fi
    done < "$srcDir$srcPath"
  else
    for dir in $srcDir/*
    do
      if [ -d $dir ]
      then
        if [ "$srcPath" == "/install" ]
        then
          cmdInstall $srcDir ${dir:((${#srcDir}+1))} "/${dir:((${#srcDir}+1))}" 100
        elif [ "$srcPath" == "/uninstall" ]
        then
          cmdUninstall $srcDir ${dir:((${#srcDir}+1))} "/${dir:((${#srcDir}+1))}" 100
        elif [ "$srcPath" == "/data/install" ]
        then
          cmdInstall $srcDir ${dir:((${#srcDir}+1))} "/data/${dir:((${#srcDir}+1))}" 100
        fi
      fi
    done
  fi
}

# Powerdown Check
fCurSpec="$strVendorPath/speccfg/spec"
fNewTmpSpec="${fCurSpec}.new"
fOldTmpSpec="${fCurSpec}.old"
NewSpec=""
#CurSpec=$1
strSpec=""

getSpec()
{
  local srcPath=$1
  strSpec=""
  if [ -f $srcPath ]
  then
    source $srcPath
  fi
}

uninstallSpec()
{
  local fTmpSpec=$1
  local strTmpSpec=""
  strDealPercent=0
  [[ -f $fTmpSpec ]] || return
  getSpec $fTmpSpec
  strTmpSpec=$strSpec
  if [ -d "$strVendorPath/$strTmpSpec" ]
  then
    ParseFile "$strVendorPath/$strTmpSpec" "/uninstall"
    echo "source $strVendorPath/speccfg/GMSInstall.sh $strTmpSpec uninstall"
    mountFunc "/system/" "rw"
    source $strVendorPath/speccfg/GMSInstall.sh $strTmpSpec "uninstall" >> $strLogFile
    mountFunc "/system/" "ro"
  fi
  strDealPercent=0
  mountFunc $fTmpSpec "rw"
  rm $fTmpSpec
  mountFunc $fTmpSpec "ro"
}

installSpec()
{
  mkdir -p "$strVendorPath/speccfg"
  [[ -f "$fNewTmpSpec" ]] && uninstallSpec $fNewTmpSpec
  [[ -f "$fOldTmpSpec" ]] && uninstallSpec $fOldTmpSpec
  getSpec $fCurSpec
  if [ "$strSpec" == "$CurSpec" ]
  then
    echo "Repeat install"
    return 1
  fi
  mountFunc $fNewTmpSpec "rw"
  echo "strSpec=$CurSpec" > $fNewTmpSpec
  mountFunc $fNewTmpSpec "ro"
  if [ -f "$fCurSpec" ]
  then
    mountFunc $fCurSpec "rw"
    mv $fCurSpec $fOldTmpSpec
    mountFunc $fCurSpec "ro"
  fi
  uninstallSpec $fOldTmpSpec
  strDealPercent=0
  ParseFile "$strVendorPath/$CurSpec" "/install"
  echo "source $strVendorPath/speccfg/GMSInstall.sh $CurSpec install"
  mountFunc "/system/" "rw"
  source $strVendorPath/speccfg/GMSInstall.sh $CurSpec "install" >> $strLogFile
  mountFunc "/system/" "ro"
  strDealPercent=0
  mountFunc $fNewTmpSpec "rw"
  mv $fNewTmpSpec $fCurSpec
  mountFunc $fNewTmpSpec "ro"
  echo "" > "$strDataFolder/install_flag"
  return 0
}

changeDirMode()
{
  local strCurPath=$1
  chmod 755 $strCurPath
  for item in `ls -a $strCurPath/`
  do
    if [ -f "$strCurPath/$item" ]
    then
      chmod 644 "$strCurPath/$item"
    elif [ -d "$strCurPath/$item" ]
    then
      changeDirMode "$strCurPath/$item"
    else
      echo "who is $strCurPath/$item"
    fi
  done
}

installVendor()
{
  local strSrc=$1
  local strDst=$2
  cp -rf "$strSrc" "$strDst"
  changeDirMode "$strDst/${strSrc/*\//}"
}

[[ -f "$strDataFolder/recovery_request" ]] && rm "$strDataFolder/recovery_request"

if [ "$iRunMode" == "$iBootMode" ]
then
  getSpec $fCurSpec
  if [ "$strSpec" == "$CurSpec" ]
  then
    if [ -f "$strDataFolder/install_flag" ]
    then
      echo "all is ok"
    else
      ParseFile "$strVendorPath/$CurSpec/data" "/data/install"
      echo "" > "$strDataFolder/install_flag"
    fi
  else
    installSpec
    echo "" > "$strDataFolder/recovery_request"
  fi
elif [ "$iRunMode" == "$iUpdateMode" ]
then
  mountFunc "/system/" "rw"
  installVendor "$strUpdatePath" "$strVendorPath"
  mountFunc "/system/" "ro"
  echo "" > "$strDataFolder/update_finish"
  if [ "${strUpdatePath/*\//}" == "$CurSpec" ]
  then
    rm -rf "$fCurSpec"
    installSpec
  fi
elif [ "$iRunMode" == "$iSwitchMode" ]
then
  installSpec
  echo "" > "$strDataFolder/recovery_request"
  echo "" > "$strDataFolder/switch_finish"
elif [ "$iRunMode" == "$iResetMode" ]
then
  rm -rf /data/property/persist.env.*
  echo "" > "$strDataFolder/reset_finish"
fi
