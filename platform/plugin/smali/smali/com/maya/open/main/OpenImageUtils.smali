.class public Lcom/maya/open/main/OpenImageUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/main/OpenImageUtils$OpenImageCallback;
    }
.end annotation


# instance fields
.field private imageLoader:Lcom/maya/open/image/AsyncImageLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\u521d\u59cb\u5316"

    .line 15
    invoke-virtual {p0, v0}, Lcom/maya/open/main/OpenImageUtils;->printLog(Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/maya/open/image/AsyncImageLoader;

    invoke-direct {v0, p1}, Lcom/maya/open/image/AsyncImageLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/open/main/OpenImageUtils;->imageLoader:Lcom/maya/open/image/AsyncImageLoader;

    return-void
.end method


# virtual methods
.method public loadBitmap(Ljava/lang/String;Lcom/maya/open/main/OpenImageUtils$OpenImageCallback;)V
    .locals 2

    const-string v0, "\u52a0\u8f7d\u56fe\u7247"

    .line 36
    invoke-virtual {p0, v0}, Lcom/maya/open/main/OpenImageUtils;->printLog(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/maya/open/main/OpenImageUtils;->imageLoader:Lcom/maya/open/image/AsyncImageLoader;

    new-instance v1, Lcom/maya/open/main/OpenImageUtils$1;

    invoke-direct {v1, p0, p2}, Lcom/maya/open/main/OpenImageUtils$1;-><init>(Lcom/maya/open/main/OpenImageUtils;Lcom/maya/open/main/OpenImageUtils$OpenImageCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/maya/open/image/AsyncImageLoader;->downloadImage(Ljava/lang/String;Lcom/maya/open/image/AsyncImageLoader$onImageLoaderListener;)V

    return-void
.end method

.method public printLog(Ljava/lang/String;)V
    .locals 3

    .line 54
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openImage-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
