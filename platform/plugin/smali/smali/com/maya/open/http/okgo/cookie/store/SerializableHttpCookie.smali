.class public Lcom/maya/open/http/okgo/cookie/store/SerializableHttpCookie;
.super Ljava/lang/Object;
.source "SerializableHttpCookie.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x58765a0a7f563d0cL


# instance fields
.field private transient clientCookie:Lcom/maya/open/http/okhttp3/Cookie;

.field private final transient cookie:Lcom/maya/open/http/okhttp3/Cookie;


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okhttp3/Cookie;)V
    .locals 0
    .param p1, "cookie"    # Lcom/maya/open/http/okhttp3/Cookie;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/maya/open/http/okgo/cookie/store/SerializableHttpCookie;->cookie:Lcom/maya/open/http/okhttp3/Cookie;

    .line 19
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 12
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 42
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 43
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 44
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    .line 45
    .local v2, "expiresAt":J
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 46
    .local v4, "domain":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 47
    .local v5, "path":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v6

    .line 48
    .local v6, "secure":Z
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v7

    .line 49
    .local v7, "httpOnly":Z
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v8

    .line 50
    .local v8, "hostOnly":Z
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v9

    .line 51
    .local v9, "persistent":Z
    new-instance v10, Lcom/maya/open/http/okhttp3/Cookie$Builder;

    invoke-direct {v10}, Lcom/maya/open/http/okhttp3/Cookie$Builder;-><init>()V

    .line 52
    .local v10, "builder":Lcom/maya/open/http/okhttp3/Cookie$Builder;
    invoke-virtual {v10, v0}, Lcom/maya/open/http/okhttp3/Cookie$Builder;->name(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Cookie$Builder;

    move-result-object v10

    .line 53
    invoke-virtual {v10, v1}, Lcom/maya/open/http/okhttp3/Cookie$Builder;->value(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Cookie$Builder;

    move-result-object v10

    .line 54
    invoke-virtual {v10, v2, v3}, Lcom/maya/open/http/okhttp3/Cookie$Builder;->expiresAt(J)Lcom/maya/open/http/okhttp3/Cookie$Builder;

    move-result-object v10

    .line 55
    if-eqz v8, :cond_0

    invoke-virtual {v10, v4}, Lcom/maya/open/http/okhttp3/Cookie$Builder;->hostOnlyDomain(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Cookie$Builder;

    move-result-object v11

    goto :goto_0

    :cond_0
    invoke-virtual {v10, v4}, Lcom/maya/open/http/okhttp3/Cookie$Builder;->domain(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Cookie$Builder;

    move-result-object v11

    :goto_0
    move-object v10, v11

    .line 56
    invoke-virtual {v10, v5}, Lcom/maya/open/http/okhttp3/Cookie$Builder;->path(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Cookie$Builder;

    move-result-object v10

    .line 57
    if-eqz v6, :cond_1

    invoke-virtual {v10}, Lcom/maya/open/http/okhttp3/Cookie$Builder;->secure()Lcom/maya/open/http/okhttp3/Cookie$Builder;

    move-result-object v11

    goto :goto_1

    :cond_1
    move-object v11, v10

    :goto_1
    move-object v10, v11

    .line 58
    if-eqz v7, :cond_2

    invoke-virtual {v10}, Lcom/maya/open/http/okhttp3/Cookie$Builder;->httpOnly()Lcom/maya/open/http/okhttp3/Cookie$Builder;

    move-result-object v11

    goto :goto_2

    :cond_2
    move-object v11, v10

    :goto_2
    move-object v10, v11

    .line 59
    invoke-virtual {v10}, Lcom/maya/open/http/okhttp3/Cookie$Builder;->build()Lcom/maya/open/http/okhttp3/Cookie;

    move-result-object v11

    iput-object v11, p0, Lcom/maya/open/http/okgo/cookie/store/SerializableHttpCookie;->clientCookie:Lcom/maya/open/http/okhttp3/Cookie;

    .line 60
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/maya/open/http/okgo/cookie/store/SerializableHttpCookie;->cookie:Lcom/maya/open/http/okhttp3/Cookie;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/maya/open/http/okgo/cookie/store/SerializableHttpCookie;->cookie:Lcom/maya/open/http/okhttp3/Cookie;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Cookie;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/maya/open/http/okgo/cookie/store/SerializableHttpCookie;->cookie:Lcom/maya/open/http/okhttp3/Cookie;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Cookie;->expiresAt()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 33
    iget-object v0, p0, Lcom/maya/open/http/okgo/cookie/store/SerializableHttpCookie;->cookie:Lcom/maya/open/http/okhttp3/Cookie;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Cookie;->domain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/maya/open/http/okgo/cookie/store/SerializableHttpCookie;->cookie:Lcom/maya/open/http/okhttp3/Cookie;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Cookie;->path()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/maya/open/http/okgo/cookie/store/SerializableHttpCookie;->cookie:Lcom/maya/open/http/okhttp3/Cookie;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Cookie;->secure()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 36
    iget-object v0, p0, Lcom/maya/open/http/okgo/cookie/store/SerializableHttpCookie;->cookie:Lcom/maya/open/http/okhttp3/Cookie;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Cookie;->httpOnly()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 37
    iget-object v0, p0, Lcom/maya/open/http/okgo/cookie/store/SerializableHttpCookie;->cookie:Lcom/maya/open/http/okhttp3/Cookie;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Cookie;->hostOnly()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 38
    iget-object v0, p0, Lcom/maya/open/http/okgo/cookie/store/SerializableHttpCookie;->cookie:Lcom/maya/open/http/okhttp3/Cookie;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Cookie;->persistent()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 39
    return-void
.end method


# virtual methods
.method public getCookie()Lcom/maya/open/http/okhttp3/Cookie;
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/maya/open/http/okgo/cookie/store/SerializableHttpCookie;->cookie:Lcom/maya/open/http/okhttp3/Cookie;

    .line 23
    .local v0, "bestCookie":Lcom/maya/open/http/okhttp3/Cookie;
    iget-object v1, p0, Lcom/maya/open/http/okgo/cookie/store/SerializableHttpCookie;->clientCookie:Lcom/maya/open/http/okhttp3/Cookie;

    if-eqz v1, :cond_0

    .line 24
    iget-object v0, p0, Lcom/maya/open/http/okgo/cookie/store/SerializableHttpCookie;->clientCookie:Lcom/maya/open/http/okhttp3/Cookie;

    .line 26
    :cond_0
    return-object v0
.end method
