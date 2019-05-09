.class public Lcom/maya/sdk/framework/utils/SharedPreUtil;
.super Ljava/lang/Object;
.source "SharedPreUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBooleanData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "dValue"    # Z

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 31
    .local v0, "uiState":Landroid/content/SharedPreferences;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getIntData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "dValue"    # I

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 43
    .local v0, "uiState":Landroid/content/SharedPreferences;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getLongData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "dValue"    # J

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 48
    .local v0, "uiState":Landroid/content/SharedPreferences;
    invoke-interface {v0, p2, p3, p4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "dValue"    # Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 19
    .local v0, "uiState":Landroid/content/SharedPreferences;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static setBooleanData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 24
    .local v0, "uiState":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 25
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 26
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 27
    return-void
.end method

.method public static setIntData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 36
    .local v0, "uiState":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 37
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 38
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 39
    return-void
.end method

.method public static setLongData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # J

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 53
    .local v0, "uiState":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 54
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 55
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 56
    return-void
.end method

.method public static setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 12
    .local v0, "uiState":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 13
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 14
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 15
    return-void
.end method
