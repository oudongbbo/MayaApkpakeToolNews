.class public final Lcom/maya/open/http/okhttp3/internal/Util;
.super Ljava/lang/Object;
.source "Util.java"


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

    .line 47
    const/4 v0, 0x0

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

    .line 53
    const-string v0, "efbbbf"

    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->decodeHex(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_8_BOM:Lcom/maya/open/http/okio/ByteString;

    .line 54
    const-string v0, "feff"

    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->decodeHex(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_16_BE_BOM:Lcom/maya/open/http/okio/ByteString;

    .line 55
    const-string v0, "fffe"

    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->decodeHex(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_16_LE_BOM:Lcom/maya/open/http/okio/ByteString;

    .line 56
    const-string v0, "0000ffff"

    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->decodeHex(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_32_BE_BOM:Lcom/maya/open/http/okio/ByteString;

    .line 57
    const-string v0, "ffff0000"

    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->decodeHex(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_32_LE_BOM:Lcom/maya/open/http/okio/ByteString;

    .line 59
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 60
    const-string v0, "UTF-16BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_16_BE:Ljava/nio/charset/Charset;

    .line 61
    const-string v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_16_LE:Ljava/nio/charset/Charset;

    .line 62
    const-string v0, "UTF-32BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_32_BE:Ljava/nio/charset/Charset;

    .line 63
    const-string v0, "UTF-32LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_32_LE:Ljava/nio/charset/Charset;

    .line 66
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    .line 78
    const-string v0, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static bomAwareCharset(Lcom/maya/open/http/okio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 3
    .param p0, "source"    # Lcom/maya/open/http/okio/BufferedSource;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_8_BOM:Lcom/maya/open/http/okio/ByteString;

    const-wide/16 v1, 0x0

    invoke-interface {p0, v1, v2, v0}, Lcom/maya/open/http/okio/BufferedSource;->rangeEquals(JLcom/maya/open/http/okio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_8_BOM:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lcom/maya/open/http/okio/BufferedSource;->skip(J)V

    .line 416
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0

    .line 418
    :cond_0
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_16_BE_BOM:Lcom/maya/open/http/okio/ByteString;

    invoke-interface {p0, v1, v2, v0}, Lcom/maya/open/http/okio/BufferedSource;->rangeEquals(JLcom/maya/open/http/okio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_16_BE_BOM:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lcom/maya/open/http/okio/BufferedSource;->skip(J)V

    .line 420
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_16_BE:Ljava/nio/charset/Charset;

    return-object v0

    .line 422
    :cond_1
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_16_LE_BOM:Lcom/maya/open/http/okio/ByteString;

    invoke-interface {p0, v1, v2, v0}, Lcom/maya/open/http/okio/BufferedSource;->rangeEquals(JLcom/maya/open/http/okio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 423
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_16_LE_BOM:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lcom/maya/open/http/okio/BufferedSource;->skip(J)V

    .line 424
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_16_LE:Ljava/nio/charset/Charset;

    return-object v0

    .line 426
    :cond_2
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_32_BE_BOM:Lcom/maya/open/http/okio/ByteString;

    invoke-interface {p0, v1, v2, v0}, Lcom/maya/open/http/okio/BufferedSource;->rangeEquals(JLcom/maya/open/http/okio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 427
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_32_BE_BOM:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lcom/maya/open/http/okio/BufferedSource;->skip(J)V

    .line 428
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_32_BE:Ljava/nio/charset/Charset;

    return-object v0

    .line 430
    :cond_3
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_32_LE_BOM:Lcom/maya/open/http/okio/ByteString;

    invoke-interface {p0, v1, v2, v0}, Lcom/maya/open/http/okio/BufferedSource;->rangeEquals(JLcom/maya/open/http/okio/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 431
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_32_LE_BOM:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lcom/maya/open/http/okio/BufferedSource;->skip(J)V

    .line 432
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->UTF_32_LE:Ljava/nio/charset/Charset;

    return-object v0

    .line 434
    :cond_4
    return-object p1
.end method

.method public static checkOffsetAndCount(JJJ)V
    .locals 5
    .param p0, "arrayLength"    # J
    .param p2, "offset"    # J
    .param p4, "count"    # J

    .line 85
    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    sub-long v0, p0, p2

    cmp-long v2, v0, p4

    if-ltz v2, :cond_0

    .line 88
    return-void

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 100
    if-eqz p0, :cond_0

    .line 102
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    goto :goto_0

    .line 103
    :catch_1
    move-exception v0

    .line 104
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 108
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static closeQuietly(Ljava/net/ServerSocket;)V
    .locals 1
    .param p0, "serverSocket"    # Ljava/net/ServerSocket;

    .line 132
    if-eqz p0, :cond_0

    .line 134
    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    goto :goto_0

    .line 135
    :catch_1
    move-exception v0

    .line 136
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 140
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .locals 2
    .param p0, "socket"    # Ljava/net/Socket;

    .line 115
    if-eqz p0, :cond_1

    .line 117
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    goto :goto_1

    .line 122
    :catch_0
    move-exception v0

    goto :goto_1

    .line 120
    :catch_1
    move-exception v0

    .line 121
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 118
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/AssertionError;
    invoke-static {v0}, Lcom/maya/open/http/okhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0    # "e":Ljava/lang/AssertionError;
    goto :goto_0

    .restart local v0    # "e":Ljava/lang/AssertionError;
    :cond_0
    throw v0

    .line 125
    .end local v0    # "e":Ljava/lang/AssertionError;
    :cond_1
    :goto_1
    return-void
.end method

.method public static concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 272
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 273
    .local v0, "result":[Ljava/lang/String;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 275
    return-object v0
.end method

.method private static containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    .locals 6
    .param p0, "hostnameAscii"    # Ljava/lang/String;

    .line 370
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 371
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 375
    .local v2, "c":C
    const/16 v3, 0x1f

    const/4 v4, 0x1

    if-le v2, v3, :cond_2

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_0

    goto :goto_1

    .line 381
    :cond_0
    const-string v3, " #%/:?@[\\]"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 382
    return v4

    .line 370
    .end local v2    # "c":C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 376
    .restart local v2    # "c":C
    :cond_2
    :goto_1
    return v4

    .line 385
    .end local v1    # "i":I
    .end local v2    # "c":C
    :cond_3
    return v0
.end method

.method public static delimiterOffset(Ljava/lang/String;IIC)I
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "delimiter"    # C

    .line 341
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 342
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_0

    return v0

    .line 341
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    .end local v0    # "i":I
    :cond_1
    return p2
.end method

.method public static delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "delimiters"    # Ljava/lang/String;

    .line 330
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 331
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    return v0

    .line 330
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    .end local v0    # "i":I
    :cond_1
    return p2
.end method

.method public static discard(Lcom/maya/open/http/okio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p0, "source"    # Lcom/maya/open/http/okio/Source;
    .param p1, "timeout"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 149
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/maya/open/http/okhttp3/internal/Util;->skipAll(Lcom/maya/open/http/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public static domainToAscii(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;

    .line 355
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 359
    :cond_0
    invoke-static {v1}, Lcom/maya/open/http/okhttp3/internal/Util;->containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 360
    return-object v0

    .line 363
    :cond_1
    return-object v1

    .line 364
    .end local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 365
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return-object v0
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 92
    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 410
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hostHeader(Lcom/maya/open/http/okhttp3/HttpUrl;Z)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Lcom/maya/open/http/okhttp3/HttpUrl;
    .param p1, "includeDefaultPort"    # Z

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

    .line 233
    .local v0, "host":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/maya/open/http/okhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/HttpUrl;->port()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    :goto_2
    return-object v1
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
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs immutableList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
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
    .local p0, "elements":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
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
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 266
    aget-object v2, p0, v0

    invoke-static {v2, p1}, Lcom/maya/open/http/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    .line 265
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOfControlOrNonAscii(Ljava/lang/String;)I
    .locals 4
    .param p0, "input"    # Ljava/lang/String;

    .line 394
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 395
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 396
    .local v2, "c":C
    const/16 v3, 0x1f

    if-le v2, v3, :cond_1

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_0

    goto :goto_1

    .line 394
    .end local v2    # "c":C
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    .restart local v2    # "c":C
    :cond_1
    :goto_1
    return v0

    .line 400
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "c":C
    :cond_2
    const/4 v0, -0x1

    return v0
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
    .local p0, "first":[Ljava/lang/Object;, "[TT;"
    .local p1, "second":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    .line 219
    .local v4, "a":Ljava/lang/Object;, "TT;"
    array-length v5, p1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, p1, v6

    .line 220
    .local v7, "b":Ljava/lang/Object;, "TT;"
    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 221
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    goto :goto_2

    .line 219
    .end local v7    # "b":Ljava/lang/Object;, "TT;"
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 218
    .end local v4    # "a":Ljava/lang/Object;, "TT;"
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 226
    :cond_2
    return-object v0
.end method

.method public static intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
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
    .local p0, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "first":[Ljava/lang/Object;, "[TT;"
    .local p2, "second":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1, p2}, Lcom/maya/open/http/okhttp3/internal/Util;->intersect([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 209
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .locals 2
    .param p0, "e"    # Ljava/lang/AssertionError;

    .line 260
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getsockname failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 260
    :goto_0
    return v0
.end method

.method public static skipAll(Lcom/maya/open/http/okio/Source;ILjava/util/concurrent/TimeUnit;)Z
    .locals 12
    .param p0, "source"    # Lcom/maya/open/http/okio/Source;
    .param p1, "duration"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 161
    .local v0, "now":J
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
    .local v5, "originalDuration":J
    :goto_0
    invoke-interface {p0}, Lcom/maya/open/http/okio/Source;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object v2

    int-to-long v7, p1

    invoke-virtual {p2, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    add-long/2addr v7, v0

    invoke-virtual {v2, v7, v8}, Lcom/maya/open/http/okio/Timeout;->deadlineNanoTime(J)Lcom/maya/open/http/okio/Timeout;

    .line 166
    :try_start_0
    new-instance v2, Lcom/maya/open/http/okio/Buffer;

    invoke-direct {v2}, Lcom/maya/open/http/okio/Buffer;-><init>()V

    .line 167
    .local v2, "skipBuffer":Lcom/maya/open/http/okio/Buffer;
    :goto_1
    const-wide/16 v7, 0x2000

    invoke-interface {p0, v2, v7, v8}, Lcom/maya/open/http/okio/Source;->read(Lcom/maya/open/http/okio/Buffer;J)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_1

    .line 168
    invoke-virtual {v2}, Lcom/maya/open/http/okio/Buffer;->clear()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 170
    :cond_1
    const/4 v7, 0x1

    .line 174
    cmp-long v8, v5, v3

    if-nez v8, :cond_2

    .line 175
    invoke-interface {p0}, Lcom/maya/open/http/okio/Source;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/maya/open/http/okio/Timeout;->clearDeadline()Lcom/maya/open/http/okio/Timeout;

    goto :goto_2

    .line 177
    :cond_2
    invoke-interface {p0}, Lcom/maya/open/http/okio/Source;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object v3

    add-long v8, v0, v5

    invoke-virtual {v3, v8, v9}, Lcom/maya/open/http/okio/Timeout;->deadlineNanoTime(J)Lcom/maya/open/http/okio/Timeout;

    .line 170
    :goto_2
    return v7

    .line 174
    .end local v2    # "skipBuffer":Lcom/maya/open/http/okio/Buffer;
    :catchall_0
    move-exception v2

    cmp-long v7, v5, v3

    if-nez v7, :cond_3

    .line 175
    invoke-interface {p0}, Lcom/maya/open/http/okio/Source;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/maya/open/http/okio/Timeout;->clearDeadline()Lcom/maya/open/http/okio/Timeout;

    goto :goto_3

    .line 177
    :cond_3
    invoke-interface {p0}, Lcom/maya/open/http/okio/Source;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object v3

    add-long v7, v0, v5

    invoke-virtual {v3, v7, v8}, Lcom/maya/open/http/okio/Timeout;->deadlineNanoTime(J)Lcom/maya/open/http/okio/Timeout;

    .line 179
    :goto_3
    throw v2

    .line 171
    :catch_0
    move-exception v2

    .line 172
    .local v2, "e":Ljava/io/InterruptedIOException;
    const/4 v7, 0x0

    .line 174
    cmp-long v8, v5, v3

    if-nez v8, :cond_4

    .line 175
    invoke-interface {p0}, Lcom/maya/open/http/okio/Source;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/maya/open/http/okio/Timeout;->clearDeadline()Lcom/maya/open/http/okio/Timeout;

    goto :goto_4

    .line 177
    :cond_4
    invoke-interface {p0}, Lcom/maya/open/http/okio/Source;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object v3

    add-long v8, v0, v5

    invoke-virtual {v3, v8, v9}, Lcom/maya/open/http/okio/Timeout;->deadlineNanoTime(J)Lcom/maya/open/http/okio/Timeout;

    .line 172
    :goto_4
    return v7
.end method

.method public static skipLeadingAsciiWhitespace(Ljava/lang/String;II)I
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 283
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 284
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 292
    return v0

    .line 290
    :sswitch_0
    nop

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    .end local v0    # "i":I
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
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 303
    add-int/lit8 v0, p2, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 304
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 312
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 310
    :sswitch_0
    nop

    .line 303
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 315
    .end local v0    # "i":I
    :cond_0
    return p1

    nop

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
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "daemon"    # Z

    .line 193
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/Util$1;

    invoke-direct {v0, p0, p1}, Lcom/maya/open/http/okhttp3/internal/Util$1;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static toHumanReadableAscii(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .line 240
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 241
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 242
    .local v2, "c":I
    const/16 v3, 0x7f

    const/16 v4, 0x1f

    if-le v2, v4, :cond_0

    if-ge v2, v3, :cond_0

    .line 240
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 244
    :cond_0
    new-instance v5, Lcom/maya/open/http/okio/Buffer;

    invoke-direct {v5}, Lcom/maya/open/http/okio/Buffer;-><init>()V

    .line 245
    .local v5, "buffer":Lcom/maya/open/http/okio/Buffer;
    const/4 v6, 0x0

    invoke-virtual {v5, p0, v6, v0}, Lcom/maya/open/http/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/maya/open/http/okio/Buffer;

    .line 246
    move v6, v2

    move v2, v0

    .local v2, "j":I
    .local v6, "c":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 247
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    .line 248
    if-le v6, v4, :cond_1

    if-ge v6, v3, :cond_1

    move v7, v6

    goto :goto_2

    :cond_1
    const/16 v7, 0x3f

    :goto_2
    invoke-virtual {v5, v7}, Lcom/maya/open/http/okio/Buffer;->writeUtf8CodePoint(I)Lcom/maya/open/http/okio/Buffer;

    .line 246
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v2, v7

    goto :goto_1

    .line 250
    .end local v2    # "j":I
    :cond_2
    invoke-virtual {v5}, Lcom/maya/open/http/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 252
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v5    # "buffer":Lcom/maya/open/http/okio/Buffer;
    .end local v6    # "c":I
    :cond_3
    return-object p0
.end method

.method public static trimSubstring(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 320
    invoke-static {p0, p1, p2}, Lcom/maya/open/http/okhttp3/internal/Util;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v0

    .line 321
    .local v0, "start":I
    invoke-static {p0, v0, p2}, Lcom/maya/open/http/okhttp3/internal/Util;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v1

    .line 322
    .local v1, "end":I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static verifyAsIpAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "host"    # Ljava/lang/String;

    .line 405
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/Util;->VERIFY_AS_IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
