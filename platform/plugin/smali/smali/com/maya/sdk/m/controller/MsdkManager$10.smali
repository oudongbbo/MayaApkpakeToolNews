.class Lcom/maya/sdk/m/controller/MsdkManager$10;
.super Ljava/lang/Object;
.source "MsdkManager.java"

# interfaces
.implements Lcom/maya/sdk/m/interfaces/MsdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/MsdkManager;->roleLevelUp(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/controller/MsdkManager;

.field final synthetic val$newInfos:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/controller/MsdkManager;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/controller/MsdkManager;

    .line 517
    iput-object p1, p0, Lcom/maya/sdk/m/controller/MsdkManager$10;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    iput-object p2, p0, Lcom/maya/sdk/m/controller/MsdkManager$10;->val$newInfos:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 524
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 519
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$10;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    # getter for: Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;
    invoke-static {v0}, Lcom/maya/sdk/m/controller/MsdkManager;->access$700(Lcom/maya/sdk/m/controller/MsdkManager;)Lcom/maya/sdk/m/controller/PlatformCore;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/sdk/m/controller/MsdkManager$10;->val$newInfos:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/controller/PlatformCore;->roleLevelUp(Ljava/util/HashMap;)V

    .line 520
    return-void
.end method
