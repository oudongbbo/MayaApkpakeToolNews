.class public final Lcom/maya/open/utils/CloseUtils;
.super Ljava/lang/Object;
.source "CloseUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs closeIO([Ljava/io/Closeable;)V
    .locals 4
    .param p0, "closeables"    # [Ljava/io/Closeable;

    .line 26
    if-nez p0, :cond_0

    return-void

    .line 27
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 28
    .local v2, "closeable":Ljava/io/Closeable;
    if-eqz v2, :cond_1

    .line 30
    :try_start_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_1

    .line 31
    :catch_0
    move-exception v3

    .line 32
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 27
    .end local v2    # "closeable":Ljava/io/Closeable;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    :cond_2
    return-void
.end method

.method public static varargs closeIOQuietly([Ljava/io/Closeable;)V
    .locals 4
    .param p0, "closeables"    # [Ljava/io/Closeable;

    .line 44
    if-nez p0, :cond_0

    return-void

    .line 45
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 46
    .local v2, "closeable":Ljava/io/Closeable;
    if-eqz v2, :cond_1

    .line 48
    :try_start_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_1

    .line 49
    :catch_0
    move-exception v3

    .line 45
    .end local v2    # "closeable":Ljava/io/Closeable;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_2
    return-void
.end method
