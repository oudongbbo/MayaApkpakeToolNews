.class public Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

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

    const-string v0, "UTF-8"

    .line 32
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;->NONE:Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;

    iput-object v0, p0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->printLevel:Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->isDebug:Z

    .line 47
    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private bodyToString(Lcom/maya/open/http/okhttp3/Request;)V
    .locals 3

    .line 183
    :try_start_0
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request;->newBuilder()Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request$Builder;->build()Lcom/maya/open/http/okhttp3/Request;

    move-result-object p1

    .line 184
    new-instance v0, Lcom/maya/open/http/okio/Buffer;

    invoke-direct {v0}, Lcom/maya/open/http/okio/Buffer;-><init>()V

    .line 185
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request;->body()Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/maya/open/http/okhttp3/RequestBody;->writeTo(Lcom/maya/open/http/okio/BufferedSink;)V

    .line 186
    sget-object v1, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    .line 187
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request;->body()Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/RequestBody;->contentType()Lcom/maya/open/http/okhttp3/MediaType;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 189
    sget-object v1, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Lcom/maya/open/http/okhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 191
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tbody:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 193
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static isPlaintext(Lcom/maya/open/http/okhttp3/MediaType;)Z
    .locals 4

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

    return v2

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 171
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "x-www-form-urlencoded"

    .line 172
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "json"

    .line 173
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "xml"

    .line 174
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "html"

    .line 175
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    return v2

    :cond_3
    return v0
.end method

