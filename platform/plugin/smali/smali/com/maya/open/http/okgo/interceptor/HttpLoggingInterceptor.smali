.class public Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;
.super Ljava/lang/Object;
.source "HttpLoggingInterceptor.java"

# interfaces
.implements Lcom/maya/open/http/okhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;
    }
.end annotation


# static fields
.field private static final UTF8:Ljava/nio/charset/Charset;


# instance fields
.field private colorLevel:Ljava/util/logging/Level;

.field private isDebug:Z

.field private logger:Ljava/util/logging/Logger;

.field private volatile printLevel:Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;->NONE:Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;

    iput-object v0, p0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->printLevel:Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->isDebug:Z

    .line 47
    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->logger:Ljava/util/logging/Logger;

    .line 48
    return-void
.end method

.method private bodyToString(Lcom/maya/open/http/okhttp3/Request;)V
    .locals 6
    .param p1, "request"    # Lcom/maya/open/http/okhttp3/Request;

    .line 183
    :try_start_0
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request;->newBuilder()Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request$Builder;->build()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v0

    .line 184
    .local v0, "copy":Lcom/maya/open/http/okhttp3/Request;
    new-instance v1, Lcom/maya/open/http/okio/Buffer;

    invoke-direct {v1}, Lcom/maya/open/http/okio/Buffer;-><init>()V

    .line 185
    .local v1, "buffer":Lcom/maya/open/http/okio/Buffer;
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request;->body()Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/maya/open/http/okhttp3/RequestBody;->writeTo(Lcom/maya/open/http/okio/BufferedSink;)V

    .line 186
    sget-object v2, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    .line 187
    .local v2, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request;->body()Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/RequestBody;->contentType()Lcom/maya/open/http/okhttp3/MediaType;

    move-result-object v3

    .line 188
    .local v3, "contentType":Lcom/maya/open/http/okhttp3/MediaType;
    if-eqz v3, :cond_0

    .line 189
    sget-object v4, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Lcom/maya/open/http/okhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v4

    move-object v2, v4

    .line 191
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tbody:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v0    # "copy":Lcom/maya/open/http/okhttp3/Request;
    .end local v1    # "buffer":Lcom/maya/open/http/okio/Buffer;
    .end local v2    # "charset":Ljava/nio/charset/Charset;
    .end local v3    # "contentType":Lcom/maya/open/http/okhttp3/MediaType;
    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 195
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static isPlaintext(Lcom/maya/open/http/okhttp3/MediaType;)Z
    .locals 4
    .param p0, "mediaType"    # Lcom/maya/open/http/okhttp3/MediaType;

    .line 165
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v1

    const-string v3, "text"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    return v2

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "subtype":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 171
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 172
    const-string v3, "x-www-form-urlencoded"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "json"

    .line 173
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "xml"

    .line 174
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "html"

    .line 175
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 176
    :cond_2
    return v2

    .line 178
    :cond_3
    return v0
.end method

