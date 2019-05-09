.class public Lcom/maya/sdk/framework/model/DeviceIdTool;
.super Ljava/lang/Object;
.source "DeviceIdTool.java"


# instance fields
.field private final devMd5Key:Ljava/lang/String;

.field private final encodeKey:Ljava/lang/String;

.field private final keyDir:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ".ffmmsys"

    iput-object v0, p0, Lcom/maya/sdk/framework/model/DeviceIdTool;->keyDir:Ljava/lang/String;

    .line 19
    const-string v0, "OFXqy1Lluv2cJg3G"

    iput-object v0, p0, Lcom/maya/sdk/framework/model/DeviceIdTool;->encodeKey:Ljava/lang/String;

    .line 20
    const-string v0, "pUeTY0NoOrPJzX6I"

    iput-object v0, p0, Lcom/maya/sdk/framework/model/DeviceIdTool;->devMd5Key:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/maya/sdk/framework/model/DeviceIdTool;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method private getDeviceDir()Ljava/lang/String;
    .locals 3

    .line 194
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/maya/sdk/framework/model/DeviceIdTool;->getSDPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".ffmmsys"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 198
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/maya/sdk/framework/model/DeviceIdTool;->getSDPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".ffmmsys"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDeviceFileName()Ljava/lang/String;
    .locals 2

    .line 88
    invoke-static {}, Lcom/maya/sdk/framework/utils/CommonUtil;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const-string v0, "Device"

    .line 92
    :cond_0
    return-object v0
.end method

.method private getDeviceImeiFileName()Ljava/lang/String;
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/maya/sdk/framework/model/DeviceIdTool;->getDeviceFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_Imei"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceMacFileName()Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/maya/sdk/framework/model/DeviceIdTool;->getDeviceFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_Mac"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/maya/sdk/framework/model/DeviceIdTool;->getDeviceDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "filePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_0
    return-object v1

    .line 169
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    new-instance v1, Ljava/io/File;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 174
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getSDPath()Ljava/lang/String;
    .locals 3

    .line 180
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, "dirFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_1
    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getDeviceID()Ljava/lang/String;
    .locals 5

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "dev":Ljava/lang/String;
    iget-object v1, p0, Lcom/maya/sdk/framework/model/DeviceIdTool;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getPhoneIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "imei":Ljava/lang/String;
    iget-object v2, p0, Lcom/maya/sdk/framework/model/DeviceIdTool;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "mac":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "pUeTY0NoOrPJzX6I"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    return-object v0
.end method

.method public getKeyId()Ljava/lang/String;
    .locals 3

    .line 32
    invoke-virtual {p0}, Lcom/maya/sdk/framework/model/DeviceIdTool;->getLocalDevice()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "local":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    move-object v1, v0

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/maya/sdk/framework/model/DeviceIdTool;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "newKey":Ljava/lang/String;
    move-object v2, v1

    .line 41
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/maya/sdk/framework/model/DeviceIdTool;->setLocalDevice(Ljava/lang/String;)V

    .line 44
    .end local v2    # "key":Ljava/lang/String;
    .local v1, "key":Ljava/lang/String;
    :goto_0
    return-object v1
.end method

.method public getLocalData(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;

    .line 107
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 108
    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/model/DeviceIdTool;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 109
    .local v0, "file":Ljava/io/File;
    const-string v2, ""

    .line 110
    .local v2, "json":Ljava/lang/String;
    move-object v3, v1

    .line 112
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v4

    .line 113
    const/4 v4, 0x0

    .line 114
    .local v4, "tempString":Ljava/lang/String;
    const/4 v5, 0x1

    .line 115
    .local v5, "line":I
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    if-eqz v6, :cond_0

    .line 116
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 117
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .end local v4    # "tempString":Ljava/lang/String;
    .end local v5    # "line":I
    nop

    .line 125
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    :goto_1
    goto :goto_2

    .line 126
    :catch_0
    move-exception v4

    goto :goto_1

    .line 123
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 120
    :catch_1
    move-exception v4

    .line 121
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_1

    .line 125
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 130
    :cond_1
    :goto_2
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 131
    return-object v1

    .line 133
    :cond_2
    const-string v1, "OFXqy1Lluv2cJg3G"

    invoke-static {v2, v1}, Lcom/maya/sdk/framework/encrypt/CodeManager;->decodeCommon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 123
    :goto_3
    if-eqz v3, :cond_3

    .line 125
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 127
    goto :goto_4

    .line 126
    :catch_2
    move-exception v4

    .line 129
    :cond_3
    :goto_4
    throw v1

    .line 136
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "json":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :cond_4
    return-object v1
.end method

.method public getLocalDevice()Ljava/lang/String;
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/maya/sdk/framework/model/DeviceIdTool;->getDeviceFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/model/DeviceIdTool;->getLocalData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalImei()Ljava/lang/String;
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/maya/sdk/framework/model/DeviceIdTool;->getDeviceImeiFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/model/DeviceIdTool;->getLocalData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalMac()Ljava/lang/String;
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/maya/sdk/framework/model/DeviceIdTool;->getDeviceMacFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/model/DeviceIdTool;->getLocalData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLocalData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 142
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    :try_start_0
    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/model/DeviceIdTool;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 145
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 146
    .local v1, "writer":Ljava/io/FileWriter;
    const-string v2, "OFXqy1Lluv2cJg3G"

    invoke-static {p2, v2}, Lcom/maya/sdk/framework/encrypt/CodeManager;->encodeCommon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "writer":Ljava/io/FileWriter;
    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 156
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setLocalDevice(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Lcom/maya/sdk/framework/model/DeviceIdTool;->getDeviceFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/maya/sdk/framework/model/DeviceIdTool;->setLocalData(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public setLocalImei(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Lcom/maya/sdk/framework/model/DeviceIdTool;->getDeviceImeiFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/maya/sdk/framework/model/DeviceIdTool;->setLocalData(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public setLocalMac(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Lcom/maya/sdk/framework/model/DeviceIdTool;->getDeviceMacFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/maya/sdk/framework/model/DeviceIdTool;->setLocalData(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method
