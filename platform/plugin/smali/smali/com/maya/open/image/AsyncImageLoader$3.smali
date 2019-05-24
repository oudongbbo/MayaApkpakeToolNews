.class Lcom/maya/open/image/AsyncImageLoader$3;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/maya/open/image/AsyncImageLoader$3;->this$0:Lcom/maya/open/image/AsyncImageLoader;

    iget-object v1, p0, Lcom/maya/open/image/AsyncImageLoader$3;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/maya/open/image/AsyncImageLoader;->access$000(Lcom/maya/open/image/AsyncImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/maya/open/image/AsyncImageLoader$3;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 143
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 146
    iput v2, v1, Landroid/os/Message;->what:I

    .line 147
    iget-object v2, p0, Lcom/maya/open/image/AsyncImageLoader$3;->val$handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/image/AsyncImageLoader$3;->this$0:Lcom/maya/open/image/AsyncImageLoader;

    invoke-static {v1}, Lcom/maya/open/image/AsyncImageLoader;->access$100(Lcom/maya/open/image/AsyncImageLoader;)Lcom/maya/open/image/AsyncImageLoader$FileUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/maya/open/image/AsyncImageLoader$3;->val$subUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/maya/open/image/AsyncImageLoader$FileUtils;->savaBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 153
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 157
    :goto_0
    iget-object v1, p0, Lcom/maya/open/image/AsyncImageLoader$3;->this$0:Lcom/maya/open/image/AsyncImageLoader;

    iget-object v2, p0, Lcom/maya/open/image/AsyncImageLoader$3;->val$subUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/maya/open/image/AsyncImageLoader;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 161
    iput v0, v1, Landroid/os/Message;->what:I

    .line 162
    iget-object v0, p0, Lcom/maya/open/image/AsyncImageLoader$3;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void
.end method
