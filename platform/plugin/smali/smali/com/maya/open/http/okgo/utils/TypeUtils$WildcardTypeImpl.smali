.class final Lcom/maya/open/http/okgo/utils/TypeUtils$WildcardTypeImpl;
.super Ljava/lang/Object;
.source "TypeUtils.java"

# interfaces
.implements Ljava/lang/reflect/WildcardType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okgo/utils/TypeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WildcardTypeImpl"
.end annotation


# instance fields
.field private final lowerBound:Ljava/lang/reflect/Type;

.field private final upperBound:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 3
    .param p1, "upperBounds"    # [Ljava/lang/reflect/Type;
    .param p2, "lowerBounds"    # [Ljava/lang/reflect/Type;

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    array-length v0, p2

    const/4 v1, 0x1

    if-gt v0, v1, :cond_5

    .line 445
    array-length v0, p1

    if-ne v0, v1, :cond_4

    .line 447
    array-length v0, p2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 448
    aget-object v0, p2, v2

    if-eqz v0, :cond_1

    .line 449
    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/maya/open/http/okgo/utils/TypeUtils;->checkNotPrimitive(Ljava/lang/reflect/Type;)V

    .line 450
    aget-object v0, p1, v2

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 451
    aget-object v0, p2, v2

    iput-object v0, p0, Lcom/maya/open/http/okgo/utils/TypeUtils$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    .line 452
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lcom/maya/open/http/okgo/utils/TypeUtils$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    goto :goto_0

    .line 450
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 448
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 454
    :cond_2
    aget-object v0, p1, v2

    if-eqz v0, :cond_3

    .line 455
    aget-object v0, p1, v2

    invoke-static {v0}, Lcom/maya/open/http/okgo/utils/TypeUtils;->checkNotPrimitive(Ljava/lang/reflect/Type;)V

    .line 456
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/maya/open/http/okgo/utils/TypeUtils$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    .line 457
    aget-object v0, p1, v2

    iput-object v0, p0, Lcom/maya/open/http/okgo/utils/TypeUtils$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    .line 459
    :goto_0
    return-void

    .line 454
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 445
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 444
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 473
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-static {p0, v0}, Lcom/maya/open/http/okgo/utils/TypeUtils;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLowerBounds()[Ljava/lang/reflect/Type;
    .locals 3

    .line 468
    iget-object v0, p0, Lcom/maya/open/http/okgo/utils/TypeUtils$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/maya/open/http/okgo/utils/TypeUtils$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    aput-object v2, v0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/maya/open/http/okgo/utils/TypeUtils;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    :goto_0
    return-object v0
.end method

.method public getUpperBounds()[Ljava/lang/reflect/Type;
    .locals 3

    .line 463
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    iget-object v1, p0, Lcom/maya/open/http/okgo/utils/TypeUtils$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/maya/open/http/okgo/utils/TypeUtils$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okgo/utils/TypeUtils$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/maya/open/http/okgo/utils/TypeUtils$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/maya/open/http/okgo/utils/TypeUtils$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "? super "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okgo/utils/TypeUtils$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/maya/open/http/okgo/utils/TypeUtils;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okgo/utils/TypeUtils$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    const-string v0, "?"

    return-object v0

    .line 486
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "? extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okgo/utils/TypeUtils$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/maya/open/http/okgo/utils/TypeUtils;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
