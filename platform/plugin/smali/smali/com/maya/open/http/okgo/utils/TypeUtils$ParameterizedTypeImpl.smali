.class final Lcom/maya/open/http/okgo/utils/TypeUtils$ParameterizedTypeImpl;
.super Ljava/lang/Object;
.source "TypeUtils.java"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okgo/utils/TypeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParameterizedTypeImpl"
.end annotation


# instance fields
.field private final ownerType:Ljava/lang/reflect/Type;

.field private final rawType:Ljava/lang/reflect/Type;

.field private final typeArguments:[Ljava/lang/reflect/Type;


# direct methods
.method public varargs constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 4
    .param p1, "ownerType"    # Ljava/lang/reflect/Type;
    .param p2, "rawType"    # Ljava/lang/reflect/Type;
    .param p3, "typeArguments"    # [Ljava/lang/reflect/Type;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    instance-of v0, p2, Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v3, p2

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ne v2, v0, :cond_2

    goto :goto_2

    .line 355
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 358
    :cond_3
    :goto_2
    iput-object p1, p0, Lcom/maya/open/http/okgo/utils/TypeUtils$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    .line 359
    iput-object p2, p0, Lcom/maya/open/http/okgo/utils/TypeUtils$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    .line 360
    invoke-virtual {p3}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    iput-object v0, p0, Lcom/maya/open/http/okgo/utils/TypeUtils$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    .line 362
    iget-object v0, p0, Lcom/maya/open/http/okgo/utils/TypeUtils$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v2, v0

    :goto_3
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 363
    .local v3, "typeArgument":Ljava/lang/reflect/Type;
    if-eqz v3, :cond_4

    .line 364
    invoke-static {v3}, Lcom/maya/open/http/okgo/utils/TypeUtils;->checkNotPrimitive(Ljava/lang/reflect/Type;)V

    .line 362
    .end local v3    # "typeArgument":Ljava/lang/reflect/Type;
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 363
    .restart local v3    # "typeArgument":Ljava/lang/reflect/Type;
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 366
    .end local v3    # "typeArgument":Ljava/lang/reflect/Type;
    :cond_5
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 385
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

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

.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/maya/open/http/okgo/utils/TypeUtils$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/maya/open/http/okgo/utils/TypeUtils$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/maya/open/http/okgo/utils/TypeUtils$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/maya/open/http/okgo/utils/TypeUtils$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/maya/open/http/okgo/utils/TypeUtils$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/maya/open/http/okgo/utils/TypeUtils$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/maya/open/http/okgo/utils/TypeUtils;->hashCodeOrZero(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okgo/utils/TypeUtils$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v1, v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 396
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/maya/open/http/okgo/utils/TypeUtils$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/maya/open/http/okgo/utils/TypeUtils;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    iget-object v1, p0, Lcom/maya/open/http/okgo/utils/TypeUtils$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v1, v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 398
    :cond_0
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okgo/utils/TypeUtils$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-static {v1}, Lcom/maya/open/http/okgo/utils/TypeUtils;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    nop

    .local v2, "i":I
    :goto_0
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    iget-object v2, p0, Lcom/maya/open/http/okgo/utils/TypeUtils$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 400
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/maya/open/http/okgo/utils/TypeUtils$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/maya/open/http/okgo/utils/TypeUtils;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    .line 402
    .end local v1    # "i":I
    :cond_1
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