.method private logForRequest(Lcom/maya/open/http/okhttp3/Request;Lcom/maya/open/http/okhttp3/Connection;)V
    .locals 11
    .param p1, "request"    # Lcom/maya/open/http/okhttp3/Request;
    .param p2, "connection"    # Lcom/maya/open/http/okhttp3/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->printLevel:Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;

    sget-object v1, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 95
    .local v0, "logBody":Z
    :goto_0
    iget-object v1, p0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->printLevel:Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;

    sget-object v4, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;

    if-eq v1, v4, :cond_2

    iget-object v1, p0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->printLevel:Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;

    sget-object v4, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;->HEADERS:Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 96
    .local v1, "logHeaders":Z
    :goto_2
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request;->body()Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object v4

    .line 97
    .local v4, "requestBody":Lcom/maya/open/http/okhttp3/RequestBody;
    if-eqz v4, :cond_3

    const/4 v2, 0x1

    nop

    .line 98
    .local v2, "hasRequestBody":Z
    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p2}, Lcom/maya/open/http/okhttp3/Connection;->protocol()Lcom/maya/open/http/okhttp3/Protocol;

    move-result-object v3

    goto :goto_3

    :cond_4
    sget-object v3, Lcom/maya/open/http/okhttp3/Protocol;->HTTP_1_1:Lcom/maya/open/http/okhttp3/Protocol;

    .line 101
    .local v3, "protocol":Lcom/maya/open/http/okhttp3/Protocol;
    :goto_3
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, "requestStartMessage":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 104
    if-eqz v1, :cond_7

    .line 105
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request;->headers()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v6

    .line 106
    .local v6, "headers":Lcom/maya/open/http/okhttp3/Headers;
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-virtual {v6}, Lcom/maya/open/http/okhttp3/Headers;->size()I

    move-result v8

    .local v8, "count":I
    :goto_4
    if-ge v7, v8, :cond_5

    .line 107
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Lcom/maya/open/http/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Lcom/maya/open/http/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 106
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 110
    .end local v7    # "i":I
    .end local v8    # "count":I
    :cond_5
    const-string v7, " "

    invoke-virtual {p0, v7}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 111
    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    .line 112
    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/RequestBody;->contentType()Lcom/maya/open/http/okhttp3/MediaType;

    move-result-object v7

    invoke-static {v7}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->isPlaintext(Lcom/maya/open/http/okhttp3/MediaType;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 113
    invoke-direct {p0, p1}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->bodyToString(Lcom/maya/open/http/okhttp3/Request;)V

    goto :goto_5

    .line 115
    :cond_6
    const-string v7, "\tbody: maybe [file part] , too large too print , ignored!"

    invoke-virtual {p0, v7}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .end local v5    # "requestStartMessage":Ljava/lang/String;
    .end local v6    # "headers":Lcom/maya/open/http/okhttp3/Headers;
    :cond_7
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_6

    :catchall_0
    move-exception v5

    goto :goto_7

    .line 119
    :catch_0
    move-exception v5

    .line 120
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v5}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    .end local v5    # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6
    const-string v6, "--> END "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 123
    nop

    .line 124
    return-void

    .line 122
    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--> END "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 123
    throw v5
.end method

