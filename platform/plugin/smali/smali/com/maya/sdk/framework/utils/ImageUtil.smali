.class public Lcom/maya/sdk/framework/utils/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/sdk/framework/utils/ImageUtil$ImageCallback;
    }
.end annotation


# instance fields
.field private imageLoader:Lcom/maya/open/main/OpenImageUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "\u521d\u59cb\u5316"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/utils/ImageUtil;->printLog(Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/maya/open/main/OpenImageUtils;

    invoke-direct {v0, p1}, Lcom/maya/open/main/OpenImageUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/framework/utils/ImageUtil;->imageLoader:Lcom/maya/open/main/OpenImageUtils;

    .line 18
    return-void
.end method


# virtual methods
.method public loadBitmap(Ljava/lang/String;Lcom/maya/sdk/framework/utils/ImageUtil$ImageCallback;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/maya/sdk/framework/utils/ImageUtil$ImageCallback;

    .line 37
    const-string v0, "\u52a0\u8f7d\u56fe\u7247"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/utils/ImageUtil;->printLog(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/maya/sdk/framework/utils/ImageUtil;->imageLoader:Lcom/maya/open/main/OpenImageUtils;

    new-instance v1, Lcom/maya/sdk/framework/utils/ImageUtil$1;

    invoke-direct {v1, p0, p2}, Lcom/maya/sdk/framework/utils/ImageUtil$1;-><init>(Lcom/maya/sdk/framework/utils/ImageUtil;Lcom/maya/sdk/framework/utils/ImageUtil$ImageCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/maya/open/main/OpenImageUtils;->loadBitmap(Ljava/lang/String;Lcom/maya/open/main/OpenImageUtils$OpenImageCallback;)V

    .line 53
    return-void
.end method

.method public printLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "log"    # Ljava/lang/String;

    .line 57
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "framework-->ImageUtils-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    return-void
.end method
