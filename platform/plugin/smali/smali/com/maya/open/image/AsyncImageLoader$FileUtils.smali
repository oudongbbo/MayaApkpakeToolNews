.class Lcom/maya/open/image/AsyncImageLoader$FileUtils;
.super Ljava/lang/Object;
.source "AsyncImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/image/AsyncImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileUtils"
.end annotation


# static fields
.field private static final FOLDER_NAME:Ljava/lang/String; = "ImageTemp"


# instance fields
.field private mDataRootPath:Ljava/lang/String;

.field private mSdRootPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/maya/open/image/AsyncImageLoader;


# direct methods
.method public constructor <init>(Lcom/maya/open/image/AsyncImageLoader;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/maya/open/image/AsyncImageLoader;
    .param p2, "context"    # Landroid/content/Context;

    .line 256
    iput-object p1, p0, Lcom/maya/open/image/AsyncImageLoader$FileUtils;->this$0:Lcom/maya/open/image/AsyncImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/image/AsyncImageLoader$FileUtils;->mSdRootPath:Ljava/lang/String;

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/maya/open/image/AsyncImageLoader$FileUtils;->mDataRootPath:Ljava/lang/String;

    .line 257
    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/image/AsyncImageLoader$FileUtils;->mDataRootPath:Ljava/lang/String;

    .line 258
    return-void
.end method

.method private getStorageDirectory()Ljava/lang/String;
    .locals 2

    .line 266
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/maya/open/image/AsyncImageLoader$FileUtils;->mSdRootPath:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ImageTemp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/maya/open/image/AsyncImageLoader$FileUtils;->mDataRootPath:Ljava/lang/String;

    goto :goto_0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public deleteFile()V
    .locals 5

    .line 342
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/maya/open/image/AsyncImageLoader$FileUtils;->getStorageDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, "dirFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 344
    return-void

    .line 346
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "children":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 349
    new-instance v3, Ljava/io/File;

    aget-object v4, v1, v2

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 348
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 353
    .end local v1    # "children":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 354
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/maya/open/image/AsyncImageLoader$FileUtils;->getStorageDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getFileSize(Ljava/lang/String;)J
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .line 334
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/maya/open/image/AsyncImageLoader$FileUtils;->getStorageDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 334
    return-wide v0
.end method

.method public isFileExists(Ljava/lang/String;)Z
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .line 323
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/maya/open/image/AsyncImageLoader$FileUtils;->getStorageDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 323
    return v0
.end method

.method public savaBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    if-nez p2, :cond_0

    .line 282
    return-void

    .line 284
    :cond_0
    invoke-direct {p0}, Lcom/maya/open/image/AsyncImageLoader$FileUtils;->getStorageDirectory()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .local v1, "folderFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 287
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 289
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 291
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 292
    .local v3, "fos":Ljava/io/FileOutputStream;
    const-string v4, "png"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0x64

    if-eqz v4, :cond_2

    .line 294
    iget-object v4, p0, Lcom/maya/open/image/AsyncImageLoader$FileUtils;->this$0:Lcom/maya/open/image/AsyncImageLoader;

    const-string v6, "\u4fdd\u5b58\u4e3apng\u56fe\u7247"

    invoke-virtual {v4, v6}, Lcom/maya/open/image/AsyncImageLoader;->printLog(Ljava/lang/String;)V

    .line 295
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    .line 298
    :cond_2
    iget-object v4, p0, Lcom/maya/open/image/AsyncImageLoader$FileUtils;->this$0:Lcom/maya/open/image/AsyncImageLoader;

    const-string v6, "\u4fdd\u5b58\u4e3ajpg\u56fe\u7247"

    invoke-virtual {v4, v6}, Lcom/maya/open/image/AsyncImageLoader;->printLog(Ljava/lang/String;)V

    .line 299
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 301
    :goto_0
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 302
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 303
    return-void
.end method
