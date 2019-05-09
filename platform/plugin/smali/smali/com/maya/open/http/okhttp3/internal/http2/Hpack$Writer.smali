.class final Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;
.super Ljava/lang/Object;
.source "Hpack.java"


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
    .param p1, "headerTableSizeSetting"    # I
    .param p2, "useCompression"    # Z
    .param p3, "out"    # Lcom/maya/open/http/okio/Buffer;

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    const v0, 0x7fffffff

    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    .line 387
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/maya/open/http/okhttp3/internal/http2/Header;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    .line 389
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    .line 390
    const/4 v0, 0x0

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

    .line 402
    return-void
.end method

.method constructor <init>(Lcom/maya/open/http/okio/Buffer;)V
    .locals 2
    .param p1, "out"    # Lcom/maya/open/http/okio/Buffer;

    .line 394
    const/16 v0, 0x1000

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;-><init>(IZLcom/maya/open/http/okio/Buffer;)V

    .line 395
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

    .line 585
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

    .line 407
    const/4 v0, 0x0

    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->headerCount:I

    .line 408
    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    .line 409
    return-void
.end method

.method private evictToRecoverBytes(I)I
    .locals 6
    .param p1, "bytesToRecover"    # I

    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, "entriesToEvict":I
    if-lez p1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
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

    .line 420
    add-int/lit8 v0, v0, 0x1

    .line 416
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 422
    .end local v1    # "j":I
    :cond_0
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    iget v4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v0

    iget v5, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->headerCount:I

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 425
    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    .line 427
    :cond_1
    return v0
.end method

