.class public final Lcom/maya/open/utils/AppUtils;
.super Ljava/lang/Object;
.source "AppUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/utils/AppUtils$AppInfo;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs cleanAppData(Landroid/content/Context;[Ljava/io/File;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dirs"    # [Ljava/io/File;

    .line 695
    invoke-static {p0}, Lcom/maya/open/utils/CleanUtils;->cleanInternalCache(Landroid/content/Context;)Z

    move-result v0

    .line 696
    .local v0, "isSuccess":Z
    invoke-static {p0}, Lcom/maya/open/utils/CleanUtils;->cleanInternalDbs(Landroid/content/Context;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 697
    invoke-static {p0}, Lcom/maya/open/utils/CleanUtils;->cleanInternalSP(Landroid/content/Context;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 698
    invoke-static {p0}, Lcom/maya/open/utils/CleanUtils;->cleanInternalFiles(Landroid/content/Context;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 699
    invoke-static {p0}, Lcom/maya/open/utils/CleanUtils;->cleanExternalCache(Landroid/content/Context;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 700
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 701
    .local v3, "dir":Ljava/io/File;
    invoke-static {v3}, Lcom/maya/open/utils/CleanUtils;->cleanCustomCache(Ljava/io/File;)Z

    move-result v4

    and-int/2addr v0, v4

    .line 700
    .end local v3    # "dir":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 703
    :cond_0
    return v0
.end method

.method public static varargs cleanAppData(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dirPaths"    # [Ljava/lang/String;

    .line 680
    array-length v0, p1

    new-array v0, v0, [Ljava/io/File;

    .line 681
    .local v0, "dirs":[Ljava/io/File;
    const/4 v1, 0x0

    .line 682
    .local v1, "i":I
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 683
    .local v4, "dirPath":Ljava/lang/String;
    add-int/lit8 v5, v1, 0x1

    .local v5, "i":I
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v6, v0, v1

    .line 682
    .end local v1    # "i":I
    .end local v4    # "dirPath":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    move v1, v5

    goto :goto_0

    .line 685
    .end local v5    # "i":I
    .restart local v1    # "i":I
    :cond_0
    invoke-static {p0, v0}, Lcom/maya/open/utils/AppUtils;->cleanAppData(Landroid/content/Context;[Ljava/io/File;)Z

    move-result v2

    return v2
.end method

.method public static getAppDetailsSettings(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/maya/open/utils/AppUtils;->getAppDetailsSettings(Landroid/content/Context;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public static getAppDetailsSettings(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 206
    invoke-static {p1}, Lcom/maya/open/utils/AppUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 207
    :cond_0
    invoke-static {p1}, Lcom/maya/open/utils/IntentUtils;->getAppDetailsSettingsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 208
    return-void
.end method

.method public static getAppIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 246
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/maya/open/utils/AppUtils;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 257
    invoke-static {p1}, Lcom/maya/open/utils/AppUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 259
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 260
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 261
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    :goto_0
    return-object v1

    .line 262
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 264
    return-object v1
.end method

.method public static getAppInfo(Landroid/content/Context;)Lcom/maya/open/utils/AppUtils$AppInfo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 609
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/maya/open/utils/AppUtils;->getAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/maya/open/utils/AppUtils$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/maya/open/utils/AppUtils$AppInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 622
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 623
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 624
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    invoke-static {v0, v1}, Lcom/maya/open/utils/AppUtils;->getBean(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Lcom/maya/open/utils/AppUtils$AppInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 625
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 626
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 627
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/maya/open/utils/AppUtils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 228
    invoke-static {p1}, Lcom/maya/open/utils/AppUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 230
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 231
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 232
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    :goto_0
    return-object v1

    .line 233
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 235
    return-object v1
.end method

.method public static getAppPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/maya/open/utils/AppUtils;->getAppPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 286
    invoke-static {p1}, Lcom/maya/open/utils/AppUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 288
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 289
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 290
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    :goto_0
    return-object v1

    .line 291
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 293
    return-object v1
.end method

.method public static getAppSignature(Landroid/content/Context;)[Landroid/content/pm/Signature;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 420
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/maya/open/utils/AppUtils;->getAppSignature(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    return-object v0
.end method

.method public static getAppSignature(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PackageManagerGetSignatures"
        }
    .end annotation

    .line 432
    invoke-static {p1}, Lcom/maya/open/utils/AppUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 434
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 435
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/16 v2, 0x40

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 436
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    :goto_0
    return-object v1

    .line 437
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 438
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 439
    return-object v1
.end method

.method public static getAppSignatureSHA1(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 451
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/maya/open/utils/AppUtils;->getAppSignatureSHA1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppSignatureSHA1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 463
    invoke-static {p0, p1}, Lcom/maya/open/utils/AppUtils;->getAppSignature(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    .line 464
    .local v0, "signature":[Landroid/content/pm/Signature;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 465
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/maya/open/utils/EncryptUtils;->encryptSHA1ToString([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(?<=[0-9A-F]{2})[0-9A-F]{2}"

    const-string v3, ":$0"

    .line 466
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 465
    return-object v1
.end method

.method public static getAppVersionCode(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 333
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/maya/open/utils/AppUtils;->getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 344
    invoke-static {p1}, Lcom/maya/open/utils/AppUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 346
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 347
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 348
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    :goto_0
    return v1

    .line 349
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 351
    return v1
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/maya/open/utils/AppUtils;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 315
    invoke-static {p1}, Lcom/maya/open/utils/AppUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 317
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 318
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 319
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    :goto_0
    return-object v1

    .line 320
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 322
    return-object v1
.end method

.method public static getAppsInfo(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/maya/open/utils/AppUtils$AppInfo;",
            ">;"
        }
    .end annotation

    .line 660
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 661
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/utils/AppUtils$AppInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 663
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 664
    .local v2, "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 665
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    invoke-static {v1, v4}, Lcom/maya/open/utils/AppUtils;->getBean(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Lcom/maya/open/utils/AppUtils$AppInfo;

    move-result-object v5

    .line 666
    .local v5, "ai":Lcom/maya/open/utils/AppUtils$AppInfo;
    if-nez v5, :cond_0

    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    .end local v5    # "ai":Lcom/maya/open/utils/AppUtils$AppInfo;
    goto :goto_0

    .line 667
    .restart local v4    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v5    # "ai":Lcom/maya/open/utils/AppUtils$AppInfo;
    :cond_0
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    .end local v5    # "ai":Lcom/maya/open/utils/AppUtils$AppInfo;
    goto :goto_0

    .line 669
    :cond_1
    return-object v0
.end method

.method private static getBean(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Lcom/maya/open/utils/AppUtils$AppInfo;
    .locals 18
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .line 639
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_1

    .line 640
    :cond_0
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 641
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v11, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 642
    .local v11, "packageName":Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 643
    .local v12, "name":Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 644
    .local v13, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v14, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 645
    .local v14, "packagePath":Ljava/lang/String;
    iget-object v15, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 646
    .local v15, "versionName":Ljava/lang/String;
    iget v9, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 647
    .local v9, "versionCode":I
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 648
    .local v10, "isSystem":Z
    :goto_0
    new-instance v16, Lcom/maya/open/utils/AppUtils$AppInfo;

    move-object/from16 v3, v16

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    move/from16 v17, v9

    .end local v9    # "versionCode":I
    .local v17, "versionCode":I
    invoke-direct/range {v3 .. v10}, Lcom/maya/open/utils/AppUtils$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object v16

    .line 639
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "isSystem":Z
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v14    # "packagePath":Ljava/lang/String;
    .end local v15    # "versionName":Ljava/lang/String;
    .end local v17    # "versionCode":I
    :cond_2
    :goto_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public static installApp(Landroid/app/Activity;Ljava/io/File;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "requestCode"    # I

    .line 83
    invoke-static {p1}, Lcom/maya/open/utils/FileUtils;->isFileExists(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-static {p1}, Lcom/maya/open/utils/IntentUtils;->getInstallAppIntent(Ljava/io/File;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 85
    return-void
.end method

.method public static installApp(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 72
    invoke-static {p1}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/maya/open/utils/AppUtils;->installApp(Landroid/app/Activity;Ljava/io/File;I)V

    .line 73
    return-void
.end method

.method public static installApp(Landroid/content/Context;Ljava/io/File;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .line 60
    invoke-static {p1}, Lcom/maya/open/utils/FileUtils;->isFileExists(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-static {p1}, Lcom/maya/open/utils/IntentUtils;->getInstallAppIntent(Ljava/io/File;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 62
    return-void
.end method

.method public static installApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/maya/open/utils/AppUtils;->installApp(Landroid/content/Context;Ljava/io/File;)V

    .line 51
    return-void
.end method

.method public static installAppSilent(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .line 95
    invoke-static {p1}, Lcom/maya/open/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 96
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/maya/open/utils/FileUtils;->isFileExists(Ljava/io/File;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 97
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LD_LIBRARY_PATH=/vendor/lib:/system/lib pm install "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "command":Ljava/lang/String;
    invoke-static {p0}, Lcom/maya/open/utils/AppUtils;->isSystemApp(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-static {v1, v3, v4}, Lcom/maya/open/utils/ShellUtils;->execCmd(Ljava/lang/String;ZZ)Lcom/maya/open/utils/ShellUtils$CommandResult;

    move-result-object v3

    .line 99
    .local v3, "commandResult":Lcom/maya/open/utils/ShellUtils$CommandResult;
    iget-object v5, v3, Lcom/maya/open/utils/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v3, Lcom/maya/open/utils/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "success"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    return v2
.end method

.method public static isAppDebug(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 391
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/maya/open/utils/AppUtils;->isAppDebug(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAppDebug(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 402
    invoke-static {p1}, Lcom/maya/open/utils/AppUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 404
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 405
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 406
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_1

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    .line 407
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 409
    return v1
.end method

.method public static isAppForeground(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 476
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 477
    .local v0, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 478
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 479
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 480
    .local v4, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_1

    .line 481
    iget-object v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 483
    .end local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    goto :goto_0

    .line 484
    :cond_2
    return v2

    .line 478
    :cond_3
    :goto_1
    return v2
.end method

.method public static isAppForeground(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 497
    invoke-static {p1}, Lcom/maya/open/utils/AppUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/maya/open/utils/ProcessUtils;->getForegroundProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAppRoot()Z
    .locals 3

    .line 148
    const-string v0, "echo root"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/maya/open/utils/ShellUtils;->execCmd(Ljava/lang/String;Z)Lcom/maya/open/utils/ShellUtils$CommandResult;

    move-result-object v0

    .line 149
    .local v0, "result":Lcom/maya/open/utils/ShellUtils$CommandResult;
    iget v2, v0, Lcom/maya/open/utils/ShellUtils$CommandResult;->result:I

    if-nez v2, :cond_0

    .line 150
    return v1

    .line 152
    :cond_0
    iget-object v1, v0, Lcom/maya/open/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 153
    const-string v1, "isAppRoot"

    iget-object v2, v0, Lcom/maya/open/utils/ShellUtils$CommandResult;->errorMsg:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static isInstallApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/maya/open/utils/AppUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/maya/open/utils/IntentUtils;->getLaunchAppIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isSpace(Ljava/lang/String;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 707
    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 708
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 709
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 710
    const/4 v0, 0x0

    return v0

    .line 708
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 713
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_2
    return v0
.end method

.method public static isSystemApp(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 362
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/maya/open/utils/AppUtils;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 373
    invoke-static {p1}, Lcom/maya/open/utils/AppUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 375
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 376
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 377
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v4, v3

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    .line 378
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 380
    return v1
.end method

.method public static launchApp(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 176
    invoke-static {p1}, Lcom/maya/open/utils/AppUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-static {p0, p1}, Lcom/maya/open/utils/IntentUtils;->getLaunchAppIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 178
    return-void
.end method

.method public static launchApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 164
    invoke-static {p1}, Lcom/maya/open/utils/AppUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 165
    :cond_0
    invoke-static {p0, p1}, Lcom/maya/open/utils/IntentUtils;->getLaunchAppIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 166
    return-void
.end method

.method public static uninstallApp(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 121
    invoke-static {p1}, Lcom/maya/open/utils/AppUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-static {p1}, Lcom/maya/open/utils/IntentUtils;->getUninstallAppIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 123
    return-void
.end method

.method public static uninstallApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 109
    invoke-static {p1}, Lcom/maya/open/utils/AppUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-static {p1}, Lcom/maya/open/utils/IntentUtils;->getUninstallAppIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 111
    return-void
.end method

.method public static uninstallAppSilent(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isKeepData"    # Z

    .line 135
    invoke-static {p1}, Lcom/maya/open/utils/AppUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LD_LIBRARY_PATH=/vendor/lib:/system/lib pm uninstall "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string v2, "-k "

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "command":Ljava/lang/String;
    invoke-static {p0}, Lcom/maya/open/utils/AppUtils;->isSystemApp(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-static {v0, v2, v3}, Lcom/maya/open/utils/ShellUtils;->execCmd(Ljava/lang/String;ZZ)Lcom/maya/open/utils/ShellUtils$CommandResult;

    move-result-object v2

    .line 138
    .local v2, "commandResult":Lcom/maya/open/utils/ShellUtils$CommandResult;
    iget-object v4, v2, Lcom/maya/open/utils/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/maya/open/utils/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "success"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1
.end method
