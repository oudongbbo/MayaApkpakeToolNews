.class public Lcom/maya/sdk/m/http/MReqPublic;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mLogin(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;Z)V
    .locals 1

    .line 17
    new-instance v0, Lcom/maya/sdk/m/http/b;

    invoke-direct {v0, p0}, Lcom/maya/sdk/m/http/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/sdk/m/http/b;->a(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;Z)V

    return-void
.end method

.method public static request(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/maya/sdk/framework/http/HttpCallBack;",
            ")V"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/maya/sdk/framework/http/a;

    invoke-direct {v0}, Lcom/maya/sdk/framework/http/a;-><init>()V

    .line 31
    invoke-virtual {v0, p2}, Lcom/maya/sdk/framework/http/a;->a(Ljava/lang/String;)V

    .line 32
    invoke-static {p0, p3}, Lcom/maya/sdk/framework/utils/d;->a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/maya/sdk/framework/http/a;->a(Ljava/util/HashMap;)V

    const/4 p2, 0x0

    .line 33
    invoke-virtual {v0, p2}, Lcom/maya/sdk/framework/http/a;->a(Z)V

    const-string p2, ""

    .line 34
    invoke-virtual {v0, p2}, Lcom/maya/sdk/framework/http/a;->b(Ljava/lang/String;)V

    .line 36
    new-instance p2, Lcom/maya/sdk/framework/http/b;

    invoke-direct {p2, p0}, Lcom/maya/sdk/framework/http/b;-><init>(Landroid/content/Context;)V

    .line 37
    sget-boolean p0, Lcom/maya/sdk/m/utils/a;->a:Z

    invoke-virtual {p2, p0}, Lcom/maya/sdk/framework/http/b;->a(Z)V

    const-string p0, "POST"

    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 40
    invoke-virtual {p2, v0, p4}, Lcom/maya/sdk/framework/http/b;->a(Lcom/maya/sdk/framework/http/a;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p2, v0, p4}, Lcom/maya/sdk/framework/http/b;->b(Lcom/maya/sdk/framework/http/a;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    :goto_0
    return-void
.end method
