.class Lcom/maya/open/image/AsyncImageLoader$3;
.super Ljava/lang/Object;
.source "AsyncImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$subUrl:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/maya/open/image/AsyncImageLoader;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/open/image/AsyncImageLoader;

    .line 136
    iput-object p1, p0, Lcom/maya/open/image/AsyncImageLoader$3;->this$0:Lcom/maya/open/image/AsyncImageLoader;

    iput-object p2, p0, Lcom/maya/open/image/AsyncImageLoader$3;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/maya/open/image/AsyncImageLoader$3;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/maya/open/image/AsyncImageLoader$3;->val$subUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/maya/open/image/AsyncImageLoader$3;->this$0:Lcom/maya/open/image/AsyncImageLoader;

    iget-object v1, p0, Lcom/maya/open/image/AsyncImageLoader$3;->val$url:Ljava/lang/String;

    # invokes: Lcom/maya/open/image/AsyncImageLoader;->getBitmapFormUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/maya/open/image/AsyncImageLoader;->access$000(Lcom/maya/open/image/AsyncImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 142
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/maya/open/image/AsyncImageLoader$3;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 143
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 144
    if-eqz v0, :cond_0

    .line 146
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 147
    iget-object v2, p0, Lcom/maya/open/image/AsyncImageLoader$3;->val$handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 151
    :try_start_0
    iget-object v2, p0, Lcom/maya/open/image/AsyncImageLoader$3;->this$0:Lcom/maya/open/image/AsyncImageLoader;

    # getter for: Lcom/maya/open/image/AsyncImageLoader;->fileUtils:Lcom/maya/open/image/AsyncImageLoader$FileUtils;
    invoke-static {v2}, Lcom/maya/open/image/AsyncImageLoader;->access$100(Lcom/maya/open/image/AsyncImageLoader;)Lcom/maya/open/image/AsyncImageLoader$FileUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/maya/open/image/AsyncImageLoader$3;->val$subUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/maya/open/image/AsyncImageLoader$FileUtils;->savaBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    goto :goto_0

    .line 152
    :catch_0
    move-exception v2

    .line 153
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 157
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v2, p0, Lcom/maya/open/image/AsyncImageLoader$3;->this$0:Lcom/maya/open/image/AsyncImageLoader;

    iget-object v3, p0, Lcom/maya/open/image/AsyncImageLoader$3;->val$subUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/maya/open/image/AsyncImageLoader;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 161
    :cond_0
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 162
    iget-object v2, p0, Lcom/maya/open/image/AsyncImageLoader$3;->val$handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 165
    :goto_1
    return-void
.end method
