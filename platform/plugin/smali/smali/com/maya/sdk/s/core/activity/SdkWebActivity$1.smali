.class Lcom/maya/sdk/s/core/activity/SdkWebActivity$1;
.super Ljava/lang/Object;
.source "SdkWebActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/core/activity/SdkWebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/core/activity/SdkWebActivity;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/core/activity/SdkWebActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/core/activity/SdkWebActivity;

    .line 48
    iput-object p1, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity$1;->this$0:Lcom/maya/sdk/s/core/activity/SdkWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "paramDialogInterface"    # Landroid/content/DialogInterface;

    .line 53
    iget-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity$1;->this$0:Lcom/maya/sdk/s/core/activity/SdkWebActivity;

    invoke-virtual {v0}, Lcom/maya/sdk/s/core/activity/SdkWebActivity;->finish()V

    .line 54
    return-void
.end method
