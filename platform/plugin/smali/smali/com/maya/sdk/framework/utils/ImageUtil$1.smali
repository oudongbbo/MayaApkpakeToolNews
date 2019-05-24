.class Lcom/maya/sdk/framework/utils/ImageUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/maya/open/main/OpenImageUtils$OpenImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/framework/utils/ImageUtil;->a(Ljava/lang/String;Lcom/maya/sdk/framework/utils/ImageUtil$ImageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/maya/sdk/framework/utils/ImageUtil$ImageCallback;

.field final synthetic b:Lcom/maya/sdk/framework/utils/ImageUtil;


# direct methods
.method constructor <init>(Lcom/maya/sdk/framework/utils/ImageUtil;Lcom/maya/sdk/framework/utils/ImageUtil$ImageCallback;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/maya/sdk/framework/utils/ImageUtil$1;->b:Lcom/maya/sdk/framework/utils/ImageUtil;

    iput-object p2, p0, Lcom/maya/sdk/framework/utils/ImageUtil$1;->a:Lcom/maya/sdk/framework/utils/ImageUtil$ImageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/maya/sdk/framework/utils/ImageUtil$1;->a:Lcom/maya/sdk/framework/utils/ImageUtil$ImageCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/framework/utils/ImageUtil$ImageCallback;->onFail(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/maya/sdk/framework/utils/ImageUtil$1;->a:Lcom/maya/sdk/framework/utils/ImageUtil$ImageCallback;

    invoke-interface {v0, p1, p2}, Lcom/maya/sdk/framework/utils/ImageUtil$ImageCallback;->onSuccess(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method
