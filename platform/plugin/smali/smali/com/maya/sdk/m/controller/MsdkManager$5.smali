.class Lcom/maya/sdk/m/controller/MsdkManager$5;
.super Ljava/lang/Object;
.source "MsdkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/MsdkManager;->userPay(Landroid/content/Context;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/controller/MsdkManager;

.field final synthetic val$payinfos:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/controller/MsdkManager;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/controller/MsdkManager;

    .line 348
    iput-object p1, p0, Lcom/maya/sdk/m/controller/MsdkManager$5;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    iput-object p2, p0, Lcom/maya/sdk/m/controller/MsdkManager$5;->val$payinfos:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 351
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$5;->val$payinfos:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/maya/sdk/framework/utils/CommonUtil;->mapToMapTrim(Ljava/util/HashMap;)V

    .line 352
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$5;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    iget-object v1, p0, Lcom/maya/sdk/m/controller/MsdkManager$5;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    # getter for: Lcom/maya/sdk/m/controller/MsdkManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/maya/sdk/m/controller/MsdkManager;->access$200(Lcom/maya/sdk/m/controller/MsdkManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/maya/sdk/m/controller/MsdkManager$5;->val$payinfos:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/maya/sdk/m/controller/MsdkManager;->userPayCommon(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 353
    return-void
.end method