.method private insertIntoDynamicTable(Lcom/maya/open/http/okhttp3/internal/http2/Header;)V
    .locals 7
    .param p1, "entry"    # Lcom/maya/open/http/okhttp3/internal/http2/Header;

    .line 431
    iget v0, p1, Lcom/maya/open/http/okhttp3/internal/http2/Header;->hpackSize:I

    .line 434
    .local v0, "delta":I
    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    if-le v0, v1, :cond_0

    .line 435
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->clearDynamicTable()V

    .line 436
    return-void

    .line 440
    :cond_0
    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    sub-int/2addr v1, v2

    .line 441
    .local v1, "bytesToRecover":I
    invoke-direct {p0, v1}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->evictToRecoverBytes(I)I

    .line 443
    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->headerCount:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    array-length v3, v3

    if-le v2, v3, :cond_1

    .line 444
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Lcom/maya/open/http/okhttp3/internal/http2/Header;

    .line 445
    .local v2, "doubled":[Lcom/maya/open/http/okhttp3/internal/http2/Header;
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    array-length v5, v5

    iget-object v6, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    array-length v6, v6

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 446
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    .line 447
    iput-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    .line 449
    .end local v2    # "doubled":[Lcom/maya/open/http/okhttp3/internal/http2/Header;
    :cond_1
    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    .line 450
    .local v2, "index":I
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    aput-object p1, v3, v2

    .line 451
    iget v3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->headerCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->headerCount:I

    .line 452
    iget v3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    .line 453
    return-void
.end method


# virtual methods
.method setHeaderTableSizeSetting(I)V
    .locals 2
    .param p1, "headerTableSizeSetting"    # I

    .line 562
    iput p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->headerTableSizeSetting:I

    .line 563
    const/16 v0, 0x4000

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 566
    .local v0, "effectiveHeaderTableSize":I
    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    if-ne v1, v0, :cond_0

    return-void

    .line 568
    :cond_0
    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    if-ge v0, v1, :cond_1

    .line 569
    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    .line 572
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    .line 573
    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    .line 574
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->adjustDynamicTableByteCount()V

    .line 575
    return-void
.end method

.method writeByteString(Lcom/maya/open/http/okio/ByteString;)V
    .locals 5
    .param p1, "data"    # Lcom/maya/open/http/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    .local v0, "huffmanBuffer":Lcom/maya/open/http/okio/Buffer;
    invoke-static {}, Lcom/maya/open/http/okhttp3/internal/http2/Huffman;->get()Lcom/maya/open/http/okhttp3/internal/http2/Huffman;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/maya/open/http/okhttp3/internal/http2/Huffman;->encode(Lcom/maya/open/http/okio/ByteString;Lcom/maya/open/http/okio/BufferedSink;)V

    .line 552
    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->readByteString()Lcom/maya/open/http/okio/ByteString;

    move-result-object v2

    .line 553
    .local v2, "huffmanBytes":Lcom/maya/open/http/okio/ByteString;
    invoke-virtual {v2}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v3

    const/16 v4, 0x80

    invoke-virtual {p0, v3, v1, v4}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 554
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->out:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okio/Buffer;->write(Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/Buffer;

    .line 555
    .end local v0    # "huffmanBuffer":Lcom/maya/open/http/okio/Buffer;
    .end local v2    # "huffmanBytes":Lcom/maya/open/http/okio/ByteString;
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

    .line 559
    :goto_0
    return-void
.end method

.method writeHeaders(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    .local p1, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/internal/http2/Header;>;"
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

    .line 464
    const v0, 0x7fffffff

    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    .line 465
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    invoke-virtual {p0, v0, v4, v3}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 468
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_a

    .line 469
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/maya/open/http/okhttp3/internal/http2/Header;

    .line 470
    .local v3, "header":Lcom/maya/open/http/okhttp3/internal/http2/Header;
    iget-object v4, v3, Lcom/maya/open/http/okhttp3/internal/http2/Header;->name:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {v4}, Lcom/maya/open/http/okio/ByteString;->toAsciiLowercase()Lcom/maya/open/http/okio/ByteString;

    move-result-object v4

    .line 471
    .local v4, "name":Lcom/maya/open/http/okio/ByteString;
    iget-object v5, v3, Lcom/maya/open/http/okhttp3/internal/http2/Header;->value:Lcom/maya/open/http/okio/ByteString;

    .line 472
    .local v5, "value":Lcom/maya/open/http/okio/ByteString;
    const/4 v6, -0x1

    .line 473
    .local v6, "headerIndex":I
    const/4 v7, -0x1

    .line 475
    .local v7, "headerNameIndex":I
    sget-object v8, Lcom/maya/open/http/okhttp3/internal/http2/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 476
    .local v8, "staticIndex":Ljava/lang/Integer;
    const/4 v9, 0x1

    if-eqz v8, :cond_3

    .line 477
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v7, v10, 0x1

    .line 478
    if-le v7, v9, :cond_3

    const/16 v10, 0x8

    if-ge v7, v10, :cond_3

    .line 483
    sget-object v10, Lcom/maya/open/http/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    add-int/lit8 v11, v7, -0x1

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/maya/open/http/okhttp3/internal/http2/Header;->value:Lcom/maya/open/http/okio/ByteString;

    invoke-static {v10, v5}, Lcom/maya/open/http/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 484
    move v6, v7

    goto :goto_1

    .line 485
    :cond_2
    sget-object v10, Lcom/maya/open/http/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    aget-object v10, v10, v7

    iget-object v10, v10, Lcom/maya/open/http/okhttp3/internal/http2/Header;->value:Lcom/maya/open/http/okio/ByteString;

    invoke-static {v10, v5}, Lcom/maya/open/http/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 486
    add-int/lit8 v6, v7, 0x1

    .line 491
    :cond_3
    :goto_1
    const/4 v10, -0x1

    if-ne v6, v10, :cond_6

    .line 492
    iget v11, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/2addr v11, v9

    .local v11, "j":I
    iget-object v9, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    array-length v9, v9

    .local v9, "length":I
    :goto_2
    if-ge v11, v9, :cond_6

    .line 493
    iget-object v12, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    aget-object v12, v12, v11

    iget-object v12, v12, Lcom/maya/open/http/okhttp3/internal/http2/Header;->name:Lcom/maya/open/http/okio/ByteString;

    invoke-static {v12, v4}, Lcom/maya/open/http/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 494
    iget-object v12, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    aget-object v12, v12, v11

    iget-object v12, v12, Lcom/maya/open/http/okhttp3/internal/http2/Header;->value:Lcom/maya/open/http/okio/ByteString;

    invoke-static {v12, v5}, Lcom/maya/open/http/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 495
    iget v12, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    sub-int v12, v11, v12

    sget-object v13, Lcom/maya/open/http/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    array-length v13, v13

    add-int v6, v12, v13

    .line 496
    goto :goto_3

    .line 497
    :cond_4
    if-ne v7, v10, :cond_5

    .line 498
    iget v12, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    sub-int v12, v11, v12

    sget-object v13, Lcom/maya/open/http/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lcom/maya/open/http/okhttp3/internal/http2/Header;

    array-length v13, v13

    add-int v7, v12, v13

    .line 492
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 504
    .end local v9    # "length":I
    .end local v11    # "j":I
    :cond_6
    :goto_3
    if-eq v6, v10, :cond_7

    .line 506
    const/16 v9, 0x7f

    const/16 v10, 0x80

    invoke-virtual {p0, v6, v9, v10}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    goto :goto_4

    .line 507
    :cond_7
    const/16 v9, 0x40

    if-ne v7, v10, :cond_8

    .line 509
    iget-object v10, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->out:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v10, v9}, Lcom/maya/open/http/okio/Buffer;->writeByte(I)Lcom/maya/open/http/okio/Buffer;

    .line 510
    invoke-virtual {p0, v4}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->writeByteString(Lcom/maya/open/http/okio/ByteString;)V

    .line 511
    invoke-virtual {p0, v5}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->writeByteString(Lcom/maya/open/http/okio/ByteString;)V

    .line 512
    invoke-direct {p0, v3}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->insertIntoDynamicTable(Lcom/maya/open/http/okhttp3/internal/http2/Header;)V

    goto :goto_4

    .line 513
    :cond_8
    sget-object v10, Lcom/maya/open/http/okhttp3/internal/http2/Header;->PSEUDO_PREFIX:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {v4, v10}, Lcom/maya/open/http/okio/ByteString;->startsWith(Lcom/maya/open/http/okio/ByteString;)Z

    move-result v10

    if-eqz v10, :cond_9

    sget-object v10, Lcom/maya/open/http/okhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {v10, v4}, Lcom/maya/open/http/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 516
    const/16 v9, 0xf

    invoke-virtual {p0, v7, v9, v1}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 517
    invoke-virtual {p0, v5}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->writeByteString(Lcom/maya/open/http/okio/ByteString;)V

    goto :goto_4

    .line 520
    :cond_9
    const/16 v10, 0x3f

    invoke-virtual {p0, v7, v10, v9}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 521
    invoke-virtual {p0, v5}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->writeByteString(Lcom/maya/open/http/okio/ByteString;)V

    .line 522
    invoke-direct {p0, v3}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->insertIntoDynamicTable(Lcom/maya/open/http/okhttp3/internal/http2/Header;)V

    .line 468
    .end local v3    # "header":Lcom/maya/open/http/okhttp3/internal/http2/Header;
    .end local v4    # "name":Lcom/maya/open/http/okio/ByteString;
    .end local v5    # "value":Lcom/maya/open/http/okio/ByteString;
    .end local v6    # "headerIndex":I
    .end local v7    # "headerNameIndex":I
    .end local v8    # "staticIndex":Ljava/lang/Integer;
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 525
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_a
    return-void
.end method

.method writeInt(III)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "prefixMask"    # I
    .param p3, "bits"    # I

    .line 530
    if-ge p1, p2, :cond_0

    .line 531
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->out:Lcom/maya/open/http/okio/Buffer;

    or-int v1, p3, p1

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okio/Buffer;->writeByte(I)Lcom/maya/open/http/okio/Buffer;

    .line 532
    return-void

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->out:Lcom/maya/open/http/okio/Buffer;

    or-int v1, p3, p2

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okio/Buffer;->writeByte(I)Lcom/maya/open/http/okio/Buffer;

    .line 537
    sub-int/2addr p1, p2

    .line 540
    :goto_0
    const/16 v0, 0x80

    if-lt p1, v0, :cond_1

    .line 541
    and-int/lit8 v0, p1, 0x7f

    .line 542
    .local v0, "b":I
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->out:Lcom/maya/open/http/okio/Buffer;

    or-int/lit16 v2, v0, 0x80

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okio/Buffer;->writeByte(I)Lcom/maya/open/http/okio/Buffer;

    .line 543
    ushr-int/lit8 p1, p1, 0x7

    .line 544
    .end local v0    # "b":I
    goto :goto_0

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->out:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okio/Buffer;->writeByte(I)Lcom/maya/open/http/okio/Buffer;

    .line 546
    return-void
.end method
