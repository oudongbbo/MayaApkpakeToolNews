.class public final Lcom/maya/open/utils/CleanUtils;
.super Ljava/lang/Object;
.source "CleanUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static cleanCustomCache(Ljava/io/File;)Z
    .locals 1
    .param p0, "dir"    # Ljava/io/File;

    .line 99
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->deleteFilesInDir(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static cleanCustomCache(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dirPath"    # Ljava/lang/String;

    .line 89
    invoke-static {p0}, Lcom/maya/open/utils/FileUtils;->deleteFilesInDir(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static cleanExternalCache(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 79
    invoke-static {}, Lcom/maya/open/utils/SDCardUtils;->isSDCardEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/FileUtils;->deleteFilesInDir(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static cleanInternalCache(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/FileUtils;->deleteFilesInDir(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static cleanInternalDbByName(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dbName"    # Ljava/lang/String;

    .line 59
    invoke-virtual {p0, p1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static cleanInternalDbs(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "databases"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/FileUtils;->deleteFilesInDir(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static cleanInternalFiles(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/FileUtils;->deleteFilesInDir(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static cleanInternalSP(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "shared_prefs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/utils/FileUtils;->deleteFilesInDir(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
