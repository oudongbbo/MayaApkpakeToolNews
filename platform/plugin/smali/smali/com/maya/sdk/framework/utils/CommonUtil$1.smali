.class final Lcom/maya/sdk/framework/utils/CommonUtil$1;
.super Ljava/lang/Object;
.source "CommonUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/framework/utils/CommonUtil;->downLoadBitmap(Ljava/lang/String;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$link:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/maya/sdk/framework/utils/CommonUtil$1;->val$link:Ljava/lang/String;

    iput-object p2, p0, Lcom/maya/sdk/framework/utils/CommonUtil$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 468
    const/4 v0, -0x1

    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/maya/sdk/framework/utils/CommonUtil$1;->val$link:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 469
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 470
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 471
    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 475
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 476
    .local v3, "inStream":Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 477
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/maya/sdk/framework/utils/CommonUtil$1;->val$handler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 479
    .end local v3    # "inStream":Ljava/io/InputStream;
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 481
    :cond_0
    iget-object v3, p0, Lcom/maya/sdk/framework/utils/CommonUtil$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    .end local v1    # "url":Ljava/net/URL;
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    :goto_0
    goto :goto_1

    .line 484
    :catch_0
    move-exception v1

    .line 486
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 487
    iget-object v2, p0, Lcom/maya/sdk/framework/utils/CommonUtil$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 490
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method
