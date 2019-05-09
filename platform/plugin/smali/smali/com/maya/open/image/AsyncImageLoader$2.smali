.class Lcom/maya/open/image/AsyncImageLoader$2;
.super Landroid/os/Handler;
.source "AsyncImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/image/AsyncImageLoader;->downloadImage(Ljava/lang/String;Lcom/maya/open/image/AsyncImageLoader$onImageLoaderListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/open/image/AsyncImageLoader;

.field final synthetic val$listener:Lcom/maya/open/image/AsyncImageLoader$onImageLoaderListener;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/maya/open/image/AsyncImageLoader;Lcom/maya/open/image/AsyncImageLoader$onImageLoaderListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/open/image/AsyncImageLoader;

    .line 115
    iput-object p1, p0, Lcom/maya/open/image/AsyncImageLoader$2;->this$0:Lcom/maya/open/image/AsyncImageLoader;

    iput-object p2, p0, Lcom/maya/open/image/AsyncImageLoader$2;->val$listener:Lcom/maya/open/image/AsyncImageLoader$onImageLoaderListener;

    iput-object p3, p0, Lcom/maya/open/image/AsyncImageLoader$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 118
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 119
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 127
    :pswitch_0
    iget-object v0, p0, Lcom/maya/open/image/AsyncImageLoader$2;->val$listener:Lcom/maya/open/image/AsyncImageLoader$onImageLoaderListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/maya/open/image/AsyncImageLoader$2;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/maya/open/image/AsyncImageLoader$onImageLoaderListener;->onImageLoader(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 128
    goto :goto_0

    .line 122
    :pswitch_1
    iget-object v0, p0, Lcom/maya/open/image/AsyncImageLoader$2;->val$listener:Lcom/maya/open/image/AsyncImageLoader$onImageLoaderListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/maya/open/image/AsyncImageLoader$2;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/maya/open/image/AsyncImageLoader$onImageLoaderListener;->onImageLoader(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 123
    nop

    .line 133
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
