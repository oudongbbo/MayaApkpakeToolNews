.class public final Lcom/maya/open/http/okhttp3/CertificatePinner$Builder;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okhttp3/CertificatePinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final pins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/CertificatePinner$Pin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/CertificatePinner$Builder;->pins:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public varargs add(Ljava/lang/String;[Ljava/lang/String;)Lcom/maya/open/http/okhttp3/CertificatePinner$Builder;
    .locals 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "pins"    # [Ljava/lang/String;

    .line 331
    if-eqz p1, :cond_1

    .line 333
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 334
    .local v2, "pin":Ljava/lang/String;
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/CertificatePinner$Builder;->pins:Ljava/util/List;

    new-instance v4, Lcom/maya/open/http/okhttp3/CertificatePinner$Pin;

    invoke-direct {v4, p1, v2}, Lcom/maya/open/http/okhttp3/CertificatePinner$Pin;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    .end local v2    # "pin":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 337
    :cond_0
    return-object p0

    .line 331
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pattern == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Lcom/maya/open/http/okhttp3/CertificatePinner;
    .locals 3

    .line 341
    new-instance v0, Lcom/maya/open/http/okhttp3/CertificatePinner;

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/CertificatePinner$Builder;->pins:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/maya/open/http/okhttp3/CertificatePinner;-><init>(Ljava/util/Set;Lcom/maya/open/http/okhttp3/internal/tls/CertificateChainCleaner;)V

    return-object v0
.end method
