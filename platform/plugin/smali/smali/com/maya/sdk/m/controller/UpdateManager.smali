.class public Lcom/maya/sdk/m/controller/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# static fields
.field public static final UPDATE_PREF:Ljava/lang/String; = "update_pref"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndInstall(ZLandroid/content/Context;Ljava/io/File;)V
    .locals 5
    .param p0, "isForce"    # Z
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Ljava/io/File;

    .line 106
    if-eqz p2, :cond_2

    .line 107
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "path":Ljava/lang/String;
    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    new-instance v1, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    invoke-direct {v1, p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;-><init>(Landroid/content/Context;)V

    .line 111
    .local v1, "mMaterialDialog":Lcom/maya/sdk/framework/view/dialog/MaterialDialog;
    const-string v2, "\u66f4\u65b0\u63d0\u793a"

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    move-result-object v2

    const-string v3, "\u66f4\u65b0\u5305\u5df2\u7ecf\u4e0b\u8f7d\u5b8c\u6210\uff0c\u8bf7\u7ee7\u7eed\u5b89\u88c5\u3002"

    invoke-virtual {v2, v3}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    move-result-object v2

    const-string v3, "\u786e\u5b9a"

    new-instance v4, Lcom/maya/sdk/m/controller/UpdateManager$2;

    invoke-direct {v4, p1, p2}, Lcom/maya/sdk/m/controller/UpdateManager$2;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 112
    invoke-virtual {v2, v3, v4}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    move-result-object v2

    const-string v3, "\u53d6\u6d88"

    new-instance v4, Lcom/maya/sdk/m/controller/UpdateManager$1;

    invoke-direct {v4, p0, p1, v1}, Lcom/maya/sdk/m/controller/UpdateManager$1;-><init>(ZLandroid/content/Context;Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)V

    .line 120
    invoke-virtual {v2, v3, v4}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    .line 131
    if-eqz p0, :cond_0

    .line 132
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->setCanceledOnTouchOutside(Z)Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    .line 133
    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->setCancelable(Z)Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    .line 135
    :cond_0
    invoke-virtual {v1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->show()V

    .line 136
    .end local v1    # "mMaterialDialog":Lcom/maya/sdk/framework/view/dialog/MaterialDialog;
    goto :goto_0

    .line 137
    :cond_1
    const-string v1, "\u6e38\u620f\u5b89\u88c5\u5305\u5df2\u7834\u57d9\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d"

    invoke-static {p1, v1}, Lcom/maya/sdk/m/controller/UpdateManager;->showTips(Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    .end local v0    # "path":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 140
    :cond_2
    const-string v0, "\u6e38\u620f\u5b89\u88c5\u5305\u4e0d\u5b58\u5728"

    invoke-static {p1, v0}, Lcom/maya/sdk/m/controller/UpdateManager;->showTips(Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    :goto_1
    return-void
.end method

.method public static checkUpdate(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isForce"    # Z
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .line 44
    invoke-static {p3}, Lcom/maya/sdk/m/controller/UpdateManager;->getFileNameOfUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "filename":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/maya/sdk/m/controller/UpdateManager;->getSDPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "filepath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0, v0}, Lcom/maya/sdk/m/controller/UpdateManager;->readFileLength(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 48
    invoke-static {p1, p0, v2}, Lcom/maya/sdk/m/controller/UpdateManager;->checkAndInstall(ZLandroid/content/Context;Ljava/io/File;)V

    goto :goto_0

    .line 50
    :cond_0
    new-instance v3, Lcom/maya/sdk/m/views/UpdateDialog;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/maya/sdk/m/views/UpdateDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    .line 51
    .local v3, "update_dialog":Lcom/maya/sdk/m/views/UpdateDialog;
    invoke-virtual {v3}, Lcom/maya/sdk/m/views/UpdateDialog;->show()V

    .line 53
    .end local v3    # "update_dialog":Lcom/maya/sdk/m/views/UpdateDialog;
    :goto_0
    return-void
.end method

.method public static getCurrentDate()Ljava/lang/String;
    .locals 2

    .line 154
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "format":Ljava/text/DateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "date":Ljava/lang/String;
    return-object v1
.end method

.method public static getFileNameOfUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .line 57
    if-eqz p0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "pre":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    const-string v1, "[^\\w]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 65
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/maya/sdk/m/controller/UpdateManager;->getCurrentDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_update.apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "fileName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 70
    .end local v0    # "pre":Ljava/lang/String;
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .line 149
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 150
    .local v0, "id":I
    return v0
.end method

.method public static getSDPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 76
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
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

    const-string v2, "download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "dirFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_1
    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 91
    .end local v0    # "dirFile":Ljava/io/File;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static installApk(Landroid/content/Context;Ljava/io/File;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .line 96
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 98
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v1, "application/vnd.android.package-archive"

    .line 100
    .local v1, "type":Ljava/lang/String;
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 102
    return-void
.end method

.method public static readFileLength(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .line 33
    const-string v0, "update_pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 34
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static saveFileLength(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "size"    # J

    .line 26
    const-string v0, "update_pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 27
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 28
    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 29
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 30
    return-void
.end method

.method public static showTips(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tips"    # Ljava/lang/String;

    .line 145
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 146
    return-void
.end method