.method private logForRequest(Lcom/maya/open/http/okhttp3/Request;Lcom/maya/open/http/okhttp3/Connection;)V
    .locals 8

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
    :goto_2
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request;->body()Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    if-eqz p2, :cond_4

    .line 98
    invoke-interface {p2}, Lcom/maya/open/http/okhttp3/Connection;->protocol()Lcom/maya/open/http/okhttp3/Protocol;

    move-result-object p2

    goto :goto_4

    :cond_4
    sget-object p2, Lcom/maya/open/http/okhttp3/Protocol;->HTTP_1_1:Lcom/maya/open/http/okhttp3/Protocol;

    .line 101
    :goto_4
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

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 102
    invoke-virtual {p0, p2}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_7

    .line 105
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request;->headers()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object p2

    .line 106
    invoke-virtual {p2}, Lcom/maya/open/http/okhttp3/Headers;->size()I

    move-result v1

    :goto_5
    if-ge v2, v1, :cond_5

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Lcom/maya/open/http/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Lcom/maya/open/http/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    const-string p2, " "

    .line 110
    invoke-virtual {p0, p2}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_7

    if-eqz v3, :cond_7

    .line 112
    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/RequestBody;->contentType()Lcom/maya/open/http/okhttp3/MediaType;

    move-result-object p2

    invoke-static {p2}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->isPlaintext(Lcom/maya/open/http/okhttp3/MediaType;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 113
    invoke-direct {p0, p1}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->bodyToString(Lcom/maya/open/http/okhttp3/Request;)V

    goto :goto_6

    :cond_6
    const-string p2, "\tbody: maybe [file part] , too large too print , ignored!"

    .line 115
    invoke-virtual {p0, p2}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_7
    :goto_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7

    :catchall_0
    move-exception p2

    goto :goto_8

    :catch_0
    move-exception p2

    .line 120
    :try_start_1
    invoke-static {p2}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_7
    const-string v0, "--> END "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    return-void

    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--> END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 123
    throw p2
.end method

.method private logForResponse(Lcom/maya/open/http/okhttp3/Response;J)Lcom/maya/open/http/okhttp3/Response;
    .locals 8

    .line 127
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->newBuilder()Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Response$Builder;->build()Lcom/maya/open/http/okhttp3/Response;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Response;->body()Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object v1

    .line 130
    iget-object v2, p0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->printLevel:Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;

    sget-object v3, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 131
    :goto_0
    iget-object v3, p0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->printLevel:Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;

    sget-object v6, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;

    if-eq v3, v6, :cond_2

    iget-object v3, p0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->printLevel:Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;

    sget-object v6, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;->HEADERS:Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;

    if-ne v3, v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 134
    :cond_2
    :goto_1
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<-- "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Response;->code()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Response;->message()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v6

    invoke-virtual {v6}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms\uff09"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    if-eqz v5, :cond_5

    .line 136
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Response;->headers()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object p2

    .line 137
    invoke-virtual {p2}, Lcom/maya/open/http/okhttp3/Headers;->size()I

    move-result p3

    :goto_2
    if-ge v4, p3, :cond_3

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Lcom/maya/open/http/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Lcom/maya/open/http/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const-string p2, " "

    .line 140
    invoke-virtual {p0, p2}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    if-eqz v2, :cond_5

    .line 141
    invoke-static {v0}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->hasBody(Lcom/maya/open/http/okhttp3/Response;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 142
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/ResponseBody;->contentType()Lcom/maya/open/http/okhttp3/MediaType;

    move-result-object p2

    invoke-static {p2}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->isPlaintext(Lcom/maya/open/http/okhttp3/MediaType;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 143
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    .line 144
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\tbody:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/ResponseBody;->contentType()Lcom/maya/open/http/okhttp3/MediaType;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/maya/open/http/okhttp3/ResponseBody;->create(Lcom/maya/open/http/okhttp3/MediaType;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object p2

    .line 146
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->newBuilder()Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/maya/open/http/okhttp3/Response$Builder;->body(Lcom/maya/open/http/okhttp3/ResponseBody;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/maya/open/http/okhttp3/Response$Builder;->build()Lcom/maya/open/http/okhttp3/Response;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "<-- END HTTP"

    .line 155
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    return-object p2

    :cond_4
    :try_start_1
    const-string p2, "\tbody: maybe [file part] , too large too print , ignored!"

    .line 148
    invoke-virtual {p0, p2}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p2

    .line 153
    :try_start_2
    invoke-static {p2}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :goto_3
    const-string p2, "<-- END HTTP"

    .line 155
    invoke-virtual {p0, p2}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    return-object p1

    :goto_4
    const-string p2, "<-- END HTTP"

    invoke-virtual {p0, p2}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 156
    throw p1
.end method


# virtual methods
.method public intercept(Lcom/maya/open/http/okhttp3/Interceptor$Chain;)Lcom/maya/open/http/okhttp3/Response;
    .locals 5

    .line 70
    invoke-interface {p1}, Lcom/maya/open/http/okhttp3/Interceptor$Chain;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->printLevel:Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;

    sget-object v2, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;->NONE:Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;

    if-ne v1, v2, :cond_0

    .line 72
    invoke-interface {p1, v0}, Lcom/maya/open/http/okhttp3/Interceptor$Chain;->proceed(Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Response;

    move-result-object p1

    return-object p1

    .line 76
    :cond_0
    invoke-interface {p1}, Lcom/maya/open/http/okhttp3/Interceptor$Chain;->connection()Lcom/maya/open/http/okhttp3/Connection;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->logForRequest(Lcom/maya/open/http/okhttp3/Request;Lcom/maya/open/http/okhttp3/Connection;)V

    .line 79
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 82
    :try_start_0
    invoke-interface {p1, v0}, Lcom/maya/open/http/okhttp3/Interceptor$Chain;->proceed(Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 90
    invoke-direct {p0, p1, v0, v1}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->logForResponse(Lcom/maya/open/http/okhttp3/Response;J)Lcom/maya/open/http/okhttp3/Response;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<-- HTTP FAILED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->log(Ljava/lang/String;)V

    .line 85
    throw p1
.end method

.method public log(Ljava/lang/String;)V
    .locals 2

    .line 63
    iget-boolean v0, p0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->isDebug:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->colorLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setColorLevel(Ljava/util/logging/Level;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->colorLevel:Ljava/util/logging/Level;

    return-void
.end method

.method public setDebugMode(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->isDebug:Z

    return-void
.end method

.method public setPrintLevel(Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->printLevel:Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;

    return-void
.end method
