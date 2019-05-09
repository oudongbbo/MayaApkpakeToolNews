.class public final Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okhttp3/HttpUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okhttp3/HttpUrl$Builder$ParseResult;
    }
.end annotation


# instance fields
.field encodedFragment:Ljava/lang/String;

.field encodedPassword:Ljava/lang/String;

.field final encodedPathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field encodedQueryNamesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field encodedUsername:Ljava/lang/String;

.field host:Ljava/lang/String;

.field port:I

.field scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 951
    const-string v0, ""

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 952
    const-string v0, ""

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 954
    const/4 v0, -0x1

    iput v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->port:I

    .line 955
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    .line 960
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 961
    return-void
.end method

.method private addPathSegments(Ljava/lang/String;Z)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    .locals 9
    .param p1, "pathSegments"    # Ljava/lang/String;
    .param p2, "alreadyEncoded"    # Z

    .line 1060
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1062
    .local v1, "offset":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "/\\"

    invoke-static {p1, v1, v2, v3}, Lcom/maya/open/http/okhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v8

    .line 1063
    .local v8, "segmentEnd":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v8, v2, :cond_1

    const/4 v2, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 1064
    .local v6, "addTrailingSlash":Z
    :goto_0
    move-object v2, p0

    move-object v3, p1

    move v4, v1

    move v5, v8

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1065
    add-int/lit8 v1, v8, 0x1

    .line 1066
    .end local v6    # "addTrailingSlash":Z
    .end local v8    # "segmentEnd":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 1067
    return-object p0
.end method

