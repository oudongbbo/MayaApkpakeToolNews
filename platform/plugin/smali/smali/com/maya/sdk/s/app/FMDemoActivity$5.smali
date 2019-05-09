.class Lcom/maya/sdk/s/app/FMDemoActivity$5;
.super Ljava/lang/Object;
.source "FMDemoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/FMDemoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/FMDemoActivity;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/FMDemoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/FMDemoActivity;

    .line 170
    iput-object p1, p0, Lcom/maya/sdk/s/app/FMDemoActivity$5;->this$0:Lcom/maya/sdk/s/app/FMDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 173
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMDemoActivity$5;->this$0:Lcom/maya/sdk/s/app/FMDemoActivity;

    # getter for: Lcom/maya/sdk/s/app/FMDemoActivity;->mayaCore:Lcom/maya/sdk/s/app/FMSdkCore;
    invoke-static {v0}, Lcom/maya/sdk/s/app/FMDemoActivity;->access$000(Lcom/maya/sdk/s/app/FMDemoActivity;)Lcom/maya/sdk/s/app/FMSdkCore;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/sdk/s/app/FMDemoActivity$5;->this$0:Lcom/maya/sdk/s/app/FMDemoActivity;

    new-instance v2, Lcom/maya/sdk/s/app/FMDemoActivity$5$1;

    invoke-direct {v2, p0}, Lcom/maya/sdk/s/app/FMDemoActivity$5$1;-><init>(Lcom/maya/sdk/s/app/FMDemoActivity$5;)V

    invoke-virtual {v0, v1, v2}, Lcom/maya/sdk/s/app/FMSdkCore;->userSwitch(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 194
    return-void
.end method
