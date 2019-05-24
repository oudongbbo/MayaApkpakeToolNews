.class public final Lcom/maya/open/http/okhttp3/internal/Util;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_REQUEST:Lcom/maya/open/http/okhttp3/RequestBody;

.field public static final EMPTY_RESPONSE:Lcom/maya/open/http/okhttp3/ResponseBody;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final UTC:Ljava/util/TimeZone;

.field private static final UTF_16_BE:Ljava/nio/charset/Charset;

.field private static final UTF_16_BE_BOM:Lcom/maya/open/http/okio/ByteString;

.field private static final UTF_16_LE:Ljava/nio/charset/Charset;

.field private static final UTF_16_LE_BOM:Lcom/maya/open/http/okio/ByteString;

.field private static final UTF_32_BE:Ljava/nio/charset/Charset;

.field private static final UTF_32_BE_BOM:Lcom/maya/open/http/okio/ByteString;

.field private static final UTF_32_LE:Ljava/nio/charset/Charset;

.field private static final UTF_32_LE_BOM:Lcom/maya/open/http/okio/ByteString;

.field public static final UTF_8:Ljava/nio/charset/Charset;

.field private static final UTF_8_BOM:Lcom/maya/open/http/okio/ByteString;

.field private static final VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 47
    new-array v1, v0, [B

    sput-object v1, Lcom/maya/open/http/okhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    .line 48
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/maya/open/http/okhttp3/ResponseBody;->create(Lcom/maya/open/http/okhttp3/MediaType;[B)Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->EMPTY_RESPONSE:Lcom/maya/open/http/okhttp3/ResponseBody;

    .line 51
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-static {v1, v0}, Lcom/maya/open/http/okhttp3/RequestBody;->create(Lcom/maya/open/http/okhttp3/MediaType;[B)Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->EMPTY_REQUEST:Lcom/maya/open/http/okhttp3/RequestBody;

    const-string v0, "efbbbf"

    .line 53
    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->decodeHex(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_8_BOM:Lcom/maya/open/http/okio/ByteString;

    const-string v0, "feff"

    .line 54
    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->decodeHex(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_16_BE_BOM:Lcom/maya/open/http/okio/ByteString;

    const-string v0, "fffe"

    .line 55
    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->decodeHex(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_16_LE_BOM:Lcom/maya/open/http/okio/ByteString;

    const-string v0, "0000ffff"

    .line 56
    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->decodeHex(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_32_BE_BOM:Lcom/maya/open/http/okio/ByteString;

    const-string v0, "ffff0000"

    .line 57
    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->decodeHex(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_32_LE_BOM:Lcom/maya/open/http/okio/ByteString;

    const-string v0, "UTF-8"

    .line 59
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    const-string v0, "UTF-16BE"

    .line 60
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_16_BE:Ljava/nio/charset/Charset;

    const-string v0, "UTF-16LE"

    .line 61
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_16_LE:Ljava/nio/charset/Charset;

    const-string v0, "UTF-32BE"

    .line 62
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_32_BE:Ljava/nio/charset/Charset;

    const-string v0, "UTF-32LE"

    .line 63
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_32_LE:Ljava/nio/charset/Charset;

    const-string v0, "GMT"

    .line 66
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    const-string v0, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    .line 78
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bomAwareCharset(Lcom/maya/open/http/okio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 3

    .line 414
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_8_BOM:Lcom/maya/open/http/okio/ByteString;

    const-wide/16 v1, 0x0

    invoke-interface {p0, v1, v2, v0}, Lcom/maya/open/http/okio/BufferedSource;->rangeEquals(JLcom/maya/open/http/okio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    sget-object p1, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_8_BOM:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {p1}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lcom/maya/open/http/okio/BufferedSource;->skip(J)V

    .line 416
    sget-object p0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    return-object p0

    .line 418
    :cond_0
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_16_BE_BOM:Lcom/maya/open/http/okio/ByteString;

    invoke-interface {p0, v1, v2, v0}, Lcom/maya/open/http/okio/BufferedSource;->rangeEquals(JLcom/maya/open/http/okio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    sget-object p1, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_16_BE_BOM:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {p1}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lcom/maya/open/http/okio/BufferedSource;->skip(J)V

    .line 420
    sget-object p0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_16_BE:Ljava/nio/charset/Charset;

    return-object p0

    .line 422
    :cond_1
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_16_LE_BOM:Lcom/maya/open/http/okio/ByteString;

    invoke-interface {p0, v1, v2, v0}, Lcom/maya/open/http/okio/BufferedSource;->rangeEquals(JLcom/maya/open/http/okio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 423
    sget-object p1, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_16_LE_BOM:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {p1}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lcom/maya/open/http/okio/BufferedSource;->skip(J)V

    .line 424
    sget-object p0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_16_LE:Ljava/nio/charset/Charset;

    return-object p0

    .line 426
    :cond_2
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_32_BE_BOM:Lcom/maya/open/http/okio/ByteString;

    invoke-interface {p0, v1, v2, v0}, Lcom/maya/open/http/okio/BufferedSource;->rangeEquals(JLcom/maya/open/http/okio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 427
    sget-object p1, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_32_BE_BOM:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {p1}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lcom/maya/open/http/okio/BufferedSource;->skip(J)V

    .line 428
    sget-object p0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_32_BE:Ljava/nio/charset/Charset;

    return-object p0

    .line 430
    :cond_3
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_32_LE_BOM:Lcom/maya/open/http/okio/ByteString;

    invoke-interface {p0, v1, v2, v0}, Lcom/maya/open/http/okio/BufferedSource;->rangeEquals(JLcom/maya/open/http/okio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 431
    sget-object p1, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_32_LE_BOM:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {p1}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lcom/maya/open/http/okio/BufferedSource;->skip(J)V

    .line 432
    sget-object p0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_32_LE:Ljava/nio/charset/Charset;

    return-object p0

    :cond_4
    return-object p1
.end method

.method public static checkOffsetAndCount(JJJ)V
    .locals 5

    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    sub-long/2addr p0, p2

    cmp-long p2, p0, p4

    if-ltz p2, :cond_0

    return-void

    .line 86
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 102
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 104
    throw p0

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method public static closeQuietly(Ljava/net/ServerSocket;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 134
    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 136
    throw p0

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 117
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception p0

    .line 121
    throw p0

    :catch_1
    move-exception p0

    .line 119
    invoke-static {p0}, Lcom/maya/open/http/okhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    throw p0

    :catch_2
    :cond_1
    :goto_0
    return-void
.end method

.method public static concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 272
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 273
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    aput-object p1, v0, p0

    return-object v0
.end method

.method private static containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 370
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 371
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1f

    const/4 v4, 0x1

    if-le v2, v3, :cond_2

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, " #%/:?@[\\]"

    .line 381
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v4

    :cond_3
    return v0
.end method

.method public static delimiterOffset(Ljava/lang/String;IIC)I
    .locals 1

    :goto_0
    if-ge p1, p2, :cond_1

    .line 342
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p3, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public static delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_1

    .line 331
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public static discard(Lcom/maya/open/http/okio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .locals 0

    .line 149
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/maya/open/http/okhttp3/internal/Util;->skipAll(Lcom/maya/open/http/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static domainToAscii(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 355
    :try_start_0
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 356
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 359
    :cond_0
    invoke-static {p0}, Lcom/maya/open/http/okhttp3/internal/Util;->containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    return-object p0

    :catch_0
    return-object v0
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    .line 92
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 410
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hostHeader(Lcom/maya/open/http/okhttp3/HttpUrl;Z)Ljava/lang/String;
    .locals 2

    .line 230
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_1

    .line 233
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/HttpUrl;->port()I

    move-result p1

    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/open/http/okhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v1

    if-eq p1, v1, :cond_2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/HttpUrl;->port()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static immutableList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs immutableList([Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .line 265
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 266
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Lcom/maya/open/http/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static indexOfControlOrNonAscii(Ljava/lang/String;)I
    .locals 4

    .line 394
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 395
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1f

    if-le v2, v3, :cond_1

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private static intersect([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    .line 219
    array-length v5, p1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, p1, v6

    .line 220
    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 221
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;[TT;)[TT;"
        }
    .end annotation

    .line 208
    invoke-static {p1, p2}, Lcom/maya/open/http/okhttp3/internal/Util;->intersect([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 209
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p0, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .locals 1

    .line 260
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getsockname failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static skipAll(Lcom/maya/open/http/okio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .locals 11

    .line 160
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 161
    invoke-interface {p0}, Lcom/maya/open/http/okio/Source;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maya/open/http/okio/Timeout;->hasDeadline()Z

    move-result v2

    const-wide v3, 0x7fffffffffffffffL

    if-eqz v2, :cond_0

    .line 162
    invoke-interface {p0}, Lcom/maya/open/http/okio/Source;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maya/open/http/okio/Timeout;->deadlineNanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    goto :goto_0

    :cond_0
    move-wide v5, v3

    .line 164
    :goto_0
    invoke-interface {p0}, Lcom/maya/open/http/okio/Source;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object v2

    int-to-long v7, p1

    invoke-virtual {p2, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Lcom/maya/open/http/okio/Timeout;->deadlineNanoTime(J)Lcom/maya/open/http/okio/Timeout;

    .line 166
    :try_start_0
    new-instance p1, Lcom/maya/open/http/okio/Buffer;

    invoke-direct {p1}, Lcom/maya/open/http/okio/Buffer;-><init>()V

    :goto_1
    const-wide/16 v7, 0x2000

    .line 167
    invoke-interface {p0, p1, v7, v8}, Lcom/maya/open/http/okio/Source;->read(Lcom/maya/open/http/okio/Buffer;J)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long p2, v7, v9

    if-eqz p2, :cond_1

    .line 168
    invoke-virtual {p1}, Lcom/maya/open/http/okio/Buffer;->clear()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    cmp-long p2, v5, v3

    if-nez p2, :cond_2

    .line 175
    invoke-interface {p0}, Lcom/maya/open/http/okio/Source;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/maya/open/http/okio/Timeout;->clearDeadline()Lcom/maya/open/http/okio/Timeout;

    goto :goto_2

    .line 177
    :cond_2
    invoke-interface {p0}, Lcom/maya/open/http/okio/Source;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object p0

    add-long/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okio/Timeout;->deadlineNanoTime(J)Lcom/maya/open/http/okio/Timeout;

    :goto_2
    return p1

    :catchall_0
    move-exception p1

    cmp-long p2, v5, v3

    if-nez p2, :cond_3

    .line 175
    invoke-interface {p0}, Lcom/maya/open/http/okio/Source;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/maya/open/http/okio/Timeout;->clearDeadline()Lcom/maya/open/http/okio/Timeout;

    goto :goto_3

    .line 177
    :cond_3
    invoke-interface {p0}, Lcom/maya/open/http/okio/Source;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object p0

    add-long/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okio/Timeout;->deadlineNanoTime(J)Lcom/maya/open/http/okio/Timeout;

    .line 179
    :goto_3
    throw p1

    :catch_0
    const/4 p1, 0x0

    cmp-long p2, v5, v3

    if-nez p2, :cond_4

    .line 175
    invoke-interface {p0}, Lcom/maya/open/http/okio/Source;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/maya/open/http/okio/Timeout;->clearDeadline()Lcom/maya/open/http/okio/Timeout;

    goto :goto_4

    .line 177
    :cond_4
    invoke-interface {p0}, Lcom/maya/open/http/okio/Source;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object p0

    add-long/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okio/Timeout;->deadlineNanoTime(J)Lcom/maya/open/http/okio/Timeout;

    :goto_4
    return p1
.end method

.method public static skipLeadingAsciiWhitespace(Ljava/lang/String;II)I
    .locals 1

    :goto_0
    if-ge p1, p2, :cond_0

    .line 284
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    return p1

    :sswitch_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return p2

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static skipTrailingAsciiWhitespace(Ljava/lang/String;II)I
    .locals 1

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-lt p2, p1, :cond_0

    .line 304
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    add-int/lit8 p2, p2, 0x1

    return p2

    :sswitch_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return p1

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 193
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/Util$1;

    invoke-direct {v0, p0, p1}, Lcom/maya/open/http/okhttp3/internal/Util$1;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static toHumanReadableAscii(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 240
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 241
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x7f

    const/16 v5, 0x1f

    if-le v3, v5, :cond_0

    if-ge v3, v4, :cond_0

    .line 240
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 244
    :cond_0
    new-instance v3, Lcom/maya/open/http/okio/Buffer;

    invoke-direct {v3}, Lcom/maya/open/http/okio/Buffer;-><init>()V

    .line 245
    invoke-virtual {v3, p0, v1, v2}, Lcom/maya/open/http/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/maya/open/http/okio/Buffer;

    :goto_1
    if-ge v2, v0, :cond_2

    .line 247
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    if-le v1, v5, :cond_1

    if-ge v1, v4, :cond_1

    move v6, v1

    goto :goto_2

    :cond_1
    const/16 v6, 0x3f

    .line 248
    :goto_2
    invoke-virtual {v3, v6}, Lcom/maya/open/http/okio/Buffer;->writeUtf8CodePoint(I)Lcom/maya/open/http/okio/Buffer;

    .line 246
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_1

    .line 250
    :cond_2
    invoke-virtual {v3}, Lcom/maya/open/http/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object p0
.end method

.method public static trimSubstring(Ljava/lang/String;II)Ljava/lang/String;
    .locals 0

    .line 320
    invoke-static {p0, p1, p2}, Lcom/maya/open/http/okhttp3/internal/Util;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    move-result p1

    .line 321
    invoke-static {p0, p1, p2}, Lcom/maya/open/http/okhttp3/internal/Util;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    move-result p2

    .line 322
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static verifyAsIpAddress(Ljava/lang/String;)Z
    .locals 1

    .line 405
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method
