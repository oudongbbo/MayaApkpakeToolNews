.class public Lcom/maya/open/http/okgo/cache/CacheEntity;
.super Ljava/lang/Object;
.source "CacheEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final CACHE_NEVER_EXPIRE:J = -0x1L

.field private static final serialVersionUID:J = -0x3c32a52e6586e8daL


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private id:J

.field private isExpire:Z

.field private key:Ljava/lang/String;

.field private localExpire:J

.field private responseHeaders:Lcom/maya/open/http/okgo/model/HttpHeaders;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    .local p0, "this":Lcom/maya/open/http/okgo/cache/CacheEntity;, "Lcom/maya/open/http/okgo/cache/CacheEntity<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentValues(Lcom/maya/open/http/okgo/cache/CacheEntity;)Landroid/content/ContentValues;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/maya/open/http/okgo/cache/CacheEntity<",
            "TT;>;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .line 95
    .local p0, "cacheEntity":Lcom/maya/open/http/okgo/cache/CacheEntity;, "Lcom/maya/open/http/okgo/cache/CacheEntity<TT;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 96
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "key"

    invoke-virtual {p0}, Lcom/maya/open/http/okgo/cache/CacheEntity;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "localExpire"

    invoke-virtual {p0}, Lcom/maya/open/http/okgo/cache/CacheEntity;->getLocalExpire()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 99
    invoke-virtual {p0}, Lcom/maya/open/http/okgo/cache/CacheEntity;->getResponseHeaders()Lcom/maya/open/http/okgo/model/HttpHeaders;

    move-result-object v1

    .line 100
    .local v1, "headers":Lcom/maya/open/http/okgo/model/HttpHeaders;
    const/4 v2, 0x0

    .line 101
    .local v2, "headerBAOS":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    move-object v4, v3

    .line 103
    .local v4, "headerOOS":Ljava/io/ObjectOutputStream;
    if-eqz v1, :cond_4

    .line 104
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v2, v5

    .line 105
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v5

    .line 106
    invoke-virtual {v4, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 107
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V

    .line 108
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 109
    .local v5, "headerData":[B
    const-string v6, "head"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    .line 114
    .end local v5    # "headerData":[B
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 111
    :catch_0
    move-exception v5

    .line 112
    .local v5, "e":Ljava/io/IOException;
    :try_start_1
    invoke-static {v5}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_0

    .line 117
    :catch_1
    move-exception v5

    goto :goto_1

    .line 116
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 117
    :goto_1
    nop

    .line 118
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-static {v5}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    .line 120
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 119
    :cond_1
    :goto_2
    goto :goto_9

    .line 114
    :goto_3
    nop

    .line 115
    if-eqz v4, :cond_2

    :try_start_3
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_4

    .line 117
    :catch_2
    move-exception v5

    goto :goto_5

    .line 116
    :cond_2
    :goto_4
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    .line 117
    :goto_5
    nop

    .line 118
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-static {v5}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 119
    .end local v5    # "e":Ljava/io/IOException;
    :cond_3
    :goto_6
    nop

    .line 120
    :goto_7
    throw v3

    .line 115
    :cond_4
    :goto_8
    if-eqz v4, :cond_5

    :try_start_4
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    .line 116
    :cond_5
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 122
    :goto_9
    invoke-virtual {p0}, Lcom/maya/open/http/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v5

    .line 123
    .local v5, "data":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x0

    .line 124
    .local v6, "dataBAOS":Ljava/io/ByteArrayOutputStream;
    nop

    .line 126
    .local v3, "dataOOS":Ljava/io/ObjectOutputStream;
    if-eqz v5, :cond_a

    .line 127
    :try_start_5
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v6, v7

    .line 128
    new-instance v7, Ljava/io/ObjectOutputStream;

    invoke-direct {v7, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v7

    .line 129
    invoke-virtual {v3, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 130
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 131
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 132
    .local v7, "dataData":[B
    const-string v8, "data"

    invoke-virtual {v0, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_12

    .line 137
    .end local v7    # "dataData":[B
    :catchall_1
    move-exception v7

    goto :goto_d

    .line 134
    :catch_3
    move-exception v7

    .line 135
    .local v7, "e":Ljava/io/IOException;
    :try_start_6
    invoke-static {v7}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 138
    .end local v7    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_6

    :try_start_7
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_a

    .line 140
    :catch_4
    move-exception v7

    goto :goto_b

    .line 139
    :cond_6
    :goto_a
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_c

    .line 140
    :goto_b
    nop

    .line 141
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-static {v7}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    .line 143
    .end local v7    # "e":Ljava/io/IOException;
    goto :goto_13

    .line 142
    :cond_7
    :goto_c
    goto :goto_13

    .line 137
    :goto_d
    nop

    .line 138
    if-eqz v3, :cond_8

    :try_start_8
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_e

    .line 140
    :catch_5
    move-exception v8

    goto :goto_f

    .line 139
    :cond_8
    :goto_e
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_10

    .line 140
    :goto_f
    nop

    .line 141
    .local v8, "e":Ljava/io/IOException;
    invoke-static {v8}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_11

    .line 142
    .end local v8    # "e":Ljava/io/IOException;
    :cond_9
    :goto_10
    nop

    .line 143
    :goto_11
    throw v7

    .line 138
    :cond_a
    :goto_12
    if-eqz v3, :cond_b

    :try_start_9
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 139
    :cond_b
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_c

    .line 144
    :goto_13
    return-object v0
.end method

.method public static parseCursorToBean(Landroid/database/Cursor;)Lcom/maya/open/http/okgo/cache/CacheEntity;
    .locals 9
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            ")",
            "Lcom/maya/open/http/okgo/cache/CacheEntity<",
            "TT;>;"
        }
    .end annotation

    .line 148
    new-instance v0, Lcom/maya/open/http/okgo/cache/CacheEntity;

    invoke-direct {v0}, Lcom/maya/open/http/okgo/cache/CacheEntity;-><init>()V

    .line 149
    .local v0, "cacheEntity":Lcom/maya/open/http/okgo/cache/CacheEntity;, "Lcom/maya/open/http/okgo/cache/CacheEntity<TT;>;"
    const-string v1, "_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okgo/cache/CacheEntity;->setId(J)V

    .line 150
    const-string v1, "key"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okgo/cache/CacheEntity;->setKey(Ljava/lang/String;)V

    .line 151
    const-string v1, "localExpire"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okgo/cache/CacheEntity;->setLocalExpire(J)V

    .line 153
    const-string v1, "head"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 154
    .local v1, "headerData":[B
    const/4 v2, 0x0

    .line 155
    .local v2, "headerBAIS":Ljava/io/ByteArrayInputStream;
    const/4 v3, 0x0

    move-object v4, v3

    .line 157
    .local v4, "headerOIS":Ljava/io/ObjectInputStream;
    if-eqz v1, :cond_4

    .line 158
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v2, v5

    .line 159
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v5

    .line 160
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .line 161
    .local v5, "header":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lcom/maya/open/http/okgo/model/HttpHeaders;

    invoke-virtual {v0, v6}, Lcom/maya/open/http/okgo/cache/CacheEntity;->setResponseHeaders(Lcom/maya/open/http/okgo/model/HttpHeaders;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    .line 166
    .end local v5    # "header":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 163
    :catch_0
    move-exception v5

    .line 164
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v5}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_0

    .line 169
    :catch_1
    move-exception v5

    goto :goto_1

    .line 168
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 169
    :goto_1
    nop

    .line 170
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v5}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    .line 172
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 171
    :cond_1
    :goto_2
    goto :goto_9

    .line 166
    :goto_3
    nop

    .line 167
    if-eqz v4, :cond_2

    :try_start_3
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_4

    .line 169
    :catch_2
    move-exception v5

    goto :goto_5

    .line 168
    :cond_2
    :goto_4
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    .line 169
    :goto_5
    nop

    .line 170
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-static {v5}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 171
    .end local v5    # "e":Ljava/io/IOException;
    :cond_3
    :goto_6
    nop

    .line 172
    :goto_7
    throw v3

    .line 167
    :cond_4
    :goto_8
    if-eqz v4, :cond_5

    :try_start_4
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 168
    :cond_5
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 174
    :goto_9
    const-string v5, "data"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 175
    .local v5, "dataData":[B
    const/4 v6, 0x0

    .line 176
    .local v6, "dataBAIS":Ljava/io/ByteArrayInputStream;
    nop

    .line 178
    .local v3, "dataOIS":Ljava/io/ObjectInputStream;
    if-eqz v5, :cond_a

    .line 179
    :try_start_5
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v6, v7

    .line 180
    new-instance v7, Ljava/io/ObjectInputStream;

    invoke-direct {v7, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v7

    .line 181
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    .line 182
    .local v7, "data":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, v7}, Lcom/maya/open/http/okgo/cache/CacheEntity;->setData(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_12

    .line 187
    .end local v7    # "data":Ljava/lang/Object;, "TT;"
    :catchall_1
    move-exception v7

    goto :goto_d

    .line 184
    :catch_3
    move-exception v7

    .line 185
    .local v7, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-static {v7}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 188
    .end local v7    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_6

    :try_start_7
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_a

    .line 190
    :catch_4
    move-exception v7

    goto :goto_b

    .line 189
    :cond_6
    :goto_a
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_c

    .line 190
    :goto_b
    nop

    .line 191
    .local v7, "e":Ljava/io/IOException;
    invoke-static {v7}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    .line 193
    .end local v7    # "e":Ljava/io/IOException;
    goto :goto_13

    .line 192
    :cond_7
    :goto_c
    goto :goto_13

    .line 187
    :goto_d
    nop

    .line 188
    if-eqz v3, :cond_8

    :try_start_8
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_e

    .line 190
    :catch_5
    move-exception v8

    goto :goto_f

    .line 189
    :cond_8
    :goto_e
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_10

    .line 190
    :goto_f
    nop

    .line 191
    .local v8, "e":Ljava/io/IOException;
    invoke-static {v8}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_11

    .line 192
    .end local v8    # "e":Ljava/io/IOException;
    :cond_9
    :goto_10
    nop

    .line 193
    :goto_11
    throw v7

    .line 188
    :cond_a
    :goto_12
    if-eqz v3, :cond_b

    :try_start_9
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 189
    :cond_b
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_c

    .line 195
    :goto_13
    return-object v0
.end method


# virtual methods
.method public checkExpire(Lcom/maya/open/http/okgo/cache/CacheMode;JJ)Z
    .locals 5
    .param p1, "cacheMode"    # Lcom/maya/open/http/okgo/cache/CacheMode;
    .param p2, "cacheTime"    # J
    .param p4, "baseTime"    # J

    .line 89
    .local p0, "this":Lcom/maya/open/http/okgo/cache/CacheEntity;, "Lcom/maya/open/http/okgo/cache/CacheEntity<TT;>;"
    sget-object v0, Lcom/maya/open/http/okgo/cache/CacheMode;->DEFAULT:Lcom/maya/open/http/okgo/cache/CacheMode;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/maya/open/http/okgo/cache/CacheEntity;->getLocalExpire()J

    move-result-wide v3

    cmp-long v0, v3, p4

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 90
    :cond_1
    const-wide/16 v3, -0x1

    cmp-long v0, p2, v3

    if-nez v0, :cond_2

    return v2

    .line 91
    :cond_2
    invoke-virtual {p0}, Lcom/maya/open/http/okgo/cache/CacheEntity;->getLocalExpire()J

    move-result-wide v3

    add-long/2addr v3, p2

    cmp-long v0, v3, p4

    if-gez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 59
    .local p0, "this":Lcom/maya/open/http/okgo/cache/CacheEntity;, "Lcom/maya/open/http/okgo/cache/CacheEntity<TT;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/cache/CacheEntity;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 35
    .local p0, "this":Lcom/maya/open/http/okgo/cache/CacheEntity;, "Lcom/maya/open/http/okgo/cache/CacheEntity<TT;>;"
    iget-wide v0, p0, Lcom/maya/open/http/okgo/cache/CacheEntity;->id:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 43
    .local p0, "this":Lcom/maya/open/http/okgo/cache/CacheEntity;, "Lcom/maya/open/http/okgo/cache/CacheEntity<TT;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/cache/CacheEntity;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalExpire()J
    .locals 2

    .line 67
    .local p0, "this":Lcom/maya/open/http/okgo/cache/CacheEntity;, "Lcom/maya/open/http/okgo/cache/CacheEntity<TT;>;"
    iget-wide v0, p0, Lcom/maya/open/http/okgo/cache/CacheEntity;->localExpire:J

    return-wide v0
.end method

.method public getResponseHeaders()Lcom/maya/open/http/okgo/model/HttpHeaders;
    .locals 1

    .line 51
    .local p0, "this":Lcom/maya/open/http/okgo/cache/CacheEntity;, "Lcom/maya/open/http/okgo/cache/CacheEntity<TT;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/cache/CacheEntity;->responseHeaders:Lcom/maya/open/http/okgo/model/HttpHeaders;

    return-object v0
.end method

.method public isExpire()Z
    .locals 1

    .line 75
    .local p0, "this":Lcom/maya/open/http/okgo/cache/CacheEntity;, "Lcom/maya/open/http/okgo/cache/CacheEntity<TT;>;"
    iget-boolean v0, p0, Lcom/maya/open/http/okgo/cache/CacheEntity;->isExpire:Z

    return v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 63
    .local p0, "this":Lcom/maya/open/http/okgo/cache/CacheEntity;, "Lcom/maya/open/http/okgo/cache/CacheEntity<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/maya/open/http/okgo/cache/CacheEntity;->data:Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public setExpire(Z)V
    .locals 0
    .param p1, "expire"    # Z

    .line 79
    .local p0, "this":Lcom/maya/open/http/okgo/cache/CacheEntity;, "Lcom/maya/open/http/okgo/cache/CacheEntity<TT;>;"
    iput-boolean p1, p0, Lcom/maya/open/http/okgo/cache/CacheEntity;->isExpire:Z

    .line 80
    return-void
.end method

.method public setId(J)V
    .locals 0
    .param p1, "id"    # J

    .line 39
    .local p0, "this":Lcom/maya/open/http/okgo/cache/CacheEntity;, "Lcom/maya/open/http/okgo/cache/CacheEntity<TT;>;"
    iput-wide p1, p0, Lcom/maya/open/http/okgo/cache/CacheEntity;->id:J

    .line 40
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 47
    .local p0, "this":Lcom/maya/open/http/okgo/cache/CacheEntity;, "Lcom/maya/open/http/okgo/cache/CacheEntity<TT;>;"
    iput-object p1, p0, Lcom/maya/open/http/okgo/cache/CacheEntity;->key:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setLocalExpire(J)V
    .locals 0
    .param p1, "localExpire"    # J

    .line 71
    .local p0, "this":Lcom/maya/open/http/okgo/cache/CacheEntity;, "Lcom/maya/open/http/okgo/cache/CacheEntity<TT;>;"
    iput-wide p1, p0, Lcom/maya/open/http/okgo/cache/CacheEntity;->localExpire:J

    .line 72
    return-void
.end method

.method public setResponseHeaders(Lcom/maya/open/http/okgo/model/HttpHeaders;)V
    .locals 0
    .param p1, "responseHeaders"    # Lcom/maya/open/http/okgo/model/HttpHeaders;

    .line 55
    .local p0, "this":Lcom/maya/open/http/okgo/cache/CacheEntity;, "Lcom/maya/open/http/okgo/cache/CacheEntity<TT;>;"
    iput-object p1, p0, Lcom/maya/open/http/okgo/cache/CacheEntity;->responseHeaders:Lcom/maya/open/http/okgo/model/HttpHeaders;

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 200
    .local p0, "this":Lcom/maya/open/http/okgo/cache/CacheEntity;, "Lcom/maya/open/http/okgo/cache/CacheEntity<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CacheEntity{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/maya/open/http/okgo/cache/CacheEntity;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okgo/cache/CacheEntity;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", responseHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okgo/cache/CacheEntity;->responseHeaders:Lcom/maya/open/http/okgo/model/HttpHeaders;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okgo/cache/CacheEntity;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", localExpire="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/maya/open/http/okgo/cache/CacheEntity;->localExpire:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
