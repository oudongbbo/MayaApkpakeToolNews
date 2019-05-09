.class public final Lcom/maya/open/http/okhttp3/Cookie$Builder;
.super Ljava/lang/Object;
.source "Cookie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okhttp3/Cookie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field domain:Ljava/lang/String;

.field expiresAt:J

.field hostOnly:Z

.field httpOnly:Z

.field name:Ljava/lang/String;

.field path:Ljava/lang/String;

.field persistent:Z

.field secure:Z

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    const-wide v0, 0xe677d21fdbffL

    iput-wide v0, p0, Lcom/maya/open/http/okhttp3/Cookie$Builder;->expiresAt:J

    .line 459
    const-string v0, "/"

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Cookie$Builder;->path:Ljava/lang/String;

    return-void
.end method

.method private domain(Ljava/lang/String;Z)Lcom/maya/open/http/okhttp3/Cookie$Builder;
    .locals 4
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "hostOnly"    # Z

    .line 504
    if-eqz p1, :cond_1

    .line 505
    invoke-static {p1}, Lcom/maya/open/http/okhttp3/internal/Util;->domainToAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "canonicalDomain":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 509
    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Cookie$Builder;->domain:Ljava/lang/String;

    .line 510
    iput-boolean p2, p0, Lcom/maya/open/http/okhttp3/Cookie$Builder;->hostOnly:Z

    .line 511
    return-object p0

    .line 507
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected domain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 504
    .end local v0    # "canonicalDomain":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "domain == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lcom/maya/open/http/okhttp3/Cookie;
    .locals 1

    .line 531
    new-instance v0, Lcom/maya/open/http/okhttp3/Cookie;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okhttp3/Cookie;-><init>(Lcom/maya/open/http/okhttp3/Cookie$Builder;)V

    return-object v0
.end method

.method public domain(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Cookie$Builder;
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;

    .line 492
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/maya/open/http/okhttp3/Cookie$Builder;->domain(Ljava/lang/String;Z)Lcom/maya/open/http/okhttp3/Cookie$Builder;

    move-result-object v0

    return-object v0
.end method

.method public expiresAt(J)Lcom/maya/open/http/okhttp3/Cookie$Builder;
    .locals 3
    .param p1, "expiresAt"    # J

    .line 480
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/high16 p1, -0x8000000000000000L

    .line 481
    :cond_0
    const-wide v0, 0xe677d21fdbffL

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    const-wide p1, 0xe677d21fdbffL

    .line 482
    :cond_1
    iput-wide p1, p0, Lcom/maya/open/http/okhttp3/Cookie$Builder;->expiresAt:J

    .line 483
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/Cookie$Builder;->persistent:Z

    .line 484
    return-object p0
.end method

.method public hostOnlyDomain(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Cookie$Builder;
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;

    .line 500
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/maya/open/http/okhttp3/Cookie$Builder;->domain(Ljava/lang/String;Z)Lcom/maya/open/http/okhttp3/Cookie$Builder;

    move-result-object v0

    return-object v0
.end method

.method public httpOnly()Lcom/maya/open/http/okhttp3/Cookie$Builder;
    .locals 1

    .line 526
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/Cookie$Builder;->httpOnly:Z

    .line 527
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Cookie$Builder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 466
    if-eqz p1, :cond_1

    .line 467
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/Cookie$Builder;->name:Ljava/lang/String;

    .line 469
    return-object p0

    .line 467
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name is not trimmed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public path(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Cookie$Builder;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 515
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/Cookie$Builder;->path:Ljava/lang/String;

    .line 517
    return-object p0

    .line 515
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "path must start with \'/\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public secure()Lcom/maya/open/http/okhttp3/Cookie$Builder;
    .locals 1

    .line 521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/Cookie$Builder;->secure:Z

    .line 522
    return-object p0
.end method

.method public value(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Cookie$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 473
    if-eqz p1, :cond_1

    .line 474
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/Cookie$Builder;->value:Ljava/lang/String;

    .line 476
    return-object p0

    .line 474
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is not trimmed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
