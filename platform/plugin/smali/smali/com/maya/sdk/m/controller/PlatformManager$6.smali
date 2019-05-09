.class Lcom/maya/sdk/m/controller/PlatformManager$6;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/maya/sdk/m/interfaces/MResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/PlatformManager;->handleAppActive(Landroid/os/Bundle;Lcom/maya/sdk/m/interfaces/MResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/controller/PlatformManager;

.field final synthetic val$callback:Lcom/maya/sdk/m/interfaces/MResultCallback;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/controller/PlatformManager;Lcom/maya/sdk/m/interfaces/MResultCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/controller/PlatformManager;

    .line 956
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformManager$6;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iput-object p2, p0, Lcom/maya/sdk/m/controller/PlatformManager$6;->val$callback:Lcom/maya/sdk/m/interfaces/MResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 959
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$6;->val$callback:Lcom/maya/sdk/m/interfaces/MResultCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/interfaces/MResultCallback;->onFail(Ljava/lang/String;)V

    .line 960
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 964
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$6;->val$callback:Lcom/maya/sdk/m/interfaces/MResultCallback;

    invoke-interface {v0}, Lcom/maya/sdk/m/interfaces/MResultCallback;->onSuccess()V

    .line 965
    return-void
.end method
