.class public final Lcom/maya/open/http/okhttp3/Challenge;
.super Ljava/lang/Object;
.source "Challenge.java"


# instance fields
.field private final realm:Ljava/lang/String;

.field private final scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/Challenge;->scheme:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/Challenge;->realm:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 43
    instance-of v0, p1, Lcom/maya/open/http/okhttp3/Challenge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Challenge;->scheme:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lcom/maya/open/http/okhttp3/Challenge;

    iget-object v1, v1, Lcom/maya/open/http/okhttp3/Challenge;->scheme:Ljava/lang/String;

    .line 44
    invoke-static {v0, v1}, Lcom/maya/open/http/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Challenge;->realm:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lcom/maya/open/http/okhttp3/Challenge;

    iget-object v1, v1, Lcom/maya/open/http/okhttp3/Challenge;->realm:Ljava/lang/String;

    .line 45
    invoke-static {v0, v1}, Lcom/maya/open/http/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 49
    const/16 v0, 0x1d

    .line 50
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Challenge;->realm:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Challenge;->realm:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 51
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Challenge;->scheme:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Challenge;->scheme:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    nop

    :cond_1
    add-int/2addr v0, v3

    .line 52
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public realm()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Challenge;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public scheme()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Challenge;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Challenge;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " realm=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Challenge;->realm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
