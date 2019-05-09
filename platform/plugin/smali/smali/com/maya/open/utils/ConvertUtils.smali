.class public final Lcom/maya/open/utils/ConvertUtils;
.super Ljava/lang/Object;
.source "ConvertUtils.java"


# static fields
.field public static final BYTE:I = 0x1

.field public static final DAY:I = 0x5265c00

.field public static final GB:I = 0x40000000

.field public static final HOUR:I = 0x36ee80

.field public static final KB:I = 0x400

.field public static final MB:I = 0x100000

.field public static final MIN:I = 0xea60

.field public static final MSEC:I = 0x1

.field public static final SEC:I = 0x3e8

.field private static final hexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/maya/open/utils/ConvertUtils;->hexDigits:[C

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

.method private constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static bitmap2Bytes(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;

    .line 505
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 506
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 507
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x64

    invoke-virtual {p0, p1, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 508
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static bitmap2Drawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 539
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    return-object v0
.end method

.method public static bits2Bytes(Ljava/lang/String;)[B
    .locals 9
    .param p0, "bits"    # Ljava/lang/String;

    .line 321
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    rem-int/2addr v0, v1

    .line 322
    .local v0, "lenMod":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v2, v1

    .line 324
    .local v2, "byteLen":I
    if-eqz v0, :cond_1

    .line 325
    move-object v3, p0

    move p0, v0

    .local v3, "bits":Ljava/lang/String;
    .local p0, "i":I
    :goto_0
    if-ge p0, v1, :cond_0

    .line 326
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 325
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 328
    .end local p0    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 330
    move-object p0, v3

    .end local v3    # "bits":Ljava/lang/String;
    .local p0, "bits":Ljava/lang/String;
    :cond_1
    new-array v3, v2, [B

    .line 331
    .local v3, "bytes":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_3

    .line 332
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v1, :cond_2

    .line 333
    aget-byte v7, v3, v5

    shl-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    aput-byte v7, v3, v5

    .line 334
    aget-byte v7, v3, v5

    mul-int/lit8 v8, v5, 0x8

    add-int/2addr v8, v6

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x30

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v3, v5

    .line 332
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 331
    .end local v6    # "j":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 337
    .end local v5    # "i":I
    :cond_3
    return-object v3
.end method

.method public static byte2FitMemorySize(J)Ljava/lang/String;
    .locals 9
    .param p0, "byteNum"    # J
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 216
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    .line 217
    const-string v0, "shouldn\'t be less than zero!"

    return-object v0

    .line 218
    :cond_0
    const-wide/16 v0, 0x400

    cmp-long v2, p0, v0

    const-wide v0, 0x3f40624dd2f1a9fcL    # 5.0E-4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_1

    .line 219
    const-string v2, "%.3fB"

    new-array v4, v4, [Ljava/lang/Object;

    long-to-double v5, p0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 220
    :cond_1
    const-wide/32 v5, 0x100000

    cmp-long v2, p0, v5

    if-gez v2, :cond_2

    .line 221
    const-string v2, "%.3fKB"

    new-array v4, v4, [Ljava/lang/Object;

    long-to-double v5, p0

    const-wide/high16 v7, 0x4090000000000000L    # 1024.0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    add-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 222
    :cond_2
    const-wide/32 v5, 0x40000000

    cmp-long v2, p0, v5

    if-gez v2, :cond_3

    .line 223
    const-string v2, "%.3fMB"

    new-array v4, v4, [Ljava/lang/Object;

    long-to-double v5, p0

    const-wide/high16 v7, 0x4130000000000000L    # 1048576.0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    add-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 225
    :cond_3
    const-string v2, "%.3fGB"

    new-array v4, v4, [Ljava/lang/Object;

    long-to-double v5, p0

    const-wide/high16 v7, 0x41d0000000000000L    # 1.073741824E9

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    add-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static byte2MemorySize(JI)D
    .locals 4
    .param p0, "byteNum"    # J
    .param p2, "unit"    # I

    .line 203
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0

    .line 204
    :cond_0
    long-to-double v0, p0

    int-to-double v2, p2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static bytes2Bitmap([B)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "bytes"    # [B

    .line 518
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public static bytes2Bits([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-byte v3, p0, v2

    .line 307
    .local v3, "aByte":B
    const/4 v4, 0x7

    .local v4, "j":I
    :goto_1
    if-ltz v4, :cond_1

    .line 308
    shr-int v5, v3, v4

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    const/16 v5, 0x30

    goto :goto_2

    :cond_0
    const/16 v5, 0x31

    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 307
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 306
    .end local v3    # "aByte":B
    .end local v4    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 311
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static bytes2Chars([B)[C
    .locals 4
    .param p0, "bytes"    # [B

    .line 161
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 162
    :cond_0
    array-length v1, p0

    .line 163
    .local v1, "len":I
    if-gtz v1, :cond_1

    return-object v0

    .line 164
    :cond_1
    new-array v0, v1, [C

    .line 165
    .local v0, "chars":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 166
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v0, v2

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method public static bytes2Drawable(Landroid/content/res/Resources;[B)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "bytes"    # [B

    .line 561
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/maya/open/utils/ConvertUtils;->bytes2Bitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/maya/open/utils/ConvertUtils;->bitmap2Drawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static bytes2HexString([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .line 88
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 89
    :cond_0
    array-length v1, p0

    .line 90
    .local v1, "len":I
    if-gtz v1, :cond_1

    return-object v0

    .line 91
    :cond_1
    shl-int/lit8 v0, v1, 0x1

    new-array v0, v0, [C

    .line 92
    .local v0, "ret":[C
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 93
    add-int/lit8 v4, v3, 0x1

    .local v4, "j":I
    sget-object v5, Lcom/maya/open/utils/ConvertUtils;->hexDigits:[C

    aget-byte v6, p0, v2

    ushr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v0, v3

    .line 94
    .end local v3    # "j":I
    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "j":I
    sget-object v5, Lcom/maya/open/utils/ConvertUtils;->hexDigits:[C

    aget-byte v6, p0, v2

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v0, v4

    .line 92
    .end local v4    # "j":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static bytes2InputStream([B)Ljava/io/InputStream;
    .locals 1
    .param p0, "bytes"    # [B

    .line 393
    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 394
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    .line 393
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static bytes2OutputStream([B)Ljava/io/OutputStream;
    .locals 5
    .param p0, "bytes"    # [B

    .line 415
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_1

    .line 416
    :cond_0
    move-object v1, v0

    .line 418
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v1, v4

    .line 419
    invoke-virtual {v1, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    nop

    .line 425
    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/maya/open/utils/ConvertUtils;->closeIO([Ljava/io/Closeable;)V

    .line 420
    return-object v1

    .line 425
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 421
    :catch_0
    move-exception v4

    .line 422
    .local v4, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    nop

    .line 425
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v1, v3, v2

    invoke-static {v3}, Lcom/maya/open/utils/ConvertUtils;->closeIO([Ljava/io/Closeable;)V

    .line 423
    return-object v0

    .line 425
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v1, v3, v2

    invoke-static {v3}, Lcom/maya/open/utils/ConvertUtils;->closeIO([Ljava/io/Closeable;)V

    .line 426
    throw v0

    .line 415
    .end local v1    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static chars2Bytes([C)[B
    .locals 4
    .param p0, "chars"    # [C

    .line 145
    if-eqz p0, :cond_2

    array-length v0, p0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 146
    :cond_0
    array-length v0, p0

    .line 147
    .local v0, "len":I
    new-array v1, v0, [B

    .line 148
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 149
    aget-char v3, p0, v2

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 145
    .end local v0    # "len":I
    .end local v1    # "bytes":[B
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static varargs closeIO([Ljava/io/Closeable;)V
    .locals 4
    .param p0, "closeables"    # [Ljava/io/Closeable;

    .line 650
    if-nez p0, :cond_0

    return-void

    .line 651
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 652
    .local v2, "closeable":Ljava/io/Closeable;
    if-eqz v2, :cond_1

    .line 654
    :try_start_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    goto :goto_1

    .line 655
    :catch_0
    move-exception v3

    .line 656
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 651
    .end local v2    # "closeable":Ljava/io/Closeable;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 660
    :cond_2
    return-void
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .line 591
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 592
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 528
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static drawable2Bytes(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$CompressFormat;)[B
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;

    .line 550
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/maya/open/utils/ConvertUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/maya/open/utils/ConvertUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static hex2Dec(C)I
    .locals 1
    .param p0, "hexChar"    # C

    .line 129
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 130
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 131
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 132
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 134
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static hexString2Bytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "hexString"    # Ljava/lang/String;

    .line 108
    invoke-static {p0}, Lcom/maya/open/utils/ConvertUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 109
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 110
    .local v0, "len":I
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 112
    add-int/lit8 v0, v0, 0x1

    .line 114
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 115
    .local v1, "hexBytes":[C
    shr-int/lit8 v2, v0, 0x1

    new-array v2, v2, [B

    .line 116
    .local v2, "ret":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 117
    shr-int/lit8 v4, v3, 0x1

    aget-char v5, v1, v3

    invoke-static {v5}, Lcom/maya/open/utils/ConvertUtils;->hex2Dec(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v3, 0x1

    aget-char v6, v1, v6

    invoke-static {v6}, Lcom/maya/open/utils/ConvertUtils;->hex2Dec(C)I

    move-result v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 116
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 119
    .end local v3    # "i":I
    :cond_2
    return-object v2
.end method

.method public static input2OutputStream(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;

    .line 347
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 349
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 350
    .local v3, "os":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    new-array v5, v4, [B

    .line 352
    .local v5, "b":[B
    :goto_0
    invoke-virtual {p0, v5, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    move v7, v6

    .local v7, "len":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    .line 353
    invoke-virtual {v3, v5, v2, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 355
    :cond_1
    nop

    .line 360
    new-array v0, v1, [Ljava/io/Closeable;

    aput-object p0, v0, v2

    invoke-static {v0}, Lcom/maya/open/utils/ConvertUtils;->closeIO([Ljava/io/Closeable;)V

    .line 355
    return-object v3

    .line 360
    .end local v3    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "b":[B
    .end local v7    # "len":I
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 356
    :catch_0
    move-exception v3

    .line 357
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    nop

    .line 360
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object p0, v1, v2

    invoke-static {v1}, Lcom/maya/open/utils/ConvertUtils;->closeIO([Ljava/io/Closeable;)V

    .line 358
    return-object v0

    .line 360
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object p0, v1, v2

    invoke-static {v1}, Lcom/maya/open/utils/ConvertUtils;->closeIO([Ljava/io/Closeable;)V

    .line 361
    throw v0
.end method

.method public static inputStream2Bytes(Ljava/io/InputStream;)[B
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;

    .line 382
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 383
    :cond_0
    invoke-static {p0}, Lcom/maya/open/utils/ConvertUtils;->input2OutputStream(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static inputStream2String(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "charsetName"    # Ljava/lang/String;

    .line 437
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/maya/open/utils/ConvertUtils;->isSpace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 439
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lcom/maya/open/utils/ConvertUtils;->inputStream2Bytes(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 440
    :catch_0
    move-exception v1

    .line 441
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 442
    return-object v0

    .line 437
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static isSpace(Ljava/lang/String;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 635
    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 636
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 637
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 638
    const/4 v0, 0x0

    return v0

    .line 636
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 641
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_2
    return v0
.end method

.method public static memorySize2Byte(JI)J
    .locals 3
    .param p0, "memorySize"    # J
    .param p2, "unit"    # I

    .line 185
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 186
    :cond_0
    int-to-long v0, p2

    mul-long v0, v0, p0

    return-wide v0
.end method

.method public static millis2FitTimeSpan(JI)Ljava/lang/String;
    .locals 8
    .param p0, "millis"    # J
    .param p2, "precision"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 283
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_3

    if-gtz p2, :cond_0

    goto :goto_1

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "\u5929"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "\u5c0f\u65f6"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v5, "\u5206\u949f"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string v5, "\u79d2"

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-string v5, "\u6beb\u79d2"

    aput-object v5, v2, v3

    .line 286
    .local v2, "units":[Ljava/lang/String;
    new-array v3, v1, [I

    fill-array-data v3, :array_0

    .line 287
    .local v3, "unitLen":[I
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 288
    nop

    .local v4, "i":I
    :goto_0
    move v1, v4

    .end local v4    # "i":I
    .local v1, "i":I
    if-ge v1, p2, :cond_2

    .line 289
    aget v4, v3, v1

    int-to-long v4, v4

    cmp-long v6, p0, v4

    if-ltz v6, :cond_1

    .line 290
    aget v4, v3, v1

    int-to-long v4, v4

    div-long v4, p0, v4

    .line 291
    .local v4, "mode":J
    aget v6, v3, v1

    int-to-long v6, v6

    mul-long v6, v6, v4

    sub-long/2addr p0, v6

    .line 292
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    aget-object v6, v2, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .end local v4    # "mode":J
    :cond_1
    add-int/lit8 v4, v1, 0x1

    goto :goto_0

    .line 295
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 283
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "units":[Ljava/lang/String;
    .end local v3    # "unitLen":[I
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x5265c00
        0x36ee80
        0xea60
        0x3e8
        0x1
    .end array-data
.end method

.method public static millis2TimeSpan(JI)J
    .locals 2
    .param p0, "millis"    # J
    .param p2, "unit"    # I

    .line 262
    int-to-long v0, p2

    div-long v0, p0, v0

    return-wide v0
.end method

.method public static outputStream2Bytes(Ljava/io/OutputStream;)[B
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;

    .line 404
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 405
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static outputStream2String(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "charsetName"    # Ljava/lang/String;

    .line 471
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/maya/open/utils/ConvertUtils;->isSpace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 473
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lcom/maya/open/utils/ConvertUtils;->outputStream2Bytes(Ljava/io/OutputStream;)[B

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 474
    :catch_0
    move-exception v1

    .line 475
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 476
    return-object v0

    .line 471
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static px2dp(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pxValue"    # F

    .line 602
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 603
    .local v0, "scale":F
    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static px2sp(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pxValue"    # F

    .line 624
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 625
    .local v0, "fontScale":F
    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static sp2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spValue"    # F

    .line 613
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 614
    .local v0, "fontScale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static string2InputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "charsetName"    # Ljava/lang/String;

    .line 454
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/maya/open/utils/ConvertUtils;->isSpace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 456
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 457
    :catch_0
    move-exception v1

    .line 458
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 459
    return-object v0

    .line 454
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static string2OutputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "charsetName"    # Ljava/lang/String;

    .line 488
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/maya/open/utils/ConvertUtils;->isSpace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 490
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/maya/open/utils/ConvertUtils;->bytes2OutputStream([B)Ljava/io/OutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 491
    :catch_0
    move-exception v1

    .line 492
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 493
    return-object v0

    .line 488
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static timeSpan2Millis(JI)J
    .locals 2
    .param p0, "timeSpan"    # J
    .param p2, "unit"    # I

    .line 244
    int-to-long v0, p2

    mul-long v0, v0, p0

    return-wide v0
.end method

.method public static view2Bitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .line 571
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 572
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 573
    .local v0, "ret":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 574
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 575
    .local v2, "bgDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 576
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 578
    :cond_1
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 580
    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 581
    return-object v0
.end method


# virtual methods
.method public output2InputStream(Ljava/io/OutputStream;)Ljava/io/ByteArrayInputStream;
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 371
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 372
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    move-object v1, p1

    check-cast v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method
