.class Lcom/maya/open/main/OpenImageUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/maya/open/image/AsyncImageLoader$onImageLoaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/main/OpenImageUtils;->loadBitmap(Ljava/lang/String;Lcom/maya/open/main/OpenImageUtils$OpenImageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/open/main/OpenImageUtils;

.field final synthetic val$callback:Lcom/maya/open/main/OpenImageUtils$OpenImageCallback;


# direct methods
.method constructor <init>(Lcom/maya/open/main/OpenImageUtils;Lcom/maya/open/main/OpenImageUtils$OpenImageCallback;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/maya/open/main/OpenImageUtils$1;->this$0:Lcom/maya/open/main/OpenImageUtils;

    iput-object p2, p0, Lcom/maya/open/main/OpenImageUtils$1;->val$callback:Lcom/maya/open/main/OpenImageUtils$OpenImageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoader(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/maya/open/main/OpenImageUtils$1;->val$callback:Lcom/maya/open/main/OpenImageUtils$OpenImageCallback;

    invoke-interface {v0, p1, p2}, Lcom/maya/open/main/OpenImageUtils$OpenImageCallback;->onSuccess(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/maya/open/main/OpenImageUtils$1;->val$callback:Lcom/maya/open/main/OpenImageUtils$OpenImageCallback;

    invoke-interface {p1, p2}, Lcom/maya/open/main/OpenImageUtils$OpenImageCallback;->onFail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
