.class public Lcom/maya/sdk/framework/model/CountDownTool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;,
        Lcom/maya/sdk/framework/model/CountDownTool$a;
    }
.end annotation


# instance fields
.field private a:Lcom/maya/sdk/framework/model/CountDownTool$a;

.field private b:I

.field private c:Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/maya/sdk/framework/model/CountDownTool;->b:I

    return-void
.end method

.method static synthetic a(Lcom/maya/sdk/framework/model/CountDownTool;)Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/maya/sdk/framework/model/CountDownTool;->c:Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 22
    iget-object v0, p0, Lcom/maya/sdk/framework/model/CountDownTool;->c:Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/maya/sdk/framework/model/CountDownTool;->c:Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;

    invoke-interface {v0}, Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;->onStart()V

    .line 26
    :cond_0
    new-instance v0, Lcom/maya/sdk/framework/model/CountDownTool$a;

    iget v1, p0, Lcom/maya/sdk/framework/model/CountDownTool;->b:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v3, v1

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/maya/sdk/framework/model/CountDownTool$a;-><init>(Lcom/maya/sdk/framework/model/CountDownTool;JJ)V

    iput-object v0, p0, Lcom/maya/sdk/framework/model/CountDownTool;->a:Lcom/maya/sdk/framework/model/CountDownTool$a;

    .line 27
    iget-object v0, p0, Lcom/maya/sdk/framework/model/CountDownTool;->a:Lcom/maya/sdk/framework/model/CountDownTool$a;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/model/CountDownTool$a;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public a(Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/maya/sdk/framework/model/CountDownTool;->c:Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;

    return-void
.end method

.method public b()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/maya/sdk/framework/model/CountDownTool;->a:Lcom/maya/sdk/framework/model/CountDownTool$a;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/maya/sdk/framework/model/CountDownTool;->a:Lcom/maya/sdk/framework/model/CountDownTool$a;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/model/CountDownTool$a;->cancel()V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/framework/model/CountDownTool;->c:Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/maya/sdk/framework/model/CountDownTool;->c:Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;

    invoke-interface {v0}, Lcom/maya/sdk/framework/model/CountDownTool$CountDownFeedBack;->onEnd()V

    :cond_1
    return-void
.end method
