.class public Lcom/maya/open/utils/ReflectionUtil;
.super Ljava/lang/Object;
.source "ReflectionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTypeClass([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 4
    .param p0, "arrayObject"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 8
    const/4 v0, 0x0

    .line 9
    .local v0, "arrayOfClass":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    .line 10
    array-length v1, p0

    .line 11
    .local v1, "i":I
    new-array v0, v1, [Ljava/lang/Class;

    .line 12
    if-lez v1, :cond_0

    .line 13
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 14
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/maya/open/utils/ReflectionUtil;->rawType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v2

    .line 13
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_0
    return-object v0
.end method

.method public static invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "paramObject"    # Ljava/lang/Object;
    .param p2, "paramString"    # Ljava/lang/String;
    .param p4, "paramArrayOfObject"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 46
    .local p1, "paramClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "paramArrayOfClass":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 48
    .local v0, "localMethod":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 49
    invoke-virtual {v0, p0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .local v1, "localObject":Ljava/lang/Object;
    return-object v1

    .line 52
    .end local v0    # "localMethod":Ljava/lang/reflect/Method;
    .end local v1    # "localObject":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public static invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "paramObject"    # Ljava/lang/Object;
    .param p1, "paramString"    # Ljava/lang/String;
    .param p2, "paramArrayOfObject"    # [Ljava/lang/Object;

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 60
    invoke-static {p2}, Lcom/maya/open/utils/ReflectionUtil;->getTypeClass([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v1

    .line 59
    invoke-static {p0, v0, p1, v1, p2}, Lcom/maya/open/utils/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static rawType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 21
    .local p0, "paramClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 23
    :cond_0
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 25
    :cond_1
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 27
    :cond_2
    const-class v0, Ljava/lang/Double;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 29
    :cond_3
    const-class v0, Ljava/lang/Short;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 30
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 31
    :cond_4
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 32
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 33
    :cond_5
    const-class v0, Ljava/lang/Byte;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 34
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 35
    :cond_6
    const-class v0, Ljava/lang/Character;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 36
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 37
    :cond_7
    return-object p0
.end method
