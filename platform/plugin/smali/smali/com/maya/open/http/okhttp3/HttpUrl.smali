.class public final Lcom/maya/open/http/okhttp3/HttpUrl;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    }
.end annotation


# static fields
.field static final FORM_ENCODE_SET:Ljava/lang/String; = " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

.field static final FRAGMENT_ENCODE_SET:Ljava/lang/String; = ""

.field static final FRAGMENT_ENCODE_SET_URI:Ljava/lang/String; = " \"#<>\\^`{|}"

.field private static final HEX_DIGITS:[C

.field static final PASSWORD_ENCODE_SET:Ljava/lang/String; = " \"\':;<=>@[]^`{}|/\\?#"

.field static final PATH_SEGMENT_ENCODE_SET:Ljava/lang/String; = " \"<>^`{}|/\\?#"

.field static final PATH_SEGMENT_ENCODE_SET_URI:Ljava/lang/String; = "[]"

.field static final QUERY_COMPONENT_ENCODE_SET:Ljava/lang/String; = " \"\'<>#&="

.field static final QUERY_COMPONENT_ENCODE_SET_URI:Ljava/lang/String; = "\\^`{|}"

.field static final QUERY_ENCODE_SET:Ljava/lang/String; = " \"\'<>#"

.field static final USERNAME_ENCODE_SET:Ljava/lang/String; = " \"\':;<=>@[]^`{}|/\\?#"


# instance fields
.field private final fragment:Ljava/lang/String;

.field final host:Ljava/lang/String;

.field private final password:Ljava/lang/String;

.field private final pathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final port:I

.field private final queryNamesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final scheme:Ljava/lang/String;

.field private final url:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 286
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/maya/open/http/okhttp3/HttpUrl;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>(Lcom/maya/open/http/okhttp3/HttpUrl$Builder;)V
    .locals 4
    .param p1, "builder"    # Lcom/maya/open/http/okhttp3/HttpUrl$Builder;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->scheme:Ljava/lang/String;

    .line 336
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/maya/open/http/okhttp3/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->username:Ljava/lang/String;

    .line 337
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/maya/open/http/okhttp3/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->password:Ljava/lang/String;

    .line 338
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 339
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->effectivePort()I

    move-result v0

    iput v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->port:I

    .line 340
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/maya/open/http/okhttp3/HttpUrl;->percentDecode(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->pathSegments:Ljava/util/List;

    .line 341
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const/4 v3, 0x1

    .line 342
    invoke-direct {p0, v0, v3}, Lcom/maya/open/http/okhttp3/HttpUrl;->percentDecode(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    .line 344
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 345
    invoke-static {v0, v1}, Lcom/maya/open/http/okhttp3/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    nop

    :cond_1
    iput-object v2, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->fragment:Ljava/lang/String;

    .line 347
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->url:Ljava/lang/String;

    .line 348
    return-void
.end method

.method static canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;
    .locals 15
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "encodeSet"    # Ljava/lang/String;
    .param p4, "alreadyEncoded"    # Z
    .param p5, "strict"    # Z
    .param p6, "plusIsSpace"    # Z
    .param p7, "asciiOnly"    # Z

    .line 1810
    move-object v9, p0

    move/from16 v10, p2

    move/from16 v0, p1

    .local v0, "i":I
    :goto_0
    move v11, v0

    .end local v0    # "i":I
    .local v11, "i":I
    if-ge v11, v10, :cond_5

    .line 1811
    invoke-virtual {p0, v11}, Ljava/lang/String;->codePointAt(I)I

    move-result v12

    .line 1812
    .local v12, "codePoint":I
    const/16 v0, 0x20

    if-lt v12, v0, :cond_3

    const/16 v0, 0x7f

    if-eq v12, v0, :cond_3

    const/16 v0, 0x80

    if-lt v12, v0, :cond_0

    if-nez p7, :cond_3

    .line 1815
    :cond_0
    move-object/from16 v13, p3

    invoke-virtual {v13, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    const/16 v0, 0x25

    if-ne v12, v0, :cond_1

    if-eqz p4, :cond_4

    if-eqz p5, :cond_1

    .line 1816
    invoke-static {p0, v11, v10}, Lcom/maya/open/http/okhttp3/HttpUrl;->percentEncoded(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    const/16 v0, 0x2b

    if-ne v12, v0, :cond_2

    if-eqz p6, :cond_2

    goto :goto_1

    .line 1810
    :cond_2
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v0, v11

    goto :goto_0

    .line 1819
    :cond_3
    move-object/from16 v13, p3

    :cond_4
    :goto_1
    new-instance v0, Lcom/maya/open/http/okio/Buffer;

    invoke-direct {v0}, Lcom/maya/open/http/okio/Buffer;-><init>()V

    move-object v8, v0

    .line 1820
    .local v8, "out":Lcom/maya/open/http/okio/Buffer;
    move/from16 v7, p1

    invoke-virtual {v8, p0, v7, v11}, Lcom/maya/open/http/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/maya/open/http/okio/Buffer;

    .line 1821
    move-object v1, p0

    move v2, v11

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object v14, v8

    .end local v8    # "out":Lcom/maya/open/http/okio/Buffer;
    .local v14, "out":Lcom/maya/open/http/okio/Buffer;
    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/maya/open/http/okhttp3/HttpUrl;->canonicalize(Lcom/maya/open/http/okio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZ)V

    .line 1823
    invoke-virtual {v14}, Lcom/maya/open/http/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1828
    .end local v11    # "i":I
    .end local v12    # "codePoint":I
    .end local v14    # "out":Lcom/maya/open/http/okio/Buffer;
    :cond_5
    move-object/from16 v13, p3

    invoke-virtual/range {p0 .. p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    .locals 8
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "encodeSet"    # Ljava/lang/String;
    .param p2, "alreadyEncoded"    # Z
    .param p3, "strict"    # Z
    .param p4, "plusIsSpace"    # Z
    .param p5, "asciiOnly"    # Z

    .line 1868
    nop

    .line 1869
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1868
    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/maya/open/http/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static canonicalize(Lcom/maya/open/http/okio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZ)V
    .locals 7
    .param p0, "out"    # Lcom/maya/open/http/okio/Buffer;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "encodeSet"    # Ljava/lang/String;
    .param p5, "alreadyEncoded"    # Z
    .param p6, "strict"    # Z
    .param p7, "plusIsSpace"    # Z
    .param p8, "asciiOnly"    # Z

    .line 1833
    const/4 v0, 0x0

    .line 1835
    .local v0, "utf8Buffer":Lcom/maya/open/http/okio/Buffer;
    move-object v1, v0

    move v0, p2

    .local v0, "i":I
    .local v1, "utf8Buffer":Lcom/maya/open/http/okio/Buffer;
    :goto_0
    if-ge v0, p3, :cond_8

    .line 1836
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 1837
    .local v2, "codePoint":I
    if-eqz p5, :cond_0

    const/16 v3, 0x9

    if-eq v2, v3, :cond_7

    const/16 v3, 0xa

    if-eq v2, v3, :cond_7

    const/16 v3, 0xc

    if-eq v2, v3, :cond_7

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    goto/16 :goto_4

    .line 1840
    :cond_0
    const/16 v3, 0x2b

    if-ne v2, v3, :cond_2

    if-eqz p7, :cond_2

    .line 1842
    if-eqz p5, :cond_1

    const-string v3, "+"

    goto :goto_1

    :cond_1
    const-string v3, "%2B"

    :goto_1
    invoke-virtual {p0, v3}, Lcom/maya/open/http/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/Buffer;

    goto :goto_4

    .line 1843
    :cond_2
    const/16 v3, 0x20

    const/16 v4, 0x25

    if-lt v2, v3, :cond_5

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_5

    const/16 v3, 0x80

    if-lt v2, v3, :cond_3

    if-nez p8, :cond_5

    .line 1846
    :cond_3
    invoke-virtual {p4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_5

    if-ne v2, v4, :cond_4

    if-eqz p5, :cond_5

    if-eqz p6, :cond_4

    .line 1847
    invoke-static {p1, v0, p3}, Lcom/maya/open/http/okhttp3/HttpUrl;->percentEncoded(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    .line 1861
    :cond_4
    invoke-virtual {p0, v2}, Lcom/maya/open/http/okio/Buffer;->writeUtf8CodePoint(I)Lcom/maya/open/http/okio/Buffer;

    goto :goto_4

    .line 1849
    :cond_5
    :goto_2
    if-nez v1, :cond_6

    .line 1850
    new-instance v3, Lcom/maya/open/http/okio/Buffer;

    invoke-direct {v3}, Lcom/maya/open/http/okio/Buffer;-><init>()V

    move-object v1, v3

    .line 1852
    :cond_6
    invoke-virtual {v1, v2}, Lcom/maya/open/http/okio/Buffer;->writeUtf8CodePoint(I)Lcom/maya/open/http/okio/Buffer;

    .line 1853
    :goto_3
    invoke-virtual {v1}, Lcom/maya/open/http/okio/Buffer;->exhausted()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1854
    invoke-virtual {v1}, Lcom/maya/open/http/okio/Buffer;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 1855
    .local v3, "b":I
    invoke-virtual {p0, v4}, Lcom/maya/open/http/okio/Buffer;->writeByte(I)Lcom/maya/open/http/okio/Buffer;

    .line 1856
    sget-object v5, Lcom/maya/open/http/okhttp3/HttpUrl;->HEX_DIGITS:[C

    shr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/maya/open/http/okio/Buffer;->writeByte(I)Lcom/maya/open/http/okio/Buffer;

    .line 1857
    sget-object v5, Lcom/maya/open/http/okhttp3/HttpUrl;->HEX_DIGITS:[C

    and-int/lit8 v6, v3, 0xf

    aget-char v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/maya/open/http/okio/Buffer;->writeByte(I)Lcom/maya/open/http/okio/Buffer;

    .line 1858
    .end local v3    # "b":I
    goto :goto_3

    .line 1835
    :cond_7
    :goto_4
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v0, v3

    goto/16 :goto_0

    .line 1864
    .end local v0    # "i":I
    .end local v2    # "codePoint":I
    :cond_8
    return-void
.end method

.method static decodeHexDigit(C)I
    .locals 1
    .param p0, "c"    # C

    .line 1785
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    return v0

    .line 1786
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 1787
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 1788
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public static defaultPort(Ljava/lang/String;)I
    .locals 1
    .param p0, "scheme"    # Ljava/lang/String;

    .line 506
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    const/16 v0, 0x50

    return v0

    .line 508
    :cond_0
    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    const/16 v0, 0x1bb

    return v0

    .line 511
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static get(Ljava/net/URI;)Lcom/maya/open/http/okhttp3/HttpUrl;
    .locals 1
    .param p0, "uri"    # Ljava/net/URI;

    .line 934
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/http/okhttp3/HttpUrl;->parse(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/net/URL;)Lcom/maya/open/http/okhttp3/HttpUrl;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;

    .line 907
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/http/okhttp3/HttpUrl;->parse(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method static getChecked(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 918
    new-instance v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;

    invoke-direct {v0}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;-><init>()V

    .line 919
    .local v0, "builder":Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->parse(Lcom/maya/open/http/okhttp3/HttpUrl;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder$ParseResult;

    move-result-object v1

    .line 920
    .local v1, "result":Lcom/maya/open/http/okhttp3/HttpUrl$Builder$ParseResult;
    sget-object v2, Lcom/maya/open/http/okhttp3/HttpUrl$1;->$SwitchMap$com$maya$open$http$okhttp3$HttpUrl$Builder$ParseResult:[I

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder$ParseResult;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 929
    new-instance v2, Ljava/net/MalformedURLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 924
    :pswitch_0
    new-instance v2, Ljava/net/UnknownHostException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid host: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 922
    :pswitch_1
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->build()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 5
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 616
    .local p1, "namesAndValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 617
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 618
    .local v2, "name":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 619
    .local v3, "value":Ljava/lang/String;
    if-lez v0, :cond_0

    const/16 v4, 0x26

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 620
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    if-eqz v3, :cond_1

    .line 622
    const/16 v4, 0x3d

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 623
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 626
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .line 897
    new-instance v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;

    invoke-direct {v0}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;-><init>()V

    .line 898
    .local v0, "builder":Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->parse(Lcom/maya/open/http/okhttp3/HttpUrl;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder$ParseResult;

    move-result-object v2

    .line 899
    .local v2, "result":Lcom/maya/open/http/okhttp3/HttpUrl$Builder$ParseResult;
    sget-object v3, Lcom/maya/open/http/okhttp3/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/maya/open/http/okhttp3/HttpUrl$Builder$ParseResult;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->build()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v1

    nop

    :cond_0
    return-object v1
.end method

.method static pathSegmentsToString(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 3
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 548
    .local p1, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 549
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 550
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 552
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    return-void
.end method

.method static percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 4
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "plusIsSpace"    # Z

    .line 1742
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 1743
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1744
    .local v1, "c":C
    const/16 v2, 0x25

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    if-eqz p3, :cond_0

    goto :goto_1

    .line 1742
    .end local v1    # "c":C
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1746
    .restart local v1    # "c":C
    :cond_1
    :goto_1
    new-instance v2, Lcom/maya/open/http/okio/Buffer;

    invoke-direct {v2}, Lcom/maya/open/http/okio/Buffer;-><init>()V

    .line 1747
    .local v2, "out":Lcom/maya/open/http/okio/Buffer;
    invoke-virtual {v2, p0, p1, v0}, Lcom/maya/open/http/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/maya/open/http/okio/Buffer;

    .line 1748
    invoke-static {v2, p0, v0, p2, p3}, Lcom/maya/open/http/okhttp3/HttpUrl;->percentDecode(Lcom/maya/open/http/okio/Buffer;Ljava/lang/String;IIZ)V

    .line 1749
    invoke-virtual {v2}, Lcom/maya/open/http/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1754
    .end local v0    # "i":I
    .end local v1    # "c":C
    .end local v2    # "out":Lcom/maya/open/http/okio/Buffer;
    :cond_2
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static percentDecode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "plusIsSpace"    # Z

    .line 1728
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/maya/open/http/okhttp3/HttpUrl;->percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private percentDecode(Ljava/util/List;Z)Ljava/util/List;
    .locals 5
    .param p2, "plusIsSpace"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1732
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1733
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1734
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1735
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1736
    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-static {v3, p2}, Lcom/maya/open/http/okhttp3/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1734
    .end local v3    # "s":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1738
    .end local v2    # "i":I
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method static percentDecode(Lcom/maya/open/http/okio/Buffer;Ljava/lang/String;IIZ)V
    .locals 5
    .param p0, "out"    # Lcom/maya/open/http/okio/Buffer;
    .param p1, "encoded"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "plusIsSpace"    # Z

    .line 1759
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_3

    .line 1760
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 1761
    .local v1, "codePoint":I
    const/16 v2, 0x25

    if-ne v1, v2, :cond_1

    add-int/lit8 v2, v0, 0x2

    if-ge v2, p3, :cond_1

    .line 1762
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/maya/open/http/okhttp3/HttpUrl;->decodeHexDigit(C)I

    move-result v2

    .line 1763
    .local v2, "d1":I
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/maya/open/http/okhttp3/HttpUrl;->decodeHexDigit(C)I

    move-result v3

    .line 1764
    .local v3, "d2":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    if-eq v3, v4, :cond_0

    .line 1765
    shl-int/lit8 v4, v2, 0x4

    add-int/2addr v4, v3

    invoke-virtual {p0, v4}, Lcom/maya/open/http/okio/Buffer;->writeByte(I)Lcom/maya/open/http/okio/Buffer;

    .line 1766
    add-int/lit8 v0, v0, 0x2

    .line 1767
    goto :goto_2

    .line 1769
    .end local v2    # "d1":I
    .end local v3    # "d2":I
    :cond_0
    goto :goto_1

    :cond_1
    const/16 v2, 0x2b

    if-ne v1, v2, :cond_2

    if-eqz p4, :cond_2

    .line 1770
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/maya/open/http/okio/Buffer;->writeByte(I)Lcom/maya/open/http/okio/Buffer;

    .line 1771
    goto :goto_2

    .line 1773
    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lcom/maya/open/http/okio/Buffer;->writeUtf8CodePoint(I)Lcom/maya/open/http/okio/Buffer;

    .line 1759
    :goto_2
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 1775
    .end local v0    # "i":I
    .end local v1    # "codePoint":I
    :cond_3
    return-void
.end method

.method static percentEncoded(Ljava/lang/String;II)Z
    .locals 2
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1778
    add-int/lit8 v0, p1, 0x2

    if-ge v0, p2, :cond_0

    .line 1779
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 1780
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/maya/open/http/okhttp3/HttpUrl;->decodeHexDigit(C)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x2

    .line 1781
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/maya/open/http/okhttp3/HttpUrl;->decodeHexDigit(C)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1778
    const/4 v0, 0x1

    goto :goto_0

    .line 1781
    :cond_0
    const/4 v0, 0x0

    .line 1778
    :goto_0
    return v0
.end method

.method static queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "encodedQuery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 635
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 636
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 637
    const/16 v2, 0x26

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 638
    .local v2, "ampersandOffset":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 640
    :cond_0
    const/16 v4, 0x3d

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 641
    .local v4, "equalsOffset":I
    if-eq v4, v3, :cond_2

    if-le v4, v2, :cond_1

    goto :goto_1

    .line 645
    :cond_1
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 642
    :cond_2
    :goto_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    :goto_2
    add-int/lit8 v1, v2, 0x1

    .line 649
    .end local v2    # "ampersandOffset":I
    .end local v4    # "equalsOffset":I
    goto :goto_0

    .line 650
    .end local v1    # "pos":I
    :cond_3
    return-object v0
.end method


# virtual methods
.method public encodedFragment()Ljava/lang/String;
    .locals 2

    .line 824
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->url:Ljava/lang/String;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 826
    .local v0, "fragmentStart":I
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public encodedPassword()Ljava/lang/String;
    .locals 3

    .line 441
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->url:Ljava/lang/String;

    const/16 v1, 0x3a

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 443
    .local v0, "passwordStart":I
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->url:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 444
    .local v1, "passwordEnd":I
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public encodedPath()Ljava/lang/String;
    .locals 4

    .line 542
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 543
    .local v0, "pathStart":I
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "?#"

    invoke-static {v1, v0, v2, v3}, Lcom/maya/open/http/okhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 544
    .local v1, "pathEnd":I
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public encodedPathSegments()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 566
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 567
    .local v0, "pathStart":I
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "?#"

    invoke-static {v1, v0, v3, v4}, Lcom/maya/open/http/okhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 568
    .local v1, "pathEnd":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 569
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v4, v0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 570
    add-int/lit8 v4, v4, 0x1

    .line 571
    iget-object v5, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-static {v5, v4, v1, v2}, Lcom/maya/open/http/okhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v5

    .line 572
    .local v5, "segmentEnd":I
    iget-object v6, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    move v4, v5

    .line 574
    .end local v5    # "segmentEnd":I
    goto :goto_0

    .line 575
    .end local v4    # "i":I
    :cond_0
    return-object v3
.end method

.method public encodedQuery()Ljava/lang/String;
    .locals 5

    .line 609
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->url:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 611
    .local v0, "queryStart":I
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->url:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x23

    invoke-static {v1, v2, v3, v4}, Lcom/maya/open/http/okhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v1

    .line 612
    .local v1, "queryEnd":I
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public encodedUsername()Ljava/lang/String;
    .locals 4

    .line 408
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    .line 410
    .local v0, "usernameStart":I
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ":@"

    invoke-static {v1, v0, v2, v3}, Lcom/maya/open/http/okhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 411
    .local v1, "usernameEnd":I
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 938
    instance-of v0, p1, Lcom/maya/open/http/okhttp3/HttpUrl;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/maya/open/http/okhttp3/HttpUrl;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/HttpUrl;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public fragment()Ljava/lang/String;
    .locals 1

    .line 842
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 942
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public host()Ljava/lang/String;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->host:Ljava/lang/String;

    return-object v0
.end method

.method public isHttps()Z
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->scheme:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newBuilder()Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    .locals 3

    .line 868
    new-instance v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;

    invoke-direct {v0}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;-><init>()V

    .line 869
    .local v0, "result":Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->scheme:Ljava/lang/String;

    iput-object v1, v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 870
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/HttpUrl;->encodedUsername()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 871
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/HttpUrl;->encodedPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 872
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->host:Ljava/lang/String;

    iput-object v1, v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 874
    iget v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->port:I

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->scheme:Ljava/lang/String;

    invoke-static {v2}, Lcom/maya/open/http/okhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->port:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    iput v1, v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->port:I

    .line 875
    iget-object v1, v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 876
    iget-object v1, v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 877
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedQuery(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;

    .line 878
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/HttpUrl;->encodedFragment()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 879
    return-object v0
.end method

.method public newBuilder(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    .locals 3
    .param p1, "link"    # Ljava/lang/String;

    .line 887
    new-instance v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;

    invoke-direct {v0}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;-><init>()V

    .line 888
    .local v0, "builder":Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->parse(Lcom/maya/open/http/okhttp3/HttpUrl;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder$ParseResult;

    move-result-object v1

    .line 889
    .local v1, "result":Lcom/maya/open/http/okhttp3/HttpUrl$Builder$ParseResult;
    sget-object v2, Lcom/maya/open/http/okhttp3/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/maya/open/http/okhttp3/HttpUrl$Builder$ParseResult;

    if-ne v1, v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public password()Ljava/lang/String;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->password:Ljava/lang/String;

    return-object v0
.end method

.method public pathSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 590
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->pathSegments:Ljava/util/List;

    return-object v0
.end method

.method public pathSize()I
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->pathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public port()I
    .locals 1

    .line 498
    iget v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->port:I

    return v0
.end method

.method public query()Ljava/lang/String;
    .locals 2

    .line 669
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 670
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 671
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/maya/open/http/okhttp3/HttpUrl;->namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 672
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public queryParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 707
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 708
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 709
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 710
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 708
    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 713
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_2
    return-object v1
.end method

.method public queryParameterName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 785
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    mul-int/lit8 v1, p1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 785
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public queryParameterNames()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 730
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 731
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 732
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 733
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 732
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 735
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public queryParameterValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 807
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 807
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public queryParameterValues(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 757
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 758
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 759
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 760
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 761
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 764
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public querySize()I
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public redact()Ljava/lang/String;
    .locals 2

    .line 851
    const-string v0, "/..."

    invoke-virtual {p0, v0}, Lcom/maya/open/http/okhttp3/HttpUrl;->newBuilder(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string v1, ""

    .line 852
    invoke-virtual {v0, v1}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->username(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string v1, ""

    .line 853
    invoke-virtual {v0, v1}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->password(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 854
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->build()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v0

    .line 855
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    .line 851
    return-object v0
.end method

.method public resolve(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl;
    .locals 2
    .param p1, "link"    # Ljava/lang/String;

    .line 863
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okhttp3/HttpUrl;->newBuilder(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 864
    .local v0, "builder":Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->build()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public scheme()Ljava/lang/String;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 946
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public uri()Ljava/net/URI;
    .locals 4

    .line 373
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/HttpUrl;->newBuilder()Lcom/maya/open/http/okhttp3/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->reencodeForUri()Lcom/maya/open/http/okhttp3/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "uri":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 376
    :catch_0
    move-exception v1

    .line 379
    .local v1, "e":Ljava/net/URISyntaxException;
    :try_start_1
    const-string v2, "[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, "stripped":Ljava/lang/String;
    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 381
    .end local v2    # "stripped":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 382
    .local v2, "e1":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public url()Ljava/net/URL;
    .locals 2

    .line 353
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public username()Ljava/lang/String;
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl;->username:Ljava/lang/String;

    return-object v0
.end method
