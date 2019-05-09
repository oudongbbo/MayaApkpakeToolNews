.class public final Lcom/maya/open/http/okhttp3/CacheControl;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okhttp3/CacheControl$Builder;
    }
.end annotation


# static fields
.field public static final FORCE_CACHE:Lcom/maya/open/http/okhttp3/CacheControl;

.field public static final FORCE_NETWORK:Lcom/maya/open/http/okhttp3/CacheControl;


# instance fields
.field headerValue:Ljava/lang/String;

.field private final isPrivate:Z

.field private final isPublic:Z

.field private final maxAgeSeconds:I

.field private final maxStaleSeconds:I

.field private final minFreshSeconds:I

.field private final mustRevalidate:Z

.field private final noCache:Z

.field private final noStore:Z

.field private final noTransform:Z

.field private final onlyIfCached:Z

.field private final sMaxAgeSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Lcom/maya/open/http/okhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lcom/maya/open/http/okhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/CacheControl$Builder;->noCache()Lcom/maya/open/http/okhttp3/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/CacheControl$Builder;->build()Lcom/maya/open/http/okhttp3/CacheControl;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/CacheControl;->FORCE_NETWORK:Lcom/maya/open/http/okhttp3/CacheControl;

    .line 26
    new-instance v0, Lcom/maya/open/http/okhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lcom/maya/open/http/okhttp3/CacheControl$Builder;-><init>()V

    .line 27
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/CacheControl$Builder;->onlyIfCached()Lcom/maya/open/http/okhttp3/CacheControl$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 28
    const v2, 0x7fffffff

    invoke-virtual {v0, v2, v1}, Lcom/maya/open/http/okhttp3/CacheControl$Builder;->maxStale(ILjava/util/concurrent/TimeUnit;)Lcom/maya/open/http/okhttp3/CacheControl$Builder;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/CacheControl$Builder;->build()Lcom/maya/open/http/okhttp3/CacheControl;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/CacheControl;->FORCE_CACHE:Lcom/maya/open/http/okhttp3/CacheControl;

    .line 26
    return-void
.end method

