.class public final Lcom/maya/open/utils/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAndroidID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 78
    invoke-static {p0}, Lcom/maya/open/utils/DeviceUtils;->getMacAddressByWifiInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "macAddress":Ljava/lang/String;
    const-string v1, "02:00:00:00:00:00"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    return-object v0

    .line 82
    :cond_0
    invoke-static {}, Lcom/maya/open/utils/DeviceUtils;->getMacAddressByNetworkInterface()Ljava/lang/String;

    move-result-object v0

    .line 83
    const-string v1, "02:00:00:00:00:00"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 84
    return-object v0

    .line 86
    :cond_1
    invoke-static {}, Lcom/maya/open/utils/DeviceUtils;->getMacAddressByFile()Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v1, "02:00:00:00:00:00"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 88
    return-object v0

    .line 90
    :cond_2
    const-string v1, ""

    return-object v1
.end method

.method private static getMacAddressByFile()Ljava/lang/String;
    .locals 5

    .line 145
    const-string v0, "getprop wifi.interface"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/maya/open/utils/ShellUtils;->execCmd(Ljava/lang/String;Z)Lcom/maya/open/utils/ShellUtils$CommandResult;

    move-result-object v0

    .line 146
    .local v0, "result":Lcom/maya/open/utils/ShellUtils$CommandResult;
    iget v2, v0, Lcom/maya/open/utils/ShellUtils$CommandResult;->result:I

    if-nez v2, :cond_0

    .line 147
    iget-object v2, v0, Lcom/maya/open/utils/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    .line 148
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cat /sys/class/net/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/address"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/maya/open/utils/ShellUtils;->execCmd(Ljava/lang/String;Z)Lcom/maya/open/utils/ShellUtils$CommandResult;

    move-result-object v0

    .line 150
    iget v1, v0, Lcom/maya/open/utils/ShellUtils$CommandResult;->result:I

    if-nez v1, :cond_0

    .line 151
    iget-object v1, v0, Lcom/maya/open/utils/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, v0, Lcom/maya/open/utils/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    return-object v1

    .line 157
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    const-string v1, "02:00:00:00:00:00"

    return-object v1
.end method

.method private static getMacAddressByNetworkInterface()Ljava/lang/String;
    .locals 11

    .line 121
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 122
    .local v0, "nis":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 123
    .local v2, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wlan0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .end local v2    # "ni":Ljava/net/NetworkInterface;
    goto :goto_0

    .line 124
    .restart local v2    # "ni":Ljava/net/NetworkInterface;
    :cond_0
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v3

    .line 125
    .local v3, "macBytes":[B
    if-eqz v3, :cond_2

    array-length v4, v3

    if-lez v4, :cond_2

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v1, "res1":Ljava/lang/StringBuilder;
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x1

    if-ge v6, v4, :cond_1

    aget-byte v8, v3, v6

    .line 128
    .local v8, "b":B
    const-string v9, "%02x:"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v7, v5

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .end local v8    # "b":B
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 130
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 132
    .end local v1    # "res1":Ljava/lang/StringBuilder;
    .end local v2    # "ni":Ljava/net/NetworkInterface;
    .end local v3    # "macBytes":[B
    :cond_2
    goto :goto_0

    .line 135
    .end local v0    # "nis":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    :cond_3
    goto :goto_2

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    const-string v0, "02:00:00:00:00:00"

    return-object v0
.end method

.method private static getMacAddressByWifiInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 102
    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 103
    .local v0, "wifi":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 105
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 109
    .end local v0    # "wifi":Landroid/net/wifi/WifiManager;
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_0
    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v0, "02:00:00:00:00:00"

    return-object v0
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 1

    .line 168
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 4

    .line 178
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 179
    .local v0, "model":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s*"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 182
    :cond_0
    const-string v0, ""

    .line 184
    :goto_0
    return-object v0
.end method

.method public static getSDKVersion()I
    .locals 1

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getSDKVersionName()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    return-object v0
.end method

.method public static isDeviceRooted()Z
    .locals 9

    .line 36
    const-string v0, "su"

    .line 37
    .local v0, "su":Ljava/lang/String;
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "/system/bin/"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/system/xbin/"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "/sbin/"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "/system/sd/xbin/"

    const/4 v5, 0x3

    aput-object v2, v1, v5

    const-string v2, "/system/bin/failsafe/"

    const/4 v5, 0x4

    aput-object v2, v1, v5

    const-string v2, "/data/local/xbin/"

    const/4 v5, 0x5

    aput-object v2, v1, v5

    const-string v2, "/data/local/bin/"

    const/4 v5, 0x6

    aput-object v2, v1, v5

    const-string v2, "/data/local/"

    const/4 v5, 0x7

    aput-object v2, v1, v5

    .line 39
    .local v1, "locations":[Ljava/lang/String;
    array-length v2, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    aget-object v6, v1, v5

    .line 40
    .local v6, "location":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 41
    return v4

    .line 39
    .end local v6    # "location":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 44
    :cond_1
    return v3
.end method

.method public static reboot(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 205
    const-string v0, "reboot"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/maya/open/utils/ShellUtils;->execCmd(Ljava/lang/String;Z)Lcom/maya/open/utils/ShellUtils$CommandResult;

    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.REBOOT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "nowait"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    const-string v2, "interval"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    const-string v1, "window"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 211
    return-void
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .line 220
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 222
    .local v0, "mPowerManager":Landroid/os/PowerManager;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    goto :goto_0

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 226
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static reboot2Bootloader()V
    .locals 2

    .line 241
    const-string v0, "reboot bootloader"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/maya/open/utils/ShellUtils;->execCmd(Ljava/lang/String;Z)Lcom/maya/open/utils/ShellUtils$CommandResult;

    .line 242
    return-void
.end method

.method public static reboot2Recovery()V
    .locals 2

    .line 233
    const-string v0, "reboot recovery"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/maya/open/utils/ShellUtils;->execCmd(Ljava/lang/String;Z)Lcom/maya/open/utils/ShellUtils$CommandResult;

    .line 234
    return-void
.end method

.method public static shutdown(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 192
    const-string v0, "reboot -p"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/maya/open/utils/ShellUtils;->execCmd(Ljava/lang/String;Z)Lcom/maya/open/utils/ShellUtils$CommandResult;

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 195
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 196
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 197
    return-void
.end method
