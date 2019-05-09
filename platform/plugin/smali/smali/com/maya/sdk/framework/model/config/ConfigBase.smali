.class public Lcom/maya/sdk/framework/model/config/ConfigBase;
.super Ljava/lang/Object;
.source "ConfigBase.java"


# static fields
.field public static final SPNAME:Ljava/lang/String; = "maya_pref"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBooleanData(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dValue"    # Z

    .line 25
    const-string v0, "maya_pref"

    invoke-static {p0, v0, p1, p2}, Lcom/maya/sdk/framework/utils/SharedPreUtil;->getBooleanData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getIntData(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dValue"    # I

    .line 33
    const-string v0, "maya_pref"

    invoke-static {p0, v0, p1, p2}, Lcom/maya/sdk/framework/utils/SharedPreUtil;->getIntData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLongData(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dValue"    # J

    .line 37
    const-string v0, "maya_pref"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/maya/sdk/framework/utils/SharedPreUtil;->getLongData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dValue"    # Ljava/lang/String;

    .line 17
    const-string v0, "maya_pref"

    invoke-static {p0, v0, p1, p2}, Lcom/maya/sdk/framework/utils/SharedPreUtil;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 21
    const-string v0, "maya_pref"

    invoke-static {p0, v0, p1, p2}, Lcom/maya/sdk/framework/utils/SharedPreUtil;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    return-void
.end method

.method public static setIntData(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 29
    const-string v0, "maya_pref"

    invoke-static {p0, v0, p1, p2}, Lcom/maya/sdk/framework/utils/SharedPreUtil;->setIntData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    return-void
.end method

.method public static setLongData(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 41
    const-string v0, "maya_pref"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/maya/sdk/framework/utils/SharedPreUtil;->setLongData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 42
    return-void
.end method

.method public static setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 13
    const-string v0, "maya_pref"

    invoke-static {p0, v0, p1, p2}, Lcom/maya/sdk/framework/utils/SharedPreUtil;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void
.end method
