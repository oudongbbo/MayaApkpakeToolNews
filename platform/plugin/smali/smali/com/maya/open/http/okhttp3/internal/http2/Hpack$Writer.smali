.class final Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okhttp3/internal/http2/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# static fields
.field private static final SETTINGS_HEADER_TABLE_SIZE:I = 0x1000

.field private static final SETTINGS_HEADER_TABLE_SIZE_LIMIT:I = 0x4000


# instance fields
.field dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

.field dynamicTableByteCount:I

.field private emitDynamicTableSizeUpdate:Z

.field headerCount:I

.field headerTableSizeSetting:I

.field maxDynamicTableByteCount:I

.field nextHeaderIndex:I

.field private final out:Lcom/maya/open/http/okio/Buffer;

.field private smallestHeaderTableSizeSetting:I

.field private final useCompression:Z


# direct methods
.method constructor <init>(IZLcom/maya/open/http/okio/Buffer;)V
    .locals 1

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 380
    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    const/16 v0, 0x8

    .line 387
    new-array v0, v0, [Lcom/maya/open/http/okhttp3/internal/http2/Header;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    .line 389
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    const/4 v0, 0x0

    .line 390
    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->headerCount:I

    .line 391
    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    .line 398
    iput p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->headerTableSizeSetting:I

    .line 399
    iput p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    .line 400
    iput-boolean p2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->useCompression:Z

    .line 401
    iput-object p3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->out:Lcom/maya/open/http/okio/Buffer;

    return-void
.end method

.method constructor <init>(Lcom/maya/open/http/okio/Buffer;)V
    .locals 2

    const/16 v0, 0x1000

    const/4 v1, 0x1

    .line 394
    invoke-direct {p0, v0, v1, p1}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;-><init>(IZLcom/maya/open/http/okio/Buffer;)V

    return-void
.end method

.method private adjustDynamicTableByteCount()V
    .locals 2

    .line 578
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    if-ge v0, v1, :cond_1

    .line 579
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    if-nez v0, :cond_0

    .line 580
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->clearDynamicTable()V

    goto :goto_0

    .line 582
    :cond_0
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->evictToRecoverBytes(I)I

    :cond_1
    :goto_0
    return-void
.end method

.method private clearDynamicTable()V
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 406
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    const/4 v0, 0x0

    .line 407
    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->headerCount:I

    .line 408
    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    return-void
.end method

.method private evictToRecoverBytes(I)I
    .locals 5

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 417
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/maya/open/http/okhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr p1, v2

    .line 418
    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/maya/open/http/okhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    .line 419
    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->headerCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->headerCount:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 422
    :cond_0
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    iget v3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v0

    iget v4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->headerCount:I

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 425
    iget p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    :cond_1
    return v0
.end method

.method private insertIntoDynamicTable(Lcom/maya/open/http/okhttp3/internal/http2/Header;)V
    .locals 6

    .line 431
    iget v0, p1, Lcom/maya/open/http/okhttp3/internal/http2/Header;->hpackSize:I

    .line 434
    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    if-le v0, v1, :cond_0

    .line 435
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->clearDynamicTable()V

    return-void

    .line 440
    :cond_0
    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    sub-int/2addr v1, v2

    .line 441
    invoke-direct {p0, v1}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->evictToRecoverBytes(I)I

    .line 443
    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->headerCount:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 444
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lcom/maya/open/http/okhttp3/internal/http2/Header;

    .line 445
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    array-length v4, v4

    iget-object v5, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    array-length v5, v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 446
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    .line 447
    iput-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    .line 449
    :cond_1
    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    .line 450
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    aput-object p1, v2, v1

    .line 451
    iget p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->headerCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->headerCount:I

    .line 452
    iget p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    return-void
.end method


# virtual methods
.method setHeaderTableSizeSetting(I)V
    .locals 1

    .line 562
    iput p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->headerTableSizeSetting:I

    const/16 v0, 0x4000

    .line 563
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 566
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    if-ne v0, p1, :cond_0

    return-void

    .line 568
    :cond_0
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    if-ge p1, v0, :cond_1

    .line 569
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    :cond_1
    const/4 v0, 0x1

    .line 572
    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    .line 573
    iput p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    .line 574
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->adjustDynamicTableByteCount()V

    return-void
.end method

.method writeByteString(Lcom/maya/open/http/okio/ByteString;)V
    .locals 3

    .line 549
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->useCompression:Z

    const/16 v1, 0x7f

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/maya/open/http/okhttp3/internal/http2/Huffman;->get()Lcom/maya/open/http/okhttp3/internal/http2/Huffman;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okhttp3/internal/http2/Huffman;->encodedLength(Lcom/maya/open/http/okio/ByteString;)I

    move-result v0

    invoke-virtual {p1}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 550
    new-instance v0, Lcom/maya/open/http/okio/Buffer;

    invoke-direct {v0}, Lcom/maya/open/http/okio/Buffer;-><init>()V

    .line 551
    invoke-static {}, Lcom/maya/open/http/okhttp3/internal/http2/Huffman;->get()Lcom/maya/open/http/okhttp3/internal/http2/Huffman;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/maya/open/http/okhttp3/internal/http2/Huffman;->encode(Lcom/maya/open/http/okio/ByteString;Lcom/maya/open/http/okio/BufferedSink;)V

    .line 552
    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->readByteString()Lcom/maya/open/http/okio/ByteString;

    move-result-object p1

    .line 553
    invoke-virtual {p1}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v0

    const/16 v2, 0x80

    invoke-virtual {p0, v0, v1, v2}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 554
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->out:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okio/Buffer;->write(Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/Buffer;

    goto :goto_0

    .line 556
    :cond_0
    invoke-virtual {p1}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 557
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->out:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okio/Buffer;->write(Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/Buffer;

    :goto_0
    return-void
.end method

.method writeHeaders(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .line 458
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 459
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    const/16 v3, 0x20

    const/16 v4, 0x1f

    if-ge v0, v2, :cond_0

    .line 461
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    invoke-virtual {p0, v0, v4, v3}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 463
    :cond_0
    iput-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    const v0, 0x7fffffff

    .line 464
    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    .line 465
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    invoke-virtual {p0, v0, v4, v3}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 468
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_b

    .line 469
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/maya/open/http/okhttp3/internal/http2/Header;

    .line 470
    iget-object v4, v3, Lcom/maya/open/http/okhttp3/internal/http2/Header;->name:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {v4}, Lcom/maya/open/http/okio/ByteString;->toAsciiLowercase()Lcom/maya/open/http/okio/ByteString;

    move-result-object v4

    .line 471
    iget-object v5, v3, Lcom/maya/open/http/okhttp3/internal/http2/Header;->value:Lcom/maya/open/http/okio/ByteString;

    .line 475
    sget-object v6, Lcom/maya/open/http/okhttp3/internal/http2/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    .line 477
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v8

    if-le v6, v8, :cond_3

    const/16 v9, 0x8

    if-ge v6, v9, :cond_3

    .line 483
    sget-object v9, Lcom/maya/open/http/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    add-int/lit8 v10, v6, -0x1

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/maya/open/http/okhttp3/internal/http2/Header;->value:Lcom/maya/open/http/okio/ByteString;

    invoke-static {v9, v5}, Lcom/maya/open/http/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v9, v6

    goto :goto_1

    .line 485
    :cond_2
    sget-object v9, Lcom/maya/open/http/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    aget-object v9, v9, v6

    iget-object v9, v9, Lcom/maya/open/http/okhttp3/internal/http2/Header;->value:Lcom/maya/open/http/okio/ByteString;

    invoke-static {v9, v5}, Lcom/maya/open/http/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    add-int/lit8 v9, v6, 0x1

    move v12, v9

    move v9, v6

    move v6, v12

    goto :goto_1

    :cond_3
    move v9, v6

    const/4 v6, -0x1

    goto :goto_1

    :cond_4
    const/4 v6, -0x1

    const/4 v9, -0x1

    :goto_1
    if-ne v6, v7, :cond_7

    .line 492
    iget v10, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/2addr v10, v8

    iget-object v8, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    array-length v8, v8

    :goto_2
    if-ge v10, v8, :cond_7

    .line 493
    iget-object v11, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    aget-object v11, v11, v10

    iget-object v11, v11, Lcom/maya/open/http/okhttp3/internal/http2/Header;->name:Lcom/maya/open/http/okio/ByteString;

    invoke-static {v11, v4}, Lcom/maya/open/http/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 494
    iget-object v11, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    aget-object v11, v11, v10

    iget-object v11, v11, Lcom/maya/open/http/okhttp3/internal/http2/Header;->value:Lcom/maya/open/http/okio/ByteString;

    invoke-static {v11, v5}, Lcom/maya/open/http/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 495
    iget v6, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    sub-int/2addr v10, v6

    sget-object v6, Lcom/maya/open/http/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    array-length v6, v6

    add-int/2addr v6, v10

    goto :goto_3

    :cond_5
    if-ne v9, v7, :cond_6

    .line 498
    iget v9, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    sub-int v9, v10, v9

    sget-object v11, Lcom/maya/open/http/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    array-length v11, v11

    add-int/2addr v9, v11

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    if-eq v6, v7, :cond_8

    const/16 v3, 0x7f

    const/16 v4, 0x80

    .line 506
    invoke-virtual {p0, v6, v3, v4}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    goto :goto_4

    :cond_8
    const/16 v6, 0x40

    if-ne v9, v7, :cond_9

    .line 509
    iget-object v7, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->out:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v7, v6}, Lcom/maya/open/http/okio/Buffer;->writeByte(I)Lcom/maya/open/http/okio/Buffer;

    .line 510
    invoke-virtual {p0, v4}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->writeByteString(Lcom/maya/open/http/okio/ByteString;)V

    .line 511
    invoke-virtual {p0, v5}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->writeByteString(Lcom/maya/open/http/okio/ByteString;)V

    .line 512
    invoke-direct {p0, v3}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->insertIntoDynamicTable(Lcom/maya/open/http/okhttp3/internal/http2/Header;)V

    goto :goto_4

    .line 513
    :cond_9
    sget-object v7, Lcom/maya/open/http/okhttp3/internal/http2/Header;->PSEUDO_PREFIX:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {v4, v7}, Lcom/maya/open/http/okio/ByteString;->startsWith(Lcom/maya/open/http/okio/ByteString;)Z

    move-result v7

    if-eqz v7, :cond_a

    sget-object v7, Lcom/maya/open/http/okhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {v7, v4}, Lcom/maya/open/http/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const/16 v3, 0xf

    .line 516
    invoke-virtual {p0, v9, v3, v1}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 517
    invoke-virtual {p0, v5}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->writeByteString(Lcom/maya/open/http/okio/ByteString;)V

    goto :goto_4

    :cond_a
    const/16 v4, 0x3f

    .line 520
    invoke-virtual {p0, v9, v4, v6}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 521
    invoke-virtual {p0, v5}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->writeByteString(Lcom/maya/open/http/okio/ByteString;)V

    .line 522
    invoke-direct {p0, v3}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->insertIntoDynamicTable(Lcom/maya/open/http/okhttp3/internal/http2/Header;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method writeInt(III)V
    .locals 1

    if-ge p1, p2, :cond_0

    .line 531
    iget-object p2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->out:Lcom/maya/open/http/okio/Buffer;

    or-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lcom/maya/open/http/okio/Buffer;->writeByte(I)Lcom/maya/open/http/okio/Buffer;

    return-void

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->out:Lcom/maya/open/http/okio/Buffer;

    or-int/2addr p3, p2

    invoke-virtual {v0, p3}, Lcom/maya/open/http/okio/Buffer;->writeByte(I)Lcom/maya/open/http/okio/Buffer;

    sub-int/2addr p1, p2

    :goto_0
    const/16 p2, 0x80

    if-lt p1, p2, :cond_1

    and-int/lit8 p3, p1, 0x7f

    .line 542
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->out:Lcom/maya/open/http/okio/Buffer;

    or-int/2addr p2, p3

    invoke-virtual {v0, p2}, Lcom/maya/open/http/okio/Buffer;->writeByte(I)Lcom/maya/open/http/okio/Buffer;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 545
    :cond_1
    iget-object p2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->out:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {p2, p1}, Lcom/maya/open/http/okio/Buffer;->writeByte(I)Lcom/maya/open/http/okio/Buffer;

    return-void
.end method
