.class public Lcom/maya/sdk/framework/utils/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field public static TAG:Ljava/lang/String;

.field public static isShowLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const/4 v0, 0x0

    sput-boolean v0, Lcom/maya/sdk/framework/utils/LogUtil;->isShowLog:Z

    .line 9
    const-string v0, "maya"

    sput-object v0, Lcom/maya/sdk/framework/utils/LogUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/maya/sdk/framework/utils/LogUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/maya/sdk/framework/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 48
    sget-boolean v0, Lcom/maya/sdk/framework/utils/LogUtil;->isShowLog:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 16
    sget-object v0, Lcom/maya/sdk/framework/utils/LogUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/maya/sdk/framework/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 38
    sget-boolean v0, Lcom/maya/sdk/framework/utils/LogUtil;->isShowLog:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 20
    sget-object v0, Lcom/maya/sdk/framework/utils/LogUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/maya/sdk/framework/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 43
    sget-boolean v0, Lcom/maya/sdk/framework/utils/LogUtil;->isShowLog:Z

    if-eqz v0, :cond_0

    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    return-void
.end method

.method public static setTag(Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;

    .line 12
    sput-object p0, Lcom/maya/sdk/framework/utils/LogUtil;->TAG:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static sysout(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/maya/sdk/framework/utils/LogUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/maya/sdk/framework/utils/LogUtil;->sysout(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static sysout(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 58
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/maya/sdk/framework/utils/LogUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/maya/sdk/framework/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 53
    sget-boolean v0, Lcom/maya/sdk/framework/utils/LogUtil;->isShowLog:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    return-void
.end method
