.class final Lcom/maya/open/http/okhttp3/internal/platform/AndroidPlatform$CloseGuard;
.super Ljava/lang/Object;
.source "AndroidPlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okhttp3/internal/platform/AndroidPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CloseGuard"
.end annotation


# instance fields
.field private final getMethod:Ljava/lang/reflect/Method;

.field private final openMethod:Ljava/lang/reflect/Method;

.field private final warnIfOpenMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "getMethod"    # Ljava/lang/reflect/Method;
    .param p2, "openMethod"    # Ljava/lang/reflect/Method;
    .param p3, "warnIfOpenMethod"    # Ljava/lang/reflect/Method;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/platform/AndroidPlatform$CloseGuard;->getMethod:Ljava/lang/reflect/Method;

    .line 268
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/internal/platform/AndroidPlatform$CloseGuard;->openMethod:Ljava/lang/reflect/Method;

    .line 269
    iput-object p3, p0, Lcom/maya/open/http/okhttp3/internal/platform/AndroidPlatform$CloseGuard;->warnIfOpenMethod:Ljava/lang/reflect/Method;

    .line 270
    return-void
.end method

.method static get()Lcom/maya/open/http/okhttp3/internal/platform/AndroidPlatform$CloseGuard;
    .locals 6

    .line 302
    :try_start_0
    const-string v0, "dalvik.system.CloseGuard"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 303
    .local v0, "closeGuardClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "get"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 304
    .local v1, "getMethod":Ljava/lang/reflect/Method;
    const-string v3, "open"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 305
    .local v3, "openMethod":Ljava/lang/reflect/Method;
    const-string v4, "warnIfOpen"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 310
    .local v0, "warnIfOpenMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 306
    .end local v0    # "warnIfOpenMethod":Ljava/lang/reflect/Method;
    .end local v1    # "getMethod":Ljava/lang/reflect/Method;
    .end local v3    # "openMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 307
    .local v0, "ignored":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 308
    .restart local v1    # "getMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .line 309
    .restart local v3    # "openMethod":Ljava/lang/reflect/Method;
    const/4 v0, 0x0

    .line 311
    .local v0, "warnIfOpenMethod":Ljava/lang/reflect/Method;
    :goto_0
    new-instance v2, Lcom/maya/open/http/okhttp3/internal/platform/AndroidPlatform$CloseGuard;

    invoke-direct {v2, v1, v3, v0}, Lcom/maya/open/http/okhttp3/internal/platform/AndroidPlatform$CloseGuard;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-object v2
.end method


# virtual methods
.method createAndOpen(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "closer"    # Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/platform/AndroidPlatform$CloseGuard;->getMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/platform/AndroidPlatform$CloseGuard;->getMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 276
    .local v0, "closeGuardInstance":Ljava/lang/Object;
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/platform/AndroidPlatform$CloseGuard;->openMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    return-object v0

    .line 278
    .end local v0    # "closeGuardInstance":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 281
    :cond_0
    return-object v1
.end method

.method warnIfOpen(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "closeGuardInstance"    # Ljava/lang/Object;

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "reported":Z
    if-eqz p1, :cond_0

    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/platform/AndroidPlatform$CloseGuard;->warnIfOpenMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    const/4 v0, 0x1

    .line 291
    goto :goto_0

    .line 290
    :catch_0
    move-exception v1

    .line 293
    :cond_0
    :goto_0
    return v0
.end method