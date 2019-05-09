.class public Lcom/maya/open/http/okgo/convert/FileConvert;
.super Ljava/lang/Object;
.source "FileConvert.java"

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

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/maya/open/http/okgo/convert/FileConvert;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "destFileName"    # Ljava/lang/String;

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

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "destFileDir"    # Ljava/lang/String;
    .param p2, "destFileName"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/maya/open/http/okgo/convert/FileConvert;->destFileDir:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/maya/open/http/okgo/convert/FileConvert;->destFileName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/maya/open/http/okgo/convert/FileConvert;)Lcom/maya/open/http/okgo/callback/AbsCallback;
    .locals 1
    .param p0, "x0"    # Lcom/maya/open/http/okgo/convert/FileConvert;

    .line 28
    iget-object v0, p0, Lcom/maya/open/http/okgo/convert/FileConvert;->callback:Lcom/maya/open/http/okgo/callback/AbsCallback;

    return-object v0
.end method


# virtual methods
.method public convertSuccess(Lcom/maya/open/http/okhttp3/Response;)Ljava/io/File;
    .locals 33
    .param p1, "value"    # Lcom/maya/open/http/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    move-object/from16 v9, p0

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

    move-object/from16 v10, p1

    invoke-static {v10, v0}, Lcom/maya/open/http/okgo/utils/HttpUtils;->getNetFileName(Lcom/maya/open/http/okhttp3/Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/maya/open/http/okgo/convert/FileConvert;->destFileName:Ljava/lang/String;

    goto :goto_0

    .line 58
    :cond_1
    move-object/from16 v10, p1

    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v1, v9, Lcom/maya/open/http/okgo/convert/FileConvert;->destFileDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    .line 59
    .local v11, "dir":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 60
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, v9, Lcom/maya/open/http/okgo/convert/FileConvert;->destFileName:Ljava/lang/String;

    invoke-direct {v0, v11, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v12, v0

    .line 61
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 63
    :cond_3
    const-wide/16 v1, 0x0

    .line 64
    .local v1, "lastRefreshUiTime":J
    const-wide/16 v3, 0x0

    .line 66
    .local v3, "lastWriteBytes":J
    const/4 v5, 0x0

    .line 67
    .local v5, "is":Ljava/io/InputStream;
    const/16 v0, 0x800

    new-array v13, v0, [B

    .line 68
    .local v13, "buf":[B
    const/4 v0, 0x0

    move-object v6, v0

    .line 70
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/maya/open/http/okhttp3/Response;->body()Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v14, v0

    .line 71
    .end local v5    # "is":Ljava/io/InputStream;
    .local v14, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/maya/open/http/okhttp3/Response;->body()Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v7

    move-wide v15, v7

    .line 72
    .local v15, "total":J
    const-wide/16 v7, 0x0

    .line 74
    .local v7, "sum":J
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v5, v0

    .line 75
    move-wide/from16 v17, v1

    move-wide/from16 v19, v3

    .end local v1    # "lastRefreshUiTime":J
    .end local v3    # "lastWriteBytes":J
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    .local v17, "lastRefreshUiTime":J
    .local v19, "lastWriteBytes":J
    :goto_1
    :try_start_2
    invoke-virtual {v14, v13}, Ljava/io/InputStream;->read([B)I

    move-result v0

    move v6, v0

    .local v6, "len":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 76
    int-to-long v0, v6

    add-long v21, v7, v0

    .line 77
    .end local v7    # "sum":J
    .local v21, "sum":J
    const/4 v0, 0x0

    invoke-virtual {v5, v13, v0, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 80
    iget-object v0, v9, Lcom/maya/open/http/okgo/convert/FileConvert;->callback:Lcom/maya/open/http/okgo/callback/AbsCallback;

    if-eqz v0, :cond_7

    .line 81
    move-wide/from16 v23, v21

    .line 82
    .local v23, "finalSum":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide/from16 v25, v0

    .line 84
    .local v25, "curTime":J
    const/4 v0, 0x0

    sub-long v0, v25, v17

    sget v2, Lcom/maya/open/http/okgo/OkGo;->REFRESH_TIME:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_5

    cmp-long v0, v23, v15

    if-nez v0, :cond_4

    goto :goto_2

    .line 100
    .end local v23    # "finalSum":J
    .end local v25    # "curTime":J
    :cond_4
    move-object/from16 v31, v5

    move/from16 v32, v6

    goto :goto_3

    .line 86
    .restart local v23    # "finalSum":J
    .restart local v25    # "curTime":J
    :cond_5
    :goto_2
    const/4 v0, 0x0

    sub-long v0, v25, v17

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 87
    .local v0, "diffTime":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_6

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 88
    .end local v0    # "diffTime":J
    .local v27, "diffTime":J
    :cond_6
    move-wide/from16 v27, v0

    const/4 v0, 0x0

    sub-long v29, v23, v19

    .line 89
    .local v29, "diffBytes":J
    div-long v7, v29, v27

    .line 90
    .local v7, "networkSpeed":J
    invoke-static {}, Lcom/maya/open/http/okgo/OkGo;->getInstance()Lcom/maya/open/http/okgo/OkGo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okgo/OkGo;->getDelivery()Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/maya/open/http/okgo/convert/FileConvert$1;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v3

    move-object/from16 v2, p0

    move-object v9, v3

    move-wide/from16 v3, v23

    move-object/from16 v31, v5

    move/from16 v32, v6

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "len":I
    .local v31, "fos":Ljava/io/FileOutputStream;
    .local v32, "len":I
    move-wide v5, v15

    :try_start_3
    invoke-direct/range {v1 .. v8}, Lcom/maya/open/http/okgo/convert/FileConvert$1;-><init>(Lcom/maya/open/http/okgo/convert/FileConvert;JJJ)V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 98
    .end local v17    # "lastRefreshUiTime":J
    .local v0, "lastRefreshUiTime":J
    move-wide/from16 v2, v23

    .line 100
    move-wide/from16 v17, v0

    move-wide/from16 v19, v2

    .line 75
    .end local v0    # "lastRefreshUiTime":J
    .end local v7    # "networkSpeed":J
    .end local v23    # "finalSum":J
    .end local v25    # "curTime":J
    .end local v27    # "diffTime":J
    .end local v29    # "diffBytes":J
    .restart local v17    # "lastRefreshUiTime":J
    :goto_3
    move-wide/from16 v7, v21

    move-object/from16 v5, v31

    move-object/from16 v9, p0

    goto :goto_1

    .end local v31    # "fos":Ljava/io/FileOutputStream;
    .end local v32    # "len":I
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :cond_7
    move-wide/from16 v7, v21

    move-object/from16 v9, p0

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v31    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 102
    .end local v21    # "sum":J
    .end local v31    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "len":I
    .local v7, "sum":J
    :cond_8
    move-object/from16 v31, v5

    move/from16 v32, v6

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "len":I
    .restart local v31    # "fos":Ljava/io/FileOutputStream;
    .restart local v32    # "len":I
    invoke-virtual/range {v31 .. v31}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    nop

    .line 106
    if-eqz v14, :cond_9

    :try_start_4
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    .line 107
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 108
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 109
    .end local v0    # "e":Ljava/io/IOException;
    :cond_9
    :goto_4
    nop

    .line 111
    :goto_5
    :try_start_5
    invoke-virtual/range {v31 .. v31}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 114
    goto :goto_6

    .line 112
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 113
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    .line 103
    .end local v0    # "e":Ljava/io/IOException;
    :goto_6
    return-object v12

    .line 105
    .end local v7    # "sum":J
    .end local v15    # "total":J
    .end local v32    # "len":I
    :catchall_0
    move-exception v0

    goto :goto_8

    .end local v31    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v0

    move-object/from16 v31, v5

    move-object v1, v0

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v31    # "fos":Ljava/io/FileOutputStream;
    goto :goto_9

    .end local v17    # "lastRefreshUiTime":J
    .end local v19    # "lastWriteBytes":J
    .end local v31    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "lastRefreshUiTime":J
    .restart local v3    # "lastWriteBytes":J
    .local v6, "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v0

    move-wide/from16 v17, v1

    move-wide/from16 v19, v3

    goto :goto_7

    .end local v14    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    :catchall_3
    move-exception v0

    move-wide/from16 v17, v1

    move-wide/from16 v19, v3

    move-object v14, v5

    .end local v1    # "lastRefreshUiTime":J
    .end local v3    # "lastWriteBytes":J
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "is":Ljava/io/InputStream;
    .restart local v17    # "lastRefreshUiTime":J
    .restart local v19    # "lastWriteBytes":J
    .restart local v31    # "fos":Ljava/io/FileOutputStream;
    :goto_7
    move-object/from16 v31, v6

    :goto_8
    move-object v1, v0

    .line 106
    :goto_9
    if-eqz v14, :cond_a

    :try_start_6
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_a

    .line 107
    :catch_2
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 108
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_b

    .line 109
    .end local v0    # "e":Ljava/io/IOException;
    :cond_a
    :goto_a
    nop

    .line 111
    :goto_b
    if-eqz v31, :cond_b

    :try_start_7
    invoke-virtual/range {v31 .. v31}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_c

    .line 112
    :catch_3
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 113
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_d

    .line 114
    .end local v0    # "e":Ljava/io/IOException;
    :cond_b
    :goto_c
    nop

    .line 115
    :goto_d
    throw v1
.end method

.method public bridge synthetic convertSuccess(Lcom/maya/open/http/okhttp3/Response;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/convert/FileConvert;->convertSuccess(Lcom/maya/open/http/okhttp3/Response;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public setCallback(Lcom/maya/open/http/okgo/callback/AbsCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/maya/open/http/okgo/callback/AbsCallback;

    .line 50
    iput-object p1, p0, Lcom/maya/open/http/okgo/convert/FileConvert;->callback:Lcom/maya/open/http/okgo/callback/AbsCallback;

    .line 51
    return-void
.end method
