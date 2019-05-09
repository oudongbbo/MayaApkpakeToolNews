.class Lcom/maya/sdk/m/controller/MsdkManager$2;
.super Ljava/lang/Object;
.source "MsdkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/MsdkManager;->userLogin(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/controller/MsdkManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/controller/MsdkManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/controller/MsdkManager;

    .line 282
    iput-object p1, p0, Lcom/maya/sdk/m/controller/MsdkManager$2;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    iput-object p2, p0, Lcom/maya/sdk/m/controller/MsdkManager$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$2;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    # getter for: Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;
    invoke-static {v0}, Lcom/maya/sdk/m/controller/MsdkManager;->access$700(Lcom/maya/sdk/m/controller/MsdkManager;)Lcom/maya/sdk/m/controller/PlatformCore;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/sdk/m/controller/MsdkManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/controller/PlatformCore;->userLogin(Landroid/content/Context;)V

    .line 286
    return-void
.end method
