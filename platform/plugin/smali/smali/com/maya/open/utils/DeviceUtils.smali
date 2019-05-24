.class public final Lcom/maya/open/utils/DeviceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 78
    invoke-static {p0}, Lcom/maya/open/utils/DeviceUtils;->getMacAddressByWifiInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "02:00:00:00:00:00"

    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 82
    :cond_0
    invoke-static {}, Lcom/maya/open/utils/DeviceUtils;->getMacAddressByNetworkInterface()Ljava/lang/String;

    move-result-object p0

    const-string v0, "02:00:00:00:00:00"

    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    .line 86
    :cond_1
    invoke-static {}, Lcom/maya/open/utils/DeviceUtils;->getMacAddressByFile()Ljava/lang/String;

    move-result-object p0

    const-string v0, "02:00:00:00:00:00"

    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method private static getMacAddressByFile()Ljava/lang/String;
    .locals 4

    const-string v0, "getprop wifi.interface"

    const/4 v1, 0x0

    .line 145
    invoke-static {v0, v1}, Lcom/maya/open/utils/ShellUtils;->execCmd(Ljava/lang/String;Z)Lcom/maya/open/utils/ShellUtils$CommandResult;

    move-result-object v0

    .line 146
    iget v2, v0, Lcom/maya/open/utils/ShellUtils$CommandResult;->result:I

    if-nez v2, :cond_0

    .line 147
    iget-object v0, v0, Lcom/maya/open/utils/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cat /sys/class/net/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/address"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/maya/open/utils/ShellUtils;->execCmd(Ljava/lang/String;Z)Lcom/maya/open/utils/ShellUtils$CommandResult;

    move-result-object v0

    .line 150
    iget v1, v0, Lcom/maya/open/utils/ShellUtils$CommandResult;->result:I

    if-nez v1, :cond_0

    .line 151
    iget-object v1, v0, Lcom/maya/open/utils/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 152
    iget-object v0, v0, Lcom/maya/open/utils/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "02:00:00:00:00:00"

    return-object v0
.end method

.method private static getMacAddressByNetworkInterface()Ljava/lang/String;
    .locals 8

    .line 121
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 123
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "wlan0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 125
    array-length v2, v1

    if-lez v2, :cond_0

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x1

    if-ge v4, v2, :cond_2

    aget-byte v6, v1, v4

    const-string v7, "%02x:"

    .line 128
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 130
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    const-string v0, "02:00:00:00:00:00"

    return-object v0
.end method

.method private static getMacAddressByWifiInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    :try_start_0
    const-string v0, "wifi"

    .line 102
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_0

    .line 104
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 105
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-string p0, "02:00:00:00:00:00"

    return-object p0
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 1

    .line 168
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 3

    .line 178
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s*"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

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

    const-string v0, "su"

    const/16 v1, 0x8

    .line 37
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
    array-length v2, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    aget-object v6, v1, v5

    .line 40
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    return v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static reboot(Landroid/content/Context;)V
    .locals 3

    const-string v0, "reboot"

    const/4 v1, 0x1

    .line 205
    invoke-static {v0, v1}, Lcom/maya/open/utils/ShellUtils;->execCmd(Ljava/lang/String;Z)Lcom/maya/open/utils/ShellUtils$CommandResult;

    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.REBOOT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "nowait"

    .line 207
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "interval"

    .line 208
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "window"

    const/4 v2, 0x0

    .line 209
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "power"

    .line 220
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 222
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 224
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static reboot2Bootloader()V
    .locals 2

    const-string v0, "reboot bootloader"

    const/4 v1, 0x1

    .line 241
    invoke-static {v0, v1}, Lcom/maya/open/utils/ShellUtils;->execCmd(Ljava/lang/String;Z)Lcom/maya/open/utils/ShellUtils$CommandResult;

    return-void
.end method

.method public static reboot2Recovery()V
    .locals 2

    const-string v0, "reboot recovery"

    const/4 v1, 0x1

    .line 233
    invoke-static {v0, v1}, Lcom/maya/open/utils/ShellUtils;->execCmd(Ljava/lang/String;Z)Lcom/maya/open/utils/ShellUtils$CommandResult;

    return-void
.end method

.method public static shutdown(Landroid/content/Context;)V
    .locals 3

    const-string v0, "reboot -p"

    const/4 v1, 0x1

    .line 192
    invoke-static {v0, v1}, Lcom/maya/open/utils/ShellUtils;->execCmd(Ljava/lang/String;Z)Lcom/maya/open/utils/ShellUtils$CommandResult;

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    .line 194
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 195
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 196
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