.method private static canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1558
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/maya/open/http/okhttp3/HttpUrl;->percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v1

    .line 1561
    .local v1, "percentDecoded":Ljava/lang/String;
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1563
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1564
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-static {v1, v2, v0}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0

    .line 1565
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    .line 1566
    .local v0, "inetAddress":Ljava/net/InetAddress;
    :goto_0
    if-nez v0, :cond_1

    const/4 v2, 0x0

    return-object v2

    .line 1567
    :cond_1
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 1568
    .local v2, "address":[B
    array-length v3, v2

    const/16 v4, 0x10

    if-ne v3, v4, :cond_2

    invoke-static {v2}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->inet6AddressToAscii([B)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1569
    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1572
    .end local v0    # "inetAddress":Ljava/net/InetAddress;
    .end local v2    # "address":[B
    :cond_3
    invoke-static {v1}, Lcom/maya/open/http/okhttp3/internal/Util;->domainToAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static decodeIpv4Suffix(Ljava/lang/String;II[BI)Z
    .locals 8
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "address"    # [B
    .param p4, "addressOffset"    # I

    .line 1649
    move v0, p4

    .line 1651
    .local v0, "b":I
    move v1, v0

    move v0, p1

    .local v0, "i":I
    .local v1, "b":I
    :goto_0
    const/4 v2, 0x0

    if-ge v0, p2, :cond_8

    .line 1652
    array-length v3, p3

    if-ne v1, v3, :cond_0

    return v2

    .line 1655
    :cond_0
    if-eq v1, p4, :cond_2

    .line 1656
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_1

    return v2

    .line 1657
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1661
    :cond_2
    const/4 v3, 0x0

    .line 1662
    .local v3, "value":I
    move v4, v3

    move v3, v0

    .line 1663
    .local v0, "groupOffset":I
    .local v3, "i":I
    .local v4, "value":I
    :goto_1
    if-ge v3, p2, :cond_6

    .line 1664
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1665
    .local v5, "c":C
    const/16 v6, 0x30

    if-lt v5, v6, :cond_6

    const/16 v7, 0x39

    if-le v5, v7, :cond_3

    .end local v5    # "c":C
    goto :goto_2

    .line 1666
    .restart local v5    # "c":C
    :cond_3
    if-nez v4, :cond_4

    if-eq v0, v3, :cond_4

    return v2

    .line 1667
    :cond_4
    mul-int/lit8 v7, v4, 0xa

    add-int/2addr v7, v5

    add-int/lit8 v4, v7, -0x30

    .line 1668
    const/16 v6, 0xff

    if-le v4, v6, :cond_5

    return v2

    .line 1663
    .end local v5    # "c":C
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1670
    :cond_6
    :goto_2
    sub-int v5, v3, v0

    .line 1671
    .local v5, "groupLength":I
    if-nez v5, :cond_7

    return v2

    .line 1674
    :cond_7
    add-int/lit8 v2, v1, 0x1

    .local v2, "b":I
    int-to-byte v6, v4

    aput-byte v6, p3, v1

    .line 1675
    .end local v0    # "groupOffset":I
    .end local v1    # "b":I
    .end local v4    # "value":I
    .end local v5    # "groupLength":I
    nop

    .line 1651
    move v1, v2

    move v0, v3

    goto :goto_0

    .line 1677
    .end local v2    # "b":I
    .end local v3    # "i":I
    .restart local v1    # "b":I
    :cond_8
    add-int/lit8 v0, p4, 0x4

    if-eq v1, v0, :cond_9

    return v2

    .line 1678
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method private static decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;
    .locals 11
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1577
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 1578
    .local v0, "address":[B
    const/4 v1, 0x0

    .line 1579
    .local v1, "b":I
    const/4 v2, -0x1

    .line 1580
    .local v2, "compress":I
    const/4 v3, -0x1

    .line 1582
    .local v3, "groupOffset":I
    move v4, v3

    move v3, v2

    move v2, v1

    move v1, p1

    .local v1, "i":I
    .local v2, "b":I
    .local v3, "compress":I
    .local v4, "groupOffset":I
    :goto_0
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-ge v1, p2, :cond_b

    .line 1583
    array-length v8, v0

    if-ne v2, v8, :cond_0

    return-object v7

    .line 1586
    :cond_0
    add-int/lit8 v8, v1, 0x2

    if-gt v8, p2, :cond_2

    const-string v8, "::"

    const/4 v9, 0x2

    invoke-virtual {p0, v1, v8, v6, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1588
    if-eq v3, v5, :cond_1

    return-object v7

    .line 1589
    :cond_1
    add-int/lit8 v1, v1, 0x2

    .line 1590
    add-int/lit8 v2, v2, 0x2

    .line 1591
    move v3, v2

    .line 1592
    if-ne v1, p2, :cond_6

    .end local v1    # "i":I
    goto :goto_5

    .line 1593
    .restart local v1    # "i":I
    :cond_2
    if-eqz v2, :cond_6

    .line 1595
    const-string v8, ":"

    const/4 v9, 0x1

    invoke-virtual {p0, v1, v8, v6, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1596
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1597
    :cond_3
    const-string v8, "."

    invoke-virtual {p0, v1, v8, v6, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1599
    add-int/lit8 v8, v2, -0x2

    invoke-static {p0, v4, p2, v0, v8}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->decodeIpv4Suffix(Ljava/lang/String;II[BI)Z

    move-result v8

    if-nez v8, :cond_4

    return-object v7

    .line 1600
    :cond_4
    add-int/lit8 v2, v2, 0x2

    .line 1601
    goto :goto_5

    .line 1603
    :cond_5
    return-object v7

    .line 1608
    :cond_6
    :goto_1
    const/4 v6, 0x0

    .line 1609
    .local v6, "value":I
    move v4, v1

    .line 1610
    :goto_2
    if-ge v1, p2, :cond_8

    .line 1611
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1612
    .local v8, "c":C
    invoke-static {v8}, Lcom/maya/open/http/okhttp3/HttpUrl;->decodeHexDigit(C)I

    move-result v9

    .line 1613
    .local v9, "hexDigit":I
    if-ne v9, v5, :cond_7

    .end local v8    # "c":C
    .end local v9    # "hexDigit":I
    goto :goto_3

    .line 1614
    .restart local v8    # "c":C
    .restart local v9    # "hexDigit":I
    :cond_7
    shl-int/lit8 v10, v6, 0x4

    add-int v6, v10, v9

    .line 1610
    .end local v8    # "c":C
    .end local v9    # "hexDigit":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1616
    :cond_8
    :goto_3
    sub-int v5, v1, v4

    .line 1617
    .local v5, "groupLength":I
    if-eqz v5, :cond_a

    const/4 v8, 0x4

    if-le v5, v8, :cond_9

    goto :goto_4

    .line 1620
    :cond_9
    add-int/lit8 v7, v2, 0x1

    .local v7, "b":I
    ushr-int/lit8 v8, v6, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 1621
    .end local v2    # "b":I
    add-int/lit8 v2, v7, 0x1

    .restart local v2    # "b":I
    and-int/lit16 v8, v6, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 1622
    .end local v5    # "groupLength":I
    .end local v6    # "value":I
    .end local v7    # "b":I
    goto :goto_0

    .line 1617
    .restart local v5    # "groupLength":I
    .restart local v6    # "value":I
    :cond_a
    :goto_4
    return-object v7

    .line 1633
    .end local v1    # "i":I
    .end local v5    # "groupLength":I
    .end local v6    # "value":I
    :cond_b
    :goto_5
    array-length v1, v0

    if-eq v2, v1, :cond_d

    .line 1634
    if-ne v3, v5, :cond_c

    return-object v7

    .line 1635
    :cond_c
    array-length v1, v0

    sub-int v5, v2, v3

    sub-int/2addr v1, v5

    sub-int v5, v2, v3

    invoke-static {v0, v3, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1636
    array-length v1, v0

    sub-int/2addr v1, v2

    add-int/2addr v1, v3

    invoke-static {v0, v3, v1, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 1640
    :cond_d
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1641
    :catch_0
    move-exception v1

    .line 1642
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
.end method

.method private static inet6AddressToAscii([B)Ljava/lang/String;
    .locals 8
    .param p0, "address"    # [B

    .line 1683
    const/4 v0, -0x1

    .line 1684
    .local v0, "longestRunOffset":I
    const/4 v1, 0x0

    .line 1685
    .local v1, "longestRunLength":I
    const/4 v2, 0x0

    move v3, v1

    move v1, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v1, "longestRunOffset":I
    .local v3, "longestRunLength":I
    :goto_0
    array-length v4, p0

    const/16 v5, 0x10

    if-ge v0, v4, :cond_2

    .line 1686
    move v4, v0

    .line 1687
    .local v0, "currentRunOffset":I
    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-byte v6, p0, v4

    if-nez v6, :cond_0

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    if-nez v6, :cond_0

    .line 1688
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 1690
    :cond_0
    sub-int v5, v4, v0

    .line 1691
    .local v5, "currentRunLength":I
    if-le v5, v3, :cond_1

    .line 1692
    move v1, v0

    .line 1693
    move v0, v5

    .line 1685
    move v3, v0

    .end local v0    # "currentRunOffset":I
    .end local v5    # "currentRunLength":I
    :cond_1
    add-int/lit8 v0, v4, 0x2

    goto :goto_0

    .line 1698
    .end local v4    # "i":I
    :cond_2
    new-instance v0, Lcom/maya/open/http/okio/Buffer;

    invoke-direct {v0}, Lcom/maya/open/http/okio/Buffer;-><init>()V

    .line 1699
    .local v0, "result":Lcom/maya/open/http/okio/Buffer;
    nop

    .local v2, "i":I
    :cond_3
    :goto_2
    array-length v4, p0

    if-ge v2, v4, :cond_6

    .line 1700
    const/16 v4, 0x3a

    if-ne v2, v1, :cond_4

    .line 1701
    invoke-virtual {v0, v4}, Lcom/maya/open/http/okio/Buffer;->writeByte(I)Lcom/maya/open/http/okio/Buffer;

    .line 1702
    add-int/2addr v2, v3

    .line 1703
    if-ne v2, v5, :cond_3

    invoke-virtual {v0, v4}, Lcom/maya/open/http/okio/Buffer;->writeByte(I)Lcom/maya/open/http/okio/Buffer;

    goto :goto_2

    .line 1705
    :cond_4
    if-lez v2, :cond_5

    invoke-virtual {v0, v4}, Lcom/maya/open/http/okio/Buffer;->writeByte(I)Lcom/maya/open/http/okio/Buffer;

    .line 1706
    :cond_5
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    .line 1707
    .local v4, "group":I
    int-to-long v6, v4

    invoke-virtual {v0, v6, v7}, Lcom/maya/open/http/okio/Buffer;->writeHexadecimalUnsignedLong(J)Lcom/maya/open/http/okio/Buffer;

    .line 1708
    add-int/lit8 v2, v2, 0x2

    .line 1709
    .end local v4    # "group":I
    goto :goto_2

    .line 1711
    .end local v2    # "i":I
    :cond_6
    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private isDot(Ljava/lang/String;)Z
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .line 1463
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method private isDotDot(Ljava/lang/String;)Z
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .line 1467
    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "%2e."

    .line 1468
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".%2e"

    .line 1469
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "%2e%2e"

    .line 1470
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1467
    :goto_1
    return v0
.end method

.method private static parsePort(Ljava/lang/String;II)I
    .locals 9
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1717
    const/4 v0, -0x1

    :try_start_0
    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v8}, Lcom/maya/open/http/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    .line 1718
    .local v1, "portString":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1719
    .local v2, "i":I
    if-lez v2, :cond_0

    const v3, 0xffff

    if-gt v2, v3, :cond_0

    return v2

    .line 1720
    :cond_0
    return v0

    .line 1721
    .end local v1    # "portString":Ljava/lang/String;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 1722
    .local v1, "e":Ljava/lang/NumberFormatException;
    return v0
.end method

.method private pop()V
    .locals 4

    .line 1484
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1487
    .local v0, "removed":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1488
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1490
    :cond_0
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1492
    :goto_0
    return-void
.end method

.method private static portColonOffset(Ljava/lang/String;II)I
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1541
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_3

    .line 1542
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_2

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 1544
    :cond_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_1

    .line 1545
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_0

    .line 1541
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1549
    :cond_2
    return v0

    .line 1552
    .end local v0    # "i":I
    :cond_3
    return p2
.end method

.method private push(Ljava/lang/String;IIZZ)V
    .locals 8
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "addTrailingSlash"    # Z
    .param p5, "alreadyEncoded"    # Z

    .line 1443
    const-string v3, " \"<>^`{}|/\\?#"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p5

    invoke-static/range {v0 .. v7}, Lcom/maya/open/http/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1445
    .local v0, "segment":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1446
    return-void

    .line 1448
    :cond_0
    invoke-direct {p0, v0}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1449
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->pop()V

    .line 1450
    return-void

    .line 1452
    :cond_1
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1453
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1455
    :cond_2
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1457
    :goto_0
    if-eqz p4, :cond_3

    .line 1458
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1460
    :cond_3
    return-void
.end method

.method private removeAllCanonicalQueryParameters(Ljava/lang/String;)V
    .locals 3
    .param p1, "canonicalName"    # Ljava/lang/String;

    .line 1181
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1182
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1183
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1184
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1185
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1186
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1187
    return-void

    .line 1181
    :cond_0
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 1191
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private resolvePath(Ljava/lang/String;II)V
    .locals 11
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .line 1415
    if-ne p2, p3, :cond_0

    .line 1417
    return-void

    .line 1419
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1420
    .local v0, "c":C
    const/16 v1, 0x2f

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1427
    :cond_1
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1422
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1423
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v3, ""

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1424
    add-int/lit8 p2, p2, 0x1

    .line 1431
    :goto_1
    move v1, p2

    .local v1, "i":I
    :goto_2
    if-ge v1, p3, :cond_5

    .line 1432
    const-string v3, "/\\"

    invoke-static {p1, v1, p3, v3}, Lcom/maya/open/http/okhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v9

    .line 1433
    .local v9, "pathSegmentDelimiterOffset":I
    if-ge v9, p3, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    move v10, v3

    .line 1434
    .local v10, "segmentHasTrailingSlash":Z
    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move v5, v1

    move v6, v9

    move v7, v10

    invoke-direct/range {v3 .. v8}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1435
    move v1, v9

    .line 1436
    if-eqz v10, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 1437
    .end local v9    # "pathSegmentDelimiterOffset":I
    .end local v10    # "segmentHasTrailingSlash":Z
    :cond_4
    goto :goto_2

    .line 1438
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method private static schemeDelimiterOffset(Ljava/lang/String;II)I
    .locals 9
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1499
    sub-int v0, p2, p1

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 1501
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1502
    .local v0, "c0":C
    const/16 v2, 0x5a

    const/16 v3, 0x41

    const/16 v4, 0x7a

    const/16 v5, 0x61

    if-lt v0, v5, :cond_1

    if-le v0, v4, :cond_2

    :cond_1
    if-lt v0, v3, :cond_a

    if-le v0, v2, :cond_2

    goto :goto_2

    .line 1504
    :cond_2
    add-int/lit8 v6, p1, 0x1

    .local v6, "i":I
    :goto_0
    if-ge v6, p2, :cond_9

    .line 1505
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1507
    .local v7, "c":C
    if-lt v7, v5, :cond_3

    if-le v7, v4, :cond_8

    :cond_3
    if-lt v7, v3, :cond_4

    if-le v7, v2, :cond_8

    :cond_4
    const/16 v8, 0x30

    if-lt v7, v8, :cond_5

    const/16 v8, 0x39

    if-le v7, v8, :cond_8

    :cond_5
    const/16 v8, 0x2b

    if-eq v7, v8, :cond_8

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_8

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_6

    .line 1513
    goto :goto_1

    .line 1514
    :cond_6
    const/16 v2, 0x3a

    if-ne v7, v2, :cond_7

    .line 1515
    return v6

    .line 1517
    :cond_7
    return v1

    .line 1504
    .end local v7    # "c":C
    :cond_8
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1521
    .end local v6    # "i":I
    :cond_9
    return v1

    .line 1502
    :cond_a
    :goto_2
    return v1
.end method

.method private static slashCount(Ljava/lang/String;II)I
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1526
    const/4 v0, 0x0

    .line 1527
    .local v0, "slashCount":I
    :goto_0
    if-ge p1, p2, :cond_1

    .line 1528
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1529
    .local v1, "c":C
    const/16 v2, 0x5c

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1

    .line 1530
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1531
    add-int/lit8 p1, p1, 0x1

    .line 1535
    .end local v1    # "c":C
    goto :goto_0

    .line 1536
    :cond_1
    return v0
.end method


# virtual methods
.method public addEncodedPathSegment(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    .locals 6
    .param p1, "encodedPathSegment"    # Ljava/lang/String;

    .line 1040
    if-eqz p1, :cond_0

    .line 1043
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1044
    return-object p0

    .line 1041
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addEncodedPathSegments(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    .locals 2
    .param p1, "encodedPathSegments"    # Ljava/lang/String;

    .line 1053
    if-eqz p1, :cond_0

    .line 1056
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;Z)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;

    move-result-object v0

    return-object v0

    .line 1054
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPathSegments == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    .locals 7
    .param p1, "encodedName"    # Ljava/lang/String;
    .param p2, "encodedValue"    # Ljava/lang/String;

    .line 1141
    if-eqz p1, :cond_2

    .line 1142
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1143
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const-string v2, " \"\'<>#&="

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 1144
    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/maya/open/http/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    .line 1143
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1145
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz p2, :cond_1

    const-string v2, " \"\'<>#&="

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 1146
    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lcom/maya/open/http/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1145
    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1148
    return-object p0

    .line 1141
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addPathSegment(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    .locals 6
    .param p1, "pathSegment"    # Ljava/lang/String;

    .line 1025
    if-eqz p1, :cond_0

    .line 1026
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1027
    return-object p0

    .line 1025
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addPathSegments(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    .locals 2
    .param p1, "pathSegments"    # Ljava/lang/String;

    .line 1035
    if-eqz p1, :cond_0

    .line 1036
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;Z)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;

    move-result-object v0

    return-object v0

    .line 1035
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pathSegments == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1129
    if-eqz p1, :cond_2

    .line 1130
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1131
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const-string v2, " \"\'<>#&="

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 1132
    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/maya/open/http/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    .line 1131
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1133
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz p2, :cond_1

    const-string v2, " \"\'<>#&="

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 1134
    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lcom/maya/open/http/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1133
    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1136
    return-object p0

    .line 1129
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Lcom/maya/open/http/okhttp3/HttpUrl;
    .locals 2

    .line 1234
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1235
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1236
    new-instance v0, Lcom/maya/open/http/okhttp3/HttpUrl;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okhttp3/HttpUrl;-><init>(Lcom/maya/open/http/okhttp3/HttpUrl$Builder;)V

    return-object v0

    .line 1235
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1234
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method effectivePort()I
    .locals 2

    .line 1021
    iget v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->port:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->port:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v0}, Lcom/maya/open/http/okhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public encodedFragment(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    .locals 6
    .param p1, "encodedFragment"    # Ljava/lang/String;

    .line 1201
    if-eqz p1, :cond_0

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1202
    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/maya/open/http/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1204
    return-object p0
.end method

.method public encodedPassword(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    .locals 6
    .param p1, "encodedPassword"    # Ljava/lang/String;

    .line 996
    if-eqz p1, :cond_0

    .line 997
    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/maya/open/http/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 999
    return-object p0

    .line 996
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPassword == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodedPath(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    .locals 3
    .param p1, "encodedPath"    # Ljava/lang/String;

    .line 1103
    if-eqz p1, :cond_1

    .line 1104
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    .line 1108
    return-object p0

    .line 1105
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected encodedPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1103
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPath == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodedQuery(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    .locals 6
    .param p1, "encodedQuery"    # Ljava/lang/String;

    .line 1120
    if-eqz p1, :cond_0

    const-string v1, " \"\'<>#"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 1122
    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/maya/open/http/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1121
    invoke-static {v0}, Lcom/maya/open/http/okhttp3/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1124
    return-object p0
.end method

.method public encodedUsername(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    .locals 6
    .param p1, "encodedUsername"    # Ljava/lang/String;

    .line 983
    if-eqz p1, :cond_0

    .line 984
    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/maya/open/http/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 986
    return-object p0

    .line 983
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedUsername == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fragment(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    .locals 6
    .param p1, "fragment"    # Ljava/lang/String;

    .line 1194
    if-eqz p1, :cond_0

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1195
    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/maya/open/http/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1197
    return-object p0
.end method

.method public host(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    .locals 4
    .param p1, "host"    # Ljava/lang/String;

    .line 1007
    if-eqz p1, :cond_1

    .line 1008
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 1009
    .local v0, "encoded":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1010
    iput-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1011
    return-object p0

    .line 1009
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1007
    .end local v0    # "encoded":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method parse(Lcom/maya/open/http/okhttp3/HttpUrl;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder$ParseResult;
    .locals 23
    .param p1, "base"    # Lcom/maya/open/http/okhttp3/HttpUrl;
    .param p2, "input"    # Ljava/lang/String;

    .line 1292
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v10, v3, v2}, Lcom/maya/open/http/okhttp3/internal/Util;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v8

    .line 1293
    .local v8, "pos":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v10, v8, v2}, Lcom/maya/open/http/okhttp3/internal/Util;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v11

    .line 1296
    .local v11, "limit":I
    invoke-static {v10, v8, v11}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->schemeDelimiterOffset(Ljava/lang/String;II)I

    move-result v12

    .line 1297
    .local v12, "schemeDelimiterOffset":I
    const/4 v13, -0x1

    if-eq v12, v13, :cond_2

    .line 1298
    const/4 v3, 0x1

    const-string v5, "https:"

    const/4 v6, 0x0

    const/4 v7, 0x6

    move-object/from16 v2, p2

    move v4, v8

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1299
    const-string v2, "https"

    iput-object v2, v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 1300
    const-string v2, "https:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v8, v2

    goto :goto_0

    .line 1301
    :cond_0
    const/4 v3, 0x1

    const-string v5, "http:"

    const/4 v6, 0x0

    const/4 v7, 0x5

    move-object/from16 v2, p2

    move v4, v8

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1302
    const-string v2, "http"

    iput-object v2, v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 1303
    const-string v2, "http:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v8, v2

    goto :goto_0

    .line 1305
    :cond_1
    sget-object v2, Lcom/maya/open/http/okhttp3/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lcom/maya/open/http/okhttp3/HttpUrl$Builder$ParseResult;

    return-object v2

    .line 1307
    :cond_2
    if-eqz v1, :cond_11

    .line 1308
    iget-object v2, v1, Lcom/maya/open/http/okhttp3/HttpUrl;->scheme:Ljava/lang/String;

    iput-object v2, v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 1314
    :goto_0
    const/4 v2, 0x0

    .line 1315
    .local v2, "hasUsername":Z
    const/4 v3, 0x0

    .line 1316
    .local v3, "hasPassword":Z
    invoke-static {v10, v8, v11}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->slashCount(Ljava/lang/String;II)I

    move-result v14

    .line 1317
    .local v14, "slashCount":I
    const/4 v4, 0x2

    const/16 v15, 0x23

    if-ge v14, v4, :cond_6

    if-eqz v1, :cond_6

    iget-object v4, v1, Lcom/maya/open/http/okhttp3/HttpUrl;->scheme:Ljava/lang/String;

    iget-object v5, v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 1380
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/maya/open/http/okhttp3/HttpUrl;->encodedUsername()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 1381
    invoke-virtual/range {p1 .. p1}, Lcom/maya/open/http/okhttp3/HttpUrl;->encodedPassword()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1382
    iget-object v4, v1, Lcom/maya/open/http/okhttp3/HttpUrl;->host:Ljava/lang/String;

    iput-object v4, v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1383
    iget v4, v1, Lcom/maya/open/http/okhttp3/HttpUrl;->port:I

    iput v4, v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->port:I

    .line 1384
    iget-object v4, v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1385
    iget-object v4, v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/maya/open/http/okhttp3/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1386
    if-eq v8, v11, :cond_4

    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v15, :cond_5

    .line 1387
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/maya/open/http/okhttp3/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedQuery(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;

    .line 1392
    :cond_5
    move/from16 v17, v2

    move/from16 v16, v3

    goto/16 :goto_8

    .line 1327
    :cond_6
    :goto_1
    add-int/2addr v8, v14

    .line 1330
    move/from16 v17, v2

    move/from16 v16, v3

    move v9, v8

    .end local v2    # "hasUsername":Z
    .end local v3    # "hasPassword":Z
    .end local v8    # "pos":I
    .local v9, "pos":I
    .local v16, "hasPassword":Z
    .local v17, "hasUsername":Z
    :goto_2
    const-string v2, "@/\\?#"

    invoke-static {v10, v9, v11, v2}, Lcom/maya/open/http/okhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v8

    .line 1331
    .local v8, "componentDelimiterOffset":I
    if-eq v8, v11, :cond_7

    .line 1332
    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_3

    :cond_7
    const/4 v2, -0x1

    :goto_3
    move v7, v2

    .line 1334
    .local v7, "c":I
    if-eq v7, v13, :cond_b

    if-eq v7, v15, :cond_b

    const/16 v2, 0x2f

    if-eq v7, v2, :cond_b

    const/16 v2, 0x5c

    if-eq v7, v2, :cond_b

    packed-switch v7, :pswitch_data_0

    .end local v7    # "c":I
    .end local v8    # "componentDelimiterOffset":I
    goto/16 :goto_7

    .line 1337
    .restart local v7    # "c":I
    .restart local v8    # "componentDelimiterOffset":I
    :pswitch_0
    if-nez v16, :cond_a

    .line 1338
    const/16 v2, 0x3a

    invoke-static {v10, v9, v8, v2}, Lcom/maya/open/http/okhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v6

    .line 1340
    .local v6, "passwordColonOffset":I
    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v2, p2

    move v3, v9

    move v4, v6

    move v15, v6

    .end local v6    # "passwordColonOffset":I
    .local v15, "passwordColonOffset":I
    move/from16 v6, v18

    move/from16 v18, v7

    .end local v7    # "c":I
    .local v18, "c":I
    move/from16 v7, v19

    move v13, v8

    .end local v8    # "componentDelimiterOffset":I
    .local v13, "componentDelimiterOffset":I
    move/from16 v8, v20

    move/from16 v22, v9

    .end local v9    # "pos":I
    .local v22, "pos":I
    move/from16 v9, v21

    invoke-static/range {v2 .. v9}, Lcom/maya/open/http/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v9

    .line 1342
    .local v9, "canonicalUsername":Ljava/lang/String;
    if-eqz v17, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%40"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_8
    move-object v2, v9

    :goto_4
    iput-object v2, v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 1345
    if-eq v15, v13, :cond_9

    .line 1346
    const/16 v16, 0x1

    .line 1347
    add-int/lit8 v3, v15, 0x1

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v19, 0x1

    move-object/from16 v2, p2

    move v4, v13

    move-object/from16 v20, v9

    .end local v9    # "canonicalUsername":Ljava/lang/String;
    .local v20, "canonicalUsername":Ljava/lang/String;
    move/from16 v9, v19

    invoke-static/range {v2 .. v9}, Lcom/maya/open/http/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    goto :goto_5

    .line 1350
    .end local v20    # "canonicalUsername":Ljava/lang/String;
    .restart local v9    # "canonicalUsername":Ljava/lang/String;
    :cond_9
    move-object/from16 v20, v9

    .end local v9    # "canonicalUsername":Ljava/lang/String;
    .restart local v20    # "canonicalUsername":Ljava/lang/String;
    :goto_5
    const/16 v17, 0x1

    .line 1351
    .end local v15    # "passwordColonOffset":I
    .end local v20    # "canonicalUsername":Ljava/lang/String;
    goto :goto_6

    .line 1352
    .end local v13    # "componentDelimiterOffset":I
    .end local v18    # "c":I
    .end local v22    # "pos":I
    .restart local v7    # "c":I
    .restart local v8    # "componentDelimiterOffset":I
    .local v9, "pos":I
    :cond_a
    move/from16 v18, v7

    move v13, v8

    move/from16 v22, v9

    .end local v7    # "c":I
    .end local v8    # "componentDelimiterOffset":I
    .end local v9    # "pos":I
    .restart local v13    # "componentDelimiterOffset":I
    .restart local v18    # "c":I
    .restart local v22    # "pos":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%40"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v2, p2

    move/from16 v3, v22

    move v4, v13

    invoke-static/range {v2 .. v9}, Lcom/maya/open/http/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1355
    :goto_6
    add-int/lit8 v9, v13, 0x1

    .line 1356
    .end local v22    # "pos":I
    .restart local v9    # "pos":I
    nop

    .line 1377
    .end local v13    # "componentDelimiterOffset":I
    .end local v18    # "c":I
    :goto_7
    nop

    .line 1330
    const/4 v13, -0x1

    const/16 v15, 0x23

    goto/16 :goto_2

    .line 1364
    .restart local v7    # "c":I
    .restart local v8    # "componentDelimiterOffset":I
    :cond_b
    :pswitch_1
    move/from16 v18, v7

    move v13, v8

    move/from16 v22, v9

    .end local v7    # "c":I
    .end local v8    # "componentDelimiterOffset":I
    .end local v9    # "pos":I
    .restart local v13    # "componentDelimiterOffset":I
    .restart local v18    # "c":I
    .restart local v22    # "pos":I
    move/from16 v8, v22

    .end local v22    # "pos":I
    .local v8, "pos":I
    invoke-static {v10, v8, v13}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->portColonOffset(Ljava/lang/String;II)I

    move-result v2

    .line 1365
    .local v2, "portColonOffset":I
    add-int/lit8 v3, v2, 0x1

    if-ge v3, v13, :cond_c

    .line 1366
    invoke-static {v10, v8, v2}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1367
    add-int/lit8 v3, v2, 0x1

    invoke-static {v10, v3, v13}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->parsePort(Ljava/lang/String;II)I

    move-result v3

    iput v3, v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->port:I

    .line 1368
    iget v3, v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->port:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_d

    sget-object v3, Lcom/maya/open/http/okhttp3/HttpUrl$Builder$ParseResult;->INVALID_PORT:Lcom/maya/open/http/okhttp3/HttpUrl$Builder$ParseResult;

    return-object v3

    .line 1370
    :cond_c
    invoke-static {v10, v8, v2}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1371
    iget-object v3, v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v3}, Lcom/maya/open/http/okhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->port:I

    .line 1373
    :cond_d
    iget-object v3, v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    if-nez v3, :cond_e

    sget-object v3, Lcom/maya/open/http/okhttp3/HttpUrl$Builder$ParseResult;->INVALID_HOST:Lcom/maya/open/http/okhttp3/HttpUrl$Builder$ParseResult;

    return-object v3

    .line 1374
    :cond_e
    move v8, v13

    .line 1375
    nop

    .line 1392
    .end local v2    # "portColonOffset":I
    .end local v13    # "componentDelimiterOffset":I
    .end local v18    # "c":I
    :goto_8
    const-string v2, "?#"

    invoke-static {v10, v8, v11, v2}, Lcom/maya/open/http/okhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v13

    .line 1393
    .local v13, "pathDelimiterOffset":I
    invoke-direct {v0, v10, v8, v13}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    .line 1394
    move v15, v13

    .line 1397
    .end local v8    # "pos":I
    .local v15, "pos":I
    if-ge v15, v11, :cond_f

    invoke-virtual {v10, v15}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_f

    .line 1398
    const/16 v2, 0x23

    invoke-static {v10, v15, v11, v2}, Lcom/maya/open/http/okhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v18

    .line 1399
    .local v18, "queryDelimiterOffset":I
    add-int/lit8 v3, v15, 0x1

    const-string v5, " \"\'<>#"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v2, p2

    move/from16 v4, v18

    invoke-static/range {v2 .. v9}, Lcom/maya/open/http/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/maya/open/http/okhttp3/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1401
    move/from16 v15, v18

    .line 1405
    .end local v18    # "queryDelimiterOffset":I
    :cond_f
    if-ge v15, v11, :cond_10

    invoke-virtual {v10, v15}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_10

    .line 1406
    add-int/lit8 v3, v15, 0x1

    const-string v5, ""

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p2

    move v4, v11

    invoke-static/range {v2 .. v9}, Lcom/maya/open/http/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1410
    :cond_10
    sget-object v2, Lcom/maya/open/http/okhttp3/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/maya/open/http/okhttp3/HttpUrl$Builder$ParseResult;

    return-object v2

    .line 1310
    .end local v13    # "pathDelimiterOffset":I
    .end local v14    # "slashCount":I
    .end local v15    # "pos":I
    .end local v16    # "hasPassword":Z
    .end local v17    # "hasUsername":Z
    .restart local v8    # "pos":I
    :cond_11
    sget-object v2, Lcom/maya/open/http/okhttp3/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Lcom/maya/open/http/okhttp3/HttpUrl$Builder$ParseResult;

    return-object v2

    :pswitch_data_0
    .packed-switch 0x3f
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public password(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    .locals 6
    .param p1, "password"    # Ljava/lang/String;

    .line 990
    if-eqz p1, :cond_0

    .line 991
    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/maya/open/http/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 992
    return-object p0

    .line 990
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "password == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public port(I)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    .locals 3
    .param p1, "port"    # I

    .line 1015
    if-lez p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 1016
    iput p1, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->port:I

    .line 1017
    return-object p0

    .line 1015
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public query(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    .locals 6
    .param p1, "query"    # Ljava/lang/String;

    .line 1112
    if-eqz p1, :cond_0

    const-string v1, " \"\'<>#"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 1113
    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/maya/open/http/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/http/okhttp3/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1116
    return-object p0
.end method

.method reencodeForUri()Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    .locals 10

    .line 1212
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1213
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1214
    .local v2, "pathSegment":Ljava/lang/String;
    iget-object v9, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v4, "[]"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1215
    move-object v3, v2

    invoke-static/range {v3 .. v8}, Lcom/maya/open/http/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    .line 1214
    invoke-interface {v9, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1212
    .end local v2    # "pathSegment":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1217
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1218
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .restart local v1    # "size":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1219
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1220
    .local v2, "component":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1221
    iget-object v9, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const-string v4, "\\^`{|}"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 1222
    move-object v3, v2

    invoke-static/range {v3 .. v8}, Lcom/maya/open/http/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    .line 1221
    invoke-interface {v9, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1218
    .end local v2    # "component":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1226
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1227
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    const-string v2, " \"#<>\\^`{|}"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/maya/open/http/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1230
    :cond_3
    return-object p0
.end method

.method public removeAllEncodedQueryParameters(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    .locals 7
    .param p1, "encodedName"    # Ljava/lang/String;

    .line 1173
    if-eqz p1, :cond_1

    .line 1174
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    return-object p0

    .line 1175
    :cond_0
    const-string v2, " \"\'<>#&="

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 1176
    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/maya/open/http/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1175
    invoke-direct {p0, v0}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    .line 1177
    return-object p0

    .line 1173
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAllQueryParameters(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .line 1164
    if-eqz p1, :cond_1

    .line 1165
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    return-object p0

    .line 1166
    :cond_0
    const-string v2, " \"\'<>#&="

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/maya/open/http/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1168
    .local v0, "nameToRemove":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    .line 1169
    return-object p0

    .line 1164
    .end local v0    # "nameToRemove":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removePathSegment(I)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    .locals 2
    .param p1, "index"    # I

    .line 1095
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1096
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1099
    :cond_0
    return-object p0
.end method

.method public scheme(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    .locals 3
    .param p1, "scheme"    # Ljava/lang/String;

    .line 964
    if-eqz p1, :cond_2

    .line 966
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    const-string v0, "http"

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    goto :goto_0

    .line 968
    :cond_0
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 969
    const-string v0, "https"

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 973
    :goto_0
    return-object p0

    .line 971
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 965
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEncodedPathSegment(ILjava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    .locals 8
    .param p1, "index"    # I
    .param p2, "encodedPathSegment"    # Ljava/lang/String;

    .line 1082
    if-eqz p2, :cond_1

    .line 1085
    const/4 v1, 0x0

    .line 1086
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, " \"<>^`{}|/\\?#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1085
    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lcom/maya/open/http/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1087
    .local v0, "canonicalPathSegment":Ljava/lang/String;
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1088
    invoke-direct {p0, v0}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1091
    return-object p0

    .line 1089
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected path segment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1083
    .end local v0    # "canonicalPathSegment":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    .locals 0
    .param p1, "encodedName"    # Ljava/lang/String;
    .param p2, "encodedValue"    # Ljava/lang/String;

    .line 1158
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->removeAllEncodedQueryParameters(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;

    .line 1159
    invoke-virtual {p0, p1, p2}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;

    .line 1160
    return-object p0
.end method

.method public setPathSegment(ILjava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    .locals 8
    .param p1, "index"    # I
    .param p2, "pathSegment"    # Ljava/lang/String;

    .line 1071
    if-eqz p2, :cond_1

    .line 1072
    const/4 v1, 0x0

    .line 1073
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, " \"<>^`{}|/\\?#"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1072
    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lcom/maya/open/http/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1074
    .local v0, "canonicalPathSegment":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1077
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1078
    return-object p0

    .line 1075
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected path segment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1071
    .end local v0    # "canonicalPathSegment":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1152
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->removeAllQueryParameters(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;

    .line 1153
    invoke-virtual {p0, p1, p2}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;

    .line 1154
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1241
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/16 v2, 0x3a

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1245
    :cond_0
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1247
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1248
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    :cond_1
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1253
    :cond_2
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    .line 1255
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1256
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1259
    :cond_3
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    :goto_0
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->effectivePort()I

    move-result v1

    .line 1263
    .local v1, "effectivePort":I
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v3}, Lcom/maya/open/http/okhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_4

    .line 1264
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1268
    :cond_4
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/maya/open/http/okhttp3/HttpUrl;->pathSegmentsToString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1270
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 1271
    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1272
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/maya/open/http/okhttp3/HttpUrl;->namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1275
    :cond_5
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 1276
    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1277
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public username(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl$Builder;
    .locals 6
    .param p1, "username"    # Ljava/lang/String;

    .line 977
    if-eqz p1, :cond_0

    .line 978
    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/maya/open/http/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 979
    return-object p0

    .line 977
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "username == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
