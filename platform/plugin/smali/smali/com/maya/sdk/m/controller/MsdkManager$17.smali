.class Lcom/maya/sdk/m/controller/MsdkManager$17;
.super Ljava/lang/Object;
.source "MsdkManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/MsdkManager;->showDebugDialog(Ljava/lang/String;Lcom/maya/sdk/m/interfaces/MsdkCallback;)V
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

    .line 829
    iput-object p1, p0, Lcom/maya/sdk/m/controller/MsdkManager$17;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    iput-object p2, p0, Lcom/maya/sdk/m/controller/MsdkManager$17;->val$callback:Lcom/maya/sdk/m/interfaces/MsdkCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 832
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$17;->val$callback:Lcom/maya/sdk/m/interfaces/MsdkCallback;

    const-string v1, "\u53d6\u6d88"

    invoke-interface {v0, v1}, Lcom/maya/sdk/m/interfaces/MsdkCallback;->onFail(Ljava/lang/String;)V

    .line 833
    return-void
.end method
