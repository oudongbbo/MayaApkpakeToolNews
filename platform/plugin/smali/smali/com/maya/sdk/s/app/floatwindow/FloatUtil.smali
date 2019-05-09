.class public Lcom/maya/sdk/s/app/floatwindow/FloatUtil;
.super Ljava/lang/Object;
.source "FloatUtil.java"


# static fields
.field public static final HAS_AUTHOR:I = 0x1

.field private static final INPUT_METHOD_SPECIAL_MODELS:[Ljava/lang/String;

.field private static final NOT_AUTHOR:I = 0x2

.field private static final NOT_SUPPORT_AUTHOR:I = 0x3

.field public static final SPECIAL_MODELS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "FloatWinEnter"

.field private static specialVersions:[Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "MI"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "XIAOMI"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "HUAWEI"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "OPPO"

    const/4 v4, 0x3

    aput-object v1, v0, v4

    sput-object v0, Lcom/maya/sdk/s/app/floatwindow/FloatUtil;->SPECIAL_MODELS:[Ljava/lang/String;

    .line 27
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "SAMSUNG"

    aput-object v1, v0, v2

    sput-object v0, Lcom/maya/sdk/s/app/floatwindow/FloatUtil;->INPUT_METHOD_SPECIAL_MODELS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static askType(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 110
    const-string v0, "FloatWinEnter"

    const-string v1, "SharedStaticField.HOST_VISIBLE = false;"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/16 v0, 0x7d5

    .line 112
    .local v0, "winType":I
    invoke-static {}, Lcom/maya/sdk/s/app/floatwindow/FloatUtil;->isSpecialVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const/16 v0, 0x7d2

    goto :goto_1

    .line 125
    :cond_0
    invoke-static {}, Lcom/maya/sdk/s/app/floatwindow/FloatUtil;->isSpecialDevice()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/maya/sdk/s/app/floatwindow/FloatUtil;->hasAuthorFloatWin(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 126
    const/16 v0, 0x7d2

    goto :goto_0

    .line 128
    :cond_1
    invoke-static {}, Lcom/maya/sdk/s/app/floatwindow/FloatUtil;->isSpecialDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/maya/sdk/s/app/floatwindow/FloatUtil;->hasAuthorFloatWin(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 130
    const/16 v0, 0x7d5

    goto :goto_0

    .line 131
    :cond_2
    invoke-static {}, Lcom/maya/sdk/s/app/floatwindow/FloatUtil;->isInputMethodSpecialDevice()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 133
    const-string v1, "FloatWinEnter"

    const-string v2, "\u6ce8\u610f\u6d6e\u7a97\u5bf9\u8f93\u5165\u6cd5\u652f\u6301\u4e0d\u53cb\u597d"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/16 v0, 0x7d5

    .line 137
    :cond_3
    :goto_0
    const-string v1, "FloatWinEnter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u542f\u52a8"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u65b9\u5f0f\u7684\u6d6e\u7a97"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_1
    return v0
.end method

.method public static getBuildModel()Ljava/lang/String;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOSversion()I
    .locals 1

    .line 164
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method private static getSpecialDevices()[Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/maya/sdk/s/app/floatwindow/FloatUtil;->SPECIAL_MODELS:[Ljava/lang/String;

    return-object v0
.end method

.method public static hasAuthorFloatWin(Landroid/content/Context;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .line 80
    invoke-static {}, Lcom/maya/sdk/s/app/floatwindow/FloatUtil;->getOSversion()I

    move-result v0

    const/4 v1, 0x3

    const/16 v2, 0x13

    if-ge v0, v2, :cond_0

    .line 81
    return v1

    .line 84
    :cond_0
    :try_start_0
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 85
    .local v0, "appOps":Landroid/app/AppOpsManager;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 86
    .local v2, "c":Ljava/lang/Class;
    new-array v3, v1, [Ljava/lang/Class;

    .line 87
    .local v3, "cArg":[Ljava/lang/Class;
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 88
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 89
    const-class v4, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 90
    const-string v4, "checkOp"

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 91
    .local v4, "lMethod":Ljava/lang/reflect/Method;
    new-array v8, v1, [Ljava/lang/Object;

    const/16 v9, 0x18

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v7

    invoke-virtual {v4, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_1

    .line 92
    return v6

    .line 94
    :cond_1
    return v7

    .line 97
    .end local v0    # "appOps":Landroid/app/AppOpsManager;
    .end local v2    # "c":Ljava/lang/Class;
    .end local v3    # "cArg":[Ljava/lang/Class;
    .end local v4    # "lMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    return v1
.end method

.method private static isInputMethodSpecialDevice()Z
    .locals 7

    .line 144
    sget-object v0, Lcom/maya/sdk/s/app/floatwindow/FloatUtil;->INPUT_METHOD_SPECIAL_MODELS:[Ljava/lang/String;

    .line 145
    .local v0, "specials":[Ljava/lang/String;
    invoke-static {}, Lcom/maya/sdk/s/app/floatwindow/FloatUtil;->getBuildModel()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "currentDevice":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 149
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 150
    .local v5, "dev":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 151
    const/4 v2, 0x1

    return v2

    .line 149
    .end local v5    # "dev":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 154
    :cond_2
    return v3
.end method

.method public static isSpecialDevice()Z
    .locals 7

    .line 36
    invoke-static {}, Lcom/maya/sdk/s/app/floatwindow/FloatUtil;->getSpecialDevices()[Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "specialDevices":[Ljava/lang/String;
    invoke-static {}, Lcom/maya/sdk/s/app/floatwindow/FloatUtil;->getBuildModel()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "currentDevice":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 39
    return v2

    .line 41
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 42
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 43
    .local v5, "d":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 44
    const/4 v2, 0x1

    return v2

    .line 42
    .end local v5    # "d":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 47
    :cond_2
    return v2
.end method

.method public static isSpecialVersion()Z
    .locals 3

    .line 60
    invoke-static {}, Lcom/maya/sdk/s/app/floatwindow/FloatUtil;->getOSversion()I

    move-result v0

    .line 61
    .local v0, "systemVersion":I
    const/4 v1, 0x1

    const/16 v2, 0x19

    if-lt v0, v2, :cond_0

    .line 63
    return v1

    .line 65
    :cond_0
    const/16 v2, 0xe

    if-lt v0, v2, :cond_1

    const/16 v2, 0x12

    if-gt v0, v2, :cond_1

    .line 67
    return v1

    .line 70
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
