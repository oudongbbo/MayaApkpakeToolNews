.class Lcom/maya/sdk/s/app/FMSdkCore$11;
.super Ljava/lang/Object;
.source "FMSdkCore.java"

# interfaces
.implements Lcom/maya/sdk/framework/interfaces/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/FMSdkCore;->handleNoAdultPayNotice(Lcom/maya/sdk/framework/interfaces/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/FMSdkCore;

.field final synthetic val$callback:Lcom/maya/sdk/framework/interfaces/ResultCallback;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/FMSdkCore;Lcom/maya/sdk/framework/interfaces/ResultCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/FMSdkCore;

    .line 528
    iput-object p1, p0, Lcom/maya/sdk/s/app/FMSdkCore$11;->this$0:Lcom/maya/sdk/s/app/FMSdkCore;

    iput-object p2, p0, Lcom/maya/sdk/s/app/FMSdkCore$11;->val$callback:Lcom/maya/sdk/framework/interfaces/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMsg"    # Ljava/lang/String;

    .line 536
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$11;->val$callback:Lcom/maya/sdk/framework/interfaces/ResultCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/framework/interfaces/ResultCallback;->onFail(Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$11;->val$callback:Lcom/maya/sdk/framework/interfaces/ResultCallback;

    invoke-interface {v0}, Lcom/maya/sdk/framework/interfaces/ResultCallback;->onSuccess()V

    .line 533
    return-void
.end method
