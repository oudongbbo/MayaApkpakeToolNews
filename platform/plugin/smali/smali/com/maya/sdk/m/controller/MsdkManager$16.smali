.class Lcom/maya/sdk/m/controller/MsdkManager$16;
.super Ljava/lang/Object;
.source "MsdkManager.java"

# interfaces
.implements Lcom/maya/sdk/m/views/SplashDialog$SplashCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/MsdkManager;->showInitSplash(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/controller/MsdkManager;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/controller/MsdkManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/controller/MsdkManager;

    .line 741
    iput-object p1, p0, Lcom/maya/sdk/m/controller/MsdkManager$16;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 1

    .line 744
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$16;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    # invokes: Lcom/maya/sdk/m/controller/MsdkManager;->initPaltform()V
    invoke-static {v0}, Lcom/maya/sdk/m/controller/MsdkManager;->access$1400(Lcom/maya/sdk/m/controller/MsdkManager;)V

    .line 745
    return-void
.end method
