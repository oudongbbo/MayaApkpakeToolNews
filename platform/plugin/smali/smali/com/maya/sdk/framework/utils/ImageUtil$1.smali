.class Lcom/maya/sdk/framework/utils/ImageUtil$1;
.super Ljava/lang/Object;
.source "ImageUtil.java"

# interfaces
.implements Lcom/maya/open/main/OpenImageUtils$OpenImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/framework/utils/ImageUtil;->loadBitmap(Ljava/lang/String;Lcom/maya/sdk/framework/utils/ImageUtil$ImageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/framework/utils/ImageUtil;

.field final synthetic val$callback:Lcom/maya/sdk/framework/utils/ImageUtil$ImageCallback;


# direct methods
.method constructor <init>(Lcom/maya/sdk/framework/utils/ImageUtil;Lcom/maya/sdk/framework/utils/ImageUtil$ImageCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/framework/utils/ImageUtil;

    .line 39
    iput-object p1, p0, Lcom/maya/sdk/framework/utils/ImageUtil$1;->this$0:Lcom/maya/sdk/framework/utils/ImageUtil;

    iput-object p2, p0, Lcom/maya/sdk/framework/utils/ImageUtil$1;->val$callback:Lcom/maya/sdk/framework/utils/ImageUtil$ImageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "paramString"    # Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/maya/sdk/framework/utils/ImageUtil$1;->val$callback:Lcom/maya/sdk/framework/utils/ImageUtil$ImageCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/framework/utils/ImageUtil$ImageCallback;->onFail(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .param p1, "paramBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "paramString"    # Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/maya/sdk/framework/utils/ImageUtil$1;->val$callback:Lcom/maya/sdk/framework/utils/ImageUtil$ImageCallback;

    invoke-interface {v0, p1, p2}, Lcom/maya/sdk/framework/utils/ImageUtil$ImageCallback;->onSuccess(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 44
    return-void
.end method
