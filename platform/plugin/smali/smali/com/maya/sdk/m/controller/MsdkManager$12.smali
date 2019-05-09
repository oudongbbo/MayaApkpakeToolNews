.class Lcom/maya/sdk/m/controller/MsdkManager$12;
.super Ljava/lang/Object;
.source "MsdkManager.java"

# interfaces
.implements Lcom/maya/sdk/m/interfaces/MsdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/MsdkManager;->checkRoleInfos(Ljava/lang/String;Ljava/util/HashMap;Lcom/maya/sdk/m/interfaces/MsdkCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/controller/MsdkManager;

.field final synthetic val$callback:Lcom/maya/sdk/m/interfaces/MsdkCallback;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/controller/MsdkManager;Lcom/maya/sdk/m/interfaces/MsdkCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/controller/MsdkManager;

    .line 583
    iput-object p1, p0, Lcom/maya/sdk/m/controller/MsdkManager$12;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    iput-object p2, p0, Lcom/maya/sdk/m/controller/MsdkManager$12;->val$callback:Lcom/maya/sdk/m/interfaces/MsdkCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 590
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$12;->val$callback:Lcom/maya/sdk/m/interfaces/MsdkCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/interfaces/MsdkCallback;->onFail(Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 586
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$12;->val$callback:Lcom/maya/sdk/m/interfaces/MsdkCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/interfaces/MsdkCallback;->onSuccess(Landroid/os/Bundle;)V

    .line 587
    return-void
.end method
