.class Lcom/maya/sdk/s/app/FMSdkCore$7;
.super Ljava/lang/Object;
.source "FMSdkCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/FMSdkCore;->hideFloat(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/FMSdkCore;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/FMSdkCore;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/FMSdkCore;

    .line 304
    iput-object p1, p0, Lcom/maya/sdk/s/app/FMSdkCore$7;->this$0:Lcom/maya/sdk/s/app/FMSdkCore;

    iput-object p2, p0, Lcom/maya/sdk/s/app/FMSdkCore$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$7;->this$0:Lcom/maya/sdk/s/app/FMSdkCore;

    # getter for: Lcom/maya/sdk/s/app/FMSdkCore;->sdkManager:Lcom/maya/sdk/s/core/SdkManager;
    invoke-static {v0}, Lcom/maya/sdk/s/app/FMSdkCore;->access$200(Lcom/maya/sdk/s/app/FMSdkCore;)Lcom/maya/sdk/s/core/SdkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/sdk/s/app/FMSdkCore$7;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/maya/sdk/s/core/SdkManager;->hideFloat(Landroid/content/Context;)V

    .line 308
    return-void
.end method
