.class public Lcom/maya/sdk/framework/utils/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# static fields
.field private static mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRoundConerImage(Landroid/graphics/Bitmap;Ljava/lang/Float;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "mRadius"    # Ljava/lang/Float;

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 83
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 85
    .local v1, "target":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 86
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 87
    .local v3, "rect":Landroid/graphics/RectF;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 88
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 89
    invoke-virtual {v2, p0, v6, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 90
    return-object v1
.end method

.method public static getCacheBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 230
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 231
    invoke-virtual {p0, v0}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 232
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 234
    .local v0, "drawingCache":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 235
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 236
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    goto :goto_0

    .line 238
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v1, 0x0

    .line 240
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1
.end method

.method public static inflate(Landroid/app/Activity;I)Landroid/view/View;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "layout"    # I

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 34
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 35
    .local v1, "view":Landroid/view/View;
    return-object v1
.end method

.method public static inflate(Landroid/content/Context;I)Landroid/view/View;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layout"    # I

    .line 39
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 40
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 41
    .local v1, "view":Landroid/view/View;
    return-object v1
.end method

.method public static saveScreenShot(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "FileParentName"    # Ljava/lang/String;
    .param p2, "FileName"    # Ljava/lang/String;

    .line 97
    move-object/from16 v1, p2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 99
    .local v2, "sdcardExist":Z
    if-eqz v2, :cond_2

    .line 101
    move-object/from16 v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    .line 102
    .local v3, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 103
    .local v4, "display":Landroid/view/Display;
    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 104
    .local v5, "w":I
    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v6

    .line 107
    .local v6, "h":I
    move-object/from16 v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    .line 108
    .local v7, "decorview":Landroid/view/View;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 109
    invoke-virtual {v7, v0}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 111
    invoke-virtual {v7}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v8, 0x0

    invoke-static {v0, v8, v8, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 113
    .local v9, "screenShot":Landroid/graphics/Bitmap;
    invoke-virtual {v7, v8}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 114
    invoke-virtual {v7}, Landroid/view/View;->destroyDrawingCache()V

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 121
    .local v10, "savePath":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "path":Ljava/io/File;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 124
    .local v11, "filepath":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 128
    :cond_0
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_1

    .line 129
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    .line 132
    :cond_1
    const/4 v13, 0x0

    .line 133
    .local v13, "fos":Ljava/io/FileOutputStream;
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v13, v14

    .line 135
    nop

    .line 136
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v15, v0

    .end local v0    # "path":Ljava/io/File;
    .local v15, "path":Ljava/io/File;
    const/16 v0, 0x5a

    invoke-virtual {v9, v14, v0, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 137
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V

    .line 138
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v11    # "filepath":Ljava/lang/String;
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .end local v15    # "path":Ljava/io/File;
    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u6570\u636e\u6709\u8bef\uff0c\u8d26\u53f7\u622a\u56fe\u4fdd\u5b58\u5931\u8d25\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "windowManager":Landroid/view/WindowManager;
    .end local v4    # "display":Landroid/view/Display;
    .end local v5    # "w":I
    .end local v6    # "h":I
    .end local v7    # "decorview":Landroid/view/View;
    .end local v9    # "screenShot":Landroid/graphics/Bitmap;
    .end local v10    # "savePath":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 146
    :cond_2
    move-object/from16 v8, p1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6ca1\u6709\u5b58\u50a8\u5361\uff0c\u8d26\u53f7\u622a\u56fe\u6ca1\u6cd5\u4fdd\u5b58\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 149
    :goto_1
    return-void
.end method

.method public static saveView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "FileName"    # Ljava/lang/String;

    .line 155
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 157
    .local v0, "sdcardExist":Z
    if-eqz v0, :cond_2

    .line 169
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 170
    invoke-virtual {p1, v1}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 171
    const-string v1, "maya_login_bg_dialog"

    const-string v2, "drawable"

    invoke-static {v1, v2, p0}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 175
    .local v1, "screenShot":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "DCIM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "savePath":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    .local v4, "path":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 185
    .local v5, "filepath":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 187
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 189
    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 190
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 193
    :cond_1
    const/4 v7, 0x0

    .line 194
    .local v7, "fos":Ljava/io/FileOutputStream;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v7, v8

    .line 196
    nop

    .line 197
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v1, v8, v9, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 198
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 199
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 201
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "maya_tips_screencap_success"

    invoke-static {v9, p0}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 203
    .local v8, "screenTips":Ljava/lang/String;
    invoke-static {p0, v8, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 207
    .end local v8    # "screenTips":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 209
    .local v8, "uri":Landroid/net/Uri;
    invoke-virtual {v2, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "path":Ljava/io/File;
    .end local v5    # "filepath":Ljava/lang/String;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 212
    :catch_0
    move-exception v2

    .line 213
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 214
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6570\u636e\u6709\u8bef\uff0c\u5e10\u53f7\u622a\u56fe\u4fdd\u5b58\u5931\u8d25\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 216
    .end local v1    # "screenShot":Landroid/graphics/Bitmap;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "savePath":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 217
    :cond_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6ca1\u6709\u5b58\u50a8\u5361\uff0c\u5e10\u53f7\u622a\u56fe\u6ca1\u6cd5\u4fdd\u5b58\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 220
    :goto_1
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "words"    # Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/maya/sdk/framework/utils/ViewUtil;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/maya/sdk/framework/utils/ViewUtil;->mToast:Landroid/widget/Toast;

    .line 52
    :cond_0
    sget-object v0, Lcom/maya/sdk/framework/utils/ViewUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 53
    sget-object v0, Lcom/maya/sdk/framework/utils/ViewUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 54
    return-void
.end method
