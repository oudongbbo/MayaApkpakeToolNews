.class public Lcom/maya/open/image/AsyncImageLoader;
.super Ljava/lang/Object;
.source "AsyncImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/image/AsyncImageLoader$FileUtils;,
        Lcom/maya/open/image/AsyncImageLoader$onImageLoaderListener;
    }
.end annotation


# instance fields
.field private fileUtils:Lcom/maya/open/image/AsyncImageLoader$FileUtils;

.field private mImageThreadPool:Ljava/util/concurrent/ExecutorService;

.field private mMemoryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/maya/open/image/AsyncImageLoader;->mImageThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 36
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-int v0, v0

    .line 37
    .local v0, "maxMemory":I
    div-int/lit8 v1, v0, 0x8

    .line 39
    .local v1, "mCacheSize":I
    new-instance v2, Lcom/maya/open/image/AsyncImageLoader$1;

    invoke-direct {v2, p0, v1}, Lcom/maya/open/image/AsyncImageLoader$1;-><init>(Lcom/maya/open/image/AsyncImageLoader;I)V

    iput-object v2, p0, Lcom/maya/open/image/AsyncImageLoader;->mMemoryCache:Landroid/util/LruCache;

    .line 49
    new-instance v2, Lcom/maya/open/image/AsyncImageLoader$FileUtils;

    invoke-direct {v2, p0, p1}, Lcom/maya/open/image/AsyncImageLoader$FileUtils;-><init>(Lcom/maya/open/image/AsyncImageLoader;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/maya/open/image/AsyncImageLoader;->fileUtils:Lcom/maya/open/image/AsyncImageLoader$FileUtils;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/maya/open/image/AsyncImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/maya/open/image/AsyncImageLoader;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0, p1}, Lcom/maya/open/image/AsyncImageLoader;->getBitmapFormUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/maya/open/image/AsyncImageLoader;)Lcom/maya/open/image/AsyncImageLoader$FileUtils;
    .locals 1
    .param p0, "x0"    # Lcom/maya/open/image/AsyncImageLoader;

    .line 20
    iget-object v0, p0, Lcom/maya/open/image/AsyncImageLoader;->fileUtils:Lcom/maya/open/image/AsyncImageLoader$FileUtils;

    return-object v0
.end method

.method private getBitmapFormUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 205
    .local v1, "con":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 206
    .local v2, "mImageUrl":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    move-object v1, v3

    .line 207
    const/16 v3, 0x1f40

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 208
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 209
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 210
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 214
    .end local v2    # "mImageUrl":Ljava/net/URL;
    if-eqz v1, :cond_0

    .line 215
    :goto_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 214
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 211
    :catch_0
    move-exception v2

    .line 212
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    :goto_1
    return-object v0

    .line 214
    :goto_2
    if-eqz v1, :cond_1

    .line 215
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 217
    :cond_1
    throw v2
.end method


# virtual methods
.method public addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 78
    invoke-virtual {p0, p1}, Lcom/maya/open/image/AsyncImageLoader;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 79
    iget-object v0, p0, Lcom/maya/open/image/AsyncImageLoader;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_0
    return-void
.end method

.method public declared-synchronized cancelTask()V
    .locals 1

    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/image/AsyncImageLoader;->mImageThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/maya/open/image/AsyncImageLoader;->mImageThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/maya/open/image/AsyncImageLoader;->mImageThreadPool:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :cond_0
    monitor-exit p0

    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public downloadImage(Ljava/lang/String;Lcom/maya/open/image/AsyncImageLoader$onImageLoaderListener;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/maya/open/image/AsyncImageLoader$onImageLoaderListener;

    .line 104
    const-string v0, "[^\\w]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "subUrl":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/maya/open/image/AsyncImageLoader;->showCacheBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 109
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 110
    invoke-interface {p2, v1, p1}, Lcom/maya/open/image/AsyncImageLoader$onImageLoaderListener;->onImageLoader(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "----->download from net"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    new-instance v2, Lcom/maya/open/image/AsyncImageLoader$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/maya/open/image/AsyncImageLoader$2;-><init>(Lcom/maya/open/image/AsyncImageLoader;Lcom/maya/open/image/AsyncImageLoader$onImageLoaderListener;Ljava/lang/String;)V

    .line 136
    .local v2, "handler":Landroid/os/Handler;
    invoke-virtual {p0}, Lcom/maya/open/image/AsyncImageLoader;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lcom/maya/open/image/AsyncImageLoader$3;

    invoke-direct {v4, p0, p1, v2, v0}, Lcom/maya/open/image/AsyncImageLoader$3;-><init>(Lcom/maya/open/image/AsyncImageLoader;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 169
    .end local v2    # "handler":Landroid/os/Handler;
    :goto_0
    return-void
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/maya/open/image/AsyncImageLoader;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/maya/open/image/AsyncImageLoader;->mImageThreadPool:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 59
    const-class v0, Ljava/util/concurrent/ExecutorService;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/image/AsyncImageLoader;->mImageThreadPool:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    .line 62
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/maya/open/image/AsyncImageLoader;->mImageThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 64
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 67
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/maya/open/image/AsyncImageLoader;->mImageThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public printLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "log"    # Ljava/lang/String;

    .line 359
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncImageLoader-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public showCacheBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .line 178
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "----->download from cache"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0, p1}, Lcom/maya/open/image/AsyncImageLoader;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0, p1}, Lcom/maya/open/image/AsyncImageLoader;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/maya/open/image/AsyncImageLoader;->fileUtils:Lcom/maya/open/image/AsyncImageLoader$FileUtils;

    invoke-virtual {v0, p1}, Lcom/maya/open/image/AsyncImageLoader$FileUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/maya/open/image/AsyncImageLoader;->fileUtils:Lcom/maya/open/image/AsyncImageLoader$FileUtils;

    .line 183
    invoke-virtual {v0, p1}, Lcom/maya/open/image/AsyncImageLoader$FileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 185
    iget-object v0, p0, Lcom/maya/open/image/AsyncImageLoader;->fileUtils:Lcom/maya/open/image/AsyncImageLoader$FileUtils;

    invoke-virtual {v0, p1}, Lcom/maya/open/image/AsyncImageLoader$FileUtils;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 188
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, p1, v0}, Lcom/maya/open/image/AsyncImageLoader;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 189
    return-object v0

    .line 192
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
