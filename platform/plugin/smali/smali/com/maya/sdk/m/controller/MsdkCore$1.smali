.class Lcom/maya/sdk/m/controller/MsdkCore$1;
.super Ljava/lang/Object;
.source "MsdkCore.java"

# interfaces
.implements Lcom/maya/sdk/framework/interfaces/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/MsdkCore;->openUserSuperVip(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/controller/MsdkCore;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/controller/MsdkCore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/controller/MsdkCore;

    .line 151
    iput-object p1, p0, Lcom/maya/sdk/m/controller/MsdkCore$1;->this$0:Lcom/maya/sdk/m/controller/MsdkCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;

    .line 157
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 154
    return-void
.end method
