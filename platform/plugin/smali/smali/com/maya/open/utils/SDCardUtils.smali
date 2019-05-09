.class public final Lcom/maya/open/utils/SDCardUtils;
.super Ljava/lang/Object;
.source "SDCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/utils/SDCardUtils$SDCardInfo;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDataPath()Ljava/lang/String;
    .locals 2

    .line 76
    invoke-static {}, Lcom/maya/open/utils/SDCardUtils;->isSDCardEnable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFreeSpace()Ljava/lang/String;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 87
    invoke-static {}, Lcom/maya/open/utils/SDCardUtils;->isSDCardEnable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Lcom/maya/open/utils/SDCardUtils;->getSDCardPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "stat":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v1

    .line 91
    .local v1, "availableBlocks":J
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    .line 92
    .local v3, "blockSize":J
    mul-long v5, v1, v3

    invoke-static {v5, v6}, Lcom/maya/open/utils/ConvertUtils;->byte2FitMemorySize(J)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getSDCardInfo()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 102
    invoke-static {}, Lcom/maya/open/utils/SDCardUtils;->isSDCardEnable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 103
    :cond_0
    new-instance v0, Lcom/maya/open/utils/SDCardUtils$SDCardInfo;

    invoke-direct {v0}, Lcom/maya/open/utils/SDCardUtils$SDCardInfo;-><init>()V

    .line 104
    .local v0, "sd":Lcom/maya/open/utils/SDCardUtils$SDCardInfo;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/maya/open/utils/SDCardUtils$SDCardInfo;->isExist:Z

    .line 105
    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, "sf":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/maya/open/utils/SDCardUtils$SDCardInfo;->totalBlocks:J

    .line 107
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/maya/open/utils/SDCardUtils$SDCardInfo;->blockByteSize:J

    .line 108
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/maya/open/utils/SDCardUtils$SDCardInfo;->availableBlocks:J

    .line 109
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/maya/open/utils/SDCardUtils$SDCardInfo;->availableBytes:J

    .line 110
    invoke-virtual {v1}, Landroid/os/StatFs;->getFreeBlocksLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/maya/open/utils/SDCardUtils$SDCardInfo;->freeBlocks:J

    .line 111
    invoke-virtual {v1}, Landroid/os/StatFs;->getFreeBytes()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/maya/open/utils/SDCardUtils$SDCardInfo;->freeBytes:J

    .line 112
    invoke-virtual {v1}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/maya/open/utils/SDCardUtils$SDCardInfo;->totalBytes:J

    .line 113
    invoke-virtual {v0}, Lcom/maya/open/utils/SDCardUtils$SDCardInfo;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getSDCardPath()Ljava/lang/String;
    .locals 12

    .line 43
    invoke-static {}, Lcom/maya/open/utils/SDCardUtils;->isSDCardEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 44
    :cond_0
    const-string v0, "cat /proc/mounts"

    .line 45
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 46
    .local v2, "run":Ljava/lang/Runtime;
    nop

    .line 48
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 49
    .local v5, "p":Ljava/lang/Process;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v6

    .line 51
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "lineStr":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 52
    const-string v6, "sdcard"

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, ".android_secure"

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 53
    const-string v6, " "

    invoke-virtual {v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, "strArray":[Ljava/lang/String;
    array-length v8, v6

    const/4 v9, 0x5

    if-lt v8, v9, :cond_2

    .line 55
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v6, v4

    const-string v10, "/.android_secure"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v1, v4, v3

    invoke-static {v4}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 55
    return-object v8

    .line 58
    .end local v6    # "strArray":[Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/Process;->exitValue()I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v6, v4, :cond_1

    .line 59
    nop

    .line 65
    .end local v5    # "p":Ljava/lang/Process;
    .end local v7    # "lineStr":Ljava/lang/String;
    :cond_3
    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v1, v4, v3

    goto :goto_0

    :catchall_0
    move-exception v5

    goto :goto_1

    .line 62
    :catch_0
    move-exception v5

    .line 63
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .end local v5    # "e":Ljava/lang/Exception;
    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v1, v4, v3

    :goto_0
    invoke-static {v4}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 66
    nop

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 65
    :goto_1
    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v1, v4, v3

    invoke-static {v4}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 66
    throw v5
.end method

.method public static isSDCardEnable()Z
    .locals 2

    .line 33
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
