.class Lcom/maya/sdk/s/app/FMDemoActivity$8$1;
.super Ljava/lang/Object;
.source "FMDemoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/FMDemoActivity$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/maya/sdk/s/app/FMDemoActivity$8;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/FMDemoActivity$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/maya/sdk/s/app/FMDemoActivity$8;

    .line 252
    iput-object p1, p0, Lcom/maya/sdk/s/app/FMDemoActivity$8$1;->this$1:Lcom/maya/sdk/s/app/FMDemoActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMDemoActivity$8$1;->this$1:Lcom/maya/sdk/s/app/FMDemoActivity$8;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMDemoActivity$8;->this$0:Lcom/maya/sdk/s/app/FMDemoActivity;

    # getter for: Lcom/maya/sdk/s/app/FMDemoActivity;->mayaCore:Lcom/maya/sdk/s/app/FMSdkCore;
    invoke-static {v0}, Lcom/maya/sdk/s/app/FMDemoActivity;->access$000(Lcom/maya/sdk/s/app/FMDemoActivity;)Lcom/maya/sdk/s/app/FMSdkCore;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/sdk/s/app/FMDemoActivity$8$1;->this$1:Lcom/maya/sdk/s/app/FMDemoActivity$8;

    iget-object v1, v1, Lcom/maya/sdk/s/app/FMDemoActivity$8;->this$0:Lcom/maya/sdk/s/app/FMDemoActivity;

    new-instance v2, Lcom/maya/sdk/s/app/FMDemoActivity$8$1$1;

    invoke-direct {v2, p0}, Lcom/maya/sdk/s/app/FMDemoActivity$8$1$1;-><init>(Lcom/maya/sdk/s/app/FMDemoActivity$8$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/maya/sdk/s/app/FMSdkCore;->userExit(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 275
    return-void
.end method
