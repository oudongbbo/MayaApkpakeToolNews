.class public final Lcom/maya/open/utils/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/utils/NetworkUtils$NetworkType;
    }
.end annotation


# static fields
.field private static final NETWORK_TYPE_GSM:I = 0x10

.field private static final NETWORK_TYPE_IWLAN:I = 0x12

.field private static final NETWORK_TYPE_TD_SCDMA:I = 0x11


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 65
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getDataEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 104
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 105
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getDataEnabled"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 106
    .local v2, "getMobileDataEnabledMethod":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 107
    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 111
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    .end local v2    # "getMobileDataEnabledMethod":Ljava/lang/reflect/Method;
    :cond_0
    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static getDomainAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "domain"    # Ljava/lang/String;

    .line 325
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 326
    .local v0, "exec":Ljava/util/concurrent/ExecutorService;
    new-instance v1, Lcom/maya/open/utils/NetworkUtils$1;

    invoke-direct {v1, p0}, Lcom/maya/open/utils/NetworkUtils$1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 339
    .local v1, "fs":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 340
    .end local v0    # "exec":Ljava/util/concurrent/ExecutorService;
    .end local v1    # "fs":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 343
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIPAddress(Z)Ljava/lang/String;
    .locals 8
    .param p0, "useIPv4"    # Z

    .line 290
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 291
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 293
    .local v1, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v2

    if-nez v2, :cond_0

    .end local v1    # "ni":Ljava/net/NetworkInterface;
    goto :goto_0

    .line 294
    .restart local v1    # "ni":Ljava/net/NetworkInterface;
    :cond_0
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 295
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 296
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_4

    .line 297
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, "hostAddress":Ljava/lang/String;
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, 0x0

    if-gez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    .line 299
    .local v5, "isIPv4":Z
    :goto_2
    if-eqz p0, :cond_2

    .line 300
    if-eqz v5, :cond_4

    return-object v4

    .line 302
    :cond_2
    if-nez v5, :cond_4

    .line 303
    const/16 v7, 0x25

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 304
    .local v7, "index":I
    if-gez v7, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_3
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-object v6

    .line 308
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "hostAddress":Ljava/lang/String;
    .end local v5    # "isIPv4":Z
    .end local v7    # "index":I
    :cond_4
    goto :goto_1

    .line 309
    .end local v1    # "ni":Ljava/net/NetworkInterface;
    .end local v2    # "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_5
    goto :goto_0

    .line 312
    .end local v0    # "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_6
    goto :goto_4

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 313
    .end local v0    # "e":Ljava/net/SocketException;
    :goto_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 204
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 205
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static getNetworkType(Landroid/content/Context;)Lcom/maya/open/utils/NetworkUtils$NetworkType;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 227
    sget-object v0, Lcom/maya/open/utils/NetworkUtils$NetworkType;->NETWORK_NO:Lcom/maya/open/utils/NetworkUtils$NetworkType;

    .line 228
    .local v0, "netType":Lcom/maya/open/utils/NetworkUtils$NetworkType;
    invoke-static {p0}, Lcom/maya/open/utils/NetworkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 229
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 231
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 232
    sget-object v0, Lcom/maya/open/utils/NetworkUtils$NetworkType;->NETWORK_WIFI:Lcom/maya/open/utils/NetworkUtils$NetworkType;

    goto :goto_2

    .line 233
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_3

    .line 234
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 264
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "subtypeName":Ljava/lang/String;
    const-string v3, "TD-SCDMA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "WCDMA"

    .line 266
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "CDMA2000"

    .line 267
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 260
    .end local v2    # "subtypeName":Ljava/lang/String;
    :pswitch_0
    sget-object v0, Lcom/maya/open/utils/NetworkUtils$NetworkType;->NETWORK_4G:Lcom/maya/open/utils/NetworkUtils$NetworkType;

    .line 261
    goto :goto_1

    .line 255
    :pswitch_1
    sget-object v0, Lcom/maya/open/utils/NetworkUtils$NetworkType;->NETWORK_3G:Lcom/maya/open/utils/NetworkUtils$NetworkType;

    .line 256
    goto :goto_1

    .line 242
    :pswitch_2
    sget-object v0, Lcom/maya/open/utils/NetworkUtils$NetworkType;->NETWORK_2G:Lcom/maya/open/utils/NetworkUtils$NetworkType;

    .line 243
    goto :goto_1

    .line 270
    .restart local v2    # "subtypeName":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/maya/open/utils/NetworkUtils$NetworkType;->NETWORK_UNKNOWN:Lcom/maya/open/utils/NetworkUtils$NetworkType;

    goto :goto_1

    .line 268
    :cond_2
    :goto_0
    sget-object v0, Lcom/maya/open/utils/NetworkUtils$NetworkType;->NETWORK_3G:Lcom/maya/open/utils/NetworkUtils$NetworkType;

    .line 272
    .end local v2    # "subtypeName":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 275
    :cond_3
    sget-object v0, Lcom/maya/open/utils/NetworkUtils$NetworkType;->NETWORK_UNKNOWN:Lcom/maya/open/utils/NetworkUtils$NetworkType;

    .line 278
    :cond_4
    :goto_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getWifiEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 151
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 152
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    return v1
.end method

.method public static is4G(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 140
    invoke-static {p0}, Lcom/maya/open/utils/NetworkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 141
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isAvailableByPing()Z
    .locals 4

    .line 86
    const-string v0, "ping -c 1 -w 1 223.5.5.5"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/maya/open/utils/ShellUtils;->execCmd(Ljava/lang/String;Z)Lcom/maya/open/utils/ShellUtils$CommandResult;

    move-result-object v0

    .line 87
    .local v0, "result":Lcom/maya/open/utils/ShellUtils$CommandResult;
    iget v2, v0, Lcom/maya/open/utils/ShellUtils$CommandResult;->result:I

    if-nez v2, :cond_0

    const/4 v1, 0x1

    nop

    .line 88
    .local v1, "ret":Z
    :cond_0
    iget-object v2, v0, Lcom/maya/open/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 89
    const-string v2, "isAvailableByPing errorMsg"

    iget-object v3, v0, Lcom/maya/open/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_1
    iget-object v2, v0, Lcom/maya/open/utils/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 92
    const-string v2, "isAvailableByPing successMsg"

    iget-object v3, v0, Lcom/maya/open/utils/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_2
    return v1
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 75
    invoke-static {p0}, Lcom/maya/open/utils/NetworkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 76
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isWifiAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 194
    invoke-static {p0}, Lcom/maya/open/utils/NetworkUtils;->getWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/maya/open/utils/NetworkUtils;->isAvailableByPing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 181
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 182
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 183
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 182
    :goto_0
    return v1
.end method

.method public static openWirelessSettings(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x10000000

    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 56
    :goto_0
    return-void
.end method

.method public static setDataEnabled(Landroid/content/Context;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 123
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 124
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setDataEnabled"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 125
    .local v1, "setMobileDataEnabledMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 126
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    .end local v1    # "setMobileDataEnabledMethod":Ljava/lang/reflect/Method;
    :cond_0
    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static setWifiEnabled(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 162
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 163
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 165
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 172
    :cond_1
    :goto_0
    return-void
.end method