.method private logForResponse(Lcom/maya/open/http/okhttp3/Response;J)Lcom/maya/open/http/okhttp3/Response;
    .locals 10
    .param p1, "response"    # Lcom/maya/open/http/okhttp3/Response;
    .param p2, "tookMs"    # J

    .line 127
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->newBuilder()Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v0

    .line 128
    .local v0, "builder":Lcom/maya/open/http/okhttp3/Response$Builder;
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Response$Builder;->build()Lcom/maya/open/http/okhttp3/Response;

    move-result-object v1

    .line 129
    .local v1, "clone":Lcom/maya/open/http/okhttp3/Response;
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Response;->body()Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object v2

    .line 130
    .local v2, "responseBody":Lcom/maya/open/http/okhttp3/ResponseBody;
    iget-object v3, p0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->printLevel:Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;

    sget-object v4, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 131
    .local v3, "logBody":Z
    :goto_0
    iget-object v4, p0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->printLevel:Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;

    sget-object v7, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;

    if-eq v4, v7, :cond_2

    iget-object v4, p0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->printLevel:Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;

    sget-object v7, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;->HEADERS:Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;

    if-ne v4, v7, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x1

    :goto_2
    move v4, v5

    .line 134
    .local v4, "logHeaders":Z
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<-- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Response;->code()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Response;->message()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v6

    invoke-virtual {v6}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "ms\uff09"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 135
    if-eqz v4, :cond_5

    .line 136
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Response;->headers()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v5

    .line 137
    .local v5, "headers":Lcom/maya/open/http/okhttp3/Headers;
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-virtual {v5}, Lcom/maya/open/http/okhttp3/Headers;->size()I

    move-result v7

    .local v7, "count":I
    :goto_3
    if-ge v6, v7, :cond_3

    .line 138
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Lcom/maya/open/http/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Lcom/maya/open/http/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 137
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 140
    .end local v6    # "i":I
    .end local v7    # "count":I
    :cond_3
    const-string v6, " "

    invoke-virtual {p0, v6}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 141
    if-eqz v3, :cond_5

    invoke-static {v1}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->hasBody(Lcom/maya/open/http/okhttp3/Response;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 142
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/ResponseBody;->contentType()Lcom/maya/open/http/okhttp3/MediaType;

    move-result-object v6

    invoke-static {v6}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->isPlaintext(Lcom/maya/open/http/okhttp3/MediaType;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 143
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v6

    .line 144
    .local v6, "body":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\tbody:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/ResponseBody;->contentType()Lcom/maya/open/http/okhttp3/MediaType;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/maya/open/http/okhttp3/ResponseBody;->create(Lcom/maya/open/http/okhttp3/MediaType;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object v7

    move-object v2, v7

    .line 146
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->newBuilder()Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/maya/open/http/okhttp3/Response$Builder;->body(Lcom/maya/open/http/okhttp3/ResponseBody;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/maya/open/http/okhttp3/Response$Builder;->build()Lcom/maya/open/http/okhttp3/Response;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    const-string v8, "<-- END HTTP"

    invoke-virtual {p0, v8}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 146
    return-object v7

    .line 148
    .end local v6    # "body":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v6, "\tbody: maybe [file part] , too large too print , ignored!"

    invoke-virtual {p0, v6}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 155
    .end local v5    # "headers":Lcom/maya/open/http/okhttp3/Headers;
    :catchall_0
    move-exception v5

    goto :goto_5

    .line 152
    :catch_0
    move-exception v5

    .line 153
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v5}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_4
    const-string v5, "<-- END HTTP"

    invoke-virtual {p0, v5}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 156
    nop

    .line 157
    return-object p1

    .line 155
    :goto_5
    const-string v6, "<-- END HTTP"

    invoke-virtual {p0, v6}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 156
    throw v5
.end method


# virtual methods
.method public intercept(Lcom/maya/open/http/okhttp3/Interceptor$Chain;)Lcom/maya/open/http/okhttp3/Response;
    .locals 7
    .param p1, "chain"    # Lcom/maya/open/http/okhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-interface {p1}, Lcom/maya/open/http/okhttp3/Interceptor$Chain;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v0

    .line 71
    .local v0, "request":Lcom/maya/open/http/okhttp3/Request;
    iget-object v1, p0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->printLevel:Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;

    sget-object v2, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;->NONE:Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;

    if-ne v1, v2, :cond_0

    .line 72
    invoke-interface {p1, v0}, Lcom/maya/open/http/okhttp3/Interceptor$Chain;->proceed(Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Response;

    move-result-object v1

    return-object v1

    .line 76
    :cond_0
    invoke-interface {p1}, Lcom/maya/open/http/okhttp3/Interceptor$Chain;->connection()Lcom/maya/open/http/okhttp3/Connection;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->logForRequest(Lcom/maya/open/http/okhttp3/Request;Lcom/maya/open/http/okhttp3/Connection;)V

    .line 79
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 82
    .local v1, "startNs":J
    :try_start_0
    invoke-interface {p1, v0}, Lcom/maya/open/http/okhttp3/Interceptor$Chain;->proceed(Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Response;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .local v3, "response":Lcom/maya/open/http/okhttp3/Response;
    nop

    .line 85
    nop

    .line 87
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 90
    .local v4, "tookMs":J
    invoke-direct {p0, v3, v4, v5}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->logForResponse(Lcom/maya/open/http/okhttp3/Response;J)Lcom/maya/open/http/okhttp3/Response;

    move-result-object v6

    return-object v6

    .line 83
    .end local v3    # "response":Lcom/maya/open/http/okhttp3/Response;
    .end local v4    # "tookMs":J
    :catch_0
    move-exception v3

    .line 84
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<-- HTTP FAILED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 85
    throw v3
.end method

.method public log(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 63
    iget-boolean v0, p0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->isDebug:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->colorLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method

.method public setColorLevel(Ljava/util/logging/Level;)V
    .locals 0
    .param p1, "level"    # Ljava/util/logging/Level;

    .line 55
    iput-object p1, p0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->colorLevel:Ljava/util/logging/Level;

    .line 56
    return-void
.end method

.method public setDebugMode(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->isDebug:Z

    .line 60
    return-void
.end method

.method public setPrintLevel(Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;)V
    .locals 0
    .param p1, "level"    # Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;

    .line 51
    iput-object p1, p0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->printLevel:Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;

    .line 52
    return-void
.end method
