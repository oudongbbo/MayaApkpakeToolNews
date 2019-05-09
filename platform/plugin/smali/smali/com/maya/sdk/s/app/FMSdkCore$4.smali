.class Lcom/maya/sdk/s/app/FMSdkCore$4;
.super Ljava/lang/Object;
.source "FMSdkCore.java"

# interfaces
.implements Lcom/maya/sdk/framework/interfaces/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/FMSdkCore;->userPay(Landroid/content/Context;Lcom/maya/sdk/framework/pay/PayInfoBean;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/FMSdkCore;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$payCallback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

.field final synthetic val$payinfos:Lcom/maya/sdk/framework/pay/PayInfoBean;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/FMSdkCore;Landroid/content/Context;Lcom/maya/sdk/framework/pay/PayInfoBean;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/FMSdkCore;

    .line 183
    iput-object p1, p0, Lcom/maya/sdk/s/app/FMSdkCore$4;->this$0:Lcom/maya/sdk/s/app/FMSdkCore;

    iput-object p2, p0, Lcom/maya/sdk/s/app/FMSdkCore$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/maya/sdk/s/app/FMSdkCore$4;->val$payinfos:Lcom/maya/sdk/framework/pay/PayInfoBean;

    iput-object p4, p0, Lcom/maya/sdk/s/app/FMSdkCore$4;->val$payCallback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMsg"    # Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$4;->val$payCallback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$4;->this$0:Lcom/maya/sdk/s/app/FMSdkCore;

    new-instance v1, Lcom/maya/sdk/s/app/FMSdkCore$4$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/FMSdkCore$4$1;-><init>(Lcom/maya/sdk/s/app/FMSdkCore$4;)V

    # invokes: Lcom/maya/sdk/s/app/FMSdkCore;->handleNoAdultPayNotice(Lcom/maya/sdk/framework/interfaces/ResultCallback;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/FMSdkCore;->access$300(Lcom/maya/sdk/s/app/FMSdkCore;Lcom/maya/sdk/framework/interfaces/ResultCallback;)V

    .line 218
    return-void
.end method