.method constructor <init>(Lcom/maya/open/http/okhttp3/CacheControl$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/maya/open/http/okhttp3/CacheControl$Builder;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iget-boolean v0, p1, Lcom/maya/open/http/okhttp3/CacheControl$Builder;->noCache:Z

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/CacheControl;->noCache:Z

    .line 64
    iget-boolean v0, p1, Lcom/maya/open/http/okhttp3/CacheControl$Builder;->noStore:Z

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/CacheControl;->noStore:Z

    .line 65
    iget v0, p1, Lcom/maya/open/http/okhttp3/CacheControl$Builder;->maxAgeSeconds:I

    iput v0, p0, Lcom/maya/open/http/okhttp3/CacheControl;->maxAgeSeconds:I

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/maya/open/http/okhttp3/CacheControl;->sMaxAgeSeconds:I

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/CacheControl;->isPrivate:Z

    .line 68
    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/CacheControl;->isPublic:Z

    .line 69
    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/CacheControl;->mustRevalidate:Z

    .line 70
    iget v0, p1, Lcom/maya/open/http/okhttp3/CacheControl$Builder;->maxStaleSeconds:I

    iput v0, p0, Lcom/maya/open/http/okhttp3/CacheControl;->maxStaleSeconds:I

    .line 71
    iget v0, p1, Lcom/maya/open/http/okhttp3/CacheControl$Builder;->minFreshSeconds:I

    iput v0, p0, Lcom/maya/open/http/okhttp3/CacheControl;->minFreshSeconds:I

    .line 72
    iget-boolean v0, p1, Lcom/maya/open/http/okhttp3/CacheControl$Builder;->onlyIfCached:Z

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/CacheControl;->onlyIfCached:Z

    .line 73
    iget-boolean v0, p1, Lcom/maya/open/http/okhttp3/CacheControl$Builder;->noTransform:Z

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/CacheControl;->noTransform:Z

    .line 74
    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZLjava/lang/String;)V
    .locals 0
    .param p1, "noCache"    # Z
    .param p2, "noStore"    # Z
    .param p3, "maxAgeSeconds"    # I
    .param p4, "sMaxAgeSeconds"    # I
    .param p5, "isPrivate"    # Z
    .param p6, "isPublic"    # Z
    .param p7, "mustRevalidate"    # Z
    .param p8, "maxStaleSeconds"    # I
    .param p9, "minFreshSeconds"    # I
    .param p10, "onlyIfCached"    # Z
    .param p11, "noTransform"    # Z
    .param p12, "headerValue"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean p1, p0, Lcom/maya/open/http/okhttp3/CacheControl;->noCache:Z

    .line 49
    iput-boolean p2, p0, Lcom/maya/open/http/okhttp3/CacheControl;->noStore:Z

    .line 50
    iput p3, p0, Lcom/maya/open/http/okhttp3/CacheControl;->maxAgeSeconds:I

    .line 51
    iput p4, p0, Lcom/maya/open/http/okhttp3/CacheControl;->sMaxAgeSeconds:I

    .line 52
    iput-boolean p5, p0, Lcom/maya/open/http/okhttp3/CacheControl;->isPrivate:Z

    .line 53
    iput-boolean p6, p0, Lcom/maya/open/http/okhttp3/CacheControl;->isPublic:Z

    .line 54
    iput-boolean p7, p0, Lcom/maya/open/http/okhttp3/CacheControl;->mustRevalidate:Z

    .line 55
    iput p8, p0, Lcom/maya/open/http/okhttp3/CacheControl;->maxStaleSeconds:I

    .line 56
    iput p9, p0, Lcom/maya/open/http/okhttp3/CacheControl;->minFreshSeconds:I

    .line 57
    iput-boolean p10, p0, Lcom/maya/open/http/okhttp3/CacheControl;->onlyIfCached:Z

    .line 58
    iput-boolean p11, p0, Lcom/maya/open/http/okhttp3/CacheControl;->noTransform:Z

    .line 59
    iput-object p12, p0, Lcom/maya/open/http/okhttp3/CacheControl;->headerValue:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private headerValue()Ljava/lang/String;
    .locals 3

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/maya/open/http/okhttp3/CacheControl;->noCache:Z

    if-eqz v1, :cond_0

    const-string v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_0
    iget-boolean v1, p0, Lcom/maya/open/http/okhttp3/CacheControl;->noStore:Z

    if-eqz v1, :cond_1

    const-string v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_1
    iget v1, p0, Lcom/maya/open/http/okhttp3/CacheControl;->maxAgeSeconds:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const-string v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/maya/open/http/okhttp3/CacheControl;->maxAgeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_2
    iget v1, p0, Lcom/maya/open/http/okhttp3/CacheControl;->sMaxAgeSeconds:I

    if-eq v1, v2, :cond_3

    const-string v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/maya/open/http/okhttp3/CacheControl;->sMaxAgeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_3
    iget-boolean v1, p0, Lcom/maya/open/http/okhttp3/CacheControl;->isPrivate:Z

    if-eqz v1, :cond_4

    const-string v1, "private, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :cond_4
    iget-boolean v1, p0, Lcom/maya/open/http/okhttp3/CacheControl;->isPublic:Z

    if-eqz v1, :cond_5

    const-string v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_5
    iget-boolean v1, p0, Lcom/maya/open/http/okhttp3/CacheControl;->mustRevalidate:Z

    if-eqz v1, :cond_6

    const-string v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :cond_6
    iget v1, p0, Lcom/maya/open/http/okhttp3/CacheControl;->maxStaleSeconds:I

    if-eq v1, v2, :cond_7

    const-string v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/maya/open/http/okhttp3/CacheControl;->maxStaleSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_7
    iget v1, p0, Lcom/maya/open/http/okhttp3/CacheControl;->minFreshSeconds:I

    if-eq v1, v2, :cond_8

    const-string v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/maya/open/http/okhttp3/CacheControl;->minFreshSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_8
    iget-boolean v1, p0, Lcom/maya/open/http/okhttp3/CacheControl;->onlyIfCached:Z

    if-eqz v1, :cond_9

    const-string v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_9
    iget-boolean v1, p0, Lcom/maya/open/http/okhttp3/CacheControl;->noTransform:Z

    if-eqz v1, :cond_a

    const-string v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_b

    const-string v1, ""

    return-object v1

    .line 261
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parse(Lcom/maya/open/http/okhttp3/Headers;)Lcom/maya/open/http/okhttp3/CacheControl;
    .locals 36
    .param p0, "headers"    # Lcom/maya/open/http/okhttp3/Headers;

    .line 146
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 147
    .local v1, "noCache":Z
    const/4 v2, 0x0

    .line 148
    .local v2, "noStore":Z
    const/4 v3, -0x1

    .line 149
    .local v3, "maxAgeSeconds":I
    const/4 v4, -0x1

    .line 150
    .local v4, "sMaxAgeSeconds":I
    const/4 v5, 0x0

    .line 151
    .local v5, "isPrivate":Z
    const/4 v6, 0x0

    .line 152
    .local v6, "isPublic":Z
    const/4 v7, 0x0

    .line 153
    .local v7, "mustRevalidate":Z
    const/4 v8, -0x1

    .line 154
    .local v8, "maxStaleSeconds":I
    const/4 v9, -0x1

    .line 155
    .local v9, "minFreshSeconds":I
    const/4 v10, 0x0

    .line 156
    .local v10, "onlyIfCached":Z
    const/4 v11, 0x0

    .line 158
    .local v11, "noTransform":Z
    const/4 v12, 0x1

    .line 159
    .local v12, "canUseHeaderValue":Z
    const/4 v13, 0x0

    .line 161
    .local v13, "headerValue":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "i":I
    invoke-virtual/range {p0 .. p0}, Lcom/maya/open/http/okhttp3/Headers;->size()I

    move-result v15

    .local v15, "size":I
    :goto_0
    if-ge v14, v15, :cond_13

    .line 162
    move/from16 v29, v15

    .end local v15    # "size":I
    .local v29, "size":I
    invoke-virtual {v0, v14}, Lcom/maya/open/http/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v15

    .line 163
    .local v15, "name":Ljava/lang/String;
    move/from16 v30, v11

    .end local v11    # "noTransform":Z
    .local v30, "noTransform":Z
    invoke-virtual {v0, v14}, Lcom/maya/open/http/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v11

    .line 165
    .local v11, "value":Ljava/lang/String;
    const-string v0, "Cache-Control"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    if-eqz v13, :cond_0

    .line 168
    const/4 v12, 0x0

    goto :goto_1

    .line 170
    :cond_0
    move-object v13, v11

    goto :goto_1

    .line 172
    :cond_1
    const-string v0, "Pragma"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 174
    const/4 v12, 0x0

    .line 179
    :goto_1
    const/4 v0, 0x0

    .line 180
    .local v0, "pos":I
    :goto_2
    move/from16 v31, v1

    .end local v1    # "noCache":Z
    .local v31, "noCache":Z
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 181
    move v1, v0

    .line 182
    .local v1, "tokenStart":I
    move/from16 v32, v2

    .end local v2    # "noStore":Z
    .local v32, "noStore":Z
    const-string v2, "=,;"

    invoke-static {v11, v0, v2}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 183
    invoke-virtual {v11, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "directive":Ljava/lang/String;
    move/from16 v33, v1

    .end local v1    # "tokenStart":I
    .local v33, "tokenStart":I
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_4

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v34, v3

    .end local v3    # "maxAgeSeconds":I
    .local v34, "maxAgeSeconds":I
    const/16 v3, 0x2c

    if-eq v1, v3, :cond_5

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3b

    if-ne v1, v3, :cond_2

    goto :goto_3

    .line 190
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 191
    invoke-static {v11, v0}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->skipWhitespace(Ljava/lang/String;I)I

    move-result v0

    .line 194
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x22

    if-ne v1, v3, :cond_3

    .line 195
    add-int/lit8 v0, v0, 0x1

    .line 196
    move v1, v0

    .line 197
    .local v1, "parameterStart":I
    const-string v3, "\""

    invoke-static {v11, v0, v3}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 198
    invoke-virtual {v11, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, "parameter":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 202
    .end local v1    # "parameterStart":I
    goto :goto_4

    .line 203
    .end local v3    # "parameter":Ljava/lang/String;
    :cond_3
    move v1, v0

    .line 204
    .restart local v1    # "parameterStart":I
    const-string v3, ",;"

    invoke-static {v11, v0, v3}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 205
    invoke-virtual {v11, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 187
    .end local v1    # "parameterStart":I
    .end local v34    # "maxAgeSeconds":I
    .local v3, "maxAgeSeconds":I
    :cond_4
    move/from16 v34, v3

    .end local v3    # "maxAgeSeconds":I
    .restart local v34    # "maxAgeSeconds":I
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 188
    const/4 v3, 0x0

    .line 205
    .local v3, "parameter":Ljava/lang/String;
    :goto_4
    move-object v1, v3

    .line 209
    .end local v3    # "parameter":Ljava/lang/String;
    .local v1, "parameter":Ljava/lang/String;
    const-string v3, "no-cache"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 210
    const/4 v3, 0x1

    .line 232
    move/from16 v35, v0

    move v1, v3

    .end local v0    # "pos":I
    .end local v31    # "noCache":Z
    .end local v32    # "noStore":Z
    .end local v33    # "tokenStart":I
    .end local v34    # "maxAgeSeconds":I
    .local v1, "noCache":Z
    .local v2, "noStore":Z
    .local v3, "maxAgeSeconds":I
    .local v35, "pos":I
    :goto_5
    move/from16 v2, v32

    :goto_6
    move/from16 v3, v34

    goto/16 :goto_8

    .line 211
    .end local v3    # "maxAgeSeconds":I
    .end local v35    # "pos":I
    .restart local v0    # "pos":I
    .local v1, "parameter":Ljava/lang/String;
    .local v2, "directive":Ljava/lang/String;
    .restart local v31    # "noCache":Z
    .restart local v32    # "noStore":Z
    .restart local v33    # "tokenStart":I
    .restart local v34    # "maxAgeSeconds":I
    :cond_6
    const-string v3, "no-store"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 212
    const/4 v3, 0x1

    .line 232
    move/from16 v35, v0

    move v2, v3

    move/from16 v1, v31

    goto :goto_6

    .line 213
    :cond_7
    const-string v3, "max-age"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    move/from16 v35, v0

    .end local v0    # "pos":I
    .restart local v35    # "pos":I
    const/4 v0, -0x1

    if-eqz v3, :cond_8

    .line 214
    invoke-static {v1, v0}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v0

    .line 232
    move v3, v0

    move/from16 v1, v31

    move/from16 v2, v32

    goto/16 :goto_8

    .line 215
    :cond_8
    const-string v3, "s-maxage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 216
    invoke-static {v1, v0}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v0

    .line 232
    move v4, v0

    .end local v31    # "noCache":Z
    .end local v32    # "noStore":Z
    .end local v33    # "tokenStart":I
    .end local v34    # "maxAgeSeconds":I
    .local v1, "noCache":Z
    .local v2, "noStore":Z
    .restart local v3    # "maxAgeSeconds":I
    :cond_9
    :goto_7
    move/from16 v1, v31

    goto :goto_5

    .line 217
    .end local v3    # "maxAgeSeconds":I
    .local v1, "parameter":Ljava/lang/String;
    .local v2, "directive":Ljava/lang/String;
    .restart local v31    # "noCache":Z
    .restart local v32    # "noStore":Z
    .restart local v33    # "tokenStart":I
    .restart local v34    # "maxAgeSeconds":I
    :cond_a
    const-string v3, "private"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 218
    const/4 v0, 0x1

    .line 232
    move v5, v0

    goto :goto_7

    .line 219
    :cond_b
    const-string v3, "public"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 220
    const/4 v0, 0x1

    .line 232
    move v6, v0

    goto :goto_7

    .line 221
    :cond_c
    const-string v3, "must-revalidate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 222
    const/4 v0, 0x1

    .line 232
    move v7, v0

    goto :goto_7

    .line 223
    :cond_d
    const-string v3, "max-stale"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 224
    const v0, 0x7fffffff

    invoke-static {v1, v0}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v0

    .line 232
    move v8, v0

    goto :goto_7

    .line 225
    :cond_e
    const-string v3, "min-fresh"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 226
    invoke-static {v1, v0}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v0

    .line 232
    move v9, v0

    goto :goto_7

    .line 227
    :cond_f
    const-string v0, "only-if-cached"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 228
    const/4 v0, 0x1

    .line 232
    move v10, v0

    goto :goto_7

    .line 229
    :cond_10
    const-string v0, "no-transform"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 230
    const/4 v0, 0x1

    .line 232
    move/from16 v30, v0

    goto :goto_7

    .line 179
    .end local v31    # "noCache":Z
    .end local v32    # "noStore":Z
    .end local v33    # "tokenStart":I
    .end local v34    # "maxAgeSeconds":I
    .local v1, "noCache":Z
    .local v2, "noStore":Z
    .restart local v3    # "maxAgeSeconds":I
    :goto_8
    move/from16 v0, v35

    goto/16 :goto_2

    .line 161
    .end local v1    # "noCache":Z
    .end local v11    # "value":Ljava/lang/String;
    .end local v15    # "name":Ljava/lang/String;
    .end local v35    # "pos":I
    .restart local v31    # "noCache":Z
    :cond_11
    move/from16 v32, v2

    move/from16 v34, v3

    move/from16 v11, v30

    move/from16 v1, v31

    .end local v2    # "noStore":Z
    .end local v3    # "maxAgeSeconds":I
    .restart local v32    # "noStore":Z
    .restart local v34    # "maxAgeSeconds":I
    goto :goto_9

    .end local v31    # "noCache":Z
    .end local v32    # "noStore":Z
    .end local v34    # "maxAgeSeconds":I
    .restart local v1    # "noCache":Z
    .restart local v2    # "noStore":Z
    .restart local v3    # "maxAgeSeconds":I
    :cond_12
    move/from16 v11, v30

    .end local v30    # "noTransform":Z
    .local v11, "noTransform":Z
    :goto_9
    add-int/lit8 v14, v14, 0x1

    move/from16 v15, v29

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 235
    .end local v14    # "i":I
    .end local v29    # "size":I
    :cond_13
    move/from16 v30, v11

    .end local v11    # "noTransform":Z
    .restart local v30    # "noTransform":Z
    if-nez v12, :cond_14

    .line 236
    const/4 v13, 0x0

    .line 238
    :cond_14
    new-instance v0, Lcom/maya/open/http/okhttp3/CacheControl;

    move-object/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v30

    move-object/from16 v28, v13

    invoke-direct/range {v16 .. v28}, Lcom/maya/open/http/okhttp3/CacheControl;-><init>(ZZIIZZZIIZZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public isPrivate()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/CacheControl;->isPrivate:Z

    return v0
.end method

.method public isPublic()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/CacheControl;->isPublic:Z

    return v0
.end method

.method public maxAgeSeconds()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/maya/open/http/okhttp3/CacheControl;->maxAgeSeconds:I

    return v0
.end method

.method public maxStaleSeconds()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/maya/open/http/okhttp3/CacheControl;->maxStaleSeconds:I

    return v0
.end method

.method public minFreshSeconds()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/maya/open/http/okhttp3/CacheControl;->minFreshSeconds:I

    return v0
.end method

.method public mustRevalidate()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/CacheControl;->mustRevalidate:Z

    return v0
.end method

.method public noCache()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/CacheControl;->noCache:Z

    return v0
.end method

.method public noStore()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/CacheControl;->noStore:Z

    return v0
.end method

.method public noTransform()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/CacheControl;->noTransform:Z

    return v0
.end method

.method public onlyIfCached()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/CacheControl;->onlyIfCached:Z

    return v0
.end method

.method public sMaxAgeSeconds()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/maya/open/http/okhttp3/CacheControl;->sMaxAgeSeconds:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/CacheControl;->headerValue:Ljava/lang/String;

    .line 244
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/CacheControl;->headerValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/maya/open/http/okhttp3/CacheControl;->headerValue:Ljava/lang/String;

    :goto_0
    return-object v1
.end method
