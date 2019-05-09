.class public Lcom/maya/sdk/framework/utils/CommonUtil;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "string"    # Ljava/lang/String;

    .line 443
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 444
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 443
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    .local v0, "hash":[B
    nop

    .line 448
    nop

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 452
    .local v1, "hex":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-byte v4, v0, v3

    .line 453
    .local v4, "b":B
    and-int/lit16 v5, v4, 0xff

    const/16 v6, 0x10

    if-ge v5, v6, :cond_0

    .line 454
    const-string v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    :cond_0
    and-int/lit16 v5, v4, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 457
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 447
    .end local v0    # "hash":[B
    .end local v1    # "hex":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Huh, UTF-8 should be supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 445
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 446
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Huh, MD5 should be supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static checkPackInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pack"    # Ljava/lang/String;

    .line 562
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 563
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 564
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 567
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    if-nez v1, :cond_0

    .line 568
    return v0

    .line 570
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static copyString2System(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "tips"    # Ljava/lang/String;

    .line 258
    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 262
    :cond_0
    const/4 v0, 0x1

    .line 264
    .local v0, "isCopySuccess":Z
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-le v1, v2, :cond_1

    .line 265
    const-string v1, "clipboard"

    .line 266
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 267
    .local v1, "c":Landroid/content/ClipboardManager;
    const-string v2, "code"

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 269
    .end local v1    # "c":Landroid/content/ClipboardManager;
    goto :goto_0

    .line 270
    :cond_1
    const-string v1, "clipboard"

    .line 271
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    .line 272
    .local v1, "c":Landroid/text/ClipboardManager;
    invoke-virtual {v1, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .end local v1    # "c":Landroid/text/ClipboardManager;
    :goto_0
    goto :goto_1

    .line 275
    :catch_0
    move-exception v1

    .line 276
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 277
    const/4 v0, 0x0

    .line 279
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0

    .line 259
    .end local v0    # "isCopySuccess":Z
    :cond_2
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 288
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static downLoadBitmap(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2
    .param p0, "link"    # Ljava/lang/String;
    .param p1, "handler"    # Landroid/os/Handler;

    .line 462
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/maya/sdk/framework/utils/CommonUtil$1;

    invoke-direct {v1, p0, p1}, Lcom/maya/sdk/framework/utils/CommonUtil$1;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 491
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 492
    return-void
.end method

.method public static getAppIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 607
    invoke-static {p0}, Lcom/maya/open/utils/AppUtils;->getAppInfo(Landroid/content/Context;)Lcom/maya/open/utils/AppUtils$AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/utils/AppUtils$AppInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getAppInfo(Landroid/content/Context;)Lcom/maya/open/utils/AppUtils$AppInfo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 332
    invoke-static {p0}, Lcom/maya/open/utils/AppUtils;->getAppInfo(Landroid/content/Context;)Lcom/maya/open/utils/AppUtils$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 619
    invoke-static {p0}, Lcom/maya/open/utils/AppUtils;->getAppInfo(Landroid/content/Context;)Lcom/maya/open/utils/AppUtils$AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/utils/AppUtils$AppInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getColorByName(Ljava/lang/String;Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 195
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 196
    .local v0, "id":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 198
    .end local v0    # "id":I
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 200
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " type:color,name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " NOT FOUND!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 202
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getDisplayScreenResolution(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;

    .line 507
    const/4 v0, 0x0

    .line 508
    .local v0, "screen_w":I
    const/4 v1, 0x0

    .line 510
    .local v1, "screen_h":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    move v1, v2

    .line 511
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 514
    nop

    .line 515
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Run2 Calibration  resolution:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 512
    :catch_0
    move-exception v2

    .line 513
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 225
    const-string v0, ""

    .line 227
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 228
    .local v1, "inputReader":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 229
    .local v2, "bufReader":Ljava/io/BufferedReader;
    const-string v3, ""

    .line 230
    .local v3, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    if-eqz v4, :cond_0

    .line 231
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    goto :goto_0

    .line 236
    .end local v1    # "inputReader":Ljava/io/InputStreamReader;
    .end local v2    # "bufReader":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :cond_0
    nop

    .line 238
    return-object v0

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 235
    return-object v0
.end method

.method public static getHpixels(Landroid/content/Context;)I
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .line 529
    invoke-static {p0}, Lcom/maya/sdk/framework/utils/CommonUtil;->getDisplayScreenResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "screenResolution":Ljava/lang/String;
    const-string v1, "*"

    .line 531
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 530
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, "hpixels":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public static getImageFromAssetsFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "con"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 425
    const/4 v0, 0x0

    .line 426
    .local v0, "image":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 428
    .local v1, "am":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 429
    .local v2, "is":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    .line 430
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    .end local v2    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 431
    :catch_0
    move-exception v2

    .line 432
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 435
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 102
    new-instance v0, Lcom/maya/sdk/framework/model/DeviceIdTool;

    invoke-direct {v0, p0}, Lcom/maya/sdk/framework/model/DeviceIdTool;-><init>(Landroid/content/Context;)V

    .line 104
    .local v0, "deviceUtil":Lcom/maya/sdk/framework/model/DeviceIdTool;
    invoke-static {p0}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getMobileMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "mac":Ljava/lang/String;
    const-string v2, "sp"

    .line 106
    .local v2, "type":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/maya/sdk/framework/model/DeviceIdTool;->getLocalMac()Ljava/lang/String;

    move-result-object v1

    .line 109
    const-string v2, "local"

    .line 111
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    invoke-static {p0}, Lcom/maya/open/utils/DeviceUtils;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 114
    const-string v2, "api"

    .line 116
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 118
    invoke-static {}, Lcom/maya/sdk/framework/utils/CommonUtil;->getUniqueID()Ljava/lang/String;

    move-result-object v1

    .line 119
    const-string v2, "build"

    .line 122
    :cond_2
    const-string v3, "[^\\w]"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {p0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setMobileMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/model/DeviceIdTool;->setLocalMac(Ljava/lang/String;)V

    .line 126
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-->-->Mac:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    return-object v1
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 1

    .line 133
    invoke-static {}, Lcom/maya/open/utils/DeviceUtils;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMobileDevId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 60
    invoke-static {p0}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getMobileDevid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    new-instance v1, Lcom/maya/sdk/framework/model/DeviceIdTool;

    invoke-direct {v1, p0}, Lcom/maya/sdk/framework/model/DeviceIdTool;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/maya/sdk/framework/model/DeviceIdTool;->getKeyId()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {p0, v0}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setMobileDevid(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    :cond_0
    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .line 340
    invoke-static {}, Lcom/maya/open/utils/DeviceUtils;->getModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetWorkTypeName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 349
    const-string v0, ""

    .line 350
    .local v0, "netType":Ljava/lang/String;
    invoke-static {p0}, Lcom/maya/open/utils/NetworkUtils;->getNetworkType(Landroid/content/Context;)Lcom/maya/open/utils/NetworkUtils$NetworkType;

    move-result-object v1

    .line 352
    .local v1, "type":Lcom/maya/open/utils/NetworkUtils$NetworkType;
    sget-object v2, Lcom/maya/sdk/framework/utils/CommonUtil$2;->$SwitchMap$com$maya$open$utils$NetworkUtils$NetworkType:[I

    invoke-virtual {v1}, Lcom/maya/open/utils/NetworkUtils$NetworkType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 369
    :pswitch_0
    const-string v0, "NO_NETWORK"

    .line 370
    goto :goto_0

    .line 366
    :pswitch_1
    const-string v0, "UNKNOWN"

    .line 367
    goto :goto_0

    .line 363
    :pswitch_2
    const-string v0, "2G"

    .line 364
    goto :goto_0

    .line 360
    :pswitch_3
    const-string v0, "3G"

    .line 361
    goto :goto_0

    .line 357
    :pswitch_4
    const-string v0, "4G"

    .line 358
    goto :goto_0

    .line 354
    :pswitch_5
    const-string v0, "WIFI"

    .line 355
    nop

    .line 375
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getOSVersion()Ljava/lang/String;
    .locals 1

    .line 336
    invoke-static {}, Lcom/maya/open/utils/DeviceUtils;->getSDKVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOSVersionId()I
    .locals 1

    .line 56
    invoke-static {}, Lcom/maya/open/utils/DeviceUtils;->getSDKVersion()I

    move-result v0

    return v0
.end method

.method public static getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pack"    # Ljava/lang/String;

    .line 495
    const/4 v0, 0x0

    .line 497
    .local v0, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 500
    goto :goto_0

    .line 498
    :catch_0
    move-exception v1

    .line 499
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 501
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-nez v0, :cond_0

    .line 502
    new-instance v1, Landroid/content/pm/PackageInfo;

    invoke-direct {v1}, Landroid/content/pm/PackageInfo;-><init>()V

    move-object v0, v1

    .line 503
    :cond_0
    return-object v0
.end method

.method public static getPhoneIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 71
    new-instance v0, Lcom/maya/sdk/framework/model/DeviceIdTool;

    invoke-direct {v0, p0}, Lcom/maya/sdk/framework/model/DeviceIdTool;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, "deviceUtil":Lcom/maya/sdk/framework/model/DeviceIdTool;
    invoke-static {p0}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getMobileIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "imei":Ljava/lang/String;
    const-string v2, "sp"

    .line 75
    .local v2, "type":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/maya/sdk/framework/model/DeviceIdTool;->getLocalImei()Ljava/lang/String;

    move-result-object v1

    .line 78
    const-string v2, "local"

    .line 80
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 82
    invoke-static {p0}, Lcom/maya/open/utils/PhoneUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 83
    const-string v2, "api"

    .line 85
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    invoke-static {}, Lcom/maya/sdk/framework/utils/CommonUtil;->getUniqueID()Ljava/lang/String;

    move-result-object v1

    .line 88
    const-string v2, "build"

    .line 91
    :cond_2
    const-string v3, "[^\\w]"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {p0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setMobileIMEI(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/model/DeviceIdTool;->setLocalImei(Ljava/lang/String;)V

    .line 95
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-->-->IMEI:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    return-object v1
.end method

.method public static getRandLetter(I)Ljava/lang/String;
    .locals 6
    .param p0, "length"    # I

    .line 668
    const-string v0, "abcdefghijklmnopqrstuvwxyz"

    .line 669
    .local v0, "sources":Ljava/lang/String;
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 670
    .local v1, "rand":Ljava/util/Random;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 671
    .local v2, "flag":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p0, :cond_0

    .line 672
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x17

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 671
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 675
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getRandNumber(I)Ljava/lang/String;
    .locals 6
    .param p0, "length"    # I

    .line 656
    const-string v0, "0123456789"

    .line 657
    .local v0, "sources":Ljava/lang/String;
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 658
    .local v1, "rand":Ljava/util/Random;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 659
    .local v2, "flag":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p0, :cond_0

    .line 660
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x9

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 659
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 663
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 170
    const/4 v0, 0x0

    .line 172
    .local v0, "id":I
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, p1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 176
    goto :goto_0

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " NOT FOUND!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 177
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static getSDPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 537
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 539
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 540
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/download/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 543
    .local v0, "dirFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 544
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :cond_1
    goto :goto_0

    .line 547
    :catch_0
    move-exception v1

    .line 548
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 551
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 553
    .end local v0    # "dirFile":Ljava/io/File;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 181
    const/4 v0, 0x0

    .line 183
    .local v0, "id":I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 188
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " type:string,name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " NOT FOUND!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 190
    .end local v1    # "e":Ljava/lang/Exception;
    const-string v1, ""

    return-object v1
.end method

.method public static getUniqueID()Ljava/lang/String;
    .locals 12

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 154
    .local v0, "t1":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    long-to-int v1, v1

    .line 155
    .local v1, "t2":I
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 156
    .local v2, "t3":I
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    .line 157
    .local v3, "t4":I
    invoke-static {v0}, Lcom/maya/sdk/framework/utils/IntUtil;->getBytes(I)[B

    move-result-object v4

    .line 158
    .local v4, "b1":[B
    invoke-static {v1}, Lcom/maya/sdk/framework/utils/IntUtil;->getBytes(I)[B

    move-result-object v5

    .line 159
    .local v5, "b2":[B
    invoke-static {v2}, Lcom/maya/sdk/framework/utils/IntUtil;->getBytes(I)[B

    move-result-object v6

    .line 160
    .local v6, "b3":[B
    invoke-static {v3}, Lcom/maya/sdk/framework/utils/IntUtil;->getBytes(I)[B

    move-result-object v7

    .line 161
    .local v7, "b4":[B
    const/16 v8, 0x10

    new-array v8, v8, [B

    .line 162
    .local v8, "bUniqueID":[B
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static {v4, v10, v8, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    invoke-static {v5, v10, v8, v9, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    const/16 v11, 0x8

    invoke-static {v6, v10, v8, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    const/16 v11, 0xc

    invoke-static {v7, v10, v8, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    invoke-static {v8}, Lcom/maya/sdk/framework/encrypt/Base64;->encode([B)Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 575
    const/4 v0, 0x0

    move v1, v0

    .line 577
    .local v1, "versionCode":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 578
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 577
    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 581
    goto :goto_0

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 582
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return v1
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 586
    const-string v0, "1.0.0.0"

    .line 589
    .local v0, "versionName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 590
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 589
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 593
    goto :goto_0

    .line 591
    :catch_0
    move-exception v1

    .line 592
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 594
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-object v0
.end method

.method public static getWpixels(Landroid/content/Context;)I
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .line 522
    invoke-static {p0}, Lcom/maya/sdk/framework/utils/CommonUtil;->getDisplayScreenResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "screenResolution":Ljava/lang/String;
    const-string v1, "*"

    .line 524
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 523
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 525
    .local v1, "wpixels":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public static hideSystemKeyBoard(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;

    .line 207
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 208
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 209
    return-void
.end method

.method public static installApkByPath(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .line 631
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 632
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 633
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    const-string v1, "application/vnd.android.package-archive"

    .line 636
    .local v1, "type":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 637
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ".apk"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 638
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 644
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "type":Ljava/lang/String;
    .end local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public static installApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .line 145
    invoke-static {p0, p1}, Lcom/maya/open/utils/AppUtils;->installApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public static isDisplayLoginLogo(Ljava/lang/String;)Z
    .locals 8
    .param p0, "time"    # Ljava/lang/String;

    .line 319
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, "format":Ljava/text/SimpleDateFormat;
    const/4 v1, 0x0

    .line 322
    .local v1, "date":Ljava/util/Date;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 326
    nop

    .line 327
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-ltz v7, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2

    .line 323
    :catch_0
    move-exception v3

    .line 324
    .local v3, "e":Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    .line 325
    return v2
.end method

.method public static isInstallApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 141
    invoke-static {p0, p1}, Lcom/maya/open/utils/AppUtils;->isInstallApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNetConnected(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 137
    invoke-static {p0}, Lcom/maya/open/utils/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 625
    invoke-static {p0}, Lcom/maya/open/utils/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isScreenLandscape(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 303
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 304
    .local v0, "mConfiguration":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 306
    .local v1, "ori":I
    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 308
    return v2

    .line 309
    :cond_0
    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 311
    return v3

    .line 313
    :cond_1
    return v3
.end method

.method public static isScreenOriatationPortrait(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 650
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static launchApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appPackageName"    # Ljava/lang/String;

    .line 149
    invoke-static {p0, p1}, Lcom/maya/open/utils/AppUtils;->launchApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public static mapToJson(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 382
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 386
    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 387
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 388
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const-string v2, ""

    .line 389
    .local v2, "jsonStr":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 391
    .local v3, "obj":Lorg/json/JSONObject;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 393
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 394
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 395
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    goto :goto_1

    .line 396
    :catch_0
    move-exception v4

    .line 397
    .local v4, "e1":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 398
    .end local v4    # "e1":Lorg/json/JSONException;
    :goto_1
    goto :goto_0

    .line 400
    :cond_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 401
    return-object v2

    .line 383
    .end local v0    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "jsonStr":Ljava/lang/String;
    .end local v3    # "obj":Lorg/json/JSONObject;
    :cond_2
    :goto_2
    const-string v0, ""

    return-object v0
.end method

.method public static mapToMapTrim(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 407
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 412
    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 413
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 415
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 416
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 417
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 418
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 421
    :cond_1
    return-void

    .line 409
    .end local v0    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    return-void
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pxValue"    # F

    .line 295
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 296
    .local v0, "scale":F
    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static readPropertites(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Properties;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/lang/String;

    .line 213
    const/4 v0, 0x0

    .line 215
    .local v0, "p":Ljava/util/Properties;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 216
    .local v1, "in":Ljava/io/InputStream;
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    move-object v0, v2

    .line 217
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v1    # "in":Ljava/io/InputStream;
    goto :goto_0

    .line 218
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 221
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method

.method public static toUri(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .line 249
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 250
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 251
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 253
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 254
    return-void
.end method
