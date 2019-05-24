.class public Lcom/maya/open/http/okgo/convert/FileConvert;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/maya/open/http/okgo/convert/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/maya/open/http/okgo/convert/Converter<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field public static final DM_TARGET_FOLDER:Ljava/lang/String;


# instance fields
.field private callback:Lcom/maya/open/http/okgo/callback/AbsCallback;

.field private destFileDir:Ljava/lang/String;

.field private destFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okgo/convert/FileConvert;->DM_TARGET_FOLDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, v0}, Lcom/maya/open/http/okgo/convert/FileConvert;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/maya/open/http/okgo/convert/FileConvert;->DM_TARGET_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/maya/open/http/okgo/convert/FileConvert;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/maya/open/http/okgo/convert/FileConvert;->destFileDir:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/maya/open/http/okgo/convert/FileConvert;->destFileName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/maya/open/http/okgo/convert/FileConvert;)Lcom/maya/open/http/okgo/callback/AbsCallback;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/maya/open/http/okgo/convert/FileConvert;->callback:Lcom/maya/open/http/okgo/callback/AbsCallback;

    return-object p0
.end method


# virtual methods
.method public convertSuccess(Lcom/maya/open/http/okhttp3/Response;)Ljava/io/File;
    .locals 21

    move-object/from16 v9, p0

    .line 55
    iget-object v0, v9, Lcom/maya/open/http/okgo/convert/FileConvert;->destFileDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/maya/open/http/okgo/convert/FileConvert;->DM_TARGET_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/maya/open/http/okgo/convert/FileConvert;->destFileDir:Ljava/lang/String;

    .line 56
    :cond_0
    iget-object v0, v9, Lcom/maya/open/http/okgo/convert/FileConvert;->destFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lcom/maya/open/http/okgo/utils/HttpUtils;->getNetFileName(Lcom/maya/open/http/okhttp3/Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/maya/open/http/okgo/convert/FileConvert;->destFileName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object/from16 v1, p1

    .line 58
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v2, v9, Lcom/maya/open/http/okgo/convert/FileConvert;->destFileDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 60
    :cond_2
    new-instance v10, Ljava/io/File;

    iget-object v2, v9, Lcom/maya/open/http/okgo/convert/FileConvert;->destFileName:Ljava/lang/String;

    invoke-direct {v10, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_3
    const/16 v0, 0x800

    .line 67
    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 70
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/maya/open/http/okhttp3/Response;->body()Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 71
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/maya/open/http/okhttp3/Response;->body()Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v12

    .line 74
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-wide/16 v15, 0x0

    move-wide v1, v15

    move-wide v3, v1

    move-wide v5, v3

    .line 75
    :goto_1
    :try_start_2
    invoke-virtual {v11, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    int-to-long v10, v7

    add-long/2addr v10, v1

    const/4 v1, 0x0

    .line 77
    :try_start_3
    invoke-virtual {v14, v0, v1, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 80
    iget-object v1, v9, Lcom/maya/open/http/okgo/convert/FileConvert;->callback:Lcom/maya/open/http/okgo/callback/AbsCallback;

    if-eqz v1, :cond_7

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v7, 0x0

    sub-long/2addr v1, v3

    .line 84
    sget v7, Lcom/maya/open/http/okgo/OkGo;->REFRESH_TIME:I

    int-to-long v7, v7

    cmp-long v19, v1, v7

    if-gez v19, :cond_5

    cmp-long v7, v10, v12

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    move-object/from16 v20, v0

    goto :goto_3

    :cond_5
    :goto_2
    const-wide/16 v3, 0x3e8

    .line 86
    div-long/2addr v1, v3

    cmp-long v3, v1, v15

    if-nez v3, :cond_6

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    :cond_6
    const/4 v3, 0x0

    sub-long v3, v10, v5

    .line 89
    div-long v7, v3, v1

    .line 90
    invoke-static {}, Lcom/maya/open/http/okgo/OkGo;->getInstance()Lcom/maya/open/http/okgo/OkGo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okgo/OkGo;->getDelivery()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/maya/open/http/okgo/convert/FileConvert$1;

    move-object v1, v6

    move-object/from16 v2, p0

    move-wide v3, v10

    move-object/from16 v20, v0

    move-object v15, v5

    move-object v0, v6

    move-wide v5, v12

    invoke-direct/range {v1 .. v8}, Lcom/maya/open/http/okgo/convert/FileConvert$1;-><init>(Lcom/maya/open/http/okgo/convert/FileConvert;JJJ)V

    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v3, v0

    move-wide v5, v10

    :goto_3
    move-wide v1, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v0, v20

    const-wide/16 v15, 0x0

    goto :goto_1

    :cond_7
    move-wide v1, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_8
    move-object/from16 v17, v10

    move-object/from16 v18, v11

    .line 102
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v18, :cond_9

    .line 106
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 108
    invoke-static {v1}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    .line 111
    :cond_9
    :goto_4
    :try_start_5
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 113
    invoke-static {v1}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    :goto_5
    return-object v17

    :catchall_1
    move-exception v0

    move-object/from16 v18, v11

    :goto_6
    move-object v1, v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 v18, v11

    move-object v1, v0

    move-object v14, v2

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v14, v2

    move-object/from16 v18, v14

    :goto_7
    if-eqz v18, :cond_a

    .line 106
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 108
    invoke-static {v2}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    :cond_a
    :goto_8
    if-eqz v14, :cond_b

    .line 111
    :try_start_7
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 113
    invoke-static {v2}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    .line 115
    :cond_b
    :goto_9
    throw v1
.end method

.method public bridge synthetic convertSuccess(Lcom/maya/open/http/okhttp3/Response;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/convert/FileConvert;->convertSuccess(Lcom/maya/open/http/okhttp3/Response;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public setCallback(Lcom/maya/open/http/okgo/callback/AbsCallback;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/maya/open/http/okgo/convert/FileConvert;->callback:Lcom/maya/open/http/okgo/callback/AbsCallback;

    return-void
.end method
