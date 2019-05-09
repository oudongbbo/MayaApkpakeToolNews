.class public final Lcom/maya/open/utils/CrashUtils;
.super Ljava/lang/Object;
.source "CrashUtils.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static volatile mInstance:Lcom/maya/open/utils/CrashUtils;


# instance fields
.field private crashDir:Ljava/lang/String;

.field private mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mInitialized:Z

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/maya/open/utils/CrashUtils;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/maya/open/utils/CrashUtils;

    .line 26
    invoke-direct {p0}, Lcom/maya/open/utils/CrashUtils;->getCrashHead()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createOrExistsDir(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 162
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

.method private static createOrExistsFile(Ljava/lang/String;)Z
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .line 141
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    return v1

    .line 144
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/open/utils/CrashUtils;->createOrExistsDir(Ljava/io/File;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 146
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 149
    return v2
.end method

.method private getCrashHead()Ljava/lang/String;
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n************* Crash Log Head ****************\nDevice Manufacturer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nDevice Model       : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nAndroid Version    : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nAndroid SDK        : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nApp VersionName    : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/utils/CrashUtils;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nApp VersionCode    : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/maya/open/utils/CrashUtils;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n************* Crash Log Head ****************\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/maya/open/utils/CrashUtils;
    .locals 2

    .line 49
    sget-object v0, Lcom/maya/open/utils/CrashUtils;->mInstance:Lcom/maya/open/utils/CrashUtils;

    if-nez v0, :cond_1

    .line 50
    const-class v0, Lcom/maya/open/utils/CrashUtils;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/maya/open/utils/CrashUtils;->mInstance:Lcom/maya/open/utils/CrashUtils;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Lcom/maya/open/utils/CrashUtils;

    invoke-direct {v1}, Lcom/maya/open/utils/CrashUtils;-><init>()V

    sput-object v1, Lcom/maya/open/utils/CrashUtils;->mInstance:Lcom/maya/open/utils/CrashUtils;

    .line 54
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 56
    :cond_1
    :goto_0
    sget-object v0, Lcom/maya/open/utils/CrashUtils;->mInstance:Lcom/maya/open/utils/CrashUtils;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    iget-boolean v0, p0, Lcom/maya/open/utils/CrashUtils;->mInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 66
    :cond_0
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 68
    .local v0, "baseCache":Ljava/io/File;
    if-nez v0, :cond_1

    return v2

    .line 69
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "crash"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/maya/open/utils/CrashUtils;->crashDir:Ljava/lang/String;

    .line 70
    .end local v0    # "baseCache":Ljava/io/File;
    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 72
    .restart local v0    # "baseCache":Ljava/io/File;
    if-nez v0, :cond_3

    return v2

    .line 73
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "crash"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/maya/open/utils/CrashUtils;->crashDir:Ljava/lang/String;

    .line 76
    .end local v0    # "baseCache":Ljava/io/File;
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 77
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, p0, Lcom/maya/open/utils/CrashUtils;->versionName:Ljava/lang/String;

    .line 78
    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v3, p0, Lcom/maya/open/utils/CrashUtils;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    nop

    .line 83
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/utils/CrashUtils;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 84
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 85
    iput-boolean v1, p0, Lcom/maya/open/utils/CrashUtils;->mInitialized:Z

    return v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 81
    return v2
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 90
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyMMdd HH-mm-ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "now":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/maya/open/utils/CrashUtils;->crashDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "fullPath":Ljava/lang/String;
    invoke-static {v1}, Lcom/maya/open/utils/CrashUtils;->createOrExistsFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 93
    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/maya/open/utils/CrashUtils$1;

    invoke-direct {v3, p0, v1, p2}, Lcom/maya/open/utils/CrashUtils$1;-><init>(Lcom/maya/open/utils/CrashUtils;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 112
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 113
    iget-object v2, p0, Lcom/maya/open/utils/CrashUtils;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/maya/open/utils/CrashUtils;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v2, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 116
    :cond_1
    return-void
.end method
