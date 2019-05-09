.class public final Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.java"


# static fields
.field private static final PARAMETER:Ljava/util/regex/Pattern;

.field private static final QUOTED_STRING:Ljava/lang/String; = "\"([^\"]*)\""

.field private static final TOKEN:Ljava/lang/String; = "([^ \"=]*)"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-string v0, " +([^ \"=]*)=(:?\"([^\"]*)\"|([^ \"=]*)) *(:?,|$)"

    .line 44
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->PARAMETER:Ljava/util/regex/Pattern;

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static contentLength(Lcom/maya/open/http/okhttp3/Headers;)J
    .locals 2
    .param p0, "headers"    # Lcom/maya/open/http/okhttp3/Headers;

    .line 54
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lcom/maya/open/http/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->stringToLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static contentLength(Lcom/maya/open/http/okhttp3/Response;)J
    .locals 2
    .param p0, "response"    # Lcom/maya/open/http/okhttp3/Response;

    .line 50
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/Response;->headers()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->contentLength(Lcom/maya/open/http/okhttp3/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hasBody(Lcom/maya/open/http/okhttp3/Response;)Z
    .locals 8
    .param p0, "response"    # Lcom/maya/open/http/okhttp3/Response;

    .line 189
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 190
    return v1

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/Response;->code()I

    move-result v0

    .line 194
    .local v0, "responseCode":I
    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_2

    :cond_1
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_2

    const/16 v2, 0x130

    if-eq v0, v2, :cond_2

    .line 197
    return v3

    .line 202
    :cond_2
    invoke-static {p0}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->contentLength(Lcom/maya/open/http/okhttp3/Response;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_4

    const-string v2, "chunked"

    const-string v4, "Transfer-Encoding"

    .line 203
    invoke-virtual {p0, v4}, Lcom/maya/open/http/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 207
    :cond_3
    return v1

    .line 204
    :cond_4
    :goto_0
    return v3
.end method

.method public static hasVaryAll(Lcom/maya/open/http/okhttp3/Headers;)Z
    .locals 2
    .param p0, "responseHeaders"    # Lcom/maya/open/http/okhttp3/Headers;

    .line 89
    invoke-static {p0}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->varyFields(Lcom/maya/open/http/okhttp3/Headers;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hasVaryAll(Lcom/maya/open/http/okhttp3/Response;)Z
    .locals 1
    .param p0, "response"    # Lcom/maya/open/http/okhttp3/Response;

    .line 82
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/Response;->headers()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->hasVaryAll(Lcom/maya/open/http/okhttp3/Headers;)Z

    move-result v0

    return v0
.end method

.method public static parseChallenges(Lcom/maya/open/http/okhttp3/Headers;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p0, "responseHeaders"    # Lcom/maya/open/http/okhttp3/Headers;
    .param p1, "challengeHeader"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okhttp3/Headers;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/Challenge;",
            ">;"
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v0, "challenges":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/Challenge;>;"
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 158
    .local v1, "authenticationHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 159
    .local v3, "header":Ljava/lang/String;
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 160
    .local v10, "index":I
    const/4 v4, -0x1

    if-ne v10, v4, :cond_0

    .end local v3    # "header":Ljava/lang/String;
    .end local v10    # "index":I
    goto :goto_0

    .line 162
    .restart local v3    # "header":Ljava/lang/String;
    .restart local v10    # "index":I
    :cond_0
    sget-object v4, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->PARAMETER:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 163
    .local v11, "matcher":Ljava/util/regex/Matcher;
    move v4, v10

    .local v4, "i":I
    :goto_1
    move v12, v4

    .end local v4    # "i":I
    .local v12, "i":I
    invoke-virtual {v11, v12}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 164
    const/4 v5, 0x1

    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Ljava/util/regex/Matcher;->start(I)I

    move-result v6

    const-string v7, "realm"

    const/4 v8, 0x0

    const/4 v9, 0x5

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 165
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "scheme":Ljava/lang/String;
    const/4 v5, 0x3

    invoke-virtual {v11, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 167
    .local v5, "realm":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 168
    new-instance v6, Lcom/maya/open/http/okhttp3/Challenge;

    invoke-direct {v6, v4, v5}, Lcom/maya/open/http/okhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    goto :goto_2

    .line 163
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v5    # "realm":Ljava/lang/String;
    :cond_1
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    goto :goto_1

    .line 173
    .end local v3    # "header":Ljava/lang/String;
    .end local v10    # "index":I
    .end local v11    # "matcher":Ljava/util/regex/Matcher;
    .end local v12    # "i":I
    :cond_2
    :goto_2
    goto :goto_0

    .line 174
    :cond_3
    return-object v0
.end method

.method public static parseSeconds(Ljava/lang/String;I)I
    .locals 5
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .line 243
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .local v0, "seconds":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 245
    const v2, 0x7fffffff

    return v2

    .line 246
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 247
    const/4 v2, 0x0

    return v2

    .line 249
    :cond_1
    long-to-int v2, v0

    return v2

    .line 251
    .end local v0    # "seconds":J
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p1
.end method

.method public static receiveHeaders(Lcom/maya/open/http/okhttp3/CookieJar;Lcom/maya/open/http/okhttp3/HttpUrl;Lcom/maya/open/http/okhttp3/Headers;)V
    .locals 2
    .param p0, "cookieJar"    # Lcom/maya/open/http/okhttp3/CookieJar;
    .param p1, "url"    # Lcom/maya/open/http/okhttp3/HttpUrl;
    .param p2, "headers"    # Lcom/maya/open/http/okhttp3/Headers;

    .line 178
    sget-object v0, Lcom/maya/open/http/okhttp3/CookieJar;->NO_COOKIES:Lcom/maya/open/http/okhttp3/CookieJar;

    if-ne p0, v0, :cond_0

    return-void

    .line 180
    :cond_0
    invoke-static {p1, p2}, Lcom/maya/open/http/okhttp3/Cookie;->parseAll(Lcom/maya/open/http/okhttp3/HttpUrl;Lcom/maya/open/http/okhttp3/Headers;)Ljava/util/List;

    move-result-object v0

    .line 181
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/Cookie;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 183
    :cond_1
    invoke-interface {p0, p1, v0}, Lcom/maya/open/http/okhttp3/CookieJar;->saveFromResponse(Lcom/maya/open/http/okhttp3/HttpUrl;Ljava/util/List;)V

    .line 184
    return-void
.end method

.method public static skipUntil(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "characters"    # Ljava/lang/String;

    .line 215
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 216
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 217
    goto :goto_1

    .line 215
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 220
    :cond_1
    :goto_1
    return p1
.end method

.method public static skipWhitespace(Ljava/lang/String;I)I
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I

    .line 228
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 229
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 230
    .local v0, "c":C
    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 231
    goto :goto_1

    .line 228
    .end local v0    # "c":C
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 234
    :cond_1
    :goto_1
    return p1
.end method

.method private static stringToLong(Ljava/lang/String;)J
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 58
    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    .line 60
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    .line 61
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-wide v0
.end method

.method public static varyFields(Lcom/maya/open/http/okhttp3/Headers;)Ljava/util/Set;
    .locals 9
    .param p0, "responseHeaders"    # Lcom/maya/open/http/okhttp3/Headers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okhttp3/Headers;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 101
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/Headers;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 102
    const-string v3, "Vary"

    invoke-virtual {p0, v1}, Lcom/maya/open/http/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 104
    :cond_0
    invoke-virtual {p0, v1}, Lcom/maya/open/http/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "value":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 106
    new-instance v4, Ljava/util/TreeSet;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    move-object v0, v4

    .line 108
    :cond_1
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 109
    .local v7, "varyField":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v7    # "varyField":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 101
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_3
    return-object v0
.end method

.method private static varyFields(Lcom/maya/open/http/okhttp3/Response;)Ljava/util/Set;
    .locals 1
    .param p0, "response"    # Lcom/maya/open/http/okhttp3/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okhttp3/Response;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/Response;->headers()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->varyFields(Lcom/maya/open/http/okhttp3/Headers;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static varyHeaders(Lcom/maya/open/http/okhttp3/Headers;Lcom/maya/open/http/okhttp3/Headers;)Lcom/maya/open/http/okhttp3/Headers;
    .locals 6
    .param p0, "requestHeaders"    # Lcom/maya/open/http/okhttp3/Headers;
    .param p1, "responseHeaders"    # Lcom/maya/open/http/okhttp3/Headers;

    .line 133
    invoke-static {p1}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->varyFields(Lcom/maya/open/http/okhttp3/Headers;)Ljava/util/Set;

    move-result-object v0

    .line 134
    .local v0, "varyFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/maya/open/http/okhttp3/Headers$Builder;

    invoke-direct {v1}, Lcom/maya/open/http/okhttp3/Headers$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Headers$Builder;->build()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v1

    return-object v1

    .line 136
    :cond_0
    new-instance v1, Lcom/maya/open/http/okhttp3/Headers$Builder;

    invoke-direct {v1}, Lcom/maya/open/http/okhttp3/Headers$Builder;-><init>()V

    .line 137
    .local v1, "result":Lcom/maya/open/http/okhttp3/Headers$Builder;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/Headers;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 138
    invoke-virtual {p0, v2}, Lcom/maya/open/http/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, "fieldName":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 140
    invoke-virtual {p0, v2}, Lcom/maya/open/http/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/maya/open/http/okhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Headers$Builder;

    .line 137
    .end local v4    # "fieldName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_2
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Headers$Builder;->build()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v2

    return-object v2
.end method

.method public static varyHeaders(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Headers;
    .locals 3
    .param p0, "response"    # Lcom/maya/open/http/okhttp3/Response;

    .line 123
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/Response;->networkResponse()Lcom/maya/open/http/okhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request;->headers()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v0

    .line 124
    .local v0, "requestHeaders":Lcom/maya/open/http/okhttp3/Headers;
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/Response;->headers()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v1

    .line 125
    .local v1, "responseHeaders":Lcom/maya/open/http/okhttp3/Headers;
    invoke-static {v0, v1}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->varyHeaders(Lcom/maya/open/http/okhttp3/Headers;Lcom/maya/open/http/okhttp3/Headers;)Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v2

    return-object v2
.end method

.method public static varyMatches(Lcom/maya/open/http/okhttp3/Response;Lcom/maya/open/http/okhttp3/Headers;Lcom/maya/open/http/okhttp3/Request;)Z
    .locals 4
    .param p0, "cachedResponse"    # Lcom/maya/open/http/okhttp3/Response;
    .param p1, "cachedRequest"    # Lcom/maya/open/http/okhttp3/Headers;
    .param p2, "newRequest"    # Lcom/maya/open/http/okhttp3/Request;

    .line 72
    invoke-static {p0}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->varyFields(Lcom/maya/open/http/okhttp3/Response;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    .local v1, "field":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/maya/open/http/okhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v1}, Lcom/maya/open/http/okhttp3/Request;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/maya/open/http/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 74
    .end local v1    # "field":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 75
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
