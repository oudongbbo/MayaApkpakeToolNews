.class public final Lcom/maya/open/http/okhttp3/internal/tls/OkHostnameVerifier;
.super Ljava/lang/Object;
.source "OkHostnameVerifier.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field private static final ALT_DNS_NAME:I = 0x2

.field private static final ALT_IPA_NAME:I = 0x7

.field public static final INSTANCE:Lcom/maya/open/http/okhttp3/internal/tls/OkHostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/tls/OkHostnameVerifier;

    invoke-direct {v0}, Lcom/maya/open/http/okhttp3/internal/tls/OkHostnameVerifier;-><init>()V

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lcom/maya/open/http/okhttp3/internal/tls/OkHostnameVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .locals 5
    .param p0, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/maya/open/http/okhttp3/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v0

    .line 102
    .local v0, "altIpaNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/maya/open/http/okhttp3/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v1

    .line 103
    .local v1, "altDnsNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    return-object v2
.end method

.method private static getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
    .locals 7
    .param p0, "certificate"    # Ljava/security/cert/X509Certificate;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v1

    .line 113
    .local v1, "subjectAltNames":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-nez v1, :cond_0

    .line 114
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 116
    :cond_0
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 117
    .local v3, "subjectAltName":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/util/List;

    .line 118
    .local v4, "entry":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    .line 119
    goto :goto_0

    .line 121
    :cond_2
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 122
    .local v5, "altNameType":Ljava/lang/Integer;
    if-nez v5, :cond_3

    .line 123
    goto :goto_0

    .line 125
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, p1, :cond_4

    .line 126
    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 127
    .local v6, "altName":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 128
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v3    # "subjectAltName":Ljava/lang/Object;
    .end local v4    # "entry":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v5    # "altNameType":Ljava/lang/Integer;
    .end local v6    # "altName":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 132
    :cond_5
    return-object v0

    .line 133
    .end local v1    # "subjectAltNames":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/security/cert/CertificateParsingException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private verifyHostname(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;

    .line 148
    const/4 v0, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, ".."

    .line 149
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 153
    :cond_0
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, ".."

    .line 154
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 168
    :cond_1
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x2e

    if-nez v1, :cond_2

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 171
    :cond_2
    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 176
    :cond_3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 179
    const-string v1, "*"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 181
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 195
    :cond_4
    const-string v1, "*."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x2a

    const/4 v3, 0x1

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    goto :goto_0

    .line 204
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 206
    return v0

    .line 209
    :cond_6
    const-string v1, "*."

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 211
    return v0

    .line 215
    :cond_7
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "suffix":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 218
    return v0

    .line 222
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    .line 223
    .local v5, "suffixStartIndexInHostname":I
    if-lez v5, :cond_9

    add-int/lit8 v6, v5, -0x1

    .line 224
    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    if-eq v2, v4, :cond_9

    .line 226
    return v0

    .line 230
    :cond_9
    return v3

    .line 198
    .end local v1    # "suffix":Ljava/lang/String;
    .end local v5    # "suffixStartIndexInHostname":I
    :cond_a
    :goto_0
    return v0

    .line 156
    :cond_b
    :goto_1
    return v0

    .line 151
    :cond_c
    :goto_2
    return v0
.end method

.method private verifyHostname(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .locals 5
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "certificate"    # Ljava/security/cert/X509Certificate;

    .line 78
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "hasDns":Z
    const/4 v1, 0x2

    invoke-static {p2, v1}, Lcom/maya/open/http/okhttp3/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v1

    .line 81
    .local v1, "altNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 82
    const/4 v0, 0x1

    .line 83
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lcom/maya/open/http/okhttp3/internal/tls/OkHostnameVerifier;->verifyHostname(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    const/4 v4, 0x1

    return v4

    .line 81
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_1
    if-nez v0, :cond_2

    .line 89
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 91
    .local v2, "principal":Ljavax/security/auth/x500/X500Principal;
    new-instance v3, Lcom/maya/open/http/okhttp3/internal/tls/DistinguishedNameParser;

    invoke-direct {v3, v2}, Lcom/maya/open/http/okhttp3/internal/tls/DistinguishedNameParser;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    const-string v4, "cn"

    invoke-virtual {v3, v4}, Lcom/maya/open/http/okhttp3/internal/tls/DistinguishedNameParser;->findMostSpecific(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "cn":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 93
    invoke-direct {p0, p1, v3}, Lcom/maya/open/http/okhttp3/internal/tls/OkHostnameVerifier;->verifyHostname(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    return v4

    .line 97
    .end local v2    # "principal":Ljavax/security/auth/x500/X500Principal;
    .end local v3    # "cn":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private verifyIpAddress(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .locals 4
    .param p1, "ipAddress"    # Ljava/lang/String;
    .param p2, "certificate"    # Ljava/security/cert/X509Certificate;

    .line 67
    const/4 v0, 0x7

    invoke-static {p2, v0}, Lcom/maya/open/http/okhttp3/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v0

    .line 68
    .local v0, "altNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 69
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    const/4 v3, 0x1

    return v3

    .line 68
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "certificate"    # Ljava/security/cert/X509Certificate;

    .line 60
    invoke-static {p1}, Lcom/maya/open/http/okhttp3/internal/Util;->verifyAsIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/maya/open/http/okhttp3/internal/tls/OkHostnameVerifier;->verifyIpAddress(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v0

    goto :goto_0

    .line 62
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/maya/open/http/okhttp3/internal/tls/OkHostnameVerifier;->verifyHostname(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v0

    .line 60
    :goto_0
    return v0
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .line 52
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 53
    .local v1, "certificates":[Ljava/security/cert/Certificate;
    aget-object v2, v1, v0

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p1, v2}, Lcom/maya/open/http/okhttp3/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v2
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 54
    .end local v1    # "certificates":[Ljava/security/cert/Certificate;
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljavax/net/ssl/SSLException;
    return v0
.end method
