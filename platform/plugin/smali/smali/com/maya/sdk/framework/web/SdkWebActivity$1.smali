.class Lcom/maya/sdk/framework/web/SdkWebActivity$1;
.super Ljava/lang/Object;
.source "SdkWebActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/framework/web/SdkWebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/framework/web/SdkWebActivity;


# direct methods
.method constructor <init>(Lcom/maya/sdk/framework/web/SdkWebActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/framework/web/SdkWebActivity;

    .line 41
    iput-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebActivity$1;->this$0:Lcom/maya/sdk/framework/web/SdkWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "paramDialogInterface"    # Landroid/content/DialogInterface;

    .line 46
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebActivity$1;->this$0:Lcom/maya/sdk/framework/web/SdkWebActivity;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/web/SdkWebActivity;->finish()V

    .line 47
    return-void
.end method
