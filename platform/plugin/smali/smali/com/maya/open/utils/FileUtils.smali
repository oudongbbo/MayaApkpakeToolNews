.class public final Lcom/maya/open/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field public static final BYTE:I = 0x1

.field public static final GB:I = 0x40000000

.field public static final KB:I = 0x400

.field public static final MB:I = 0x100000

.field private static final hexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1351
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/maya/open/utils/FileUtils;->hexDigits:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static byte2FitMemorySize(J)Ljava/lang/String;
    .locals 9
    .param p0, "byteNum"    # J
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 1382
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    .line 1383
    const-string v0, "shouldn\'t be less than zero!"

    return-object v0

    .line 1384
    :cond_0
    const-wide/16 v0, 0x400

    cmp-long v2, p0, v0

    const-wide v0, 0x3f40624dd2f1a9fcL    # 5.0E-4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_1

    .line 1385
    const-string v2, "%.3fB"

    new-array v4, v4, [Ljava/lang/Object;

    long-to-double v5, p0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1386
    :cond_1
    const-wide/32 v5, 0x100000

    cmp-long v2, p0, v5

    if-gez v2, :cond_2

    .line 1387
    const-string v2, "%.3fKB"

    new-array v4, v4, [Ljava/lang/Object;

    long-to-double v5, p0

    const-wide/high16 v7, 0x4090000000000000L    # 1024.0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    add-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1388
    :cond_2
    const-wide/32 v5, 0x40000000

    cmp-long v2, p0, v5

    if-gez v2, :cond_3

    .line 1389
    const-string v2, "%.3fMB"

    new-array v4, v4, [Ljava/lang/Object;

    long-to-double v5, p0

    const-wide/high16 v7, 0x4130000000000000L    # 1048576.0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    add-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1391
    :cond_3
    const-string v2, "%.3fGB"

    new-array v4, v4, [Ljava/lang/Object;

    long-to-double v5, p0

    const-wide/high16 v7, 0x41d0000000000000L    # 1.073741824E9

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    add-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bytes2HexString([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .line 1362
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1363
    :cond_0
    array-length v1, p0

    .line 1364
    .local v1, "len":I
    if-gtz v1, :cond_1

    return-object v0

    .line 1365
    :cond_1
    shl-int/lit8 v0, v1, 0x1

    new-array v0, v0, [C

    .line 1366
    .local v0, "ret":[C
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1367
    add-int/lit8 v4, v3, 0x1

    .local v4, "j":I
    sget-object v5, Lcom/maya/open/utils/FileUtils;->hexDigits:[C

    aget-byte v6, p0, v2

    ushr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v0, v3

    .line 1368
    .end local v3    # "j":I
    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "j":I
    sget-object v5, Lcom/maya/open/utils/FileUtils;->hexDigits:[C

    aget-byte v6, p0, v2

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v0, v4

    .line 1366
    .end local v4    # "j":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1370
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static copyDir(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .param p0, "srcDir"    # Ljava/io/File;
    .param p1, "destDir"    # Ljava/io/File;

    .line 347
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/maya/open/utils/FileUtils;->copyOrMoveDir(Ljava/io/File;Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method public static copyDir(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "srcDirPath"    # Ljava/lang/String;
    .param p1, "destDirPath"    # Ljava/lang/String;

    .line 336
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/open/utils/FileUtils;->copyDir(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;

    .line 369
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/maya/open/utils/FileUtils;->copyOrMoveFile(Ljava/io/File;Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "srcFilePath"    # Ljava/lang/String;
    .param p1, "destFilePath"    # Ljava/lang/String;

    .line 358
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/open/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static copyOrMoveDir(Ljava/io/File;Ljava/io/File;Z)Z
    .locals 10
    .param p0, "srcDir"    # Ljava/io/File;
    .param p1, "destDir"    # Ljava/io/File;
    .param p2, "isMove"    # Z

    .line 265
    const/4 v0, 0x0

    if-eqz p0, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 270
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "srcPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "destPath":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v0

    .line 274
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_3

    .line 276
    :cond_2
    invoke-static {p1}, Lcom/maya/open/utils/FileUtils;->createOrExistsDir(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_3

    return v0

    .line 277
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 278
    .local v3, "files":[Ljava/io/File;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_6

    aget-object v6, v3, v5

    .line 279
    .local v6, "file":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    .local v7, "oneDestFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 282
    invoke-static {v6, v7, p2}, Lcom/maya/open/utils/FileUtils;->copyOrMoveFile(Ljava/io/File;Ljava/io/File;Z)Z

    move-result v8

    if-nez v8, :cond_5

    return v0

    .line 283
    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 285
    invoke-static {v6, v7, p2}, Lcom/maya/open/utils/FileUtils;->copyOrMoveDir(Ljava/io/File;Ljava/io/File;Z)Z

    move-result v8

    if-nez v8, :cond_5

    return v0

    .line 278
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "oneDestFile":Ljava/io/File;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 288
    :cond_6
    if-eqz p2, :cond_8

    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_1

    :cond_7
    goto :goto_2

    :cond_8
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0

    .line 274
    .end local v3    # "files":[Ljava/io/File;
    :cond_9
    :goto_3
    return v0

    .line 265
    .end local v1    # "srcPath":Ljava/lang/String;
    .end local v2    # "destPath":Ljava/lang/String;
    :cond_a
    :goto_4
    return v0
.end method

.method private static copyOrMoveDir(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "srcDirPath"    # Ljava/lang/String;
    .param p1, "destDirPath"    # Ljava/lang/String;
    .param p2, "isMove"    # Z

    .line 253
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/maya/open/utils/FileUtils;->copyOrMoveDir(Ljava/io/File;Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method private static copyOrMoveFile(Ljava/io/File;Ljava/io/File;Z)Z
    .locals 2
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;
    .param p2, "isMove"    # Z

    .line 312
    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto :goto_1

    .line 314
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 316
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 318
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/open/utils/FileUtils;->createOrExistsDir(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 320
    :cond_3
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p1, v1, v0}, Lcom/maya/open/utils/FileUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p2, :cond_4

    .line 321
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->deleteFile(Ljava/io/File;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_5

    :cond_4
    const/4 v0, 0x1

    nop

    .line 320
    :cond_5
    return v0

    .line 322
    :catch_0
    move-exception v1

    .line 323
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 324
    return v0

    .line 314
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_6
    :goto_0
    return v0

    .line 312
    :cond_7
    :goto_1
    return v0
.end method

.method private static copyOrMoveFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "srcFilePath"    # Ljava/lang/String;
    .param p1, "destFilePath"    # Ljava/lang/String;
    .param p2, "isMove"    # Z

    .line 300
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/maya/open/utils/FileUtils;->copyOrMoveFile(Ljava/io/File;Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method public static createFileByDeleteOldFile(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 231
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 233
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 235
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/open/utils/FileUtils;->createOrExistsDir(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 237
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 238
    :catch_0
    move-exception v1

    .line 239
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 240
    return v0
.end method

.method public static createFileByDeleteOldFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 221
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/FileUtils;->createFileByDeleteOldFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static createOrExistsDir(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 182
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static createOrExistsDir(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dirPath"    # Ljava/lang/String;

    .line 171
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/FileUtils;->createOrExistsDir(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static createOrExistsFile(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 202
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 204
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0

    .line 205
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/open/utils/FileUtils;->createOrExistsDir(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 207
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 208
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 210
    return v0
.end method

.method public static createOrExistsFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 192
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/FileUtils;->createOrExistsFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .locals 6
    .param p0, "dir"    # Ljava/io/File;

    .line 433
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 435
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    return v0

    .line 437
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 439
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 440
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_5

    array-length v2, v1

    if-eqz v2, :cond_5

    .line 441
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    .line 442
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 443
    invoke-static {v4}, Lcom/maya/open/utils/FileUtils;->deleteFile(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_4

    return v0

    .line 444
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 445
    invoke-static {v4}, Lcom/maya/open/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_4

    return v0

    .line 441
    .end local v4    # "file":Ljava/io/File;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 449
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public static deleteDir(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dirPath"    # Ljava/lang/String;

    .line 423
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 469
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "srcFilePath"    # Ljava/lang/String;

    .line 459
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/FileUtils;->deleteFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static deleteFilesInDir(Ljava/io/File;)Z
    .locals 7
    .param p0, "dir"    # Ljava/io/File;

    .line 489
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 491
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    .line 493
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 495
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 496
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_5

    array-length v3, v1

    if-eqz v3, :cond_5

    .line 497
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v1, v4

    .line 498
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 499
    invoke-static {v5}, Lcom/maya/open/utils/FileUtils;->deleteFile(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_4

    return v0

    .line 500
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 501
    invoke-static {v5}, Lcom/maya/open/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_4

    return v0

    .line 497
    .end local v5    # "file":Ljava/io/File;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 505
    :cond_5
    return v2
.end method

.method public static deleteFilesInDir(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dirPath"    # Ljava/lang/String;

    .line 479
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/FileUtils;->deleteFilesInDir(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static getDirLength(Ljava/io/File;)J
    .locals 8
    .param p0, "dir"    # Ljava/io/File;

    .line 1120
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->isDir(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 1121
    :cond_0
    const-wide/16 v0, 0x0

    .line 1122
    .local v0, "len":J
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1123
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_2

    array-length v3, v2

    if-eqz v3, :cond_2

    .line 1124
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 1125
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1126
    invoke-static {v5}, Lcom/maya/open/utils/FileUtils;->getDirLength(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v0, v6

    goto :goto_1

    .line 1128
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 1124
    .end local v5    # "file":Ljava/io/File;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1132
    :cond_2
    return-wide v0
.end method

.method public static getDirLength(Ljava/lang/String;)J
    .locals 2
    .param p0, "dirPath"    # Ljava/lang/String;

    .line 1110
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/FileUtils;->getDirLength(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDirName(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 1220
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1221
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/FileUtils;->getDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDirName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1231
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1232
    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1233
    .local v0, "lastSep":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getDirSize(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p0, "dir"    # Ljava/io/File;

    .line 1078
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getDirLength(Ljava/io/File;)J

    move-result-wide v0

    .line 1079
    .local v0, "len":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lcom/maya/open/utils/FileUtils;->byte2FitMemorySize(J)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method public static getDirSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "dirPath"    # Ljava/lang/String;

    .line 1068
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/FileUtils;->getDirSize(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileByPath(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 68
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static getFileCharsetSimple(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .line 1003
    const/4 v0, 0x0

    .line 1004
    .local v0, "p":I
    const/4 v1, 0x0

    .line 1006
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v4

    .line 1007
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int v0, v4, v5

    .line 1011
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v1, v3, v2

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_1

    .line 1008
    :catch_0
    move-exception v4

    .line 1009
    .local v4, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1011
    .end local v4    # "e":Ljava/io/IOException;
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v1, v3, v2

    :goto_0
    invoke-static {v3}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 1012
    nop

    .line 1013
    const v2, 0xefbb    # 8.5999E-41f

    if-eq v0, v2, :cond_2

    const v2, 0xfeff

    if-eq v0, v2, :cond_1

    const v2, 0xfffe

    if-eq v0, v2, :cond_0

    .line 1021
    const-string v2, "GBK"

    return-object v2

    .line 1017
    :cond_0
    const-string v2, "Unicode"

    return-object v2

    .line 1019
    :cond_1
    const-string v2, "UTF-16BE"

    return-object v2

    .line 1015
    :cond_2
    const-string v2, "UTF-8"

    return-object v2

    .line 1011
    :goto_1
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v1, v3, v2

    invoke-static {v3}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 1012
    throw v4
.end method

.method public static getFileCharsetSimple(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 993
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/FileUtils;->getFileCharsetSimple(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 1296
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1297
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/FileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1307
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1308
    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1309
    .local v0, "lastPoi":I
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1310
    .local v1, "lastSep":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    if-lt v1, v0, :cond_1

    goto :goto_0

    .line 1311
    :cond_1
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1310
    :cond_2
    :goto_0
    const-string v2, ""

    return-object v2
.end method

.method public static getFileLastModified(Ljava/io/File;)J
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 982
    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 983
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFileLastModified(Ljava/lang/String;)J
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 972
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/FileUtils;->getFileLastModified(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFileLength(Ljava/io/File;)J
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 1152
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->isFile(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 1153
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFileLength(Ljava/lang/String;)J
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1142
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/FileUtils;->getFileLength(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFileLines(Ljava/io/File;)I
    .locals 10
    .param p0, "file"    # Ljava/io/File;

    .line 1042
    const/4 v0, 0x1

    .line 1043
    .local v0, "count":I
    const/4 v1, 0x0

    .line 1045
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v4

    .line 1046
    const/16 v4, 0x400

    new-array v5, v4, [B

    .line 1048
    .local v5, "buffer":[B
    :goto_0
    invoke-virtual {v1, v5, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v7, v6

    .local v7, "readChars":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    .line 1049
    move v6, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v6, "count":I
    :goto_1
    if-ge v0, v7, :cond_1

    .line 1050
    :try_start_1
    aget-byte v8, v5, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v9, 0xa

    if-ne v8, v9, :cond_0

    add-int/lit8 v6, v6, 0x1

    .line 1049
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1056
    .end local v0    # "i":I
    .end local v5    # "buffer":[B
    .end local v7    # "readChars":I
    :catchall_0
    move-exception v0

    move-object v4, v0

    move v0, v6

    goto :goto_4

    .line 1053
    :catch_0
    move-exception v0

    move-object v4, v0

    move v0, v6

    goto :goto_2

    .line 1046
    .restart local v5    # "buffer":[B
    .restart local v7    # "readChars":I
    :cond_1
    move v0, v6

    goto :goto_0

    .line 1056
    .end local v5    # "buffer":[B
    .end local v6    # "count":I
    .end local v7    # "readChars":I
    .local v0, "count":I
    :cond_2
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v1, v3, v2

    goto :goto_3

    :catchall_1
    move-exception v4

    goto :goto_4

    .line 1053
    :catch_1
    move-exception v4

    .line 1054
    .local v4, "e":Ljava/io/IOException;
    :goto_2
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1056
    .end local v4    # "e":Ljava/io/IOException;
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v1, v3, v2

    :goto_3
    invoke-static {v3}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 1057
    nop

    .line 1058
    return v0

    .line 1056
    :goto_4
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v1, v3, v2

    invoke-static {v3}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 1057
    throw v4
.end method

.method public static getFileLines(Ljava/lang/String;)I
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1032
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/FileUtils;->getFileLines(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public static getFileMD5(Ljava/io/File;)[B
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .line 1195
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1196
    :cond_0
    move-object v1, v0

    .line 1198
    .local v1, "dis":Ljava/security/DigestInputStream;
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1199
    .local v4, "fis":Ljava/io/FileInputStream;
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 1200
    .local v5, "md":Ljava/security/MessageDigest;
    new-instance v6, Ljava/security/DigestInputStream;

    invoke-direct {v6, v4, v5}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    move-object v1, v6

    .line 1201
    const/high16 v6, 0x40000

    new-array v6, v6, [B

    .line 1202
    .local v6, "buffer":[B
    :goto_0
    invoke-virtual {v1, v6}, Ljava/security/DigestInputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_1

    goto :goto_0

    .line 1203
    :cond_1
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v7

    move-object v5, v7

    .line 1204
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1208
    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 1204
    return-object v7

    .line 1208
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "md":Ljava/security/MessageDigest;
    .end local v6    # "buffer":[B
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1205
    :catch_0
    move-exception v4

    .line 1206
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1208
    .end local v4    # "e":Ljava/lang/Exception;
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v1, v3, v2

    invoke-static {v3}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 1209
    nop

    .line 1210
    return-object v0

    .line 1208
    :goto_1
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v1, v3, v2

    invoke-static {v3}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 1209
    throw v0
.end method

.method public static getFileMD5(Ljava/lang/String;)[B
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1174
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1175
    .local v0, "file":Ljava/io/File;
    :goto_0
    invoke-static {v0}, Lcom/maya/open/utils/FileUtils;->getFileMD5(Ljava/io/File;)[B

    move-result-object v1

    return-object v1
.end method

.method public static getFileMD5ToString(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 1185
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileMD5(Ljava/io/File;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/FileUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileMD5ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1163
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1164
    .local v0, "file":Ljava/io/File;
    :goto_0
    invoke-static {v0}, Lcom/maya/open/utils/FileUtils;->getFileMD5ToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFileName(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 1243
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1244
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1254
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1255
    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1256
    .local v0, "lastSep":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    move-object v1, p0

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getFileNameNoExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 1266
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1267
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/FileUtils;->getFileNameNoExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileNameNoExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1277
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1278
    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1279
    .local v0, "lastPoi":I
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1280
    .local v1, "lastSep":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 1281
    if-ne v0, v2, :cond_1

    move-object v2, p0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    .line 1283
    :cond_2
    if-eq v0, v2, :cond_4

    if-le v1, v0, :cond_3

    goto :goto_1

    .line 1286
    :cond_3
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1284
    :cond_4
    :goto_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getFileSize(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .line 1099
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileLength(Ljava/io/File;)J

    move-result-wide v0

    .line 1100
    .local v0, "len":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lcom/maya/open/utils/FileUtils;->byte2FitMemorySize(J)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method public static getFileSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1089
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/FileUtils;->getFileSize(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static input2OutputStream(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;

    .line 1334
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1336
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1337
    .local v3, "os":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    new-array v5, v4, [B

    .line 1339
    .local v5, "b":[B
    :goto_0
    invoke-virtual {p0, v5, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    move v7, v6

    .local v7, "len":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    .line 1340
    invoke-virtual {v3, v5, v2, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1342
    :cond_1
    nop

    .line 1347
    new-array v0, v1, [Ljava/io/Closeable;

    aput-object p0, v0, v2

    invoke-static {v0}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 1342
    return-object v3

    .line 1347
    .end local v3    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "b":[B
    .end local v7    # "len":I
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1343
    :catch_0
    move-exception v3

    .line 1344
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1345
    nop

    .line 1347
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object p0, v1, v2

    invoke-static {v1}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 1345
    return-object v0

    .line 1347
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object p0, v1, v2

    invoke-static {v1}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 1348
    throw v0
.end method

.method private static inputStream2Bytes(Ljava/io/InputStream;)[B
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;

    .line 1323
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1324
    :cond_0
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->input2OutputStream(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static isDir(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 141
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->isFileExists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDir(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dirPath"    # Ljava/lang/String;

    .line 131
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/FileUtils;->isDir(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static isFile(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 161
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->isFileExists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 151
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/FileUtils;->isFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static isFileExists(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 88
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFileExists(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 78
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/FileUtils;->isFileExists(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static isSpace(Ljava/lang/String;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 1396
    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 1397
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1398
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1399
    const/4 v0, 0x0

    return v0

    .line 1397
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1402
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_2
    return v0
.end method

.method public static listFilesInDir(Ljava/io/File;)Ljava/util/List;
    .locals 6
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 554
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->isDir(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 555
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 557
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_2

    array-length v2, v1

    if-eqz v2, :cond_2

    .line 558
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 559
    .local v4, "file":Ljava/io/File;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 561
    invoke-static {v4}, Lcom/maya/open/utils/FileUtils;->listFilesInDir(Ljava/io/File;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 558
    .end local v4    # "file":Ljava/io/File;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 565
    :cond_2
    return-object v0
.end method

.method public static listFilesInDir(Ljava/io/File;Z)Ljava/util/List;
    .locals 3
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "isRecursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 527
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->isDir(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 528
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->listFilesInDir(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 529
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 530
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 531
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_2

    array-length v2, v1

    if-eqz v2, :cond_2

    .line 532
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 534
    :cond_2
    return-object v0
.end method

.method public static listFilesInDir(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "dirPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 544
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/FileUtils;->listFilesInDir(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDir(Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .param p0, "dirPath"    # Ljava/lang/String;
    .param p1, "isRecursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 516
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/maya/open/utils/FileUtils;->listFilesInDir(Ljava/io/File;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;
    .locals 7
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "filter"    # Ljava/io/FilenameFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FilenameFilter;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 696
    if-eqz p0, :cond_4

    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->isDir(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 697
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 698
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 699
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_3

    array-length v2, v1

    if-eqz v2, :cond_3

    .line 700
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 701
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 702
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 705
    invoke-static {v4, p1}, Lcom/maya/open/utils/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 700
    .end local v4    # "file":Ljava/io/File;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 709
    :cond_3
    return-object v0

    .line 696
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v1    # "files":[Ljava/io/File;
    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FilenameFilter;Z)Ljava/util/List;
    .locals 7
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "filter"    # Ljava/io/FilenameFilter;
    .param p2, "isRecursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FilenameFilter;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 663
    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/maya/open/utils/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 664
    :cond_0
    if-eqz p0, :cond_4

    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->isDir(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 665
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 666
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 667
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_3

    array-length v2, v1

    if-eqz v2, :cond_3

    .line 668
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 669
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 670
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    .end local v4    # "file":Ljava/io/File;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 674
    :cond_3
    return-object v0

    .line 664
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v1    # "files":[Ljava/io/File;
    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static listFilesInDirWithFilter(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 626
    if-eqz p0, :cond_4

    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->isDir(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 627
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 628
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 629
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_3

    array-length v2, v1

    if-eqz v2, :cond_3

    .line 630
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 631
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 632
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 635
    invoke-static {v4, p1}, Lcom/maya/open/utils/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 630
    .end local v4    # "file":Ljava/io/File;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 639
    :cond_3
    return-object v0

    .line 626
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v1    # "files":[Ljava/io/File;
    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static listFilesInDirWithFilter(Ljava/io/File;Ljava/lang/String;Z)Ljava/util/List;
    .locals 7
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "suffix"    # Ljava/lang/String;
    .param p2, "isRecursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 591
    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/maya/open/utils/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 592
    :cond_0
    if-eqz p0, :cond_4

    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->isDir(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 593
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 594
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 595
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_3

    array-length v2, v1

    if-eqz v2, :cond_3

    .line 596
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 597
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 598
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    .end local v4    # "file":Ljava/io/File;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 602
    :cond_3
    return-object v0

    .line 592
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v1    # "files":[Ljava/io/File;
    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static listFilesInDirWithFilter(Ljava/lang/String;Ljava/io/FilenameFilter;)Ljava/util/List;
    .locals 1
    .param p0, "dirPath"    # Ljava/lang/String;
    .param p1, "filter"    # Ljava/io/FilenameFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/FilenameFilter;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 685
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/maya/open/utils/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDirWithFilter(Ljava/lang/String;Ljava/io/FilenameFilter;Z)Ljava/util/List;
    .locals 1
    .param p0, "dirPath"    # Ljava/lang/String;
    .param p1, "filter"    # Ljava/io/FilenameFilter;
    .param p2, "isRecursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/FilenameFilter;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 651
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/maya/open/utils/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/io/FilenameFilter;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDirWithFilter(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "dirPath"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 614
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/maya/open/utils/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listFilesInDirWithFilter(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .param p0, "dirPath"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .param p2, "isRecursive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 578
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/maya/open/utils/FileUtils;->listFilesInDirWithFilter(Ljava/io/File;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static moveDir(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .param p0, "srcDir"    # Ljava/io/File;
    .param p1, "destDir"    # Ljava/io/File;

    .line 391
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/maya/open/utils/FileUtils;->copyOrMoveDir(Ljava/io/File;Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method public static moveDir(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "srcDirPath"    # Ljava/lang/String;
    .param p1, "destDirPath"    # Ljava/lang/String;

    .line 380
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/open/utils/FileUtils;->moveDir(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static moveFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;

    .line 413
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/maya/open/utils/FileUtils;->copyOrMoveFile(Ljava/io/File;Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method public static moveFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "srcFilePath"    # Ljava/lang/String;
    .param p1, "destFilePath"    # Ljava/lang/String;

    .line 402
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/open/utils/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static readFile2Bytes(Ljava/io/File;)[B
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 956
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 958
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Lcom/maya/open/utils/FileUtils;->inputStream2Bytes(Ljava/io/InputStream;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 959
    :catch_0
    move-exception v1

    .line 960
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 961
    return-object v0
.end method

.method public static readFile2Bytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 946
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/FileUtils;->readFile2Bytes(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method public static readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "file"    # Ljava/io/File;
    .param p1, "st"    # I
    .param p2, "end"    # I
    .param p3, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 871
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 872
    :cond_0
    if-le p1, p2, :cond_1

    return-object v0

    .line 873
    :cond_1
    move-object v1, v0

    .line 876
    .local v1, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x1

    .line 877
    .local v2, "curLine":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 878
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p3}, Lcom/maya/open/utils/FileUtils;->isSpace(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 879
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v6

    goto :goto_0

    .line 881
    :cond_2
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v6

    .line 883
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "line":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 884
    if-le v2, p2, :cond_3

    goto :goto_1

    .line 885
    :cond_3
    if-gt p1, v2, :cond_4

    if-gt v2, p2, :cond_4

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 888
    :cond_5
    :goto_1
    nop

    .line 893
    new-array v0, v4, [Ljava/io/Closeable;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 888
    return-object v5

    .line 893
    .end local v2    # "curLine":I
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 889
    :catch_0
    move-exception v2

    .line 890
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 891
    nop

    .line 893
    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v1, v4, v3

    invoke-static {v4}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 891
    return-object v0

    .line 893
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 894
    throw v0
.end method

.method public static readFile2List(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 844
    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-static {p0, v0, v1, p1}, Lcom/maya/open/utils/FileUtils;->readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readFile2List(Ljava/lang/String;IILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "st"    # I
    .param p2, "end"    # I
    .param p3, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 858
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/maya/open/utils/FileUtils;->readFile2List(Ljava/io/File;IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readFile2List(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 833
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/maya/open/utils/FileUtils;->readFile2List(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readFile2String(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charsetName"    # Ljava/lang/String;

    .line 916
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 917
    :cond_0
    move-object v1, v0

    .line 919
    .local v1, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 920
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Lcom/maya/open/utils/FileUtils;->isSpace(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 921
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v5

    goto :goto_0

    .line 923
    :cond_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v5

    .line 926
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 927
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 930
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v4, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 935
    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 930
    return-object v5

    .line 935
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 931
    :catch_0
    move-exception v4

    .line 932
    .local v4, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 933
    nop

    .line 935
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v1, v3, v2

    invoke-static {v3}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 933
    return-object v0

    .line 935
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v1, v3, v2

    invoke-static {v3}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 936
    throw v0
.end method

.method public static readFile2String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "charsetName"    # Ljava/lang/String;

    .line 905
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/maya/open/utils/FileUtils;->readFile2String(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rename(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "newName"    # Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 113
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 115
    :cond_1
    invoke-static {p1}, Lcom/maya/open/utils/FileUtils;->isSpace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 117
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    return v2

    .line 118
    :cond_3
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, "newFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 121
    invoke-virtual {p0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 120
    const/4 v0, 0x1

    goto :goto_0

    .line 121
    :cond_4
    nop

    .line 120
    :goto_0
    return v0
.end method

.method public static rename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "newName"    # Ljava/lang/String;

    .line 99
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/maya/open/utils/FileUtils;->rename(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static searchFileInDir(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 733
    if-eqz p0, :cond_4

    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->isDir(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 734
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 735
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 736
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_3

    array-length v2, v1

    if-eqz v2, :cond_3

    .line 737
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 738
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 739
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 742
    invoke-static {v4, p1}, Lcom/maya/open/utils/FileUtils;->searchFileInDir(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 737
    .end local v4    # "file":Ljava/io/File;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 746
    :cond_3
    return-object v0

    .line 733
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v1    # "files":[Ljava/io/File;
    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static searchFileInDir(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "dirPath"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 721
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/maya/open/utils/FileUtils;->searchFileInDir(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;Z)Z
    .locals 9
    .param p0, "file"    # Ljava/io/File;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "append"    # Z

    .line 770
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 771
    :cond_0
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->createOrExistsFile(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 772
    :cond_1
    const/4 v1, 0x0

    .line 774
    .local v1, "os":Ljava/io/OutputStream;
    const/4 v2, 0x2

    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v4

    .line 775
    const/16 v4, 0x400

    new-array v5, v4, [B

    .line 777
    .local v5, "data":[B
    :goto_0
    invoke-virtual {p1, v5, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    move v7, v6

    .local v7, "len":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    .line 778
    invoke-virtual {v1, v5, v0, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 780
    :cond_2
    nop

    .line 785
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object p1, v2, v0

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 780
    return v3

    .line 785
    .end local v5    # "data":[B
    .end local v7    # "len":I
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 781
    :catch_0
    move-exception v4

    .line 782
    .local v4, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 783
    nop

    .line 785
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object p1, v2, v0

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 783
    return v0

    .line 785
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object p1, v2, v0

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 786
    throw v4

    .line 770
    .end local v1    # "os":Ljava/io/OutputStream;
    :cond_3
    :goto_2
    return v0
.end method

.method public static writeFileFromIS(Ljava/lang/String;Ljava/io/InputStream;Z)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "append"    # Z

    .line 758
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/maya/open/utils/FileUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;Z)Z

    move-result v0

    return v0
.end method

.method public static writeFileFromString(Ljava/io/File;Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "append"    # Z

    .line 810
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 811
    :cond_0
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->createOrExistsFile(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 812
    :cond_1
    const/4 v1, 0x0

    .line 814
    .local v1, "bw":Ljava/io/BufferedWriter;
    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p0, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v1, v3

    .line 815
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    nop

    .line 821
    new-array v3, v2, [Ljava/io/Closeable;

    aput-object v1, v3, v0

    invoke-static {v3}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 816
    return v2

    .line 821
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 817
    :catch_0
    move-exception v3

    .line 818
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 819
    nop

    .line 821
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 819
    return v0

    .line 821
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/maya/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 822
    throw v3

    .line 810
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    :cond_2
    :goto_1
    return v0
.end method

.method public static writeFileFromString(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "append"    # Z

    .line 798
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/maya/open/utils/FileUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
