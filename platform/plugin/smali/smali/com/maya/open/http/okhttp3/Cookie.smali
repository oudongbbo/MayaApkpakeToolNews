.class public final Lcom/maya/open/http/okhttp3/Cookie;
.super Ljava/lang/Object;
.source "Cookie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okhttp3/Cookie$Builder;
    }
.end annotation


# static fields
.field private static final DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private static final MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private static final TIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final YEAR_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final domain:Ljava/lang/String;

.field private final expiresAt:J

.field private final hostOnly:Z

.field private final httpOnly:Z

.field private final name:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final persistent:Z

.field private final secure:Z

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-string v0, "(\\d{2,4})[^\\d]*"

    .line 47
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/Cookie;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    .line 48
    const-string v0, "(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*"

    .line 49
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    .line 50
    const-string v0, "(\\d{1,2})[^\\d]*"

    .line 51
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/Cookie;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    .line 52
    const-string v0, "(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*"

    .line 53
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 52
    return-void
.end method

.method constructor <init>(Lcom/maya/open/http/okhttp3/Cookie$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/maya/open/http/okhttp3/Cookie$Builder;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/Cookie$Builder;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/Cookie$Builder;->value:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/Cookie$Builder;->domain:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/Cookie$Builder;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Cookie;->name:Ljava/lang/String;

    .line 85
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/Cookie$Builder;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Cookie;->value:Ljava/lang/String;

    .line 86
    iget-wide v0, p1, Lcom/maya/open/http/okhttp3/Cookie$Builder;->expiresAt:J

    iput-wide v0, p0, Lcom/maya/open/http/okhttp3/Cookie;->expiresAt:J

    .line 87
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/Cookie$Builder;->domain:Ljava/lang/String;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Cookie;->domain:Ljava/lang/String;

    .line 88
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/Cookie$Builder;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Cookie;->path:Ljava/lang/String;

    .line 89
    iget-boolean v0, p1, Lcom/maya/open/http/okhttp3/Cookie$Builder;->secure:Z

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/Cookie;->secure:Z

    .line 90
    iget-boolean v0, p1, Lcom/maya/open/http/okhttp3/Cookie$Builder;->httpOnly:Z

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/Cookie;->httpOnly:Z

    .line 91
    iget-boolean v0, p1, Lcom/maya/open/http/okhttp3/Cookie$Builder;->persistent:Z

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/Cookie;->persistent:Z

    .line 92
    iget-boolean v0, p1, Lcom/maya/open/http/okhttp3/Cookie$Builder;->hostOnly:Z

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/Cookie;->hostOnly:Z

    .line 93
    return-void

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "builder.domain == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "builder.value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "builder.name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "expiresAt"    # J
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "secure"    # Z
    .param p8, "httpOnly"    # Z
    .param p9, "hostOnly"    # Z
    .param p10, "persistent"    # Z

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/Cookie;->name:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/Cookie;->value:Ljava/lang/String;

    .line 70
    iput-wide p3, p0, Lcom/maya/open/http/okhttp3/Cookie;->expiresAt:J

    .line 71
    iput-object p5, p0, Lcom/maya/open/http/okhttp3/Cookie;->domain:Ljava/lang/String;

    .line 72
    iput-object p6, p0, Lcom/maya/open/http/okhttp3/Cookie;->path:Ljava/lang/String;

    .line 73
    iput-boolean p7, p0, Lcom/maya/open/http/okhttp3/Cookie;->secure:Z

    .line 74
    iput-boolean p8, p0, Lcom/maya/open/http/okhttp3/Cookie;->httpOnly:Z

    .line 75
    iput-boolean p9, p0, Lcom/maya/open/http/okhttp3/Cookie;->hostOnly:Z

    .line 76
    iput-boolean p10, p0, Lcom/maya/open/http/okhttp3/Cookie;->persistent:Z

    .line 77
    return-void
.end method

.method private static dateCharacterOffset(Ljava/lang/String;IIZ)I
    .locals 4
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "invert"    # Z

    .line 383
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_7

    .line 384
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 385
    .local v1, "c":I
    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_5

    :cond_0
    const/16 v2, 0x7f

    if-ge v1, v2, :cond_5

    const/16 v2, 0x30

    if-lt v1, v2, :cond_1

    const/16 v2, 0x39

    if-le v1, v2, :cond_5

    :cond_1
    const/16 v2, 0x61

    if-lt v1, v2, :cond_2

    const/16 v2, 0x7a

    if-le v1, v2, :cond_5

    :cond_2
    const/16 v2, 0x41

    if-lt v1, v2, :cond_3

    const/16 v2, 0x5a

    if-le v1, v2, :cond_5

    :cond_3
    const/16 v2, 0x3a

    if-ne v1, v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v2, 0x1

    .line 390
    .local v2, "dateCharacter":Z
    :goto_2
    xor-int/lit8 v3, p3, 0x1

    if-ne v2, v3, :cond_6

    return v0

    .line 383
    .end local v1    # "c":I
    .end local v2    # "dateCharacter":Z
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    .end local v0    # "i":I
    :cond_7
    return p2
.end method

.method private static domainMatch(Lcom/maya/open/http/okhttp3/HttpUrl;Ljava/lang/String;)Z
    .locals 4
    .param p0, "url"    # Lcom/maya/open/http/okhttp3/HttpUrl;
    .param p1, "domain"    # Ljava/lang/String;

    .line 185
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "urlHost":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 188
    return v2

    .line 191
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_1

    .line 193
    invoke-static {v0}, Lcom/maya/open/http/okhttp3/internal/Util;->verifyAsIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 194
    return v2

    .line 197
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method static parse(JLcom/maya/open/http/okhttp3/HttpUrl;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Cookie;
    .locals 29
    .param p0, "currentTimeMillis"    # J
    .param p2, "url"    # Lcom/maya/open/http/okhttp3/HttpUrl;
    .param p3, "setCookie"    # Ljava/lang/String;

    .line 224
    move-object/from16 v1, p3

    const/4 v0, 0x0

    .line 225
    .local v0, "pos":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    .line 226
    .local v2, "limit":I
    const/16 v3, 0x3b

    invoke-static {v1, v0, v2, v3}, Lcom/maya/open/http/okhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v4

    .line 228
    .local v4, "cookiePairEnd":I
    const/16 v5, 0x3d

    invoke-static {v1, v0, v4, v5}, Lcom/maya/open/http/okhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v6

    .line 229
    .local v6, "pairEqualsSign":I
    const/4 v7, 0x0

    if-ne v6, v4, :cond_0

    return-object v7

    .line 231
    :cond_0
    invoke-static {v1, v0, v6}, Lcom/maya/open/http/okhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v19

    .line 232
    .local v19, "cookieName":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_15

    invoke-static/range {v19 .. v19}, Lcom/maya/open/http/okhttp3/internal/Util;->indexOfControlOrNonAscii(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    goto/16 :goto_b

    .line 234
    :cond_1
    add-int/lit8 v8, v6, 0x1

    invoke-static {v1, v8, v4}, Lcom/maya/open/http/okhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v20

    .line 235
    .local v20, "cookieValue":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/maya/open/http/okhttp3/internal/Util;->indexOfControlOrNonAscii(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v9, :cond_2

    return-object v7

    .line 237
    :cond_2
    const-wide v8, 0xe677d21fdbffL

    .line 238
    .local v8, "expiresAt":J
    const-wide/16 v10, -0x1

    .line 239
    .local v10, "deltaSeconds":J
    const/4 v12, 0x0

    .line 240
    .local v12, "domain":Ljava/lang/String;
    const/4 v13, 0x0

    .line 241
    .local v13, "path":Ljava/lang/String;
    const/4 v14, 0x0

    .line 242
    .local v14, "secureOnly":Z
    const/4 v15, 0x0

    .line 243
    .local v15, "httpOnly":Z
    const/16 v16, 0x1

    .line 244
    .local v16, "hostOnly":Z
    const/16 v17, 0x0

    .line 246
    .local v17, "persistent":Z
    add-int/lit8 v0, v4, 0x1

    .line 247
    move-wide/from16 v21, v10

    move-object v10, v13

    move/from16 v24, v14

    move/from16 v25, v15

    move/from16 v26, v16

    move/from16 v23, v17

    move v13, v0

    .end local v0    # "pos":I
    .end local v14    # "secureOnly":Z
    .end local v15    # "httpOnly":Z
    .end local v16    # "hostOnly":Z
    .end local v17    # "persistent":Z
    .local v10, "path":Ljava/lang/String;
    .local v13, "pos":I
    .local v21, "deltaSeconds":J
    .local v23, "persistent":Z
    .local v24, "secureOnly":Z
    .local v25, "httpOnly":Z
    .local v26, "hostOnly":Z
    :goto_0
    if-ge v13, v2, :cond_a

    .line 248
    invoke-static {v1, v13, v2, v3}, Lcom/maya/open/http/okhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v11

    .line 250
    .local v11, "attributePairEnd":I
    invoke-static {v1, v13, v11, v5}, Lcom/maya/open/http/okhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v3

    .line 251
    .local v3, "attributeEqualsSign":I
    invoke-static {v1, v13, v3}, Lcom/maya/open/http/okhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 252
    .local v5, "attributeName":Ljava/lang/String;
    if-ge v3, v11, :cond_3

    add-int/lit8 v7, v3, 0x1

    .line 253
    invoke-static {v1, v7, v11}, Lcom/maya/open/http/okhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_3
    const-string v7, ""

    .line 256
    .local v7, "attributeValue":Ljava/lang/String;
    :goto_1
    const-string v0, "expires"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 258
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v7, v1, v0}, Lcom/maya/open/http/okhttp3/Cookie;->parseExpires(Ljava/lang/String;II)J

    move-result-wide v14
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v8, v14

    .line 259
    const/16 v23, 0x1

    .line 262
    :goto_2
    goto :goto_3

    .line 260
    :catch_0
    move-exception v0

    goto :goto_2

    .line 263
    :cond_4
    const-string v0, "max-age"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 265
    :try_start_1
    invoke-static {v7}, Lcom/maya/open/http/okhttp3/Cookie;->parseMaxAge(Ljava/lang/String;)J

    move-result-wide v14
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 266
    .end local v21    # "deltaSeconds":J
    .local v14, "deltaSeconds":J
    const/16 v23, 0x1

    .line 269
    nop

    .line 285
    move-wide/from16 v21, v14

    goto :goto_3

    .line 267
    .end local v14    # "deltaSeconds":J
    .restart local v21    # "deltaSeconds":J
    :catch_1
    move-exception v0

    .line 269
    goto :goto_3

    .line 270
    :cond_5
    const-string v0, "domain"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 272
    :try_start_2
    invoke-static {v7}, Lcom/maya/open/http/okhttp3/Cookie;->parseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 273
    .end local v12    # "domain":Ljava/lang/String;
    .local v0, "domain":Ljava/lang/String;
    const/16 v26, 0x0

    .line 276
    nop

    .line 285
    move-object v12, v0

    goto :goto_3

    .line 274
    .end local v0    # "domain":Ljava/lang/String;
    .restart local v12    # "domain":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 276
    goto :goto_3

    .line 277
    :cond_6
    const-string v0, "path"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 278
    move-object v0, v7

    .line 285
    move-object v10, v0

    goto :goto_3

    .line 279
    :cond_7
    const-string v0, "secure"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 280
    const/16 v24, 0x1

    goto :goto_3

    .line 281
    :cond_8
    const-string v0, "httponly"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 282
    const/16 v25, 0x1

    .line 285
    :cond_9
    :goto_3
    add-int/lit8 v13, v11, 0x1

    .line 286
    .end local v3    # "attributeEqualsSign":I
    .end local v5    # "attributeName":Ljava/lang/String;
    .end local v7    # "attributeValue":Ljava/lang/String;
    .end local v11    # "attributePairEnd":I
    nop

    .line 247
    move-object/from16 v1, p3

    const/16 v3, 0x3b

    const/16 v5, 0x3d

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 290
    :cond_a
    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v0, v21, v14

    if-nez v0, :cond_c

    .line 291
    const-wide/high16 v7, -0x8000000000000000L

    .line 303
    .end local v8    # "expiresAt":J
    .local v27, "expiresAt":J
    :cond_b
    :goto_4
    move-wide/from16 v27, v7

    goto :goto_6

    .line 292
    .end local v27    # "expiresAt":J
    .restart local v8    # "expiresAt":J
    :cond_c
    const-wide/16 v14, -0x1

    cmp-long v0, v21, v14

    if-eqz v0, :cond_f

    .line 293
    const-wide v14, 0x20c49ba5e353f7L

    cmp-long v0, v21, v14

    if-gtz v0, :cond_d

    const-wide/16 v14, 0x3e8

    mul-long v14, v14, v21

    goto :goto_5

    :cond_d
    const-wide v14, 0x7fffffffffffffffL

    .line 296
    .local v14, "deltaMilliseconds":J
    :goto_5
    const/4 v0, 0x0

    add-long v7, p0, v14

    .line 297
    .end local v8    # "expiresAt":J
    .local v7, "expiresAt":J
    cmp-long v0, v7, p0

    if-ltz v0, :cond_e

    const-wide v16, 0xe677d21fdbffL

    cmp-long v0, v7, v16

    if-lez v0, :cond_b

    .line 298
    :cond_e
    const-wide v7, 0xe677d21fdbffL

    goto :goto_4

    .line 303
    .end local v7    # "expiresAt":J
    .end local v14    # "deltaMilliseconds":J
    .restart local v8    # "expiresAt":J
    :cond_f
    move-wide/from16 v27, v8

    .end local v8    # "expiresAt":J
    .restart local v27    # "expiresAt":J
    :goto_6
    if-nez v12, :cond_10

    .line 304
    invoke-virtual/range {p2 .. p2}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    .line 311
    move-object/from16 v1, p2

    goto :goto_7

    .line 305
    :cond_10
    move-object/from16 v1, p2

    invoke-static {v1, v12}, Lcom/maya/open/http/okhttp3/Cookie;->domainMatch(Lcom/maya/open/http/okhttp3/HttpUrl;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 306
    const/4 v3, 0x0

    return-object v3

    .line 311
    :cond_11
    move-object v0, v12

    .end local v12    # "domain":Ljava/lang/String;
    .restart local v0    # "domain":Ljava/lang/String;
    :goto_7
    if-eqz v10, :cond_13

    const-string v3, "/"

    invoke-virtual {v10, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_8

    .line 317
    :cond_12
    move-object v3, v10

    goto :goto_a

    .line 312
    :cond_13
    :goto_8
    invoke-virtual/range {p2 .. p2}, Lcom/maya/open/http/okhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v3

    .line 313
    .local v3, "encodedPath":Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 314
    .local v5, "lastSlash":I
    if-eqz v5, :cond_14

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_14
    const-string v7, "/"

    :goto_9
    move-object v3, v7

    .line 317
    .end local v5    # "lastSlash":I
    .end local v10    # "path":Ljava/lang/String;
    .local v3, "path":Ljava/lang/String;
    :goto_a
    new-instance v5, Lcom/maya/open/http/okhttp3/Cookie;

    move-object v8, v5

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    move-wide/from16 v11, v27

    move v7, v13

    .end local v13    # "pos":I
    .local v7, "pos":I
    move-object v13, v0

    move-object v14, v3

    move/from16 v15, v24

    move/from16 v16, v25

    move/from16 v17, v26

    move/from16 v18, v23

    invoke-direct/range {v8 .. v18}, Lcom/maya/open/http/okhttp3/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    return-object v5

    .line 232
    .end local v3    # "path":Ljava/lang/String;
    .end local v7    # "pos":I
    .end local v20    # "cookieValue":Ljava/lang/String;
    .end local v21    # "deltaSeconds":J
    .end local v23    # "persistent":Z
    .end local v24    # "secureOnly":Z
    .end local v25    # "httpOnly":Z
    .end local v26    # "hostOnly":Z
    .end local v27    # "expiresAt":J
    .local v0, "pos":I
    :cond_15
    :goto_b
    move-object/from16 v1, p2

    const/4 v3, 0x0

    return-object v3
.end method

.method public static parse(Lcom/maya/open/http/okhttp3/HttpUrl;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Cookie;
    .locals 2
    .param p0, "url"    # Lcom/maya/open/http/okhttp3/HttpUrl;
    .param p1, "setCookie"    # Ljava/lang/String;

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Lcom/maya/open/http/okhttp3/Cookie;->parse(JLcom/maya/open/http/okhttp3/HttpUrl;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Cookie;

    move-result-object v0

    return-object v0
.end method

.method public static parseAll(Lcom/maya/open/http/okhttp3/HttpUrl;Lcom/maya/open/http/okhttp3/Headers;)Ljava/util/List;
    .locals 6
    .param p0, "url"    # Lcom/maya/open/http/okhttp3/HttpUrl;
    .param p1, "headers"    # Lcom/maya/open/http/okhttp3/Headers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okhttp3/HttpUrl;",
            "Lcom/maya/open/http/okhttp3/Headers;",
            ")",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/Cookie;",
            ">;"
        }
    .end annotation

    .line 435
    const-string v0, "Set-Cookie"

    invoke-virtual {p1, v0}, Lcom/maya/open/http/okhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 436
    .local v0, "cookieStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 438
    .local v1, "cookies":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/Cookie;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 439
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/maya/open/http/okhttp3/Cookie;->parse(Lcom/maya/open/http/okhttp3/HttpUrl;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Cookie;

    move-result-object v4

    .line 440
    .local v4, "cookie":Lcom/maya/open/http/okhttp3/Cookie;
    if-nez v4, :cond_0

    .end local v4    # "cookie":Lcom/maya/open/http/okhttp3/Cookie;
    goto :goto_1

    .line 441
    .restart local v4    # "cookie":Lcom/maya/open/http/okhttp3/Cookie;
    :cond_0
    if-nez v1, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 442
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    .end local v4    # "cookie":Lcom/maya/open/http/okhttp3/Cookie;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 445
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_2
    if-eqz v1, :cond_3

    .line 446
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_2

    .line 447
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 445
    :goto_2
    return-object v2
.end method

.method private static parseDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 420
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 423
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 426
    :cond_0
    invoke-static {p0}, Lcom/maya/open/http/okhttp3/internal/Util;->domainToAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "canonicalDomain":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 430
    return-object v0

    .line 428
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 421
    .end local v0    # "canonicalDomain":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static parseExpires(Ljava/lang/String;II)J
    .locals 13
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 323
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/maya/open/http/okhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result p1

    .line 325
    const/4 v1, -0x1

    .line 326
    .local v1, "hour":I
    const/4 v2, -0x1

    .line 327
    .local v2, "minute":I
    const/4 v3, -0x1

    .line 328
    .local v3, "second":I
    const/4 v4, -0x1

    .line 329
    .local v4, "dayOfMonth":I
    const/4 v5, -0x1

    .line 330
    .local v5, "month":I
    const/4 v6, -0x1

    .line 331
    .local v6, "year":I
    sget-object v7, Lcom/maya/open/http/okhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 333
    .local v7, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    const/4 v8, 0x2

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-ge p1, p2, :cond_4

    .line 334
    add-int/lit8 v11, p1, 0x1

    invoke-static {p0, v11, p2, v10}, Lcom/maya/open/http/okhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v11

    .line 335
    .local v11, "end":I
    invoke-virtual {v7, p1, v11}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 337
    if-ne v1, v9, :cond_0

    sget-object v12, Lcom/maya/open/http/okhttp3/Cookie;->TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v12}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 338
    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 339
    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 340
    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    .line 341
    :cond_0
    if-ne v4, v9, :cond_1

    sget-object v8, Lcom/maya/open/http/okhttp3/Cookie;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 342
    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    .line 343
    :cond_1
    if-ne v5, v9, :cond_2

    sget-object v8, Lcom/maya/open/http/okhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 344
    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 345
    .local v8, "monthString":Ljava/lang/String;
    sget-object v9, Lcom/maya/open/http/okhttp3/Cookie;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v9}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    div-int/lit8 v9, v9, 0x4

    .line 346
    .end local v5    # "month":I
    .end local v8    # "monthString":Ljava/lang/String;
    .local v9, "month":I
    nop

    .line 350
    move v5, v9

    goto :goto_1

    .line 346
    .end local v9    # "month":I
    .restart local v5    # "month":I
    :cond_2
    if-ne v6, v9, :cond_3

    sget-object v8, Lcom/maya/open/http/okhttp3/Cookie;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 347
    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 350
    :cond_3
    :goto_1
    add-int/lit8 v8, v11, 0x1

    invoke-static {p0, v8, p2, v0}, Lcom/maya/open/http/okhttp3/Cookie;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result p1

    .line 351
    .end local v11    # "end":I
    goto/16 :goto_0

    .line 354
    :cond_4
    const/16 v11, 0x46

    if-lt v6, v11, :cond_5

    const/16 v11, 0x63

    if-gt v6, v11, :cond_5

    add-int/lit16 v6, v6, 0x76c

    .line 355
    :cond_5
    if-ltz v6, :cond_6

    const/16 v11, 0x45

    if-gt v6, v11, :cond_6

    add-int/lit16 v6, v6, 0x7d0

    .line 359
    :cond_6
    const/16 v11, 0x641

    if-lt v6, v11, :cond_c

    .line 360
    if-eq v5, v9, :cond_b

    .line 361
    if-lt v4, v10, :cond_a

    const/16 v9, 0x1f

    if-gt v4, v9, :cond_a

    .line 362
    if-ltz v1, :cond_9

    const/16 v9, 0x17

    if-gt v1, v9, :cond_9

    .line 363
    if-ltz v2, :cond_8

    const/16 v9, 0x3b

    if-gt v2, v9, :cond_8

    .line 364
    if-ltz v3, :cond_7

    if-gt v3, v9, :cond_7

    .line 366
    new-instance v9, Ljava/util/GregorianCalendar;

    sget-object v11, Lcom/maya/open/http/okhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    invoke-direct {v9, v11}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 367
    .local v9, "calendar":Ljava/util/Calendar;
    invoke-virtual {v9, v0}, Ljava/util/Calendar;->setLenient(Z)V

    .line 368
    invoke-virtual {v9, v10, v6}, Ljava/util/Calendar;->set(II)V

    .line 369
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v9, v8, v10}, Ljava/util/Calendar;->set(II)V

    .line 370
    const/4 v8, 0x5

    invoke-virtual {v9, v8, v4}, Ljava/util/Calendar;->set(II)V

    .line 371
    const/16 v8, 0xb

    invoke-virtual {v9, v8, v1}, Ljava/util/Calendar;->set(II)V

    .line 372
    const/16 v8, 0xc

    invoke-virtual {v9, v8, v2}, Ljava/util/Calendar;->set(II)V

    .line 373
    const/16 v8, 0xd

    invoke-virtual {v9, v8, v3}, Ljava/util/Calendar;->set(II)V

    .line 374
    const/16 v8, 0xe

    invoke-virtual {v9, v8, v0}, Ljava/util/Calendar;->set(II)V

    .line 375
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    return-wide v10

    .line 364
    .end local v9    # "calendar":Ljava/util/Calendar;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 363
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 362
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 361
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 360
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 359
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static parseMaxAge(Ljava/lang/String;)J
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .line 404
    const-wide/high16 v0, -0x8000000000000000L

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    .local v2, "parsed":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    return-wide v0

    .line 406
    .end local v2    # "parsed":J
    :catch_0
    move-exception v2

    .line 408
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "-?\\d+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 409
    const-string v3, "-"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    :goto_1
    return-wide v0

    .line 411
    :cond_2
    throw v2
.end method

.method private static pathMatch(Lcom/maya/open/http/okhttp3/HttpUrl;Ljava/lang/String;)Z
    .locals 4
    .param p0, "url"    # Lcom/maya/open/http/okhttp3/HttpUrl;
    .param p1, "path"    # Ljava/lang/String;

    .line 201
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "urlPath":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 204
    return v2

    .line 207
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 209
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2f

    if-ne v1, v3, :cond_2

    return v2

    .line 212
    :cond_2
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public domain()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Cookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 580
    instance-of v0, p1, Lcom/maya/open/http/okhttp3/Cookie;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 581
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/maya/open/http/okhttp3/Cookie;

    .line 582
    .local v0, "that":Lcom/maya/open/http/okhttp3/Cookie;
    iget-object v2, v0, Lcom/maya/open/http/okhttp3/Cookie;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/maya/open/http/okhttp3/Cookie;->value:Ljava/lang/String;

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/Cookie;->value:Ljava/lang/String;

    .line 583
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/maya/open/http/okhttp3/Cookie;->domain:Ljava/lang/String;

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/Cookie;->domain:Ljava/lang/String;

    .line 584
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/maya/open/http/okhttp3/Cookie;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/Cookie;->path:Ljava/lang/String;

    .line 585
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, v0, Lcom/maya/open/http/okhttp3/Cookie;->expiresAt:J

    iget-wide v4, p0, Lcom/maya/open/http/okhttp3/Cookie;->expiresAt:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    iget-boolean v2, v0, Lcom/maya/open/http/okhttp3/Cookie;->secure:Z

    iget-boolean v3, p0, Lcom/maya/open/http/okhttp3/Cookie;->secure:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, v0, Lcom/maya/open/http/okhttp3/Cookie;->httpOnly:Z

    iget-boolean v3, p0, Lcom/maya/open/http/okhttp3/Cookie;->httpOnly:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, v0, Lcom/maya/open/http/okhttp3/Cookie;->persistent:Z

    iget-boolean v3, p0, Lcom/maya/open/http/okhttp3/Cookie;->persistent:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, v0, Lcom/maya/open/http/okhttp3/Cookie;->hostOnly:Z

    iget-boolean v3, p0, Lcom/maya/open/http/okhttp3/Cookie;->hostOnly:Z

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    nop

    .line 582
    :cond_1
    return v1
.end method

.method public expiresAt()J
    .locals 2

    .line 120
    iget-wide v0, p0, Lcom/maya/open/http/okhttp3/Cookie;->expiresAt:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .line 594
    const/16 v0, 0x11

    .line 595
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 596
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 597
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 598
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 599
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/maya/open/http/okhttp3/Cookie;->expiresAt:J

    iget-wide v4, p0, Lcom/maya/open/http/okhttp3/Cookie;->expiresAt:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 600
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/maya/open/http/okhttp3/Cookie;->secure:Z

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 601
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/maya/open/http/okhttp3/Cookie;->httpOnly:Z

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 602
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/maya/open/http/okhttp3/Cookie;->persistent:Z

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 603
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/maya/open/http/okhttp3/Cookie;->hostOnly:Z

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 604
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    return v1
.end method

.method public hostOnly()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/Cookie;->hostOnly:Z

    return v0
.end method

.method public httpOnly()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/Cookie;->httpOnly:Z

    return v0
.end method

.method public matches(Lcom/maya/open/http/okhttp3/HttpUrl;)Z
    .locals 3
    .param p1, "url"    # Lcom/maya/open/http/okhttp3/HttpUrl;

    .line 172
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/Cookie;->hostOnly:Z

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Cookie;->domain:Ljava/lang/String;

    .line 174
    invoke-static {p1, v0}, Lcom/maya/open/http/okhttp3/Cookie;->domainMatch(Lcom/maya/open/http/okhttp3/HttpUrl;Ljava/lang/String;)Z

    move-result v0

    .line 175
    .local v0, "domainMatch":Z
    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 177
    :cond_1
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Cookie;->path:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/maya/open/http/okhttp3/Cookie;->pathMatch(Lcom/maya/open/http/okhttp3/HttpUrl;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 179
    :cond_2
    iget-boolean v2, p0, Lcom/maya/open/http/okhttp3/Cookie;->secure:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/HttpUrl;->isHttps()Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 181
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Cookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Cookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method public persistent()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/Cookie;->persistent:Z

    return v0
.end method

.method public secure()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/Cookie;->secure:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 536
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/maya/open/http/okhttp3/Cookie;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Z)Ljava/lang/String;
    .locals 6
    .param p1, "forObsoleteRfc2965"    # Z

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 546
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 548
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    iget-boolean v1, p0, Lcom/maya/open/http/okhttp3/Cookie;->persistent:Z

    if-eqz v1, :cond_1

    .line 551
    iget-wide v1, p0, Lcom/maya/open/http/okhttp3/Cookie;->expiresAt:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 552
    const-string v1, "; max-age=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 554
    :cond_0
    const-string v1, "; expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/maya/open/http/okhttp3/Cookie;->expiresAt:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lcom/maya/open/http/okhttp3/internal/http/HttpDate;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/maya/open/http/okhttp3/Cookie;->hostOnly:Z

    if-nez v1, :cond_3

    .line 559
    const-string v1, "; domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    if-eqz p1, :cond_2

    .line 561
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    :cond_2
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    :cond_3
    const-string v1, "; path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    iget-boolean v1, p0, Lcom/maya/open/http/okhttp3/Cookie;->secure:Z

    if-eqz v1, :cond_4

    .line 569
    const-string v1, "; secure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    :cond_4
    iget-boolean v1, p0, Lcom/maya/open/http/okhttp3/Cookie;->httpOnly:Z

    if-eqz v1, :cond_5

    .line 573
    const-string v1, "; httponly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public value()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Cookie;->value:Ljava/lang/String;

    return-object v0
.end method
