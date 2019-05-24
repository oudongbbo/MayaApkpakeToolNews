.class public Lcom/maya/open/http/okgo/cookie/store/SerializableHttpCookie;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/maya/open/http/okgo/cookie/store/SerializableHttpCookie;->cookie:Lcom/maya/open/http/okhttp3/Cookie;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 9

    .line 42
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    .line 45
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v6

    .line 48
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v7

    .line 49
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v8

    .line 50
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    .line 51
    new-instance p1, Lcom/maya/open/http/okhttp3/Cookie$Builder;

    invoke-direct {p1}, Lcom/maya/open/http/okhttp3/Cookie$Builder;-><init>()V

    .line 52
    invoke-virtual {p1, v0}, Lcom/maya/open/http/okhttp3/Cookie$Builder;->name(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Cookie$Builder;

    move-result-object p1

    .line 53
    invoke-virtual {p1, v1}, Lcom/maya/open/http/okhttp3/Cookie$Builder;->value(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Cookie$Builder;

    move-result-object p1

    .line 54
    invoke-virtual {p1, v2, v3}, Lcom/maya/open/http/okhttp3/Cookie$Builder;->expiresAt(J)Lcom/maya/open/http/okhttp3/Cookie$Builder;

    move-result-object p1

    if-eqz v8, :cond_0

    .line 55
    invoke-virtual {p1, v4}, Lcom/maya/open/http/okhttp3/Cookie$Builder;->hostOnlyDomain(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Cookie$Builder;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v4}, Lcom/maya/open/http/okhttp3/Cookie$Builder;->domain(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Cookie$Builder;

    move-result-object p1

    .line 56
    :goto_0
    invoke-virtual {p1, v5}, Lcom/maya/open/http/okhttp3/Cookie$Builder;->path(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Cookie$Builder;

    move-result-object p1

    if-eqz v6, :cond_1

    .line 57
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Cookie$Builder;->secure()Lcom/maya/open/http/okhttp3/Cookie$Builder;

    move-result-object p1

    :cond_1
    if-eqz v7, :cond_2

    .line 58
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Cookie$Builder;->httpOnly()Lcom/maya/open/http/okhttp3/Cookie$Builder;

    move-result-object p1

    .line 59
    :cond_2
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Cookie$Builder;->build()Lcom/maya/open/http/okhttp3/Cookie;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/open/http/okgo/cookie/store/SerializableHttpCookie;->clientCookie:Lcom/maya/open/http/okhttp3/Cookie;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

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

    return-void
.end method


# virtual methods
.method public getCookie()Lcom/maya/open/http/okhttp3/Cookie;
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/maya/open/http/okgo/cookie/store/SerializableHttpCookie;->cookie:Lcom/maya/open/http/okhttp3/Cookie;

    .line 23
    iget-object v1, p0, Lcom/maya/open/http/okgo/cookie/store/SerializableHttpCookie;->clientCookie:Lcom/maya/open/http/okhttp3/Cookie;

    if-eqz v1, :cond_0

    .line 24
    iget-object v0, p0, Lcom/maya/open/http/okgo/cookie/store/SerializableHttpCookie;->clientCookie:Lcom/maya/open/http/okhttp3/Cookie;

    :cond_0
    return-object v0
.end method
