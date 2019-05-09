.class public interface abstract Lcom/maya/sdk/framework/utils/ImageUtil$ImageCallback;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/framework/utils/ImageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageCallback"
.end annotation


# virtual methods
.method public abstract onFail(Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Landroid/graphics/Bitmap;Ljava/lang/String;)V
.end method
