.class public Lcom/maya/sdk/framework/encrypt/CodeManager;
.super Ljava/lang/Object;
.source "CodeManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeCommon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 15
    invoke-static {p0, p1}, Lcom/maya/sdk/framework/encrypt/AuthCode;->Decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decodeSpecial(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;

    .line 38
    invoke-static {p0}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getGameKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "key":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/maya/sdk/framework/encrypt/CodeManager;->decodeSpecial(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static decodeSpecial(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 27
    const-string v0, "_"

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 28
    const-string v0, "-"

    const-string v1, "\\+"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 29
    invoke-static {p0, p1}, Lcom/maya/sdk/framework/encrypt/AuthCode;->Decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeCommon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 11
    invoke-static {p0, p1}, Lcom/maya/sdk/framework/encrypt/AuthCode;->Encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeSpecial(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;

    .line 33
    invoke-static {p0}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getGameKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "key":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/maya/sdk/framework/encrypt/CodeManager;->encodeSpecial(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static encodeSpecial(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 19
    invoke-static {p0, p1}, Lcom/maya/sdk/framework/encrypt/AuthCode;->Encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "encode":Ljava/lang/String;
    const-string v1, "="

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    const-string v1, "/"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    const-string v1, "\\+"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    return-object v0
.end method
